package net.oneplus.h2launcher.globalsearch;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes.dex */
public class GlobalSearchDbHelper extends SQLiteOpenHelper {
    public static final String APP_TABLE_NAME = "global_search_apps";
    public static final String COLUMN_ID = "_id";
    public static final String COMPONENT_NAME = "component_name";
    public static final String CONTACT_TABLE_NAME = "global_search_contacts";
    private static final String DATABASE_NAME = "search_history.db";
    private static final int DATABASE_VERSION = 1;
    public static final String DISPLAY_NAME = "display_name";
    public static final String HISTORY_TIME = "history_time";
    public static final String LAUNCH_COUNT = "launch_count";
    public static final String PACKAGE_NAME = "package_name";
    public static final String PHOTO_THUMBNAIL_URI = "photo_thumbnail_uri";

    public GlobalSearchDbHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE global_search_apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, component_name CHAR, package_name CHAR, launch_count INTEGER, history_time INTEGER);");
        db.execSQL("CREATE TABLE global_search_contacts (_id INTEGER, display_name CHAR, photo_thumbnail_uri CHAR, launch_count INTEGER, history_time INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS global_search_apps");
        db.execSQL("DROP TABLE IF EXISTS global_search_contacts");
        onCreate(db);
    }
}
