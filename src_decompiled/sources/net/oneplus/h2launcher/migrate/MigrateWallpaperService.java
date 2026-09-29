package net.oneplus.h2launcher.migrate;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.File;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.UriWallpaperInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.wallpaper.SetWallpaperService;

/* loaded from: classes.dex */
public abstract class MigrateWallpaperService extends SetWallpaperService {
    protected static final String MIGRATED_WALLPAPER_FILENAME = "migrated_wallpaper";
    protected Context mContext;
    protected final String mTag;

    protected abstract void cleanUpMigratedPreferencesAndFiles();

    protected abstract BlurWallpaperSettings createBlurWallpaperSettings(UriWallpaperInfo uriWallpaperInfo);

    protected abstract UriWallpaperInfo createWallpaperTile(File file);

    protected abstract Bitmap getWallpaperForMigration();

    public MigrateWallpaperService(String name) {
        super(name);
        this.mTag = name;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Logger.d(this.mTag, "onCreate");
        this.mContext = getApplicationContext();
    }

    @Override // net.oneplus.h2launcher.wallpaper.SetWallpaperService
    protected void onSetWallpaper() {
        try {
            Bitmap wallpaper = getWallpaperForMigration();
            if (wallpaper == null || wallpaper.isRecycled()) {
                throw new RuntimeException("failed to get wallpaper for migration");
            }
            File output = saveWallpaperToFile(wallpaper);
            if (output == null || !output.exists()) {
                throw new RuntimeException("failed to create wallpaper file");
            }
            UriWallpaperInfo info = createWallpaperTile(output);
            if (info == null) {
                throw new RuntimeException("failed to create uri wallpaper tile info");
            }
            WallpaperPreview.Model model = WallpaperPreview.Model.getInstance(this.mContext);
            model.invalidateWallpaper(this.mContext, 1);
            BlurWallpaperSettings settings = createBlurWallpaperSettings(info);
            PreferencesHelper.setBlurWallpaperSettings(this.mContext, settings);
            info.loadImage(this.mContext, 1);
            info.onBeforeSave(info.getOrientation());
            info.onSave(this.mContext, 1);
            int rgb = info.getMaskColor();
            WallpaperColor wallpaperColor = new WallpaperColor(0, rgb, settings.blurEnabled);
            PreferencesHelper.setWallpaperColor(this.mContext, wallpaperColor);
            PreferencesHelper.setWallpaperSetupCompleted(this.mContext);
        } catch (Exception ex) {
            Logger.e(this.mTag, "error while migrating wallpaper: %s", ex.getMessage());
        } finally {
            cleanUpMigratedPreferencesAndFiles();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.File saveWallpaperToFile(android.graphics.Bitmap r11) {
        /*
            r10 = this;
            r6 = 0
            java.io.File r4 = new java.io.File
            android.content.Context r7 = r10.mContext
            java.io.File r7 = r7.getFilesDir()
            java.lang.String r8 = "migrated_wallpaper"
            r4.<init>(r7, r8)
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream
            r7 = 2048(0x800, float:2.87E-42)
            r5.<init>(r7)
            android.graphics.Bitmap$CompressFormat r7 = android.graphics.Bitmap.CompressFormat.PNG
            r8 = 100
            boolean r7 = r11.compress(r7, r8, r5)
            if (r7 == 0) goto L72
            byte[] r2 = r5.toByteArray()
            r3 = 0
            android.content.Context r7 = r10.mContext     // Catch: java.io.IOException -> L3f
            java.lang.String r8 = r4.getName()     // Catch: java.io.IOException -> L3f
            java.io.FileOutputStream r1 = r7.openFileOutput(r8, r3)     // Catch: java.io.IOException -> L3f
            r7 = 0
            r1.write(r2)     // Catch: java.lang.Throwable -> L5e java.lang.Throwable -> L7b
            if (r1 == 0) goto L39
            if (r6 == 0) goto L5a
            r1.close()     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L3f
        L39:
            return r4
        L3a:
            r8 = move-exception
            r7.addSuppressed(r8)     // Catch: java.io.IOException -> L3f
            goto L39
        L3f:
            r0 = move-exception
            java.lang.String r7 = r10.mTag
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Failed writing images to storage "
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r0)
            java.lang.String r8 = r8.toString()
            net.oneplus.h2launcher.util.Logger.e(r7, r8)
            r4 = r6
            goto L39
        L5a:
            r1.close()     // Catch: java.io.IOException -> L3f
            goto L39
        L5e:
            r8 = move-exception
            throw r8     // Catch: java.lang.Throwable -> L60
        L60:
            r7 = move-exception
        L61:
            if (r1 == 0) goto L68
            if (r8 == 0) goto L6e
            r1.close()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L69
        L68:
            throw r7     // Catch: java.io.IOException -> L3f
        L69:
            r9 = move-exception
            r8.addSuppressed(r9)     // Catch: java.io.IOException -> L3f
            goto L68
        L6e:
            r1.close()     // Catch: java.io.IOException -> L3f
            goto L68
        L72:
            java.lang.String r7 = r10.mTag
            java.lang.String r8 = "Cannot compress bitmap."
            net.oneplus.h2launcher.util.Logger.w(r7, r8)
            r4 = r6
            goto L39
        L7b:
            r7 = move-exception
            r8 = r6
            goto L61
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.migrate.MigrateWallpaperService.saveWallpaperToFile(android.graphics.Bitmap):java.io.File");
    }
}
