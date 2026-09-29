package net.oneplus.h2launcher.launcherProviderHelper;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.oneplus.h2launcher.LauncherAppWidgetHost;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class UpgradeHelper {
    private static final boolean LOGD = false;
    private static final String TAG = "UpgradeHelper";

    public static void convertAppComponentName(Context context, SQLiteDatabase db) {
        Logger.d(TAG, "convertAppComponentName+");
        HashMap<ComponentName, ComponentName> appMappingTable = MappingTableHelper.createAppMappingTable(context);
        List<FavoriteItem> favoriteItems = getFavoriteItemFromDB(db);
        if (favoriteItems == null) {
            Logger.d(TAG, "convertAppComponentName favoriteItems == null");
            return;
        }
        db.beginTransaction();
        try {
            for (FavoriteItem item : favoriteItems) {
                if (item.getItemType() == 0) {
                    String strIntent = item.getIntent();
                    ComponentName componentName = LauncherProviderUtil.getComponentNameForApplication(strIntent);
                    if (componentName != null && appMappingTable.containsKey(componentName)) {
                        if (appMappingTable.get(componentName) == null) {
                            Logger.d(TAG, "+delete Favorite: " + item);
                            int nRet = db.delete(LauncherProviderUtil.TABLE_FAVORITES, "_id=?", new String[]{Integer.toString(item.getId())});
                            Logger.d(TAG, "-delete Favorite: %d", Integer.valueOf(nRet));
                        } else {
                            ComponentName targetComponent = appMappingTable.get(componentName);
                            Intent tartgetIntent = LauncherProviderUtil.createAppIntent(0, targetComponent);
                            item.setIntent(tartgetIntent.toUri(0));
                            Logger.d(TAG, "Update item from " + componentName + ", to " + targetComponent);
                            ContentValues value = new ContentValues();
                            value.put(LauncherSettings.BaseLauncherColumns.INTENT, item.getIntent());
                            Logger.d(TAG, "+Update Favorite: " + item);
                            int nRet2 = db.update(LauncherProviderUtil.TABLE_FAVORITES, value, "_id=?", new String[]{Integer.toString(item.getId())});
                            Logger.d(TAG, "-update Favorite: %d", Integer.valueOf(nRet2));
                        }
                    }
                }
            }
            db.setTransactionSuccessful();
        } catch (Exception e) {
            Logger.e(TAG, "update Favorite fail", e);
        } finally {
            db.endTransaction();
        }
        Logger.d(TAG, "convertAppComponentName-");
    }

    private static List<FavoriteItem> getFavoriteItemFromDB(SQLiteDatabase db) {
        List<FavoriteItem> items = new ArrayList<>();
        Cursor c = null;
        db.beginTransaction();
        try {
            try {
                c = db.query(LauncherProviderUtil.TABLE_FAVORITES, null, null, null, null, null, null);
                int nIdIndex = c.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                int nIntentIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
                int nAppWidgetProviderIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_PROVIDER);
                int nItemTypeIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
                while (c.moveToNext()) {
                    FavoriteItem item = new FavoriteItem();
                    int nId = c.getInt(nIdIndex);
                    String strIntent = c.getString(nIntentIndex);
                    String strAppWidgetProvider = c.getString(nAppWidgetProviderIndex);
                    int nItemType = c.getInt(nItemTypeIndex);
                    item.setId(nId);
                    item.setIntent(strIntent);
                    item.setAppWidgetProvider(strAppWidgetProvider);
                    item.setItemType(nItemType);
                    items.add(item);
                }
                db.setTransactionSuccessful();
                db.endTransaction();
                if (c != null) {
                    c.close();
                }
            } catch (SQLException e) {
                items.clear();
                db.endTransaction();
                if (c != null) {
                    c.close();
                }
            }
        } catch (Throwable th) {
            db.endTransaction();
            if (c != null) {
                c.close();
            }
        }
        return items;
    }

    public static void addInternalClockWidget(SQLiteDatabase db, DataBaseHelperCallback dataBaseHelperCallback) {
        boolean favoritesTableExist = LauncherProviderUtil.isTableExists(db, LauncherProviderUtil.TABLE_SIMPLIFIED_FAVORITES);
        if (favoritesTableExist) {
            db.beginTransaction();
            try {
                long id = getMaxId(db, LauncherProviderUtil.TABLE_SIMPLIFIED_FAVORITES) + 1;
                ContentValues values = new ContentValues();
                values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(id));
                values.put("container", (Integer) (-100));
                values.put(LauncherSettings.Favorites.SCREEN, (Integer) 0);
                values.put(LauncherSettings.Favorites.CELLX, (Integer) 0);
                values.put(LauncherSettings.Favorites.CELLY, (Integer) 0);
                values.put(LauncherSettings.Favorites.SPANX, (Integer) 3);
                values.put(LauncherSettings.Favorites.SPANY, (Integer) 2);
                values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 5);
                values.put(LauncherSettings.Favorites.APPWIDGET_ID, (Integer) (-100));
                values.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, "net.oneplus.h2launcher/net.oneplus.h2launcher.internalwidget.clock.ClockWidget");
                db.insert(LauncherProviderUtil.TABLE_SIMPLIFIED_FAVORITES, null, values);
                db.setTransactionSuccessful();
                dataBaseHelperCallback.onMaxItemIdChange(id);
            } catch (SQLException ex) {
                Logger.e(TAG, ex.getMessage(), ex);
            } finally {
                db.endTransaction();
            }
        }
    }

    public static void moveAllItemsdown(SQLiteDatabase db) {
        Logger.d(TAG, "moveAllItemsdown +");
        db.beginTransaction();
        try {
            StringBuilder strBuilder = new StringBuilder();
            strBuilder.append("UPDATE ").append(LauncherProviderUtil.getFavoritesTable()).append(" SET ").append(LauncherSettings.Favorites.CELLY).append("=").append("cellY + 1").append(" WHERE ").append("container").append("=").append(-100);
            Logger.d(TAG, "[moveAllItemsdown] strBuilder: " + strBuilder.toString());
            db.execSQL(strBuilder.toString());
            db.setTransactionSuccessful();
        } catch (Exception e) {
            Logger.e(TAG, "moveAllItemsdown fail", e);
        } finally {
            db.endTransaction();
        }
        Logger.d(TAG, "moveAllItemsdown -");
    }

    public static void addGoogleSearchBarWidget(SQLiteDatabase db, DataBaseHelperCallback dataBaseHelperCallback, int WorkspaceColumns, Context context) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        LauncherAppWidgetHost appWidgetHost = new LauncherAppWidgetHost(context, 1024);
        int appWidgetId = appWidgetHost.allocateAppWidgetId();
        if (!appWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, new ComponentName("com.google.android.googlequicksearchbox", "com.google.android.googlequicksearchbox.SearchWidgetProvider"))) {
            Logger.w(TAG, "Unable to bind google quick search box");
            return;
        }
        db.beginTransaction();
        try {
            long id = getMaxId(db, LauncherProviderUtil.TABLE_STANDARD_FAVORITES) + 1;
            ContentValues values = new ContentValues();
            values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(id));
            values.put("container", (Integer) (-100));
            values.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(getFirstScreenIdFromDB(db)));
            values.put(LauncherSettings.Favorites.CELLX, (Integer) 0);
            values.put(LauncherSettings.Favorites.CELLY, (Integer) 0);
            values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(WorkspaceColumns));
            values.put(LauncherSettings.Favorites.SPANY, (Integer) 1);
            values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 4);
            values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(appWidgetId));
            values.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, "com.google.android.googlequicksearchbox/com.google.android.googlequicksearchbox.SearchWidgetProvider");
            db.insert(LauncherProviderUtil.TABLE_STANDARD_FAVORITES, null, values);
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

    private static int getFirstScreenIdFromDB(SQLiteDatabase db) {
        Cursor c = null;
        int firstScreenId = 0;
        try {
            try {
                c = db.query(LauncherProviderUtil.getWorkspaceScreensTable(), null, null, null, null, null, null);
                int nIdIndex = c.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                if (c.moveToFirst()) {
                    firstScreenId = c.getInt(nIdIndex);
                }
                if (c != null) {
                    c.close();
                }
                Logger.d(TAG, "[getFirstScreenIdFromDB] firstScreenId: " + firstScreenId);
                return firstScreenId;
            } catch (Exception ex) {
                Logger.d(TAG, "[getFirstScreenIdFromDB] ex: " + ex.getMessage());
                if (c != null) {
                    c.close();
                }
                Logger.d(TAG, "[getFirstScreenIdFromDB] firstScreenId: 0");
                return 0;
            }
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            Logger.d(TAG, "[getFirstScreenIdFromDB] firstScreenId: 0");
            return 0;
        }
    }
}
