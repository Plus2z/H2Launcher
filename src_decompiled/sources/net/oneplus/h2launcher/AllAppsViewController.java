package net.oneplus.h2launcher;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class AllAppsViewController {
    private static final String TAG = "Launcher.AllAppsViewController";
    Launcher mLauncher;

    public AllAppsViewController(Launcher launcher) {
        this.mLauncher = launcher;
    }

    public void setSearchBarController() {
        if (this.mLauncher.getAppsView() != null) {
            LauncherCallbacks launcherCallbacks = this.mLauncher.getLauncherCallbacks();
            if (launcherCallbacks != null && launcherCallbacks.getAllAppsSearchBarController() != null) {
                this.mLauncher.getAppsView().setSearchBarController(launcherCallbacks.getAllAppsSearchBarController());
            } else {
                this.mLauncher.getAppsView().setSearchBarController(this.mLauncher.getAppsView().newDefaultAppSearchController());
            }
        }
    }

    public void setSearchBarBounds(Rect newBounds) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().setSearchBarBounds(newBounds);
        }
    }

    public void scrollToTop() {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().scrollToTop();
        }
    }

    public void setFirstInitialized(boolean firstInitialized) {
        if (this.mLauncher.getAppsView() != null && this.mLauncher.getAppsView().isFirstInitialized()) {
            this.mLauncher.getAppsView().setFirstInitialized(firstInitialized);
        }
    }

    public void updateAllAppsEntries(AssetCache assetCache, String appEditComponent, boolean updateLabels) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().updateAllAppsEntries(assetCache, appEditComponent, updateLabels);
        }
    }

    public void notifyDataSetChanged() {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().getAdapter().notifyDataSetChanged();
        }
    }

    public void setPredictedApps(List<ComponentKey> apps) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().setPredictedApps(apps);
        }
    }

    public void addApps(ArrayList<AppInfo> apps) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().addApps(apps);
        }
    }

    public void setApps(ArrayList<AppInfo> apps) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().setApps(apps);
        }
    }

    public void updateApps(ArrayList<AppInfo> apps) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().updateApps(apps);
        }
    }

    public void removeApps(ArrayList<AppInfo> apps) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().removeApps(apps);
        }
    }

    public void updateAllAppsFromCustomizations() {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().updateAllAppsFromCustomizations();
        }
    }

    public void setAppsAdapter(RecyclerView.Adapter adapter) {
        if (this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().getAppsRecyclerView().setAdapter(adapter);
        }
    }

    public void setUpdateIconsInBackground(boolean updateIconsInBackground) {
        if (this.mLauncher.getAppsView() != null && this.mLauncher.getAppsView().getAdapter() != null) {
            this.mLauncher.getAppsView().getAdapter().setUpdateIconsInBackground(updateIconsInBackground);
        }
    }
}
