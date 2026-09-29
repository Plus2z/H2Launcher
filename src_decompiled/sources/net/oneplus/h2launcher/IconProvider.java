package net.oneplus.h2launcher;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import net.oneplus.h2launcher.IconDBHelper;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class IconProvider extends ContentProvider {
    private static final int ASSET_PACK = 8;
    private static final int ASSET_PACK_ID = 9;
    private static final String CONTENT_TYPE_ASSET_PACK = "vnd.android.cursor.item/asset_pack";
    private static final String CONTENT_TYPE_CUSTOM_LABEL = "vnd.android.cursor.item/custom_label";
    private static final String CONTENT_TYPE_DYNAMIC_ICON = "vnd.android.cursor.item/dynamic_icon";
    private static final String CONTENT_TYPE_ICON = "vnd.android.cursor.item/icon";
    private static final String CONTENT_TYPE_SOUND = "vnd.android.cursor.item/sound";
    private static final int CUSTOM_LABEL = 10;
    private static final int CUSTOM_LABEL_ID = 11;
    private static final int DYNAMIC_ICON = 4;
    private static final int DYNAMIC_ICON_ID = 5;
    private static final int ICON = 2;
    public static final String ICON_AUTHORIY = "net.oneplus.h2launcher.IconProvider";
    private static final int ICON_EXTERNAL = 1;
    private static final int ICON_ID = 3;
    private static final int SOUND = 6;
    private static final int SOUND_ID = 7;
    private IconDBHelper mIconDb;
    public static final String TAG = IconProvider.class.getSimpleName();
    public static final Uri EXTERNAL_ICON_URI = Uri.parse("content://net.oneplus.h2launcher.IconProvider/data");
    public static final Uri ICON_URI = Uri.parse("content://net.oneplus.h2launcher.IconProvider/icon");
    public static final Uri DYNAMIC_ICON_URI = Uri.parse("content://net.oneplus.h2launcher.IconProvider/dynamic_icon");
    public static final Uri SOUND_URI = Uri.parse("content://net.oneplus.h2launcher.IconProvider/sound");
    public static final Uri ASSET_PACK_URI = Uri.parse("content://net.oneplus.h2launcher.IconProvider/asset_pack");
    public static final Uri CUSTOM_LABEL_URI = Uri.parse("content://net.oneplus.h2launcher.IconProvider/custom_label");
    private static final UriMatcher uriMatcher = new UriMatcher(-1);

    static {
        uriMatcher.addURI(ICON_AUTHORIY, "data", 1);
        uriMatcher.addURI(ICON_AUTHORIY, "icon", 2);
        uriMatcher.addURI(ICON_AUTHORIY, "dynamic_icon", 4);
        uriMatcher.addURI(ICON_AUTHORIY, "sound", 6);
        uriMatcher.addURI(ICON_AUTHORIY, "asset_pack", 8);
        uriMatcher.addURI(ICON_AUTHORIY, "custom_label", 10);
        uriMatcher.addURI(ICON_AUTHORIY, "icon/#", 3);
        uriMatcher.addURI(ICON_AUTHORIY, "dynamic_icon/#", 5);
        uriMatcher.addURI(ICON_AUTHORIY, "sound/#", 7);
        uriMatcher.addURI(ICON_AUTHORIY, "asset_pack/#", 9);
        uriMatcher.addURI(ICON_AUTHORIY, "custom_label/#", 11);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        System.out.println("getType");
        switch (uriMatcher.match(uri)) {
            case 1:
            case 2:
            case 3:
                return CONTENT_TYPE_ICON;
            case 4:
            case 5:
                return CONTENT_TYPE_DYNAMIC_ICON;
            case 6:
            case 7:
                return CONTENT_TYPE_SOUND;
            case 8:
            case 9:
                return CONTENT_TYPE_ASSET_PACK;
            case 10:
            case 11:
                return CONTENT_TYPE_CUSTOM_LABEL;
            default:
                return null;
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        Uri uri2 = null;
        SQLiteDatabase db = this.mIconDb.getWritableDatabase();
        try {
            switch (uriMatcher.match(uri)) {
                case 2:
                    long id = db.insertWithOnConflict(IconDBHelper.Tables.ICON, null, values, 5);
                    uri2 = ContentUris.withAppendedId(ICON_URI, id);
                    break;
                case 4:
                    long id2 = db.insertWithOnConflict(IconDBHelper.Tables.DYNAMIC_ICON, null, values, 5);
                    uri2 = ContentUris.withAppendedId(DYNAMIC_ICON_URI, id2);
                    break;
                case 6:
                    long id3 = db.insertWithOnConflict("sound", null, values, 5);
                    uri2 = ContentUris.withAppendedId(SOUND_URI, id3);
                    break;
                case 8:
                    long id4 = db.insertWithOnConflict(IconDBHelper.Tables.ASSET_PACK, null, values, 5);
                    uri2 = ContentUris.withAppendedId(ASSET_PACK_URI, id4);
                    break;
                case 10:
                    long id5 = db.insertWithOnConflict(IconDBHelper.Tables.CUSTOM_LABEL, null, values, 5);
                    uri2 = ContentUris.withAppendedId(CUSTOM_LABEL_URI, id5);
                    break;
            }
        } catch (SQLiteFullException e) {
            Logger.d(TAG, "insert occur SQLiteFullException " + e.getMessage());
        } catch (SQLiteException e2) {
            Logger.d(TAG, "insert occur SQLiteException " + e2.getMessage());
        }
        return uri2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        int id = 0;
        SQLiteDatabase db = this.mIconDb.getWritableDatabase();
        try {
            switch (uriMatcher.match(uri)) {
                case 3:
                    selection = getWithIdSelection(uri, selection);
                case 2:
                    id = db.delete(IconDBHelper.Tables.ICON, selection, selectionArgs);
                    break;
                case 5:
                    selection = getWithIdSelection(uri, selection);
                case 4:
                    id = db.delete(IconDBHelper.Tables.DYNAMIC_ICON, selection, selectionArgs);
                    break;
                case 7:
                    selection = getWithIdSelection(uri, selection);
                case 6:
                    id = db.delete("sound", selection, selectionArgs);
                    break;
                case 9:
                    selection = getWithIdSelection(uri, selection);
                case 8:
                    id = db.delete(IconDBHelper.Tables.ASSET_PACK, selection, selectionArgs);
                    break;
                case 11:
                    selection = getWithIdSelection(uri, selection);
                case 10:
                    id = db.delete(IconDBHelper.Tables.CUSTOM_LABEL, selection, selectionArgs);
                    break;
            }
            return id;
        } catch (SQLiteFullException e) {
            Logger.d(TAG, "delete occur SQLiteFullException " + e.getMessage());
            return 0;
        } catch (SQLiteException e2) {
            Logger.d(TAG, "delete occur SQLiteException " + e2.getMessage());
            return 0;
        }
    }

    private String getWithIdSelection(Uri uri, String selection) {
        String selectionWithId = "rowid=" + ContentUris.parseId(uri);
        if (selection != null && selection.length() > 0) {
            return selectionWithId + " AND (" + selection + ")";
        }
        return selectionWithId;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mIconDb = new IconDBHelper(getContext());
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000d. Please report as an issue. */
    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.mIconDb.getReadableDatabase();
        switch (uriMatcher.match(uri)) {
            case 1:
                if (sortOrder == null) {
                    sortOrder = "";
                }
                String sortOrder2 = "iconType desc " + sortOrder;
                String selection2 = selection == null ? "iconType != 1" : selection + " AND ( iconType != 1 )";
                String currentAssetPack = getCurrentAssetPack();
                if (currentAssetPack != null) {
                    selection2 = selection2 + " AND ( iconType != 2 OR ( iconType = 2 AND assetPackName = '" + currentAssetPack + "') )";
                }
                if (!StyleManager.getInstance().showDynamicIcon()) {
                    selection2 = selection2 + " AND ( iconType != 4 )";
                }
                Cursor cursor = db.query(IconDBHelper.Tables.ICON, projection, selection2, selectionArgs, null, null, sortOrder2);
                return cursor;
            case 3:
                selection = getWithIdSelection(uri, selection);
            case 2:
                Cursor cursor2 = db.query(IconDBHelper.Tables.ICON, projection, selection, selectionArgs, null, null, sortOrder);
                return cursor2;
            case 5:
                selection = getWithIdSelection(uri, selection);
            case 4:
                Cursor cursor3 = db.query(IconDBHelper.Tables.DYNAMIC_ICON, projection, selection, selectionArgs, null, null, sortOrder);
                return cursor3;
            case 7:
                selection = getWithIdSelection(uri, selection);
            case 6:
                Cursor cursor4 = db.query("sound", projection, selection, selectionArgs, null, null, sortOrder);
                return cursor4;
            case 9:
                selection = getWithIdSelection(uri, selection);
            case 8:
                Cursor cursor5 = db.query(IconDBHelper.Tables.ASSET_PACK, projection, selection, selectionArgs, null, null, sortOrder);
                return cursor5;
            case 11:
                selection = getWithIdSelection(uri, selection);
            case 10:
                Cursor cursor6 = db.query(IconDBHelper.Tables.CUSTOM_LABEL, projection, selection, selectionArgs, null, null, sortOrder);
                return cursor6;
            default:
                return null;
        }
    }

    private String getCurrentAssetPack() {
        return getContext().getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0).getString(IconPackHelper.CURRENT_ICON_PACK_PACKAGE_NAME, "SYSTEM_DEFAULT_ICONS");
    }

    public static byte[] drawableToByte(Drawable drawable) {
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
        return stream.toByteArray();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        int id = 0;
        SQLiteDatabase db = this.mIconDb.getWritableDatabase();
        try {
            switch (uriMatcher.match(uri)) {
                case 3:
                    selection = getWithIdSelection(uri, selection);
                case 2:
                    id = db.update(IconDBHelper.Tables.ICON, values, selection, selectionArgs);
                    break;
                case 5:
                    selection = getWithIdSelection(uri, selection);
                case 4:
                    id = db.update(IconDBHelper.Tables.DYNAMIC_ICON, values, selection, selectionArgs);
                    break;
                case 7:
                    selection = getWithIdSelection(uri, selection);
                case 6:
                    id = db.update("sound", values, selection, selectionArgs);
                    break;
                case 9:
                    selection = getWithIdSelection(uri, selection);
                case 8:
                    id = db.update(IconDBHelper.Tables.ASSET_PACK, values, selection, selectionArgs);
                    break;
                case 11:
                    selection = getWithIdSelection(uri, selection);
                case 10:
                    id = db.update(IconDBHelper.Tables.CUSTOM_LABEL, values, selection, selectionArgs);
                    break;
            }
            return id;
        } catch (SQLiteFullException e) {
            Logger.d(TAG, "update occur SQLiteFullException " + e.getMessage());
            return 0;
        } catch (SQLiteException e2) {
            Logger.d(TAG, "update occur SQLiteException " + e2.getMessage());
            return 0;
        }
    }
}
