package net.oneplus.h2launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.WallpapersContainerView;
import net.oneplus.h2launcher.dynamicui.ExtractionUtils;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WallpaperChangedReceiver extends BroadcastReceiver {
    private static final String TAG = WallpaperChangedReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent data) {
        WallpapersContainerView wallpapersView;
        LauncherAppState.setApplicationContext(context.getApplicationContext());
        LauncherAppState appState = LauncherAppState.getInstance();
        String action = data.getAction();
        Logger.d(TAG, "wallpaper changed, action=%s", action);
        if ("net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED".equals(action)) {
            Launcher launcher = appState.getLauncher();
            if (launcher != null) {
                launcher.showSwitchingLoadingView(false);
            } else {
                Logger.w(TAG, "[WallpaperChangedReceiver] launcher is null.");
            }
        } else if ("net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN".equals(action)) {
            Launcher launcher2 = appState.getLauncher();
            if (launcher2 != null && launcher2.isWallpapersViewVisible() && (wallpapersView = launcher2.getWallpapersView()) != null) {
                wallpapersView.onWallpaperSaved(1);
            } else {
                Logger.w(TAG, "[WallpaperChangedReceiver] launcher is null.");
            }
        }
        if ("android.intent.action.WALLPAPER_CHANGED".equals(action)) {
            ExtractionUtils.startColorExtractionServiceIfNecessary(context, false);
        }
        if ("android.intent.action.WALLPAPER_CHANGED".equals(action) || "android.intent.action.KEYGUARD_WALLPAPER_CHANGED".equals(action)) {
            WallpaperPreview.Model.getInstance(context).updateWallpaperId(context, true);
        }
    }
}
