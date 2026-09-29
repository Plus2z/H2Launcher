package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;
import net.oneplus.h2launcher.IconDBHelper;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class DynamicIconConfigCache {
    private static final boolean DEBUG = false;
    private static final int INITIAL_ICON_CACHE_CAPACITY = 50;
    final AssetCache mAssetCache;
    private final Context mContext;
    private HashMap<ComponentName, Integer> mOriginalDynamicIconResourceMap;
    private Runnable mPreloadTask;
    final UserManagerCompat mUserManager;
    private static final String TAG = DynamicIconConfigCache.class.getSimpleName();
    private static final DynamicIconConfig EMPTY_DYNAMIC_CONFIG = new DynamicIconConfig(AssetCache.ASSET_PACK_NAME_NONE);
    static final Object PRELOAD_ICON_TOKEN = new Object();
    private final HashMap<ComponentKey, DynamicIconConfig> mOriginalCache = new HashMap<>(50);
    private final HashMap<ComponentKey, DynamicIconConfig> mAssetPackCache = new HashMap<>(50);
    private final HashMap<ComponentKey, DynamicIconConfig> mCustomCache = new HashMap<>(50);
    private ArrayList<Runnable> mPreloadTaskQueue = new ArrayList<>();
    final Handler mWorkerHandler = new Handler(LauncherModel.getWorkerLooper());

    public DynamicIconConfigCache(Context context, AssetCache assetCache) {
        this.mAssetCache = assetCache;
        this.mContext = context;
        this.mUserManager = UserManagerCompat.getInstance(this.mContext);
        initOriginalDynamicIconResourceMap();
    }

    public DynamicIconConfig getDynamicIconConfig(ShortcutInfo info, int cacheType) {
        ComponentName componentName = null;
        if (info.getIntent() != null) {
            componentName = info.getIntent().getComponent();
        }
        if (componentName == null && info.getTargetComponent() != null) {
            componentName = info.getTargetComponent();
        }
        if (componentName != null) {
            return getDynamicIconConfig(componentName, info.user, cacheType);
        }
        return null;
    }

    public DynamicIconConfig getDynamicIconConfig(ComponentName componentName, int cacheType) {
        return getDynamicIconConfig(componentName, UserHandleCompat.myUserHandle(), cacheType);
    }

    public DynamicIconConfig getDynamicIconConfig(ComponentName componentName, UserHandleCompat user, int cacheType) {
        String assetPackName = AssetCache.ASSET_PACK_NAME_NONE;
        if (cacheType == 8) {
            assetPackName = AssetCache.ASSET_PACK_NAME_CUSTOM;
        } else if (cacheType == 2) {
            assetPackName = this.mAssetCache.getCurrentAssetPackName();
        }
        return getDynamicIconConfig(componentName, user, assetPackName);
    }

    public DynamicIconConfig getDynamicIconConfig(ComponentName componentName, String assetPackName) {
        return getDynamicIconConfig(componentName, UserHandleCompat.myUserHandle(), assetPackName);
    }

    public DynamicIconConfig getDynamicIconConfig(ComponentName componentName, UserHandleCompat user, String assetPackName) {
        return cacheLocked(componentName, user, assetPackName);
    }

    private synchronized DynamicIconConfig cacheLocked(ComponentName componentName, UserHandleCompat user, String assetPackName) {
        DynamicIconConfig dynamicIconConfig = null;
        synchronized (this) {
            ComponentKey cacheKey = new ComponentKey(componentName, user);
            DynamicIconConfig config = null;
            if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                DynamicIconConfig config2 = this.mOriginalCache.get(cacheKey);
                config = config2;
            } else if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
                DynamicIconConfig config3 = this.mCustomCache.get(cacheKey);
                config = config3;
            } else if (assetPackName != null && assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                DynamicIconConfig config4 = this.mAssetPackCache.get(cacheKey);
                config = config4;
            } else if (assetPackName == null) {
            }
            if (config == null) {
                config = new DynamicIconConfig(assetPackName);
                boolean hasConfig = getConfigFromDB(cacheKey, assetPackName, config);
                if (!hasConfig) {
                    if (AssetCache.ASSET_PACK_NAME_CUSTOM.equals(assetPackName)) {
                        this.mCustomCache.put(cacheKey, EMPTY_DYNAMIC_CONFIG);
                    } else if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                        boolean hasConfig2 = loadDynamicIconConfigFromOriginal(cacheKey, config);
                        if (!hasConfig2) {
                            this.mOriginalCache.put(cacheKey, EMPTY_DYNAMIC_CONFIG);
                        } else {
                            this.mOriginalCache.put(cacheKey, config);
                        }
                    } else {
                        boolean hasConfig3 = loadDynamicIconConfigFromAssetPack(cacheKey, config, assetPackName);
                        if (!hasConfig3) {
                            if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                                this.mAssetPackCache.put(cacheKey, EMPTY_DYNAMIC_CONFIG);
                            }
                        } else if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                            this.mAssetPackCache.put(cacheKey, config);
                        }
                    }
                }
                DynamicIconManager.getInstance().verifyConfig(componentName, config);
            }
            if (config != EMPTY_DYNAMIC_CONFIG && config.isValid()) {
                dynamicIconConfig = config;
            }
        }
        return dynamicIconConfig;
    }

    private boolean getConfigFromDB(ComponentKey cacheKey, String assetPackName, DynamicIconConfig config) {
        if (assetPackName == null) {
            return false;
        }
        boolean result = false;
        Cursor c = this.mContext.getContentResolver().query(IconProvider.DYNAMIC_ICON_URI, new String[]{IconDBHelper.DynamicIcon.COLUMN_CONFIG}, "componentName = ? AND profileId = ? AND assetPackName = ? ", new String[]{cacheKey.componentName.flattenToString(), Long.toString(this.mUserManager.getSerialNumberForUser(cacheKey.user)), assetPackName}, null, null);
        try {
            if (c.moveToFirst()) {
                config.parseConfig(c.getBlob(0));
                result = true;
            }
        } finally {
            if (c != null) {
                c.close();
            }
        }
    }

    private boolean loadDynamicIconConfigFromOriginal(ComponentKey cacheKey, DynamicIconConfig config) {
        if (!this.mOriginalDynamicIconResourceMap.containsKey(cacheKey.componentName)) {
            return false;
        }
        try {
            InputStream stream = this.mContext.getResources().openRawResource(this.mOriginalDynamicIconResourceMap.get(cacheKey.componentName).intValue());
            byte[] data = new byte[DynamicIconConfig.MAX_FILE_SIZE];
            stream.read(data);
            stream.close();
            config.parseConfig(data);
            return config.isValid();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean loadDynamicIconConfigFromAssetPack(ComponentKey cacheKey, DynamicIconConfig config, String assetPackName) {
        IconPackHelper helper = this.mAssetCache.loadAssetPack(assetPackName);
        if (helper == null) {
            return false;
        }
        config.parseConfig(helper.getDynamicIconForComponentName(cacheKey.componentName));
        return config.isValid();
    }

    private void initOriginalDynamicIconResourceMap() {
        this.mOriginalDynamicIconResourceMap = new HashMap<>();
        this.mOriginalDynamicIconResourceMap.put(DynamicIconManager.COMPONENT_NAME_CALENDAR, Integer.valueOf(R.raw.calendar));
        this.mOriginalDynamicIconResourceMap.put(DynamicIconManager.COMPONENT_NAME_WEATHER, Integer.valueOf(R.raw.weather));
    }

    public synchronized void changeAssetPack() {
        this.mAssetPackCache.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void flushAssetPackIcon(String assetPackName) {
        if (assetPackName != null) {
            if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                this.mAssetPackCache.clear();
            }
            String[] args = {assetPackName};
            this.mContext.getContentResolver().delete(IconProvider.DYNAMIC_ICON_URI, "assetPackName = ?", args);
        }
    }

    public synchronized void flush(int cacheType) {
        if ((cacheType & 1) != 0) {
            this.mOriginalCache.clear();
        }
        if ((cacheType & 2) != 0) {
            this.mAssetPackCache.clear();
        }
    }

    public void addPreloadAssetPackTask(String assetPackName) {
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        long userSerial = this.mUserManager.getSerialNumberForUser(user);
        this.mContext.getPackageManager();
        PreloadIconTask task = new PreloadIconTask(assetPackName, userSerial, DynamicIconManager.sDefaultNeedRefreshApps);
        this.mPreloadTaskQueue.add(task);
        this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.DynamicIconConfigCache.1
            @Override // java.lang.Runnable
            public void run() {
                if (DynamicIconConfigCache.this.mPreloadTask == null) {
                    DynamicIconConfigCache.this.mPreloadTask = (Runnable) DynamicIconConfigCache.this.mPreloadTaskQueue.remove(0);
                    ((PreloadIconTask) DynamicIconConfigCache.this.mPreloadTask).scheduleNext();
                }
            }
        });
    }

    public void checkAndPreloadAllTask() {
        if (!this.mAssetCache.isPreloadCache(DynamicIconConfigCache.class)) {
            this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.DynamicIconConfigCache.2
                @Override // java.lang.Runnable
                public void run() {
                    DynamicIconConfigCache.this.preloadAllAssetPackTask();
                    DynamicIconConfigCache.this.mAssetCache.setPreloadCache(DynamicIconConfigCache.class, true);
                }
            });
        }
    }

    public void preloadAllAssetPackTask() {
        this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.DynamicIconConfigCache.3
            @Override // java.lang.Runnable
            public void run() {
                DynamicIconConfigCache.this.addPreloadAssetPackTask(AssetCache.ASSET_PACK_NAME_NONE);
                String currentAssetPackName = DynamicIconConfigCache.this.mAssetCache.getCurrentAssetPackName();
                DynamicIconConfigCache.this.addPreloadAssetPackTask(currentAssetPackName);
                CharSequence[][] assetPackArray = IconPackHelper.getIconPackList(DynamicIconConfigCache.this.mContext, false);
                for (int i = 0; i < assetPackArray[1].length; i++) {
                    DynamicIconConfigCache.this.addPreloadAssetPackTask(String.valueOf(assetPackArray[1][i]));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PreloadIconTask implements Runnable {
        private final String mAssetPackName;
        private boolean mFinish;
        private final long mUserSerial;
        private final Stack<ComponentName> mApps = new Stack<>();
        private final HashSet<String> mResources = new HashSet<>();

        PreloadIconTask(String assetPackName, long userSerial, ComponentName[] refreshApps) {
            this.mAssetPackName = assetPackName;
            this.mUserSerial = userSerial;
            for (ComponentName componentName : refreshApps) {
                this.mApps.add(componentName);
            }
            this.mFinish = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            int id;
            if (!this.mApps.isEmpty()) {
                ComponentName app = this.mApps.pop();
                DynamicIconConfig config = new DynamicIconConfig(this.mAssetPackName);
                byte[] dynamicIconByte = null;
                if (AssetCache.ASSET_PACK_NAME_NONE.equals(this.mAssetPackName)) {
                    InputStream stream = DynamicIconConfigCache.this.mContext.getResources().openRawResource(((Integer) DynamicIconConfigCache.this.mOriginalDynamicIconResourceMap.get(app)).intValue());
                    dynamicIconByte = new byte[DynamicIconConfig.MAX_FILE_SIZE];
                    try {
                        stream.read(dynamicIconByte);
                        stream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    config.parseConfig(dynamicIconByte);
                    DynamicIconManager.getInstance().verifyConfig(app, config);
                } else {
                    IconPackHelper helper = DynamicIconConfigCache.this.mAssetCache.loadAssetPack(this.mAssetPackName);
                    if (helper != null && (id = helper.getResourceIdForComponentNameDynamicIcon(app)) != 0) {
                        config.parseConfig(helper.getDynamicIconForComponentName(app));
                        dynamicIconByte = helper.getDynamicIconByte(id);
                    }
                }
                if (dynamicIconByte != null && config.isValid()) {
                    this.mResources.addAll(config.getAllDrawableResource());
                    ContentValues values = new ContentValues();
                    values.put("profileId", Long.valueOf(this.mUserSerial));
                    values.put("componentName", app.flattenToString());
                    values.put("assetPackName", this.mAssetPackName);
                    values.put(IconDBHelper.DynamicIcon.COLUMN_CONFIG, dynamicIconByte);
                    DynamicIconConfigCache.this.mContext.getContentResolver().insert(IconProvider.DYNAMIC_ICON_URI, values);
                }
                scheduleNext();
                return;
            }
            if (!this.mFinish) {
                this.mFinish = true;
                DynamicIconConfigCache.this.mAssetCache.preloadDynamicIconDrawable(this.mResources, this.mAssetPackName);
            }
            scheduleNextTask();
        }

        public void scheduleNext() {
            DynamicIconConfigCache.this.mWorkerHandler.postAtTime(this, DynamicIconConfigCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 1);
        }

        public void scheduleNextTask() {
            if (DynamicIconConfigCache.this.mPreloadTaskQueue.size() > 0) {
                Runnable r = (Runnable) DynamicIconConfigCache.this.mPreloadTaskQueue.remove(0);
                DynamicIconConfigCache.this.mPreloadTask = r;
                DynamicIconConfigCache.this.mWorkerHandler.postAtTime(r, DynamicIconConfigCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 1);
                return;
            }
            DynamicIconConfigCache.this.mPreloadTask = null;
        }
    }
}
