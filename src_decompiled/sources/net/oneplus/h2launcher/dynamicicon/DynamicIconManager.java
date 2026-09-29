package net.oneplus.h2launcher.dynamicicon;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.WeatherProvider;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.calendar.CalendarShortcutInfo;
import net.oneplus.h2launcher.dynamicicon.weather.WeatherShortcutInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class DynamicIconManager {
    private static DynamicIconManager sSingleton;
    private Context mContext;
    private NeedAnimateIconCallback mNeedAnimateIconCallback;
    public static final String TAG = DynamicIconManager.class.getSimpleName();
    public static final ComponentName COMPONENT_NAME_DESKCLOCK = new ComponentName(WidgetConstant.COM_ONEPLUS_DESKCLOCK, "com.oneplus.deskclock.DeskClock");
    public static final ComponentName COMPONENT_NAME_WEATHER = new ComponentName("net.oneplus.weather", WeatherProvider.WEATHER_LAUNCH_ACTIVITY);
    public static final ComponentName COMPONENT_NAME_CALENDAR = new ComponentName(WidgetConstant.COM_ONEPLUS_CALENDAR, "com.android.calendar.AllInOneActivity");
    public static final ComponentName COMPONENT_NAME_GALLERY = new ComponentName("com.oneplus.gallery", "com.oneplus.gallery.OPGalleryActivity");
    public static final ComponentName COMPONENT_NAME_DIALER = new ComponentName(Utilities.DIALER_PACKAGE_M, Utilities.DIALER_CLASSNAME);
    public static final ComponentName COMPONENT_NAME_MMS = new ComponentName("com.android.mms", "com.android.mms.ui.ConversationList");
    public static final ComponentName[] sDefaultNeedRefreshApps = {COMPONENT_NAME_WEATHER, COMPONENT_NAME_CALENDAR};
    private HashMap<ComponentName, Class> mDynamicIconMap = new HashMap<>();
    private HashSet<ComponentName> mNeedRefreshAppsSets = new HashSet<>();
    private ArrayList<UpdateIconCacheCallback> mUpdateIconCacheCallback = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface NeedAnimateIconCallback {
        void onNeedAnimateIcon();
    }

    /* loaded from: classes.dex */
    public interface UpdateIconCacheCallback {
        void updateIconCacheFinish(ComponentName componentName, UserHandleCompat userHandleCompat);
    }

    private DynamicIconManager() {
        Collections.addAll(this.mNeedRefreshAppsSets, sDefaultNeedRefreshApps);
        this.mNeedAnimateIconCallback = new NeedAnimateIconCallback() { // from class: net.oneplus.h2launcher.dynamicicon.DynamicIconManager.1
            @Override // net.oneplus.h2launcher.dynamicicon.DynamicIconManager.NeedAnimateIconCallback
            public void onNeedAnimateIcon() {
                TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.dynamicicon.DynamicIconManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DynamicIconManager.this.mContext != null && (DynamicIconManager.this.mContext instanceof Launcher)) {
                            Launcher launcher = (Launcher) DynamicIconManager.this.mContext;
                            launcher.doWorkspaceOrFolderIconAnimation();
                        }
                    }
                });
            }
        };
        this.mDynamicIconMap.put(COMPONENT_NAME_WEATHER, WeatherShortcutInfo.class);
        this.mDynamicIconMap.put(COMPONENT_NAME_CALENDAR, CalendarShortcutInfo.class);
    }

    public void init(Context context) {
        this.mContext = context;
    }

    public static DynamicIconManager getInstance() {
        if (sSingleton == null) {
            sSingleton = new DynamicIconManager();
        }
        return sSingleton;
    }

    public static ComponentName[] getsDefaultNeedRefreshApps() {
        return sDefaultNeedRefreshApps;
    }

    public boolean verifyConfig(ComponentName componentName, DynamicIconConfig config) {
        if (config == null || !config.isValid() || componentName == null) {
            return false;
        }
        Class dynamicShortcutClass = this.mDynamicIconMap.get(componentName);
        boolean result = false;
        if (dynamicShortcutClass == CalendarShortcutInfo.class) {
            result = CalendarShortcutInfo.verifyConfig(config);
        } else if (dynamicShortcutClass == WeatherShortcutInfo.class) {
            result = WeatherShortcutInfo.verifyConfig(config);
        }
        config.setValid(result);
        return result;
    }

    public boolean isDynamicIcon(LauncherActivityInfoCompat info) {
        return isDynamicIcon(info.getComponentName());
    }

    public boolean isDynamicIcon(AppInfo appInfo) {
        return isDynamicIcon(appInfo.componentName);
    }

    public boolean isDynamicIcon(Intent intent) {
        return isDynamicIcon(intent.getComponent());
    }

    public boolean isDynamicIcon(ComponentName componentName) {
        return this.mNeedRefreshAppsSets.contains(componentName);
    }

    public ShortcutInfo createShortcutInfo(LauncherActivityInfoCompat info) {
        return createShortcutInfo(info.getComponentName());
    }

    public ShortcutInfo createShortcutInfo(Intent intent) {
        return createShortcutInfo(intent.getComponent());
    }

    public ShortcutInfo createShortcutInfo(ComponentName componentName) {
        if (this.mNeedRefreshAppsSets.contains(componentName)) {
            ShortcutInfo info = null;
            if (componentName.equals(COMPONENT_NAME_WEATHER)) {
                info = new WeatherShortcutInfo(this.mContext, this.mNeedAnimateIconCallback);
            } else if (componentName.equals(COMPONENT_NAME_CALENDAR)) {
                info = new CalendarShortcutInfo(this.mContext, this.mNeedAnimateIconCallback);
            }
            if (info == null) {
                Logger.e(TAG, "In DynamicIcon componentName list, but no allocate, log it. " + componentName);
                return info;
            }
            return info;
        }
        return null;
    }

    public ShortcutInfo createShortcutInfo(AppInfo appInfo) {
        ComponentName componentName = appInfo.componentName;
        if (this.mNeedRefreshAppsSets.contains(componentName)) {
            ShortcutInfo info = null;
            if (componentName.equals(COMPONENT_NAME_WEATHER)) {
                info = new WeatherShortcutInfo(this.mContext, appInfo, this.mNeedAnimateIconCallback);
            } else if (componentName.equals(COMPONENT_NAME_CALENDAR)) {
                info = new CalendarShortcutInfo(this.mContext, appInfo, this.mNeedAnimateIconCallback);
            }
            if (info == null) {
                Logger.e(TAG, "In DynamicIcon componentName list, but no allocate, log it. " + componentName);
                return info;
            }
            return info;
        }
        return null;
    }

    public ShortcutInfo createShortcutInfo(Intent intent, CharSequence title, CharSequence contentDescription, Bitmap icon, UserHandleCompat user) {
        ComponentName componentName = intent.getComponent();
        if (this.mNeedRefreshAppsSets.contains(componentName)) {
            ShortcutInfo info = null;
            if (componentName.equals(COMPONENT_NAME_WEATHER)) {
                info = new WeatherShortcutInfo(this.mContext, intent, title, contentDescription, icon, user, this.mNeedAnimateIconCallback);
            } else if (componentName.equals(COMPONENT_NAME_CALENDAR)) {
                info = new CalendarShortcutInfo(this.mContext, intent, title, contentDescription, icon, user, this.mNeedAnimateIconCallback);
            }
            if (info == null) {
                Logger.e(TAG, "In DynamicIcon componentName list, but no allocate, log it. " + componentName);
                return info;
            }
            return info;
        }
        return null;
    }

    public void requestDynamicIconsDataChange() {
    }

    private void unregisterDynamicIconsDataProvider() {
        Iterator<IDynamicShortcut> it = LauncherModel.getDynamicItems().iterator();
        while (it.hasNext()) {
            IDynamicShortcut info = it.next();
            info.unregisterDataProvider();
        }
    }

    public void registerUpdateIconCacheCallback(UpdateIconCacheCallback callback) {
        if (!this.mUpdateIconCacheCallback.contains(callback)) {
            this.mUpdateIconCacheCallback.add(callback);
        }
    }

    public void unregisterUpdateIconCacheCallback(UpdateIconCacheCallback callback) {
        this.mUpdateIconCacheCallback.remove(callback);
    }

    public void notifyUpdateIconCacheCallback(ComponentName componentName, UserHandleCompat user) {
        Iterator<UpdateIconCacheCallback> it = this.mUpdateIconCacheCallback.iterator();
        while (it.hasNext()) {
            UpdateIconCacheCallback aMUpdateIconCacheCallback = it.next();
            aMUpdateIconCacheCallback.updateIconCacheFinish(componentName, user);
        }
    }

    public void onDestroy() {
        unregisterDynamicIconsDataProvider();
        this.mContext = null;
    }
}
