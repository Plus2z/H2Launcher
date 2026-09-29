package net.oneplus.h2launcher.wallpaper;

import android.app.WallpaperManager;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v7.graphics.Palette;
import android.text.TextUtils;
import com.oneplus.sdk.wrapper.android.app.OpWallpaperManager;
import java.util.List;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperImageCache;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.ResourceWallpaperInfo;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class SetupWallpaperService extends SetWallpaperService {
    public static final String EXTRA_SWITCHING_LAYOUT = "switching_layout";
    private static final int INVALID_COLOR = Integer.MIN_VALUE;
    private static final String TAG = SetupWallpaperService.class.getSimpleName();
    private Context mContext;
    private int mDefaultWallpaperColor;
    private ResourceWallpaperInfo mDefaultWallpaperTile;
    private StyleManager mStyleManager;

    public SetupWallpaperService() {
        super(SetupWallpaperService.class.getSimpleName());
        this.mDefaultWallpaperColor = Integer.MIN_VALUE;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Logger.d(TAG, "onCreate");
        this.mContext = getApplicationContext();
        StyleManager.init(this.mContext);
        this.mStyleManager = StyleManager.getInstance();
    }

    @Override // net.oneplus.h2launcher.wallpaper.SetWallpaperService
    protected void onSetWallpaper() {
        Bundle bundle;
        boolean wallpaperSetupCompleted = PreferencesHelper.hasWallpaperSetupCompleted(this.mContext);
        if (wallpaperSetupCompleted) {
            Logger.d(TAG, "wallpaper has been setup, skip setup wallpaper");
            return;
        }
        this.mDefaultWallpaperTile = createDefaultWallpaperTile(1);
        if (this.mDefaultWallpaperTile == null) {
            Logger.w(TAG, "failed to create default wallpaper tile");
            return;
        }
        boolean switchingLayout = false;
        JobParameters jobParameters = getJobParameters();
        if (jobParameters != null && (bundle = jobParameters.getTransientExtras()) != null) {
            switchingLayout = bundle.getBoolean(EXTRA_SWITCHING_LAYOUT, false);
        }
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(this.mContext);
        Bitmap lockWallpaper = OpWallpaperManager.getKeyguardBitmap(wallpaperManager);
        if (switchingLayout && lockWallpaper == null) {
            Logger.d(TAG, "lock wallpaper bitmap is null, set default lock wallpaper");
            ResourceWallpaperInfo defaultLockWallpaperTile = createDefaultWallpaperTile(0);
            if (defaultLockWallpaperTile != null) {
                defaultLockWallpaperTile.onSave(this.mContext, 0);
            }
        }
        BlurWallpaperSettings settings = getBlurWallpaperSettings();
        Logger.d(TAG, "write blur wallpaper settings: %s", settings);
        PreferencesHelper.setBlurWallpaperSettings(this.mContext, settings);
        this.mDefaultWallpaperTile.onSave(this.mContext, 1);
        WallpaperColor wallpaperColor = new WallpaperColor(0, getDefaultWallpaperColor(), settings.blurEnabled);
        PreferencesHelper.setWallpaperColor(this.mContext, wallpaperColor);
        WallpaperImageCache.clear();
        PreferencesHelper.setWallpaperSetupCompleted(this.mContext);
    }

    private ResourceWallpaperInfo createDefaultWallpaperTile(int screen) {
        boolean isLockScreen = screen == 0;
        Resources resources = this.mContext.getResources();
        int wallpaperIndexResId = this.mStyleManager.getResourceId(isLockScreen ? StyleConstant.DEFAULT_LOCK_WALLPAPER_INDEX : StyleConstant.DEFAULT_WALLPAPER_INDEX);
        int wallpaperIndex = resources.getInteger(wallpaperIndexResId);
        if (wallpaperIndex < 0) {
            Logger.e(TAG, "invalid wallpaper index");
            return null;
        }
        int wallpaperNamesArray = this.mStyleManager.getResourceId(StyleConstant.WALLPAPER_NAMES);
        String[] names = resources.getStringArray(wallpaperNamesArray);
        String defaultWallpaperName = names.length > wallpaperIndex ? names[wallpaperIndex] : null;
        if (TextUtils.isEmpty(defaultWallpaperName)) {
            Logger.e(TAG, "invalid wallpaper names");
            return null;
        }
        int wallpaperArray = this.mStyleManager.getResourceId(isLockScreen ? StyleConstant.DEFAULT_LOCK_WALLPAPERS : StyleConstant.DEFAULT_WALLPAPERS);
        int[] wallpaperResIds = WallpaperUtils.getWallpaperResourceIds(resources, wallpaperArray);
        int wallpaperResId = wallpaperResIds.length > wallpaperIndex ? wallpaperResIds[wallpaperIndex] : 0;
        if (wallpaperResId == 0) {
            Logger.e(TAG, "cannot find resource id for default wallpaper");
            return null;
        }
        int wallpaperThumbArray = this.mStyleManager.getResourceId(StyleConstant.WALLPAPER_THUMBNAILS);
        int[] wallpaperThumbResIds = WallpaperUtils.getWallpaperResourceIds(resources, wallpaperThumbArray);
        int wallpaperThumbResId = wallpaperThumbResIds.length > wallpaperIndex ? wallpaperThumbResIds[wallpaperIndex] : 0;
        if (wallpaperThumbResId == 0) {
            Logger.e(TAG, "cannot find resource id for default wallpaper thumbnail");
            return null;
        }
        int orientation = StyleManager.isStandardLayout() ? 0 : 1;
        return new ResourceWallpaperInfo(resources, defaultWallpaperName, wallpaperResId, orientation);
    }

    private BlurWallpaperSettings getBlurWallpaperSettings() {
        BlurWallpaperSettings settings = BlurWallpaperSettings.emptySettings();
        if (StyleManager.isSimplifiedLayout()) {
            settings.maskColor = getDefaultWallpaperColor();
        }
        return settings;
    }

    private int getDefaultWallpaperColor() {
        if (this.mDefaultWallpaperColor != Integer.MIN_VALUE) {
            return this.mDefaultWallpaperColor;
        }
        String wallpaperName = this.mDefaultWallpaperTile.getName();
        List<Palette.Swatch> colors = WallpaperUtils.loadWallpaperPredefinedColors(this.mContext, wallpaperName);
        if (colors != null && !colors.isEmpty()) {
            this.mDefaultWallpaperColor = colors.get(0).getRgb();
            Logger.d(TAG, "mDefaultWallpaperColor=%d", Integer.valueOf(this.mDefaultWallpaperColor));
        }
        return this.mDefaultWallpaperColor;
    }
}
