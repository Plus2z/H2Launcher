package net.oneplus.h2launcher.customizations.wallpaper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import net.oneplus.h2launcher.LauncherFiles;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class SavedWallpaperDatabaseHelper extends SQLiteOpenHelper {
    protected static final String COLUMN_ID = "id";
    protected static final String COLUMN_IMAGE_FILENAME = "image";
    protected static final String COLUMN_IMAGE_THUMBNAIL_FILENAME = "image_thumbnail";
    protected static final String COLUMN_IMAGE_TYPE = "type";
    protected static final String COLUMN_MASK_COLOR = "mask_color";
    protected static final String COLUMN_ORIENTATION = "orientation";
    protected static final String COLUMN_SCREEN = "screen";
    protected static final String COLUMN_SOURCE_URI = "source_uri";
    protected static final int DB_VERSION = 6;
    protected static final int IMAGE_TYPE_DEFAULT_VALUE = -1;
    protected static final int MASK_COLOR_DEFAULT_VALUE = 0;
    protected static final int ORIENTATION_DEFAULT_VALUE = 0;
    protected static final String TABLE_SAVED_WALLPAPERS = "saved_wallpaper_images";
    private static final String TAG = SavedWallpaperDatabaseHelper.class.getSimpleName();
    private static SavedWallpaperDatabaseHelper sInstance;
    Context mContext;

    private SavedWallpaperDatabaseHelper(Context context) {
        super(context, context.getDatabasePath(LauncherFiles.WALLPAPER_IMAGES_DB).getPath(), (SQLiteDatabase.CursorFactory) null, 6);
        this.mContext = context;
    }

    public static synchronized SavedWallpaperDatabaseHelper getInstance(Context context) {
        SavedWallpaperDatabaseHelper savedWallpaperDatabaseHelper;
        synchronized (SavedWallpaperDatabaseHelper.class) {
            if (sInstance == null) {
                sInstance = new SavedWallpaperDatabaseHelper(context.getApplicationContext());
            }
            savedWallpaperDatabaseHelper = sInstance;
        }
        return savedWallpaperDatabaseHelper;
    }

    public static void moveFromCacheDirectoryIfNecessary(Context context) {
        File oldSavedImagesFile = new File(context.getCacheDir(), LauncherFiles.WALLPAPER_IMAGES_DB);
        File savedImagesFile = context.getDatabasePath(LauncherFiles.WALLPAPER_IMAGES_DB);
        if (oldSavedImagesFile.exists() && !oldSavedImagesFile.renameTo(savedImagesFile)) {
            Logger.w(TAG, "Failed to rename file: " + oldSavedImagesFile);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase database) {
        createSavedWallpaperTable(database);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
    
        if (addIntegerColumn(r7, net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperDatabaseHelper.COLUMN_MASK_COLOR, 0) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
    
        if (addIntegerColumn(r7, net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperDatabaseHelper.COLUMN_ORIENTATION, 0) != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        if (addTextColumn(r7, net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperDatabaseHelper.COLUMN_SOURCE_URI, "") != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
    
        if (addIntegerColumn(r7, "type", -1) != false) goto L9;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0024. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:7:? A[RETURN, SYNTHETIC] */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r7, int r8, int r9) {
        /*
            r6 = this;
            r4 = 0
            java.lang.String r0 = net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperDatabaseHelper.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Upgrade db from version "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r8)
            java.lang.String r2 = " to version "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r9)
            java.lang.String r1 = r1.toString()
            net.oneplus.h2launcher.util.Logger.d(r0, r1)
            switch(r8) {
                case 1: goto L2d;
                case 2: goto L3d;
                case 3: goto L45;
                case 4: goto L4d;
                case 5: goto L57;
                case 6: goto L2c;
                default: goto L27;
            }
        L27:
            if (r8 == r9) goto L2c
            r6.createEmptyDB(r7)
        L2c:
            return
        L2d:
            r6.purgeSavedWallpapers(r7)
            r6.purgeSavedWallpaperRecords(r7)
            java.lang.String r0 = "type"
            r2 = -1
            boolean r0 = r6.addIntegerColumn(r7, r0, r2)
            if (r0 == 0) goto L27
        L3d:
            java.lang.String r0 = "mask_color"
            boolean r0 = r6.addIntegerColumn(r7, r0, r4)
            if (r0 == 0) goto L27
        L45:
            java.lang.String r0 = "orientation"
            boolean r0 = r6.addIntegerColumn(r7, r0, r4)
            if (r0 == 0) goto L27
        L4d:
            java.lang.String r0 = "source_uri"
            java.lang.String r1 = ""
            boolean r0 = r6.addTextColumn(r7, r0, r1)
            if (r0 == 0) goto L27
        L57:
            boolean r0 = r6.renameTypeColumn(r7)
            if (r0 == 0) goto L27
            boolean r0 = r6.swapTypeValues(r7)
            if (r0 != 0) goto L2c
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperDatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }

    private void createSavedWallpaperTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS saved_wallpaper_images (id INTEGER NOT NULL, screen INTEGER NOT NULL, image_thumbnail TEXT NOT NULL, image TEXT NOT NULL, mask_color INTEGER NOT NULL, orientation INTEGER NOT NULL, source_uri TEXT NOT NULL, PRIMARY KEY (id ASC) );");
    }

    private void purgeSavedWallpapers(SQLiteDatabase db) {
        String[] projection = {COLUMN_ID, COLUMN_IMAGE_THUMBNAIL_FILENAME, COLUMN_IMAGE_FILENAME};
        Cursor cursor = db.query(TABLE_SAVED_WALLPAPERS, projection, null, null, null, null, null);
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        do {
            String imageThumbFilename = cursor.getString(1);
            String imageFilename = cursor.getString(2);
            deleteWallpaperFile(imageFilename);
            deleteWallpaperFile(imageThumbFilename);
        } while (cursor.moveToNext());
        cursor.close();
    }

    private void purgeSavedWallpaperRecords(SQLiteDatabase db) {
        db.execSQL("DELETE FROM saved_wallpaper_images");
    }

    private void deleteWallpaperFile(String filename) {
        if (!TextUtils.isEmpty(filename)) {
            File file = new File(this.mContext.getFilesDir(), filename);
            if (file.exists() && !file.delete()) {
                Logger.w(TAG, "Failed to delete wallpaper file: " + file);
            }
        }
    }

    private boolean addIntegerColumn(SQLiteDatabase db, String columnName, long defaultValue) {
        boolean z;
        db.beginTransaction();
        try {
            try {
                db.execSQL("ALTER TABLE saved_wallpaper_images ADD COLUMN " + columnName + " INTEGER NOT NULL DEFAULT " + defaultValue + ";");
                db.setTransactionSuccessful();
                db.endTransaction();
                z = true;
            } catch (SQLException ex) {
                Log.e(TAG, ex.getMessage(), ex);
                z = false;
                db.endTransaction();
            }
            return z;
        } catch (Throwable th) {
            db.endTransaction();
            throw th;
        }
    }

    private boolean addTextColumn(SQLiteDatabase db, String columnName, String defaultValue) {
        if (TextUtils.isEmpty(defaultValue)) {
            defaultValue = "";
        }
        db.beginTransaction();
        try {
            try {
                db.execSQL("ALTER TABLE saved_wallpaper_images ADD COLUMN " + columnName + " TEXT NOT NULL DEFAULT '" + defaultValue + "';");
                db.setTransactionSuccessful();
                db.endTransaction();
                return true;
            } catch (SQLException ex) {
                Log.e(TAG, ex.getMessage(), ex);
                db.endTransaction();
                return false;
            }
        } catch (Throwable th) {
            db.endTransaction();
            throw th;
        }
    }

    private boolean renameTypeColumn(SQLiteDatabase db) {
        boolean z = true;
        db.beginTransaction();
        try {
            try {
                db.execSQL("ALTER TABLE saved_wallpaper_images RENAME TO saved_wallpaper_images_tmp");
                createSavedWallpaperTable(db);
                String sql = String.format("INSERT INTO %s(%s, %s, %s, %s, %s, %s, %s) SELECT %s, %s, %s, %s, %s, %s, %s FROM %s", TABLE_SAVED_WALLPAPERS, COLUMN_ID, "screen", COLUMN_IMAGE_THUMBNAIL_FILENAME, COLUMN_IMAGE_FILENAME, COLUMN_MASK_COLOR, COLUMN_ORIENTATION, COLUMN_SOURCE_URI, COLUMN_ID, "type", COLUMN_IMAGE_THUMBNAIL_FILENAME, COLUMN_IMAGE_FILENAME, COLUMN_MASK_COLOR, COLUMN_ORIENTATION, COLUMN_SOURCE_URI, "saved_wallpaper_images_tmp");
                db.execSQL(sql);
                db.execSQL("DROP TABLE saved_wallpaper_images_tmp");
                db.setTransactionSuccessful();
            } catch (SQLException e) {
                Logger.e(TAG, "failed to rename column 'type', error=%s", e.getMessage());
                db.endTransaction();
                z = false;
            }
            return z;
        } finally {
            db.endTransaction();
        }
    }

    private boolean swapTypeValues(SQLiteDatabase db) {
        boolean z = true;
        ContentValues values = new ContentValues();
        db.beginTransaction();
        try {
            try {
                values.put("screen", (Integer) (-999));
                db.update(TABLE_SAVED_WALLPAPERS, values, "screen = 0", null);
                values.put("screen", (Integer) 0);
                db.update(TABLE_SAVED_WALLPAPERS, values, "screen = 1", null);
                values.put("screen", (Integer) 1);
                db.update(TABLE_SAVED_WALLPAPERS, values, "screen = -999", null);
                db.setTransactionSuccessful();
            } catch (SQLException e) {
                Logger.e(TAG, "failed to swap type values, error=%s", e.getMessage());
                db.endTransaction();
                z = false;
            }
            return z;
        } finally {
            db.endTransaction();
        }
    }

    private void createEmptyDB(SQLiteDatabase db) {
        db.execSQL("DROP TABLE IF EXISTS saved_wallpaper_images");
        onCreate(db);
    }
}
