package net.oneplus.h2launcher;

import android.os.Bundle;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.quickpage.QuickPageBaseActivity;
import net.oneplus.h2launcher.quickpage.view.WelcomePanel;

/* loaded from: classes.dex */
public class QuickPageExternalActivity extends QuickPageBaseActivity {
    private AssetCache mAssetCache;
    private LauncherModel mModel;
    private Stats mStats;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LauncherAppState.setApplicationContext(getApplicationContext());
        LauncherAppState app = LauncherAppState.getInstance();
        this.mModel = app.getModel();
        this.mAssetCache = app.getAssetCache();
        this.mStats = new Stats(this);
        createQuickPage();
        setContentView(getQuickPageView());
        invalidateScheme();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity, android.app.Activity
    public void onDestroy() {
        LauncherAppState.getInstance().getAppWidgetHost().stopListening();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (isDrawerOpen()) {
            closeDrawer();
        } else {
            super.onBackPressed();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public void setWelcomePanel(WelcomePanel welcomePanel) {
        super.setWelcomePanel(welcomePanel);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public LauncherModel getModel() {
        return this.mModel;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public Stats getStats() {
        return this.mStats;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageBaseActivity
    public AssetCache getAssetCache() {
        return this.mAssetCache;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesSuspended(String[] packageNames, UserHandleCompat user) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnsuspended(String[] packageNames, UserHandleCompat user) {
    }
}
