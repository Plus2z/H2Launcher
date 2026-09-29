package net.oneplus.h2launcher.launcherProviderHelper;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.Log;
import java.net.URISyntaxException;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherProviderUtil {
    public static final int FAIL_VERSION = -100;
    private static final boolean LOGD = false;
    public static final String TABLE_FAVORITES = "favorites";
    public static final String TABLE_QUICK_PAGE = "quickPage";
    public static final String TABLE_SIMPLIFIED_FAVORITES = "simplified_favorites";
    public static final String TABLE_SIMPLIFIED_QUICK_PAGE = "simplified_quickPage";
    public static final String TABLE_SIMPLIFIED_WORKSPACE_SCREENS = "simplified_workspaceScreens";
    public static final String TABLE_STANDARD_FAVORITES = "standard_favorites";
    public static final String TABLE_STANDARD_QUICK_PAGE = "standard_quickPage";
    public static final String TABLE_STANDARD_WORKSPACE_SCREENS = "standard_workspaceScreens";
    public static final String TABLE_WORKSPACE_SCREENS = "workspaceScreens";
    private static final String TAG = "LauncherProviderUtil";

    public static void addFavoritesTable(SQLiteDatabase db, long userSerialNumber) {
        db.execSQL("CREATE TABLE " + getFavoritesTable() + " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT " + userSerialNumber + ",rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0);");
    }

    public static void addOrgWorkspacesTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE workspaceScreens (_id INTEGER PRIMARY KEY,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);");
    }

    public static void addWorkspacesTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE " + getWorkspaceScreensTable() + " (" + GlobalSearchDbHelper.COLUMN_ID + " INTEGER PRIMARY KEY," + LauncherSettings.WorkspaceScreens.SCREEN_RANK + " INTEGER," + LauncherSettings.ChangeLogColumns.MODIFIED + " INTEGER NOT NULL DEFAULT 0);");
    }

    public static void addModifiedTime(ContentValues values) {
        values.put(LauncherSettings.ChangeLogColumns.MODIFIED, Long.valueOf(System.currentTimeMillis()));
    }

    public static boolean updateFolderItemsRank(SQLiteDatabase db, boolean addRankColumn) {
        db.beginTransaction();
        try {
            if (addRankColumn) {
                db.execSQL("ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;");
            }
            Cursor c = db.rawQuery("SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;", new String[]{Integer.toString(2)});
            while (c.moveToNext()) {
                db.execSQL("UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;", new Object[]{Long.valueOf(c.getLong(1) + 1), Long.valueOf(c.getLong(0))});
            }
            c.close();
            db.setTransactionSuccessful();
            return true;
        } catch (SQLException ex) {
            Log.e(TAG, ex.getMessage(), ex);
            return false;
        } finally {
            db.endTransaction();
        }
    }

    public static void convertShortcutsToLauncherActivities(SQLiteDatabase db, Context context) {
        convertShortcutsToLauncherActivities(db, getFavoritesTable(), context);
    }

    public static void convertShortcutsToLauncherActivities(SQLiteDatabase db, String table, Context context) {
        db.beginTransaction();
        Cursor c = null;
        SQLiteStatement updateStmt = null;
        try {
            try {
                long userSerial = UserManagerCompat.getInstance(context).getSerialNumberForUser(UserHandleCompat.myUserHandle());
                c = db.query(table, new String[]{GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.BaseLauncherColumns.INTENT}, "itemType=1 AND profileId=" + userSerial, null, null, null, null);
                updateStmt = db.compileStatement("UPDATE favorites SET itemType=0 WHERE _id=?");
                int idIndex = c.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                int intentIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
                while (c.moveToNext()) {
                    String intentDescription = c.getString(intentIndex);
                    try {
                        Intent intent = Intent.parseUri(intentDescription, 0);
                        if (Utilities.isLauncherAppTarget(intent)) {
                            long id = c.getLong(idIndex);
                            updateStmt.bindLong(1, id);
                            updateStmt.executeUpdateDelete();
                        }
                    } catch (URISyntaxException e) {
                        Log.e(TAG, "Unable to parse intent", e);
                    }
                }
                db.setTransactionSuccessful();
                db.endTransaction();
                if (c != null) {
                    c.close();
                }
                if (updateStmt != null) {
                    updateStmt.close();
                }
            } catch (SQLException ex) {
                Log.w(TAG, "Error deduping shortcuts", ex);
                db.endTransaction();
                if (c != null) {
                    c.close();
                }
                if (updateStmt != null) {
                    updateStmt.close();
                }
            }
        } catch (Throwable th) {
            db.endTransaction();
            if (c != null) {
                c.close();
            }
            if (updateStmt != null) {
                updateStmt.close();
            }
            throw th;
        }
    }

    public static void addQuickPageTable(SQLiteDatabase db) {
        db.beginTransaction();
        try {
            db.execSQL("CREATE TABLE quickPage (_id INTEGER,type INTEGER,size INTEGER,content TEXT,widgetId INTEGER,component TEXT,reminderTime INTEGER NOT NULL DEFAULT -1,reminderId INTEGER NOT NULL DEFAULT -1,modified INTEGER NOT NULL DEFAULT 0);");
            db.setTransactionSuccessful();
        } catch (SQLException ex) {
            Logger.e(TAG, ex.getMessage(), ex);
        } finally {
            db.endTransaction();
        }
    }

    public static boolean addIntegerColumn(SQLiteDatabase db, String columnName, long defaultValue) {
        boolean z;
        db.beginTransaction();
        try {
            try {
                db.execSQL("ALTER TABLE favorites ADD COLUMN " + columnName + " INTEGER NOT NULL DEFAULT " + defaultValue + ";");
                db.setTransactionSuccessful();
                db.endTransaction();
                z = true;
            } catch (SQLException ex) {
                Logger.e(TAG, ex.getMessage(), ex);
                z = false;
                db.endTransaction();
            }
            return z;
        } catch (Throwable th) {
            db.endTransaction();
            throw th;
        }
    }

    public static ComponentName getComponentNameForApplication(String intentDescription) {
        ComponentName componentName = null;
        if (intentDescription != null) {
            try {
                Intent intent = Intent.parseUri(intentDescription, 0);
                componentName = intent.getComponent();
            } catch (URISyntaxException e) {
                e.printStackTrace();
                return null;
            }
        }
        return componentName;
    }

    public static Intent createAppIntent(int nType, ComponentName componentName) {
        if (nType != 0) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(componentName);
        intent.setFlags(270532608);
        return intent;
    }

    public static String getFavoritesTable() {
        return StyleManager.isSimplifiedLayout() ? TABLE_SIMPLIFIED_FAVORITES : TABLE_STANDARD_FAVORITES;
    }

    public static String getWorkspaceScreensTable() {
        return StyleManager.isSimplifiedLayout() ? TABLE_SIMPLIFIED_WORKSPACE_SCREENS : TABLE_STANDARD_WORKSPACE_SCREENS;
    }

    public static boolean isCursorDataAvailable(Cursor c) {
        if (c == null) {
            Logger.e(TAG, "the cursor is invalid");
            return false;
        }
        if (c.getCount() <= 0 || !c.moveToFirst()) {
            Logger.d(TAG, "no data available in the cursor");
            c.close();
            return false;
        }
        return true;
    }

    public static boolean isTableExists(SQLiteDatabase db, String tableName) {
        if (db == null) {
            Log.w(TAG, "[isTableExists] db is null. Should not be here!!!!");
            return false;
        }
        if (TextUtils.isEmpty(tableName)) {
            Log.w(TAG, "[isTableExists] tableName is null. Should not be here!!!!");
            return false;
        }
        Cursor cursor = db.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type = 'table' AND name = '" + tableName + "'", null);
        if (cursor == null) {
            Log.w(TAG, "[isTableExists] cursor is null. table = " + tableName);
            return false;
        }
        if (!cursor.moveToFirst()) {
            Log.w(TAG, "[isTableExists] moveToFirst fail. table = " + tableName);
            return false;
        }
        int count = cursor.getInt(0);
        cursor.close();
        return count > 0;
    }
}
