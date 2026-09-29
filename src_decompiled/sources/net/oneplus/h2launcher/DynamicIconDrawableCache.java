package net.oneplus.h2launcher;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.util.DynamicIconDrawableKey;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class DynamicIconDrawableCache {
    private static final boolean DEBUG = false;
    private static final int INITIAL_ICON_CACHE_CAPACITY = 50;
    final AssetCache mAssetCache;
    private final Context mContext;
    private final int mIconDpi;
    private Runnable mPreloadTask;
    final UserManagerCompat mUserManager;
    private static final String TAG = DynamicIconDrawableCache.class.getSimpleName();
    private static final Drawable EMPTY_DRAWABLE = new Drawable() { // from class: net.oneplus.h2launcher.DynamicIconDrawableCache.1
        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int alpha) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }
    };
    static final Object PRELOAD_ICON_TOKEN = new Object();
    private final HashMap<DynamicIconDrawableKey, Drawable> mOriginalCache = new HashMap<>(50);
    private final HashMap<DynamicIconDrawableKey, Drawable> mAssetPackCache = new HashMap<>(50);
    private ArrayList<Runnable> mPreloadTaskQueue = new ArrayList<>();
    final Handler mWorkerHandler = new Handler(LauncherModel.getWorkerLooper());

    public DynamicIconDrawableCache(Context context, InvariantDeviceProfile inv, AssetCache assetCache) {
        this.mAssetCache = assetCache;
        this.mContext = context;
        this.mUserManager = UserManagerCompat.getInstance(this.mContext);
        this.mIconDpi = inv.fillResIconDpi;
    }

    public Drawable getDynamicIconDrawable(String resource, String assetPackName) {
        return cacheLocked(resource, UserHandleCompat.myUserHandle(), assetPackName);
    }

    private synchronized Drawable cacheLocked(String resource, UserHandleCompat user, String assetPackName) {
        Drawable drawable = null;
        synchronized (this) {
            DynamicIconDrawableKey cacheKey = new DynamicIconDrawableKey(resource, assetPackName, user);
            Drawable drawable2 = null;
            if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                Drawable drawable3 = this.mOriginalCache.get(cacheKey);
                drawable2 = drawable3;
            } else if (assetPackName != null && assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                Drawable drawable4 = this.mAssetPackCache.get(cacheKey);
                drawable2 = drawable4;
            } else if (assetPackName == null) {
            }
            if (drawable2 == null && (drawable2 = getDrawableFromDB(cacheKey)) == null) {
                if (AssetCache.ASSET_PACK_NAME_NONE.equals(assetPackName)) {
                    drawable2 = getDrawableFromOriginal(cacheKey);
                    if (drawable2 == null) {
                        this.mOriginalCache.put(cacheKey, EMPTY_DRAWABLE);
                    } else {
                        this.mOriginalCache.put(cacheKey, drawable2);
                    }
                } else {
                    drawable2 = getDrawableFromAssetPack(cacheKey);
                    if (drawable2 == null) {
                        if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                            this.mAssetPackCache.put(cacheKey, EMPTY_DRAWABLE);
                        }
                    } else if (assetPackName.equals(this.mAssetCache.getCurrentAssetPackName())) {
                        this.mAssetPackCache.put(cacheKey, drawable2);
                    }
                }
            }
            if (drawable2 != EMPTY_DRAWABLE) {
                drawable = drawable2;
            }
        }
        return drawable;
    }

    private Drawable getDrawableFromDB(DynamicIconDrawableKey cacheKey) {
        if (cacheKey.assetPackName == null || cacheKey.resource == null) {
            return null;
        }
        Drawable drawable = null;
        Cursor c = this.mContext.getContentResolver().query(IconProvider.ICON_URI, new String[]{"icon"}, "componentName = ? AND profileId = ? AND assetPackName = ? AND iconType = ? ", new String[]{cacheKey.resource, Long.toString(this.mUserManager.getSerialNumberForUser(cacheKey.user)), cacheKey.assetPackName, String.valueOf(1)}, null, null);
        try {
            try {
                if (c.moveToFirst()) {
                    byte[] data = c.getBlob(0);
                    Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length, null);
                    Drawable drawable2 = new BitmapDrawable(bitmap);
                    drawable = drawable2;
                }
                if (c != null) {
                    c.close();
                    return drawable;
                }
                return drawable;
            } catch (Exception e) {
                Logger.w(TAG, "getConfigFromDB error e = " + e.getMessage());
                if (c == null) {
                    return null;
                }
                c.close();
                return null;
            }
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            throw th;
        }
    }

    private Drawable getDrawableFromOriginal(DynamicIconDrawableKey cacheKey) {
        Resources resources;
        int id;
        if (cacheKey.assetPackName == null || cacheKey.resource == null || (id = (resources = this.mContext.getResources()).getIdentifier(cacheKey.resource, DynamicIconDrawableConfig.TYPE, this.mContext.getPackageName())) == 0) {
            return null;
        }
        return resources.getDrawableForDensity(id, this.mIconDpi);
    }

    private Drawable getDrawableFromAssetPack(DynamicIconDrawableKey cacheKey) {
        IconPackHelper helper;
        if (cacheKey.assetPackName == null || cacheKey.resource == null || (helper = this.mAssetCache.loadAssetPack(cacheKey.assetPackName)) == null) {
            return null;
        }
        return helper.getDrawable(cacheKey.resource, this.mIconDpi);
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

    public void preloadIcon(final HashSet<String> resource, final String assetPackName) {
        this.mWorkerHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.DynamicIconDrawableCache.2
            @Override // java.lang.Runnable
            public void run() {
                PreloadIconTask task = new PreloadIconTask(assetPackName, UserManagerCompat.getInstance(DynamicIconDrawableCache.this.mContext).getSerialNumberForUser(UserHandleCompat.myUserHandle()), resource);
                DynamicIconDrawableCache.this.mPreloadTaskQueue.add(task);
                task.scheduleNextTask();
            }
        });
    }

    /* loaded from: classes.dex */
    class PreloadIconTask implements Runnable {
        private final String mAssetPackName;
        private final Stack<String> mResources = new Stack<>();
        private final long mUserSerial;

        PreloadIconTask(String assetPackName, long userSerial, HashSet<String> resources) {
            this.mAssetPackName = assetPackName;
            this.mUserSerial = userSerial;
            this.mResources.addAll(resources);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mResources.isEmpty()) {
                String resource = this.mResources.pop();
                Drawable d = null;
                if (AssetCache.ASSET_PACK_NAME_NONE.equals(this.mAssetPackName)) {
                    Resources resources = DynamicIconDrawableCache.this.mContext.getResources();
                    int id = resources.getIdentifier(resource, DynamicIconDrawableConfig.TYPE, DynamicIconDrawableCache.this.mContext.getPackageName());
                    d = DynamicIconDrawableCache.this.mContext.getDrawable(id);
                } else {
                    IconPackHelper helper = DynamicIconDrawableCache.this.mAssetCache.loadAssetPack(this.mAssetPackName);
                    if (helper != null) {
                        d = helper.getDrawable(resource, DynamicIconDrawableCache.this.mIconDpi);
                    }
                }
                if (d != null) {
                    Bitmap bitmap = ((BitmapDrawable) d).getBitmap();
                    ByteArrayOutputStream stream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
                    byte[] data = stream.toByteArray();
                    ContentValues values = new ContentValues();
                    values.put("profileId", Long.valueOf(this.mUserSerial));
                    values.put("componentName", resource);
                    values.put("assetPackName", this.mAssetPackName);
                    values.put("iconType", (Integer) 1);
                    values.put("icon", data);
                    DynamicIconDrawableCache.this.mContext.getContentResolver().insert(IconProvider.ICON_URI, values);
                }
                scheduleNext();
                return;
            }
            scheduleNextTask();
        }

        public void scheduleNext() {
            DynamicIconDrawableCache.this.mWorkerHandler.postAtTime(this, DynamicIconDrawableCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 1);
        }

        public void scheduleNextTask() {
            if (DynamicIconDrawableCache.this.mPreloadTaskQueue.size() > 0) {
                Runnable r = (Runnable) DynamicIconDrawableCache.this.mPreloadTaskQueue.remove(0);
                DynamicIconDrawableCache.this.mPreloadTask = r;
                DynamicIconDrawableCache.this.mWorkerHandler.postAtTime(r, DynamicIconDrawableCache.PRELOAD_ICON_TOKEN, SystemClock.uptimeMillis() + 1);
                return;
            }
            DynamicIconDrawableCache.this.mPreloadTask = null;
        }
    }
}
