package net.oneplus.h2launcher.launcherProviderHelper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.util.ArrayList;
import net.oneplus.h2launcher.LauncherClings;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.ManagedProfileHeuristic;

/* loaded from: classes.dex */
public class O2UpgradeHelper {
    private static final String TAG = "O2UpgradeHelper";

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001d. Please report as an issue. */
    public static int upgrade(Context context, SQLiteDatabase db, int oldVersion, DataBaseHelperCallback dataBaseHelperCallback) {
        Logger.d(TAG, "onUpgrade triggered: " + oldVersion);
        int version = oldVersion;
        switch (version) {
            case 12:
                dataBaseHelperCallback.onMaxScreenIdChange(0L);
                LauncherProviderUtil.addOrgWorkspacesTable(db);
            case 13:
                db.beginTransaction();
                try {
                    db.execSQL("ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;");
                    db.setTransactionSuccessful();
                } catch (SQLException ex) {
                    Logger.e(TAG, ex.getMessage(), ex);
                    return -100;
                } finally {
                }
            case 14:
                db.beginTransaction();
                try {
                    db.execSQL("ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;");
                    db.execSQL("ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;");
                    db.setTransactionSuccessful();
                } catch (SQLException ex2) {
                    Logger.e(TAG, ex2.getMessage(), ex2);
                    return -100;
                } finally {
                }
            case 15:
                if (!LauncherProviderUtil.addIntegerColumn(db, LauncherSettings.Favorites.RESTORED, 0L)) {
                    return -100;
                }
            case 16:
                LauncherClings.markFirstRunClingDismissed(context);
            case 17:
            case 18:
                removeOrphanedItems(db);
            case 19:
                if (!addProfileColumn(db, context)) {
                    return -100;
                }
            case 20:
                if (!LauncherProviderUtil.updateFolderItemsRank(db, true)) {
                    return -100;
                }
            case 21:
                if (!recreateWorkspaceTable(db, dataBaseHelperCallback)) {
                    return -100;
                }
            case 22:
                if (!LauncherProviderUtil.addIntegerColumn(db, LauncherSettings.Favorites.OPTIONS, 0L)) {
                    return -100;
                }
            case 23:
            case 24:
                ManagedProfileHeuristic.markExistingUsersForNoFolderCreation(context);
            case 25:
                LauncherProviderUtil.convertShortcutsToLauncherActivities(db, LauncherProviderUtil.TABLE_FAVORITES, context);
            case 26:
                addSizeColumn(db);
                addContentColumn(db);
            case 27:
                version = 27;
            default:
                return version;
        }
    }

    private static boolean addProfileColumn(SQLiteDatabase db, Context context) {
        UserManagerCompat userManager = UserManagerCompat.getInstance(context);
        long userSerialNumber = userManager.getSerialNumberForUser(UserHandleCompat.myUserHandle());
        return LauncherProviderUtil.addIntegerColumn(db, "profileId", userSerialNumber);
    }

    private static void removeOrphanedItems(SQLiteDatabase db) {
        db.execSQL("DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100");
        db.execSQL("DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)");
    }

    public static boolean recreateWorkspaceTable(SQLiteDatabase db, DataBaseHelperCallback dataBaseHelperCallback) {
        db.beginTransaction();
        try {
            try {
                Cursor c = db.query(LauncherProviderUtil.TABLE_WORKSPACE_SCREENS, new String[]{GlobalSearchDbHelper.COLUMN_ID}, null, null, null, null, LauncherSettings.WorkspaceScreens.SCREEN_RANK);
                ArrayList<Long> sortedIDs = new ArrayList<>();
                long maxId = 0;
                while (c.moveToNext()) {
                    try {
                        Long id = Long.valueOf(c.getLong(0));
                        if (!sortedIDs.contains(id)) {
                            sortedIDs.add(id);
                            maxId = Math.max(maxId, id.longValue());
                        }
                    } catch (Throwable th) {
                        c.close();
                        throw th;
                    }
                }
                c.close();
                db.execSQL("DROP TABLE IF EXISTS workspaceScreens");
                LauncherProviderUtil.addOrgWorkspacesTable(db);
                int total = sortedIDs.size();
                for (int i = 0; i < total; i++) {
                    ContentValues values = new ContentValues();
                    values.put(GlobalSearchDbHelper.COLUMN_ID, sortedIDs.get(i));
                    values.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, Integer.valueOf(i));
                    LauncherProviderUtil.addModifiedTime(values);
                    db.insertOrThrow(LauncherProviderUtil.TABLE_WORKSPACE_SCREENS, null, values);
                }
                db.setTransactionSuccessful();
                dataBaseHelperCallback.onMaxScreenIdChange(maxId);
                db.endTransaction();
                return true;
            } catch (SQLException ex) {
                Log.e(TAG, ex.getMessage(), ex);
                db.endTransaction();
                return false;
            }
        } catch (Throwable th2) {
            db.endTransaction();
            throw th2;
        }
    }

    private static boolean addSizeColumn(SQLiteDatabase db) {
        db.beginTransaction();
        try {
            try {
                db.execSQL("ALTER TABLE quickPage ADD COLUMN size INTEGER NOT NULL DEFAULT 1;");
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

    private static boolean addContentColumn(SQLiteDatabase db) {
        db.beginTransaction();
        try {
            try {
                db.execSQL("ALTER TABLE quickPage ADD COLUMN content TEXT;");
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
}
