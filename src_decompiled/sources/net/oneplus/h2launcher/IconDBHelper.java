package net.oneplus.h2launcher;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.io.ByteArrayOutputStream;
import java.util.Map;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.CustomInfoHelper;
import net.oneplus.h2launcher.config.CustomInfoLegacyHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class IconDBHelper extends SQLiteOpenHelper {
    private static final int DB_VERSION = 10;
    private static final String TAG = IconDBHelper.class.getSimpleName();

    /* loaded from: classes.dex */
    public interface AssetPack {
        public static final String COLUMN_ASSET_PACK = "assetPackName";
        public static final String COLUMN_LAST_UPDATED = "lastUpdated";
        public static final String COLUMN_ROWID = "rowid";
        public static final String COLUMN_USER = "profileId";
        public static final String COLUMN_VERSION = "version";
    }

    /* loaded from: classes.dex */
    public interface CommonColumn {
        public static final String COLUMN_ASSET_PACK = "assetPackName";
        public static final String COLUMN_COMPONENT = "componentName";
        public static final String COLUMN_ROWID = "rowid";
        public static final String COLUMN_USER = "profileId";
    }

    /* loaded from: classes.dex */
    public interface CustomLabel {
        public static final String COLUMN_COMPONENT = "componentName";
        public static final String COLUMN_LABEL = "label";
        public static final String COLUMN_ROWID = "rowid";
        public static final String COLUMN_USER = "profileId";
    }

    /* loaded from: classes.dex */
    public interface Tables {
        public static final String ASSET_PACK = "assetPack";
        public static final String CUSTOM_LABEL = "customLabel";
        public static final String DYNAMIC_ICON = "dynamicIcon";
        public static final String ICON = "icons";
        public static final String SOUND = "sound";
    }

    /* loaded from: classes.dex */
    public abstract class Icon implements CommonColumn {
        public static final String COLUMN_ICON = "icon";
        public static final String COLUMN_ICON_LOW_RES = "icon_low_res";
        public static final String COLUMN_ICON_TYPE = "iconType";
        public static final String COLUMN_LABEL = "label";
        public static final String COLUMN_LAST_UPDATED = "lastUpdated";
        public static final String COLUMN_SYSTEM_STATE = "system_state";
        public static final String COLUMN_VERSION = "version";
        public static final int ICON_TYPE_CUSTOM = 3;
        public static final int ICON_TYPE_DEFAULT = 0;
        public static final int ICON_TYPE_DYNAMIC = 1;
        public static final int ICON_TYPE_DYNAMIC_ICON_CACHE = 4;
        public static final int ICON_TYPE_ICONPACK = 2;

        public Icon() {
        }
    }

    /* loaded from: classes.dex */
    public abstract class DynamicIcon implements CommonColumn {
        public static final String COLUMN_CONFIG = "config";

        public DynamicIcon() {
        }
    }

    /* loaded from: classes.dex */
    public abstract class Sound implements CommonColumn {
        public static final String COLUMN_SOUND = "sound";

        public Sound() {
        }
    }

    public IconDBHelper(Context context) {
        super(context, LauncherFiles.APP_ICONS_DB, (SQLiteDatabase.CursorFactory) null, 10);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_low_res BLOB, label TEXT, system_state TEXT, assetPackName TEXT, iconType INTEGER DEFAULT 0, PRIMARY KEY (componentName, profileId, assetPackName, iconType) );");
        db.execSQL("CREATE TABLE IF NOT EXISTS dynamicIcon (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, assetPackName TEXT, config BLOB, PRIMARY KEY (componentName, profileId, assetPackName) );");
        db.execSQL("CREATE TABLE IF NOT EXISTS sound (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, assetPackName TEXT, sound BLOB, PRIMARY KEY (componentName, profileId, assetPackName) );");
        db.execSQL("CREATE TABLE IF NOT EXISTS customLabel (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, label TEXT, PRIMARY KEY (componentName, profileId) );");
        db.execSQL("CREATE TABLE IF NOT EXISTS assetPack (profileId INTEGER NOT NULL, assetPackName TEXT, version INTEGER NOT NULL DEFAULT 0, lastUpdated INTEGER NOT NULL DEFAULT 0, PRIMARY KEY (profileId, assetPackName) );");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        int version = oldVersion;
        if (version < 8) {
            clearDB(db);
            migrateCustomInfo(db);
            version = 8;
        }
        if (version == 8) {
            alterTableToVersion9(db);
            version = 9;
        }
        if (version == 9) {
            clearDynamicIconResource(db);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion != newVersion) {
            clearDB(db);
        }
    }

    private void migrateCustomInfo(SQLiteDatabase db) {
        Bitmap resizeBitmap;
        Context context = LauncherAppState.getInstance().getContext();
        SharedPreferences prefs = context.getSharedPreferences(CustomInfoLegacyHelper.CUSTOM_LABELS_PREFERENCES, 0);
        Map<String, ?> all = prefs.getAll();
        ContentValues values = new ContentValues();
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        for (String component : all.keySet()) {
            String label = (String) all.get(component);
            values.clear();
            values.put("label", label);
            values.put("componentName", component);
            values.put("profileId", Long.valueOf(userId));
            db.insert(Tables.CUSTOM_LABEL, null, values);
        }
        prefs.edit().clear().commit();
        SharedPreferences prefs2 = context.getSharedPreferences(CustomInfoLegacyHelper.CUSTOM_ICONS_PREFERENCES, 0);
        Map<String, ?> all2 = prefs2.getAll();
        for (String component2 : all2.keySet()) {
            String resPath = (String) all2.get(component2);
            if (resPath != null) {
                try {
                    String[] resourcePath = resPath.split(CustomInfoLegacyHelper.RESOURCE_PATH_DIVIDER);
                    Drawable drawable = CustomInfoHelper.getCustomIcon(context, resourcePath[0], resourcePath[1]);
                    if (drawable != null) {
                        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                        if (bitmap != null && (resizeBitmap = IconCache.checkAndResizeIcon(bitmap)) != null) {
                            bitmap = resizeBitmap;
                        }
                        if (bitmap != null) {
                            ByteArrayOutputStream stream = new ByteArrayOutputStream();
                            bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
                            byte[] bytes = stream.toByteArray();
                            if (bytes != null && bytes.length > 0) {
                                values.clear();
                                values.put("icon", bytes);
                                values.put("componentName", component2);
                                values.put("profileId", Long.valueOf(userId));
                                values.put("assetPackName", AssetCache.ASSET_PACK_NAME_CUSTOM);
                                values.put("iconType", (Integer) 3);
                                db.insert(Tables.ICON, null, values);
                            }
                        }
                    }
                } catch (Exception e) {
                    Logger.e(TAG, "migrate custom icon error, component = " + component2 + ", resource path = " + resPath);
                }
            }
        }
        prefs2.edit().clear().commit();
    }

    private void alterTableToVersion9(SQLiteDatabase db) {
        try {
            db.execSQL("ALTER TABLE assetPack ADD COLUMN lastUpdated INTEGER NOT NULL DEFAULT 0");
        } catch (Exception e) {
            Logger.w(TAG, "alert table warning = " + e.getMessage());
        }
    }

    private void clearDynamicIconResource(SQLiteDatabase db) {
        try {
            db.execSQL("delete from icons where iconType = 1 or iconType = 4");
        } catch (Exception e) {
            Logger.w(TAG, "clearDynamicIconResource warning = " + e.getMessage());
        }
    }

    private void clearDB(SQLiteDatabase db) {
        db.execSQL("DROP TABLE IF EXISTS icons");
        onCreate(db);
    }
}
