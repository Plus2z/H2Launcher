package net.oneplus.h2launcher.launcherProviderHelper;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class H2UpgradeHelper {
    private static final String TAG = "H2UpgradeHelper";

    public static int upgrade(int oldVersion) {
        return oldVersion;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    public static int upgradeToOOS(SQLiteDatabase db, int oldVersion, DataBaseHelperCallback dataBaseHelperCallback) {
        int version = oldVersion;
        switch (version) {
            case 25:
            case 26:
                Logger.d(TAG, "add quickPageTable and column{RANK , OPTIONS} of favorites");
                LauncherProviderUtil.addQuickPageTable(db);
                AddInternalClockWidget(db, dataBaseHelperCallback);
                if (!LauncherProviderUtil.addIntegerColumn(db, LauncherSettings.Favorites.RANK, 0L) || !LauncherProviderUtil.addIntegerColumn(db, LauncherSettings.Favorites.OPTIONS, 0L)) {
                    return -100;
                }
                updateScreenId(db, dataBaseHelperCallback);
                version = 27;
                break;
            default:
                return version;
        }
    }

    private static boolean isNeedUpdateScreenId(SQLiteDatabase db) {
        Logger.d(TAG, "isNeedUpdateScreenId (+) ");
        boolean isNeedUpdate = false;
        db.beginTransaction();
        try {
            String sql = String.format("SELECT MIN(%s) FROM %s where %s = %d", LauncherSettings.Favorites.SCREEN, LauncherProviderUtil.TABLE_FAVORITES, "container", -100);
            Cursor cursorFavorites = db.rawQuery(sql, null);
            int minScreenId = -1;
            if (cursorFavorites != null && cursorFavorites.moveToNext()) {
                minScreenId = cursorFavorites.getInt(0);
            }
            if (cursorFavorites != null) {
                cursorFavorites.close();
            }
            String sql2 = String.format("SELECT MIN(%s) FROM %s ", GlobalSearchDbHelper.COLUMN_ID, LauncherProviderUtil.TABLE_WORKSPACE_SCREENS);
            Cursor cursorWorkspaceScreen = db.rawQuery(sql2, null);
            int minId = -1;
            if (cursorWorkspaceScreen != null && cursorWorkspaceScreen.moveToNext()) {
                minId = cursorWorkspaceScreen.getInt(0);
            }
            if (cursorWorkspaceScreen != null) {
                cursorWorkspaceScreen.close();
            }
            isNeedUpdate = minScreenId > 0 && minId > 0;
            db.setTransactionSuccessful();
        } catch (SQLException ex) {
            Logger.e(TAG, ex.getMessage(), ex);
        } finally {
            db.endTransaction();
        }
        Logger.d(TAG, "isNeedUpdateScreenId (-) needupdate = %b", Boolean.valueOf(isNeedUpdate));
        return isNeedUpdate;
    }

    private static void updateScreenId(SQLiteDatabase db, DataBaseHelperCallback dataBaseHelperCallback) {
        Logger.d(TAG, "updateScreenId + ");
        if (isNeedUpdateScreenId(db)) {
            db.beginTransaction();
            try {
                String sql = String.format("UPDATE %s SET %s = %s %d where %s = %d", LauncherProviderUtil.TABLE_FAVORITES, LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.SCREEN, -1, "container", -100);
                db.execSQL(sql);
                String sql2 = String.format("UPDATE %s SET %s = %s %d", LauncherProviderUtil.TABLE_WORKSPACE_SCREENS, GlobalSearchDbHelper.COLUMN_ID, GlobalSearchDbHelper.COLUMN_ID, -1);
                db.execSQL(sql2);
                String sql3 = String.format("SELECT MAX(%s) FROM %s ", LauncherSettings.Favorites.SCREEN, LauncherProviderUtil.TABLE_FAVORITES);
                Cursor cursorWorkspaceScreen = db.rawQuery(sql3, null);
                int maxId = -1;
                if (cursorWorkspaceScreen != null && cursorWorkspaceScreen.moveToNext()) {
                    maxId = cursorWorkspaceScreen.getInt(0);
                }
                if (cursorWorkspaceScreen != null) {
                    cursorWorkspaceScreen.close();
                }
                db.setTransactionSuccessful();
                dataBaseHelperCallback.onMaxScreenIdChange(maxId);
                Logger.d(TAG, "success updateScreenId - ");
            } catch (SQLException ex) {
                Logger.e(TAG, ex.getMessage(), ex);
            } finally {
                db.endTransaction();
            }
            Logger.d(TAG, "updateScreenId - ");
        }
    }

    private static void AddInternalClockWidget(SQLiteDatabase db, DataBaseHelperCallback dataBaseHelperCallback) {
        db.beginTransaction();
        try {
            long id = getMaxId(db, LauncherProviderUtil.TABLE_FAVORITES) + 1;
            ContentValues values = new ContentValues();
            values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(id));
            values.put("container", (Integer) (-100));
            values.put(LauncherSettings.Favorites.SCREEN, (Integer) 1);
            values.put(LauncherSettings.Favorites.CELLX, (Integer) 0);
            values.put(LauncherSettings.Favorites.CELLY, (Integer) 0);
            values.put(LauncherSettings.Favorites.SPANX, (Integer) 3);
            values.put(LauncherSettings.Favorites.SPANY, (Integer) 2);
            values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 5);
            values.put(LauncherSettings.Favorites.APPWIDGET_ID, (Integer) (-100));
            values.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, "net.oneplus.h2launcher/net.oneplus.h2launcher.internalwidget.clock.ClockWidget");
            db.insert(LauncherProviderUtil.TABLE_FAVORITES, null, values);
            db.setTransactionSuccessful();
            dataBaseHelperCallback.onMaxItemIdChange(id);
        } catch (SQLException ex) {
            Logger.e(TAG, ex.getMessage(), ex);
        } finally {
            db.endTransaction();
        }
    }

    static long getMaxId(SQLiteDatabase db, String table) {
        Cursor c = db.rawQuery("SELECT MAX(_id) FROM " + table, null);
        long id = -1;
        if (c != null && c.moveToNext()) {
            id = c.getLong(0);
        }
        if (c != null) {
            c.close();
        }
        if (id == -1) {
            throw new RuntimeException("Error: could not query max id in " + table);
        }
        return id;
    }
}
