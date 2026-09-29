package net.oneplus.h2launcher.customizations.wallpaper;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.util.Pair;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.SavedWallpaperTile;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class SavedWallpaperManager {
    public static final int INVALID_IMAGE_ID = -1;
    private static final String TAG = SavedWallpaperManager.class.getSimpleName();

    public static List<SavedWallpaperTile> loadThumbnailsAndImageIdList(Context context) {
        SQLiteDatabase db = SavedWallpaperDatabaseHelper.getInstance(context).getReadableDatabase();
        String[] columns = {"id", "image_thumbnail", "image", "mask_color", "orientation", "source_uri"};
        Cursor result = db.query("saved_wallpaper_images", columns, null, null, null, null, "id DESC", null);
        List<SavedWallpaperTile> tiles = new ArrayList<>();
        while (result.moveToNext()) {
            String filename = result.getString(1);
            File file = new File(context.getFilesDir(), filename);
            Bitmap thumb = BitmapFactory.decodeFile(file.getAbsolutePath());
            if (thumb != null) {
                SavedWallpaperTile info = new SavedWallpaperTile(result.getInt(0), new File(context.getFilesDir(), result.getString(2)), new BitmapDrawable((Resources) null, thumb), result.getInt(3), result.getInt(4), result.getString(5));
                tiles.add(info);
            }
        }
        result.close();
        return tiles;
    }

    public static int getImageId(Context context, int screen, int orientation) {
        int imageId = -1;
        SQLiteDatabase db = SavedWallpaperDatabaseHelper.getInstance(context).getReadableDatabase();
        String[] columns = {"id"};
        String selection = String.format(Locale.US, "%s = ? AND %s = ?", LauncherSettings.Favorites.SCREEN, "orientation");
        String[] selectionArgs = {String.valueOf(screen), String.valueOf(orientation)};
        Cursor cursor = db.query("saved_wallpaper_images", columns, selection, selectionArgs, null, null, null, null);
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                imageId = cursor.getInt(0);
            }
            cursor.close();
        }
        return imageId;
    }

    public static void deleteImage(Context context, int id) {
        Pair<String, String> filenames = getImageFilenames(context, id);
        if (filenames == null) {
            Logger.w(TAG, "No files found for image id: " + id);
            return;
        }
        File imageFile = new File(context.getFilesDir(), (String) filenames.first);
        if (!imageFile.delete()) {
            Logger.d(TAG, "Failed to delete file: " + imageFile);
        }
        File thumbFile = new File(context.getFilesDir(), (String) filenames.second);
        if (!thumbFile.delete()) {
            Logger.d(TAG, "Failed to delete file: " + thumbFile);
        }
        SQLiteDatabase db = SavedWallpaperDatabaseHelper.getInstance(context).getWritableDatabase();
        String[] whereArgs = {Integer.toString(id)};
        db.delete("saved_wallpaper_images", "id = ?", whereArgs);
    }

    private static Pair<String, String> getImageFilenames(Context context, int id) {
        SQLiteDatabase db = SavedWallpaperDatabaseHelper.getInstance(context).getReadableDatabase();
        String[] columns = {"image_thumbnail", "image"};
        String[] selectionArgs = {Integer.toString(id)};
        Cursor result = db.query("saved_wallpaper_images", columns, "id = ?", selectionArgs, null, null, null, null);
        if (result.getCount() <= 0) {
            return null;
        }
        result.moveToFirst();
        String thumbFilename = result.getString(0);
        String imageFilename = result.getString(1);
        result.close();
        return new Pair<>(thumbFilename, imageFilename);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[Catch: IOException -> 0x00ac, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #11 {IOException -> 0x00ac, blocks: (B:6:0x0015, B:25:0x0040, B:23:0x00ec, B:28:0x00e7, B:60:0x00a8, B:57:0x00f6, B:64:0x00f2, B:61:0x00ab), top: B:5:0x0015, inners: #5, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String saveImage(android.content.Context r15, android.graphics.Bitmap r16, byte[] r17, int r18, int r19, int r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperManager.saveImage(android.content.Context, android.graphics.Bitmap, byte[], int, int, int, java.lang.String):java.lang.String");
    }
}
