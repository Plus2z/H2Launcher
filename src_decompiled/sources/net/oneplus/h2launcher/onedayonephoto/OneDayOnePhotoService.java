package net.oneplus.h2launcher.onedayonephoto;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.graphics.Palette;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperImageCache;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.UriWallpaperInfo;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class OneDayOnePhotoService extends IntentService {
    private static final String TAG = OneDayOnePhotoService.class.getSimpleName();

    public OneDayOnePhotoService() {
        super("OneDayOnePhotoService");
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        Logger.d(TAG, "onCreate");
        LauncherAppState.getInstance();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        int orientation;
        Launcher launcher;
        if (intent != null) {
            Uri data = intent.getData();
            if (data == null) {
                Logger.e(TAG, "invalid data");
                return;
            }
            int screen = intent.getIntExtra(LauncherSettings.Favorites.SCREEN, -1);
            if (screen < 0 || !isValidScreen(screen)) {
                Logger.e(TAG, "invalid screen: %s", Integer.valueOf(screen));
                return;
            }
            if (screen == 0) {
                orientation = 0;
            } else {
                orientation = intent.getIntExtra("orientation", -1);
                if (orientation < 0 || !isValidOrientation(orientation)) {
                    Logger.e(TAG, "invalid orientation");
                    return;
                }
            }
            LauncherAppState appState = LauncherAppState.getInstanceNoCreate();
            if (appState != null && (launcher = appState.getLauncher()) != null && launcher.isWallpapersViewVisible()) {
                Logger.i(TAG, "block setting one day one photo wallpaper since user is in wallpapers view");
                return;
            }
            Logger.d(TAG, "data=%s, screen=%s, orientation=%s", data, Integer.valueOf(screen), Integer.valueOf(orientation));
            BlurWallpaperSettings settings = PreferencesHelper.getBlurWallpaperSettings(this);
            if (screen == 1 && orientation != settings.orientation) {
                Logger.w(TAG, "Setting home screen wallpaper with a different orientation is not allowed, current=%d", Integer.valueOf(settings.orientation));
                return;
            }
            settings.notify = false;
            settings.orientation = orientation;
            List<UriWallpaperInfo> infoList = new ArrayList<>();
            infoList.add(new UriWallpaperInfo(data, data, Integer.MIN_VALUE, orientation));
            if (screen == 1) {
                if (StyleManager.getInstance().drawWallpaperColorMask()) {
                    UriWallpaperInfo primary = infoList.get(0);
                    List<Palette.Swatch> swatches = primary.loadSwatches(this);
                    if (swatches.isEmpty()) {
                        Logger.e(TAG, "Failed to load color swatches from one day one photo wallpaper");
                        return;
                    }
                    settings.maskColor = swatches.get(0).getRgb();
                    int maskColor = settings.maskColor;
                    int orientation2 = orientation == 0 ? 1 : 0;
                    infoList.add(new UriWallpaperInfo(data, data, maskColor, orientation2));
                }
                PreferencesHelper.setBlurWallpaperSettings(this, settings);
            }
            WallpaperImageCache.clear();
            int homeScreenOrientation = settings.orientation;
            String serialNumber = String.valueOf(System.currentTimeMillis());
            for (UriWallpaperInfo info : infoList) {
                info.updateMetaData(serialNumber);
                info.loadImage(this, screen);
                info.onBeforeSave(homeScreenOrientation);
                info.onSave(this, screen);
            }
            if (screen == 1) {
                WallpaperColor wallpaperColor = new WallpaperColor(0, settings.maskColor, settings.blurEnabled);
                PreferencesHelper.setWallpaperColor(this, wallpaperColor);
            }
        }
    }

    private boolean isValidScreen(int screen) {
        return screen == 0 || screen == 1;
    }

    private boolean isValidOrientation(int orientation) {
        return orientation == 0 || orientation == 1;
    }
}
