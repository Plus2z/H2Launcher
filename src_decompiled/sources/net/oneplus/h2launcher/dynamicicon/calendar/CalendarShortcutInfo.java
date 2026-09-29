package net.oneplus.h2launcher.dynamicicon.calendar;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.FastBitmapDrawable;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.dynamicicon.DynamicIconUtil;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.dynamicicon.UpdateRunnable;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class CalendarShortcutInfo extends ShortcutInfo implements IDynamicShortcut {
    private static final boolean DEBUG = false;
    private static final String KEY_NEW_DAY = "new_day";
    private static final String KEY_OLD_DAY = "old_day";
    private static final String TAG = CalendarShortcutInfo.class.getSimpleName();
    private DynamicIconConfig mAssetPackConfig;
    private CalendarFastBitmapDrawable mBaseDrawable;
    private final Object mCheckAnimatingObject;
    private Context mContext;
    private CalendarFastBitmapDrawable mCurrentDrawable;
    private HashMap<String, Object> mDataMap;
    private IntentFilter mInfoIntentFilter;
    private OneplusCalendarInfoReceiver mInfoReceiver;
    private DynamicIconManager.NeedAnimateIconCallback mNeedAnimateIconCallback;
    private CalendarFastBitmapDrawable mNewDrawable;
    private DynamicIconConfig mOriginalConfig;
    private boolean mRunningAnimation;
    private UpdateRunnable mUpdateRunnable;

    public CalendarShortcutInfo(Context context, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        this.mDataMap = new HashMap<>();
        this.mOriginalConfig = null;
        this.mAssetPackConfig = null;
        this.mCheckAnimatingObject = new Object();
        init(context, needAnimateIconCallback);
    }

    public CalendarShortcutInfo(Context context, AppInfo info, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        super(info);
        this.mDataMap = new HashMap<>();
        this.mOriginalConfig = null;
        this.mAssetPackConfig = null;
        this.mCheckAnimatingObject = new Object();
        init(context, needAnimateIconCallback);
    }

    public CalendarShortcutInfo(Context context, Intent intent, CharSequence title, CharSequence contentDescription, Bitmap icon, UserHandleCompat user, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        super(intent, title, contentDescription, icon, user);
        this.mDataMap = new HashMap<>();
        this.mOriginalConfig = null;
        this.mAssetPackConfig = null;
        this.mCheckAnimatingObject = new Object();
        init(context, needAnimateIconCallback);
    }

    public void init(Context context, DynamicIconManager.NeedAnimateIconCallback needAnimateIconCallback) {
        this.mContext = context;
        this.mIsDynamicIcon = true;
        refreshConfig();
        this.mNeedAnimateIconCallback = needAnimateIconCallback;
        this.mInfoIntentFilter = new IntentFilter("android.intent.action.DATE_CHANGED");
        this.mInfoIntentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        this.mInfoIntentFilter.addAction("android.intent.action.TIME_SET");
        updateCalendarData();
        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.calendar.CalendarShortcutInfo.1
            @Override // java.lang.Runnable
            public void run() {
                CalendarShortcutInfo.this.registerDataProvider();
                CalendarShortcutInfo.this.updateCalendarData();
            }
        });
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean needRegisterDataProvider() {
        boolean result;
        synchronized (this) {
            result = this.mInfoReceiver == null;
        }
        return result;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void registerDataProvider() {
        synchronized (this) {
            if (this.mInfoReceiver == null) {
                this.mInfoReceiver = new OneplusCalendarInfoReceiver();
                Logger.showCallStack(TAG, 10);
                Logger.d(TAG, "CalendarShortcutInfo registerDataProvider receiver = " + this.mInfoReceiver);
                Logger.d(TAG, "CalendarShortcutInfo registerDataProvider mContext = " + this.mContext);
                Logger.d(TAG, "CalendarShortcutInfo registerDataProvider obj = " + this);
                this.mContext.registerReceiver(this.mInfoReceiver, this.mInfoIntentFilter);
            }
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void unregisterDataProvider() {
        synchronized (this) {
            if (this.mInfoReceiver != null) {
                Logger.showCallStack(TAG, 10);
                Logger.d(TAG, "CalendarShortcutInfo unregisterDataProvider receiver = " + this.mInfoReceiver);
                Logger.d(TAG, "CalendarShortcutInfo unregisterDataProvider mContext = " + this.mContext);
                Logger.d(TAG, "CalendarShortcutInfo unregisterDataProvider obj = " + this);
                this.mContext.unregisterReceiver(this.mInfoReceiver);
                this.mInfoReceiver = null;
            }
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean requestData() {
        return false;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void onDataChanged() {
        this.mNeedAnimateIconCallback.onNeedAnimateIcon();
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean needInvalidate() {
        String oldDay = (String) this.mDataMap.get(KEY_OLD_DAY);
        String newDay = (String) this.mDataMap.get(KEY_NEW_DAY);
        if ((oldDay == null && newDay == null) || newDay.equals(oldDay)) {
            Logger.d(TAG, "CalendarShortcInfo needInvalidate false, oldDay = " + oldDay + ", newDay = " + newDay + ", obj = " + this);
            return false;
        }
        Logger.d(TAG, "DynamicIcon check needInvalidate true, oldDay = " + oldDay + ", newDay = " + newDay + ", obj = " + this);
        return true;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public boolean isRunningAnimation() {
        boolean z;
        synchronized (this.mCheckAnimatingObject) {
            z = this.mRunningAnimation;
        }
        return z;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void onAnimationStart() {
        synchronized (this.mCheckAnimatingObject) {
            this.mRunningAnimation = true;
        }
        Logger.d(TAG, "DynamicIcon CalendarShortcutInfo onAnimationStart obj = " + this);
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void onAnimationEnd() {
        this.mDataMap.put(KEY_OLD_DAY, this.mDataMap.get(KEY_NEW_DAY));
        Logger.d(TAG, "DynamicIcon CalendarShortcutInfo onAnimationEnd put oldDay = " + this.mDataMap.get(KEY_NEW_DAY) + ", obj = " + this);
        this.mRunningAnimation = false;
        updateIconCache();
        if (this.mUpdateRunnable != null) {
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.calendar.CalendarShortcutInfo.2
                @Override // java.lang.Runnable
                public void run() {
                    if (CalendarShortcutInfo.this.mUpdateRunnable != null) {
                        CalendarShortcutInfo.this.mUpdateRunnable.run();
                    }
                }
            });
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void updateIconCache() {
        TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.calendar.CalendarShortcutInfo.3
            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmap;
                ComponentName componentName;
                LauncherAppState appState;
                AssetCache assetCache;
                FastBitmapDrawable drawable = CalendarShortcutInfo.this.getStaticDrawable(false);
                if (drawable != null && (bitmap = DynamicIconUtil.getCompleteBitmap(drawable)) != null && (componentName = CalendarShortcutInfo.this.getTargetComponent()) != null && (appState = LauncherAppState.getInstance()) != null && (assetCache = appState.getAssetCache()) != null) {
                    assetCache.updateDynamicIconCache(componentName, bitmap);
                    DynamicIconManager.getInstance().notifyUpdateIconCacheCallback(componentName, CalendarShortcutInfo.this.user);
                }
            }
        });
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public Map<String, Object> getCurrentData() {
        return this.mDataMap;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public BubbleTextView createShortcutView(Context context, ViewGroup parent, boolean attachToRoot, int style) {
        int layout;
        if (context != this.mContext) {
            unregisterDataProvider();
            this.mContext = context;
        }
        if (needRegisterDataProvider()) {
            Logger.d(TAG, "needRegisterDataProvider");
            registerDataProvider();
            updateCalendarData();
        }
        if (style == R.style.Icon) {
            layout = R.layout.app_icon_calendar;
        } else {
            layout = R.layout.folder_application_calendar;
        }
        return (BubbleTextView) LayoutInflater.from(context).inflate(layout, parent, attachToRoot);
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public FastBitmapDrawable getStaticDrawable() {
        return getStaticDrawable(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FastBitmapDrawable getStaticDrawable(boolean resize) {
        Launcher launcher;
        Drawable d = getOriginalIconDrawable();
        if (d == null) {
            return null;
        }
        Bitmap b = Utilities.createIconBitmap(d, this.mContext);
        CalendarFastBitmapDrawable drawable = new CalendarFastBitmapDrawable(this.mContext, b);
        drawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
        drawable.setFilterBitmap(true);
        if (this.mRunningAnimation) {
            drawable.setText((String) this.mDataMap.get(KEY_NEW_DAY));
        } else {
            drawable.setText((String) this.mDataMap.get(KEY_OLD_DAY));
        }
        if (resize && (launcher = LauncherAppState.getInstance().getLauncher()) != null) {
            launcher.resizeIconDrawable(drawable);
            return drawable;
        }
        return drawable;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void initFlags() {
        if ((this.flags & 8) != 0) {
            this.flags ^= 8;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class OneplusCalendarInfoReceiver extends BroadcastReceiver {
        OneplusCalendarInfoReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String actionString = intent.getAction();
            Logger.d(CalendarShortcutInfo.TAG, "receive Calender intent, action = " + actionString + ", obj = " + CalendarShortcutInfo.this);
            CalendarShortcutInfo.this.updateCalendarData(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCalendarData(boolean background) {
        if (!background) {
            updateCalendarData();
        } else {
            UpdateRunnable r = new UpdateRunnable() { // from class: net.oneplus.h2launcher.dynamicicon.calendar.CalendarShortcutInfo.4
                @Override // net.oneplus.h2launcher.dynamicicon.UpdateRunnable, java.lang.Runnable
                public void run() {
                    if (CalendarShortcutInfo.this.isRunningAnimation()) {
                        if (CalendarShortcutInfo.this.mUpdateRunnable == null) {
                            CalendarShortcutInfo.this.mUpdateRunnable = this;
                            TaskWorker.get().post(CalendarShortcutInfo.this.mUpdateRunnable);
                            return;
                        } else {
                            if (CalendarShortcutInfo.this.mUpdateRunnable.createTime < this.createTime) {
                                CalendarShortcutInfo.this.mUpdateRunnable = this;
                                return;
                            }
                            return;
                        }
                    }
                    if (CalendarShortcutInfo.this.mUpdateRunnable != null) {
                        if (CalendarShortcutInfo.this.mUpdateRunnable.createTime <= this.createTime) {
                            CalendarShortcutInfo.this.mUpdateRunnable = null;
                        } else {
                            return;
                        }
                    }
                    CalendarShortcutInfo.this.updateCalendarData();
                    if (CalendarShortcutInfo.this.needInvalidate()) {
                        CalendarShortcutInfo.this.onDataChanged();
                    }
                }
            };
            TaskWorker.get().post(r);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCalendarData() {
        Calendar calendar = Calendar.getInstance();
        String day = String.valueOf(calendar.get(5));
        this.mDataMap.put(KEY_NEW_DAY, day);
        if (!this.mDataMap.containsKey(KEY_OLD_DAY)) {
            this.mDataMap.put(KEY_OLD_DAY, day);
        }
        Logger.d(TAG, "updateCalendarData day = " + day + ", newDay = " + this.mDataMap.get(KEY_NEW_DAY) + ", oldDay = " + this.mDataMap.get(KEY_OLD_DAY) + ", obj = " + this);
    }

    public FastBitmapDrawable getCurrentIconDrawable() {
        if (this.mCurrentDrawable == null) {
            Drawable d = getOriginalIconDrawable();
            if (d == null) {
                return null;
            }
            Bitmap b = Utilities.createIconBitmap(d, this.mContext);
            this.mCurrentDrawable = new CalendarFastBitmapDrawable(this.mContext, b);
            this.mCurrentDrawable.setFilterBitmap(true);
            this.mCurrentDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
        }
        this.mCurrentDrawable.setText((String) this.mDataMap.get(KEY_OLD_DAY));
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            launcher.resizeIconDrawable(this.mCurrentDrawable);
        }
        return this.mCurrentDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastBitmapDrawable getNewIconDrawable() {
        if (this.mNewDrawable == null) {
            Drawable d = getOriginalIconDrawable();
            if (d == null) {
                return null;
            }
            Bitmap b = Utilities.createIconBitmap(d, this.mContext);
            this.mNewDrawable = new CalendarFastBitmapDrawable(this.mContext, b);
            this.mNewDrawable.setFilterBitmap(true);
            this.mNewDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
        }
        this.mNewDrawable.setText((String) this.mDataMap.get(KEY_NEW_DAY));
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            launcher.resizeIconDrawable(this.mNewDrawable);
        }
        return this.mNewDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastBitmapDrawable getOriginalIconDrawable() {
        AssetCache assetCache;
        if (this.mBaseDrawable == null) {
            Drawable d = null;
            DynamicIconDrawableConfig config = null;
            if (this.mAssetPackConfig != null) {
                config = this.mAssetPackConfig.getBackgroundDrawableConfig();
            } else if (this.mOriginalConfig != null) {
                config = this.mOriginalConfig.getBackgroundDrawableConfig();
            }
            if (config == null) {
                return null;
            }
            LauncherAppState app = LauncherAppState.getInstance();
            if (app != null && (d = (assetCache = app.getAssetCache()).getDynamicIconDrawable(config.getDefaultDrawableResource(), config.getAssetPackName())) == null) {
                d = assetCache.getDynamicIconDrawable(config.getDefaultDrawableResource(), this.mOriginalConfig.getAssetPackName());
            }
            if (d == null) {
                return null;
            }
            Bitmap b = Utilities.createIconBitmap(d, this.mContext);
            this.mBaseDrawable = new CalendarFastBitmapDrawable(this.mContext, b);
            this.mBaseDrawable.updateConfig(this.mOriginalConfig, this.mAssetPackConfig);
            this.mBaseDrawable.setFilterBitmap(true);
        }
        return this.mBaseDrawable;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicShortcut
    public void refreshConfig() {
        LauncherAppState app = LauncherAppState.getInstance();
        if (app != null) {
            AssetCache assetCache = app.getAssetCache();
            DynamicIconConfig originalConfig = assetCache.getDynamicIconConfig(DynamicIconManager.COMPONENT_NAME_CALENDAR, 1);
            DynamicIconConfig assetPackConfig = assetCache.getDynamicIconConfig(DynamicIconManager.COMPONENT_NAME_CALENDAR, 2);
            if (originalConfig != this.mOriginalConfig || assetPackConfig != this.mAssetPackConfig) {
                this.mOriginalConfig = originalConfig;
                this.mAssetPackConfig = assetPackConfig;
                this.mBaseDrawable = null;
                this.mNewDrawable = null;
                this.mCurrentDrawable = null;
            }
        }
    }

    public static boolean verifyConfig(DynamicIconConfig config) {
        try {
            DynamicIconDrawableConfig drawableConfig = config.getBackgroundDrawableConfig();
            if (drawableConfig == null) {
                return false;
            }
            String resource = drawableConfig.getDefaultDrawableResource();
            LauncherAppState app = LauncherAppState.getInstance();
            if (app == null) {
                return false;
            }
            AssetCache assetCache = app.getAssetCache();
            return assetCache.checkResourceExist(drawableConfig.getAssetPackName(), resource);
        } catch (Exception e) {
            Logger.w(TAG, "parse DynamicIconConfig error, message = " + e.getMessage());
            return false;
        }
    }
}
