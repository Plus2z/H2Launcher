package net.oneplus.h2launcher.onedayonephoto;

import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class OneDayOnePhotoHelper {
    private static final String ACTION_PICK_WALLPAPER = "oneplus.intent.action.PICK_WALLPAPER";
    public static final String TAG = OneDayOnePhotoHelper.class.getSimpleName();
    private static final Uri ONE_DAY_ONE_PHOTO_THUMB_CONTENT_URI = Uri.parse("content://cn.oneplus.photos.contentprovider/today");

    public static boolean oneDayOnePhotoAppExists(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(ACTION_PICK_WALLPAPER);
        return !packageManager.queryIntentActivities(intent, 0).isEmpty();
    }

    public static Bitmap loadLatestThumbnail(Context context) {
        ContentResolver resolver = context.getContentResolver();
        Uri uri = ONE_DAY_ONE_PHOTO_THUMB_CONTENT_URI;
        Bitmap bitmap = null;
        try {
            InputStream inputStream = resolver.openInputStream(uri);
            Throwable th = null;
            try {
                bitmap = BitmapFactory.decodeStream(inputStream);
                if (inputStream != null) {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    } else {
                        inputStream.close();
                    }
                }
            } finally {
            }
        } catch (IOException e) {
            Logger.e(TAG, "Failed to get latest wallpaper thumbnail from one day one photo, error: %s", e.getMessage());
        }
        return bitmap;
    }

    public static void startOneDayOnePhotoPicker(Context context, int screen) {
        Launcher launcher;
        LauncherAppState appState = LauncherAppState.getInstanceNoCreate();
        if (appState == null || (launcher = appState.getLauncher()) == null) {
            Logger.w(TAG, "unable to get launcher instance");
            return;
        }
        if (launcher.getWallpapersView() == null) {
            WallpaperPreview.Model.getInstance(context).preloadWallpapers(context);
            launcher.inflateViewStubs();
        }
        Intent intent = new Intent();
        intent.setAction(ACTION_PICK_WALLPAPER);
        int requestCode = screen == 1 ? 10 : 25;
        try {
            launcher.startActivityForResult(intent, requestCode);
        } catch (ActivityNotFoundException e) {
            Logger.e(TAG, "Activity not found !");
        } catch (SecurityException e2) {
            Logger.e(TAG, "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e2);
        }
    }
}
