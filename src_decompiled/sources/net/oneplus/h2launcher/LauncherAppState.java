package net.oneplus.h2launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.PackageInstallerCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.ConfigMonitor;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherAppState {
    private static LauncherAppState INSTANCE;
    private static Context sContext;
    private static WeakReference<LauncherProvider> sLauncherProvider;
    private LauncherAccessibilityDelegate mAccessibilityDelegate;
    private final AppFilter mAppFilter;
    private LauncherAppWidgetHost mAppWidgetHost;
    private final AssetCache mAssetCache;
    private final BuildInfo mBuildInfo;
    private InvariantDeviceProfile mInvariantDeviceProfile;
    private Launcher mLauncher;
    final LauncherModel mModel;
    private BroadcastReceiver mOneplusPermissionChangedReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.LauncherAppState.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Utilities.clearOneplusPermissionState();
        }
    };
    private boolean mWallpaperChangedSinceLastCheck;
    private final WidgetPreviewLoader mWidgetCache;

    public static LauncherAppState getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new LauncherAppState();
        }
        return INSTANCE;
    }

    public static LauncherAppState getInstanceNoCreate() {
        return INSTANCE;
    }

    public Context getContext() {
        return sContext;
    }

    public Launcher getLauncher() {
        return this.mLauncher;
    }

    public static void setApplicationContext(Context context) {
        if (sContext != null) {
            Log.w("Launcher", "setApplicationContext called twice! old=" + sContext + " new=" + context);
        }
        sContext = context.getApplicationContext();
    }

    private LauncherAppState() {
        if (sContext == null) {
            Logger.w("Launcher", "LauncherAppState inited before app context set!");
            sContext = LauncherApplication.getAppContext();
        }
        Log.v("Launcher", "LauncherAppState inited");
        if (sContext.getResources().getBoolean(R.bool.debug_memory_enabled)) {
            MemoryTracker.startTrackingMe(sContext, "L");
        }
        AnalyticHelper.init(sContext);
        StyleManager.init(sContext);
        this.mInvariantDeviceProfile = new InvariantDeviceProfile(sContext);
        this.mAssetCache = new AssetCache(sContext, this.mInvariantDeviceProfile);
        this.mWidgetCache = new WidgetPreviewLoader(sContext, this.mAssetCache, this.mInvariantDeviceProfile);
        this.mAppWidgetHost = new LauncherAppWidgetHost(sContext, 1024);
        this.mAppFilter = AppFilter.loadByName(sContext.getString(R.string.app_filter_class));
        this.mBuildInfo = BuildInfo.loadByName(sContext.getString(R.string.build_info_class));
        this.mModel = new LauncherModel(this, this.mAssetCache, this.mAppFilter);
        LauncherAppsCompat.getInstance(sContext).addOnAppsChangedCallback(this.mModel);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.LOCALE_CHANGED");
        filter.addAction("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED");
        filter.addAction(LauncherAppsCompat.ACTION_MANAGED_PROFILE_ADDED);
        filter.addAction(LauncherAppsCompat.ACTION_MANAGED_PROFILE_REMOVED);
        filter.addAction(LauncherAppsCompat.ACTION_MANAGED_PROFILE_AVAILABLE);
        filter.addAction(LauncherAppsCompat.ACTION_MANAGED_PROFILE_UNAVAILABLE);
        sContext.registerReceiver(this.mModel, filter);
        UserManagerCompat.getInstance(sContext).enableAndResetCache();
        new ConfigMonitor(sContext).register();
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("oneplus.intent.action.PERMISSION_AGREE_CHANGE");
        sContext.registerReceiver(this.mOneplusPermissionChangedReceiver, filter2);
    }

    public void onTerminate() {
        sContext.unregisterReceiver(this.mModel);
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(sContext);
        launcherApps.removeOnAppsChangedCallback(this.mModel);
        PackageInstallerCompat.getInstance(sContext).onStop();
        sContext.unregisterReceiver(this.mOneplusPermissionChangedReceiver);
    }

    public void reloadWorkspace() {
        this.mModel.resetLoadedState(false, true);
        this.mModel.startLoaderFromBackground();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherModel setLauncher(Launcher launcher) {
        Logger.d("Launcher", "setLauncher");
        this.mLauncher = launcher;
        getLauncherProvider().setLauncherProviderChangeListener(launcher);
        this.mAssetCache.updateCurrentLocale();
        this.mModel.initialize(launcher);
        this.mAccessibilityDelegate = (launcher == null || !Utilities.ATLEAST_LOLLIPOP) ? null : new LauncherAccessibilityDelegate(launcher);
        return this.mModel;
    }

    public LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public AssetCache getAssetCache() {
        return this.mAssetCache;
    }

    public LauncherModel getModel() {
        return this.mModel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLauncherProvider(LauncherProvider provider) {
        Logger.d("Launcher", "setLauncherProvider");
        sLauncherProvider = new WeakReference<>(provider);
    }

    public static LauncherProvider getLauncherProvider() {
        if (sLauncherProvider == null) {
            Logger.w("Launcher", "sLauncherProvider is null, let launcher provider re-assign its instance to launcher app state");
            if (sContext != null) {
                Uri uri = Uri.parse("content://" + LauncherProvider.AUTHORITY);
                sContext.getContentResolver().call(uri, "set_launcher_provider", (String) null, (Bundle) null);
                Object[] objArr = new Object[1];
                objArr[0] = Boolean.valueOf(sLauncherProvider == null);
                Logger.i("Launcher", "sLauncherProvider is null? %b", objArr);
            } else {
                Logger.e("Launcher", "sContext is empty....orz");
            }
        }
        return sLauncherProvider.get();
    }

    public static String getSharedPreferencesKey() {
        return LauncherFiles.SHARED_PREFERENCES_KEY;
    }

    public WidgetPreviewLoader getWidgetCache() {
        return this.mWidgetCache;
    }

    public LauncherAppWidgetHost getAppWidgetHost() {
        return this.mAppWidgetHost;
    }

    public boolean hasWallpaperChangedSinceLastCheck() {
        boolean result = this.mWallpaperChangedSinceLastCheck;
        this.mWallpaperChangedSinceLastCheck = false;
        return result;
    }

    public InvariantDeviceProfile getInvariantDeviceProfile() {
        return this.mInvariantDeviceProfile;
    }

    public static boolean isDogfoodBuild() {
        return getInstance().mBuildInfo.isDogfoodBuild();
    }

    public void setInvariantDeviceProfile(InvariantDeviceProfile profile) {
        this.mInvariantDeviceProfile = profile;
    }
}
