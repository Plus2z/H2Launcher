package net.oneplus.h2launcher.globalsearch;

import android.content.ComponentName;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.Iterator;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class GlobalSearchController implements DynamicIconManager.UpdateIconCacheCallback {
    public static final int PERMISSIONS_REQUEST = 200;
    public static final String TAG = GlobalSearchController.class.getSimpleName();
    private AssetCache mAssetCache;
    private GlobalSearchView mGlobalSearchView;
    private Launcher mLauncher;

    public GlobalSearchController(Launcher launcher, AssetCache assetCache) {
        this.mLauncher = launcher;
        this.mAssetCache = assetCache;
    }

    public void showGlobalSearch() {
        if (!this.mLauncher.isAllAppsLoaded()) {
            Logger.d(TAG, "All apps still loading, can't access global search !");
            return;
        }
        if (this.mGlobalSearchView == null) {
            this.mGlobalSearchView = (GlobalSearchView) this.mLauncher.inflateGlobalSearView();
            if (this.mGlobalSearchView == null) {
                Logger.d(TAG, "Inflate GlobalSearchView failed, can't access global search !");
                return;
            }
        }
        if (!PermissionUtils.hasGrantedPermission(this.mLauncher, "android.permission.READ_CONTACTS") && Utilities.shouldShowRequestPermission(this.mLauncher)) {
            PermissionUtils.requestPermission(this.mLauncher, "android.permission.READ_CONTACTS", 200);
            PreferenceManager.getDefaultSharedPreferences(this.mLauncher).edit().putBoolean(Utilities.PREFERENCE_SHOW_REQUEST_WINDOW, true).apply();
        }
        if (!this.mGlobalSearchView.isAnimating()) {
            this.mGlobalSearchView.initInputBackground();
            this.mGlobalSearchView.init();
            this.mGlobalSearchView.setTranslationY(0.0f);
            this.mGlobalSearchView.setVisibility(0);
            this.mGlobalSearchView.getSearchContainer().setAlpha(1.0f);
            this.mGlobalSearchView.getSearchInputContainer().setVisibility(0);
            this.mGlobalSearchView.getSearchInputContainer().setBackgroundResource(R.drawable.global_search_input_card);
            return;
        }
        this.mGlobalSearchView.cancelAnimation();
    }

    public void hideGlobalSearchWithoutAnimation() {
        if (this.mGlobalSearchView != null) {
            this.mGlobalSearchView.cancelAnimation();
            this.mGlobalSearchView.exitWithoutAnimation();
            this.mGlobalSearchView.getSearchContainer().setAlpha(0.0f);
        }
    }

    public void hideGlobalSearch() {
        if (this.mGlobalSearchView != null) {
            this.mGlobalSearchView.cancelAnimation();
            this.mGlobalSearchView.exitAnimation();
        }
    }

    public void getContactsDb() {
        TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchController.1
            @Override // java.lang.Runnable
            public void run() {
                if (GlobalSearchController.this.mGlobalSearchView != null) {
                    GlobalSearchController.this.mGlobalSearchView.getContactsDb(false);
                }
            }
        });
    }

    public void onComponentChanged() {
        ArrayList<AppInfo> appInfos;
        if (this.mGlobalSearchView != null) {
            appInfos = this.mGlobalSearchView.getAppInfos();
        } else {
            appInfos = LauncherAppState.getInstance().getModel().getAllAppsList();
        }
        updateAppIconAndName(appInfos);
    }

    public void updateAppInfo(ComponentName componentName, UserHandleCompat user) {
        ArrayList<AppInfo> appInfos;
        if (this.mGlobalSearchView != null) {
            appInfos = this.mGlobalSearchView.getAppInfos();
        } else {
            appInfos = LauncherAppState.getInstance().getModel().getAllAppsList();
        }
        if (appInfos != null) {
            Iterator<AppInfo> it = appInfos.iterator();
            while (it.hasNext()) {
                AppInfo info = it.next();
                if (info.componentName.equals(componentName) && info.user.equals(user)) {
                    info.updateIcon(this.mAssetCache);
                    info.updateLabel(this.mAssetCache);
                    return;
                }
            }
        }
    }

    public void onPackageAdded(String packageName, UserHandleCompat user, AssetCache assetCache) {
        if (this.mGlobalSearchView != null) {
            this.mGlobalSearchView.onPackageAdded(packageName, user, assetCache);
        }
    }

    public void updateAllAppsList(String packageName, AssetCache assetCache) {
        if (this.mGlobalSearchView != null) {
            this.mGlobalSearchView.updateAllAppsList(packageName, assetCache);
        }
    }

    private void updateAppIconAndName(ArrayList<AppInfo> appInfos) {
        if (appInfos != null) {
            for (int i = 0; i < appInfos.size(); i++) {
                appInfos.get(i).updateIcon(this.mAssetCache);
                appInfos.get(i).updateLabel(this.mAssetCache);
            }
        }
    }

    public void onSystemLowMemory(int level) {
        if (this.mGlobalSearchView != null) {
            this.mGlobalSearchView.trimMemory(level);
        }
    }

    public void closeGlobalSearchDatabase() {
        GlobalSearchDbHelper globalSearchDbHelper = this.mLauncher.getStats().getGlobalSearchDbHelper();
        if (globalSearchDbHelper != null) {
            globalSearchDbHelper.close();
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.DynamicIconManager.UpdateIconCacheCallback
    public void updateIconCacheFinish(ComponentName componentName, UserHandleCompat user) {
        updateAppInfo(componentName, user);
    }
}
