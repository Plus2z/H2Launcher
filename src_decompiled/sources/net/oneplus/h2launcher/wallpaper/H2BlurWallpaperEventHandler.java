package net.oneplus.h2launcher.wallpaper;

import android.app.WallpaperManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import net.oneplus.h2launcher.JobBuilderWrapper;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.migrate.MigrationManager;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class H2BlurWallpaperEventHandler implements WallpaperEventHandler {
    private static volatile H2BlurWallpaperEventHandler sInstance;
    private final Handler mHandler = new Handler(sWorkerThread.getLooper());
    private boolean mWillResetWallpaper = false;
    private static final String TAG = H2BlurWallpaperEventHandler.class.getSimpleName();
    private static final HandlerThread sWorkerThread = new HandlerThread(TAG);

    static {
        sWorkerThread.start();
    }

    private H2BlurWallpaperEventHandler() {
    }

    public static H2BlurWallpaperEventHandler getInstance() {
        if (sInstance == null) {
            synchronized (H2BlurWallpaperEventHandler.class) {
                if (sInstance == null) {
                    sInstance = new H2BlurWallpaperEventHandler();
                }
            }
        }
        return sInstance;
    }

    @Override // net.oneplus.h2launcher.wallpaper.WallpaperEventHandler
    public void onLauncherCreate(Context context) {
        setupWallpaperForUser(context);
    }

    @Override // net.oneplus.h2launcher.wallpaper.WallpaperEventHandler
    public void onLauncherStart(Context context) {
        boolean isOnePlusBlurWallpaper2 = WallpaperUtils.isOnePlusBlurWallpaper2(context);
        boolean showingDefaultImageWallpaper = showingDefaultImageWallpaper(context);
        Logger.d(TAG, "[onLauncherStart] mWillResetWallpaper=%b, isOnePlusBlurWallpaper2=%b, showingDefaultImageWallpaper=%b", Boolean.valueOf(this.mWillResetWallpaper), Boolean.valueOf(isOnePlusBlurWallpaper2), Boolean.valueOf(showingDefaultImageWallpaper));
        if (this.mWillResetWallpaper) {
            Logger.d(TAG, "[onLauncherStart] wallpaper is going to reset to default, skip");
            this.mWillResetWallpaper = false;
        } else if (isOnePlusBlurWallpaper2 || showingDefaultImageWallpaper) {
            resetOrRestoreBlurWallpaper(context);
        }
    }

    @Override // net.oneplus.h2launcher.wallpaper.WallpaperEventHandler
    public void onUserSwitched(Context context) {
        restoreWallpaperForUser(context);
    }

    private void setupWallpaperForUser(final Context context) {
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        long userSN = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        Drawable wallpaper = WallpaperManager.getInstance(context).peekDrawable();
        boolean wallpaperSetupCompleted = PreferencesHelper.hasWallpaperSetupCompleted(context);
        Logger.d(TAG, "[setupWallpaperForUser] user=%d, wallpaper=%s, wallpaperSetupCompleted=%b", Long.valueOf(userSN), wallpaper, Boolean.valueOf(wallpaperSetupCompleted));
        if (wallpaper == null && !wallpaperSetupCompleted) {
            Logger.d(TAG, "wallpaper has NOT been setup for user: %d", Long.valueOf(userSN));
            if (WallpaperUtils.isNormalLiveWallpaper(context) || WallpaperUtils.isOnePlusLiveWallpaper(context)) {
                Logger.d(TAG, "user is using live wallpaper");
                PreferencesHelper.setWallpaperSetupCompleted(context);
                PreferencesHelper.clearBlurWallpaperMaskColor(context);
            } else {
                Logger.d(TAG, "setup default blur wallpaper for user");
                ComponentName service = new ComponentName(context, (Class<?>) SetupWallpaperService.class);
                JobInfo.Builder builder = JobBuilderWrapper.create(service);
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.schedule(builder.build());
                    this.mWillResetWallpaper = true;
                }
            }
        }
        this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.wallpaper.H2BlurWallpaperEventHandler.1
            @Override // java.lang.Runnable
            public void run() {
                MigrationManager.migrateBlurWallpaper(context);
                if (!H2BlurWallpaperEventHandler.this.mWillResetWallpaper) {
                    H2BlurWallpaperEventHandler.this.restoreWallpaperForUser(context);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreWallpaperForUser(Context context) {
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        long userSN = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        BlurWallpaperSettings settings = PreferencesHelper.getBlurWallpaperSettings(context);
        WallpaperTileInfo wallpaperTile = PreferencesHelper.getWallpaperTile(context);
        Logger.d(TAG, "[restoreWallpaperForUser] user=%d, settings=%s, tile=%s", Long.valueOf(userSN), settings, wallpaperTile);
        if ((context instanceof Launcher) && !((Launcher) context).isInWorkspaceMode()) {
            Logger.d(TAG, "skip restore wallpaper for user since launcher is not in workspace mode");
            return;
        }
        if (wallpaperTile != null) {
            if (!WallpaperUtils.isOnePlusBlurWallpaper(context)) {
                Logger.w(TAG, "Skip restore wallpaper since wallpaper preferences exist but blur wallpaper not active. The wallpaper component might has been set to another component in the absence of OnePlus H2Launcher");
                return;
            }
            boolean drawWallpaperColorMask = StyleManager.getInstance().drawWallpaperColorMask();
            WallpaperColor wallpaperColor = drawWallpaperColorMask ? PreferencesHelper.getWallpaperColor(context) : new WallpaperColor(0, 0);
            BlurWallpaperSettings defaultSettings = BlurWallpaperSettings.emptySettings();
            boolean isOrientationSync = settings.orientation == wallpaperTile.getOrientation();
            boolean isScrollModeSync = settings.scrollMode == defaultSettings.scrollMode;
            boolean isMaskColorSync = wallpaperColor == null || (settings.maskColor == wallpaperColor.rgb && settings.blurEnabled == wallpaperColor.blurEnabled);
            Logger.d(TAG, "isOrientationSync=%b, isScrollModeSync=%b, isMaskColorSync=%b", Boolean.valueOf(isOrientationSync), Boolean.valueOf(isScrollModeSync), Boolean.valueOf(isMaskColorSync));
            if (!isOrientationSync || !isScrollModeSync || !isMaskColorSync) {
                Logger.d(TAG, "restore wallpaper for user: %d", Long.valueOf(userSN));
                Logger.d(TAG, "user wallpaper tile: %s", wallpaperTile);
                Logger.d(TAG, "user wallpaper color: %s", wallpaperColor);
                Logger.d(TAG, "blur wallpaper settings: %s", settings);
                settings.notify = true;
                settings.orientation = wallpaperTile.getOrientation();
                settings.scrollMode = defaultSettings.scrollMode;
                if (wallpaperColor != null) {
                    settings.maskColor = wallpaperColor.rgb;
                    settings.blurEnabled = wallpaperColor.blurEnabled;
                }
                PreferencesHelper.setBlurWallpaperSettings(context, settings);
                context.sendBroadcast(new Intent("net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"));
                return;
            }
            return;
        }
        Logger.d(TAG, "wallpaperTile is null");
    }

    private void resetOrRestoreBlurWallpaper(Context context) {
        WallpaperTileInfo tileInfo = PreferencesHelper.getWallpaperTile(context);
        if (tileInfo == null) {
            Logger.d(TAG, "[resetOrRestoreBlurWallpaper] reset to default blur wallpaper");
            PreferencesHelper.setWallpaperSetupCompleted(context, false);
            ComponentName service = new ComponentName(context, (Class<?>) SetupWallpaperService.class);
            JobInfo.Builder builder = JobBuilderWrapper.create(service);
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null) {
                jobScheduler.schedule(builder.build());
                return;
            }
            return;
        }
        Logger.d(TAG, "[resetOrRestoreBlurWallpaper] restore to last blur wallpaper");
        tileInfo.onBeforeSave(tileInfo.getOrientation());
        tileInfo.onSave(context, 1);
    }

    private boolean showingDefaultImageWallpaper(Context context) {
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
        return wallpaperManager.peekDrawable() == null && wallpaperManager.getWallpaperInfo() == null;
    }
}
