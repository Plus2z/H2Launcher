package net.oneplus.h2launcher.model;

import android.content.ComponentName;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.LauncherProvider;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.SwitchLayoutFragment;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.backup.BackupProtos;
import net.oneplus.h2launcher.compat.PackageInstallerCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.internalwidget.clock.ClockWidget;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.LongArrayMap;

/* loaded from: classes.dex */
public class GridSizeMigrationTask {
    private static final boolean DEBUG = true;
    public static boolean ENABLED = Utilities.isNOrAbove();
    private static final String KEY_MIGRATION_SRC_HOTSEAT_SIZE = "migration_src_hotseat_size";
    private static final String KEY_MIGRATION_SRC_WORKSPACE_SIZE = "migration_src_workspace_size";
    private static final String KEY_MIGRATION_WIDGET_MINSIZE = "migration_widget_min_size";
    private static final String TAG = "GridSizeMigrationTask";
    private static final float WT_APPLICATION = 0.8f;
    private static final float WT_FOLDER_FACTOR = 0.5f;
    private static final float WT_SHORTCUT = 1.0f;
    private static final float WT_WIDGET_FACTOR = 0.6f;
    private static final float WT_WIDGET_MIN = 2.0f;
    private final ArrayList<DbEntry> mCarryOver;
    private final Context mContext;
    private final int mDestAllAppsRank;
    private final int mDestHotseatSize;
    private final ArrayList<Long> mEntryToRemove;
    private final InvariantDeviceProfile mIdp;
    private final boolean mShouldRemoveX;
    private final boolean mShouldRemoveY;
    private final int mSrcAllAppsRank;
    private final int mSrcHotseatSize;
    private final int mSrcX;
    private final int mSrcY;
    private final ContentValues mTempValues;
    private final int mTrgX;
    private final int mTrgY;
    private final ArrayList<ContentProviderOperation> mUpdateOperations;
    private final HashSet<String> mValidPackages;
    private final HashMap<String, Point> mWidgetMinSize;

    protected GridSizeMigrationTask(Context context, InvariantDeviceProfile idp, HashSet<String> validPackages, HashMap<String, Point> widgetMinSize, Point sourceSize, Point targetSize) {
        this.mWidgetMinSize = new HashMap<>();
        this.mTempValues = new ContentValues();
        this.mEntryToRemove = new ArrayList<>();
        this.mUpdateOperations = new ArrayList<>();
        this.mCarryOver = new ArrayList<>();
        this.mContext = context;
        this.mValidPackages = validPackages;
        this.mWidgetMinSize.putAll(widgetMinSize);
        this.mIdp = idp;
        this.mSrcX = sourceSize.x;
        this.mSrcY = sourceSize.y;
        this.mTrgX = targetSize.x;
        this.mTrgY = targetSize.y;
        this.mShouldRemoveX = this.mTrgX < this.mSrcX;
        this.mShouldRemoveY = this.mTrgY < this.mSrcY;
        this.mDestAllAppsRank = -1;
        this.mDestHotseatSize = -1;
        this.mSrcAllAppsRank = -1;
        this.mSrcHotseatSize = -1;
    }

    protected GridSizeMigrationTask(Context context, InvariantDeviceProfile idp, HashSet<String> validPackages, int srcHotseatSize, int srcAllAppsRank, int destHotseatSize, int destAllAppsRank) {
        this.mWidgetMinSize = new HashMap<>();
        this.mTempValues = new ContentValues();
        this.mEntryToRemove = new ArrayList<>();
        this.mUpdateOperations = new ArrayList<>();
        this.mCarryOver = new ArrayList<>();
        this.mContext = context;
        this.mIdp = idp;
        this.mValidPackages = validPackages;
        this.mSrcHotseatSize = srcHotseatSize;
        this.mSrcAllAppsRank = srcAllAppsRank;
        this.mDestHotseatSize = destHotseatSize;
        this.mDestAllAppsRank = destAllAppsRank;
        this.mTrgY = -1;
        this.mTrgX = -1;
        this.mSrcY = -1;
        this.mSrcX = -1;
        this.mShouldRemoveY = false;
        this.mShouldRemoveX = false;
    }

    private boolean applyOperations() throws Exception {
        if (!this.mUpdateOperations.isEmpty()) {
            this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, this.mUpdateOperations);
        }
        if (!this.mEntryToRemove.isEmpty()) {
            Log.d(TAG, "Removing items: " + TextUtils.join(", ", this.mEntryToRemove));
            this.mContext.getContentResolver().delete(LauncherSettings.Favorites.CONTENT_URI, Utilities.createDbSelectionQuery(GlobalSearchDbHelper.COLUMN_ID, this.mEntryToRemove), null);
        }
        return (this.mUpdateOperations.isEmpty() && this.mEntryToRemove.isEmpty()) ? false : true;
    }

    protected boolean migrateHotseat() throws Exception {
        ArrayList<DbEntry> items = loadHotseatEntries();
        int requiredCount = this.mDestHotseatSize - 1;
        while (items.size() > requiredCount) {
            DbEntry toRemove = items.get(items.size() / 2);
            Iterator<DbEntry> it = items.iterator();
            while (it.hasNext()) {
                DbEntry entry = it.next();
                if (entry.weight < toRemove.weight) {
                    toRemove = entry;
                }
            }
            this.mEntryToRemove.add(Long.valueOf(toRemove.id));
            items.remove(toRemove);
        }
        int newScreenId = 0;
        Iterator<DbEntry> it2 = items.iterator();
        while (it2.hasNext()) {
            DbEntry entry2 = it2.next();
            if (entry2.screenId != newScreenId) {
                entry2.screenId = newScreenId;
                entry2.cellX = newScreenId;
                entry2.cellY = 0;
                update(entry2);
            }
            newScreenId++;
            if (newScreenId == this.mDestAllAppsRank) {
                newScreenId++;
            }
        }
        return applyOperations();
    }

    protected boolean migrateWorkspace() throws Exception {
        ArrayList<Long> allScreens = LauncherModel.loadWorkspaceScreensDb(this.mContext);
        if (allScreens.isEmpty()) {
            throw new Exception("Unable to get workspace screens! Might be layout switch case.");
        }
        Iterator<Long> it = allScreens.iterator();
        while (it.hasNext()) {
            long screenId = it.next().longValue();
            Log.d(TAG, "Migrating " + screenId);
            migrateScreen(screenId);
        }
        if (!this.mCarryOver.isEmpty()) {
            LongArrayMap<DbEntry> itemMap = new LongArrayMap<>();
            Iterator<DbEntry> it2 = this.mCarryOver.iterator();
            while (it2.hasNext()) {
                DbEntry e = it2.next();
                itemMap.put(e.id, e);
            }
            do {
                OptimalPlacementSolution placement = new OptimalPlacementSolution((boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mTrgX, this.mTrgY), deepCopy(this.mCarryOver), true);
                placement.find();
                if (placement.finalPlacedItems.size() > 0) {
                    long newScreenId = LauncherAppState.getLauncherProvider().generateNewScreenId();
                    allScreens.add(Long.valueOf(newScreenId));
                    Iterator<DbEntry> it3 = placement.finalPlacedItems.iterator();
                    while (it3.hasNext()) {
                        DbEntry item = it3.next();
                        if (!this.mCarryOver.remove(itemMap.get(item.id))) {
                            throw new Exception("Unable to find matching items");
                        }
                        item.screenId = newScreenId;
                        update(item);
                    }
                } else {
                    throw new Exception("None of the items can be placed on an empty screen");
                }
            } while (!this.mCarryOver.isEmpty());
            Uri uri = LauncherSettings.WorkspaceScreens.CONTENT_URI;
            this.mUpdateOperations.add(ContentProviderOperation.newDelete(uri).build());
            int count = allScreens.size();
            for (int i = 0; i < count; i++) {
                ContentValues v = new ContentValues();
                v.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(allScreens.get(i).longValue()));
                v.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, Integer.valueOf(i));
                this.mUpdateOperations.add(ContentProviderOperation.newInsert(uri).withValues(v).build());
            }
        }
        return applyOperations();
    }

    private void migrateScreen(long screenId) {
        ArrayList<DbEntry> items = loadWorkspaceEntries(screenId);
        int removedCol = Integer.MAX_VALUE;
        int removedRow = Integer.MAX_VALUE;
        float removeWt = Float.MAX_VALUE;
        float moveWt = Float.MAX_VALUE;
        float[] outLoss = new float[2];
        ArrayList<DbEntry> finalItems = null;
        for (int x = 0; x < this.mSrcX; x++) {
            for (int y = 0; y < this.mSrcY; y++) {
                ArrayList<DbEntry> itemsOnScreen = tryRemove(x, y, deepCopy(items), outLoss);
                if (outLoss[0] < removeWt || (outLoss[0] == removeWt && outLoss[1] < moveWt)) {
                    removeWt = outLoss[0];
                    moveWt = outLoss[1];
                    if (this.mShouldRemoveX) {
                        removedCol = x;
                    }
                    if (this.mShouldRemoveY) {
                        removedRow = y;
                    }
                    finalItems = itemsOnScreen;
                }
                if (!this.mShouldRemoveY) {
                    break;
                }
            }
            if (!this.mShouldRemoveX) {
                break;
            }
        }
        Log.d(TAG, String.format("Removing row %d, column %d on screen %d", Integer.valueOf(removedRow), Integer.valueOf(removedCol), Long.valueOf(screenId)));
        LongArrayMap<DbEntry> itemMap = new LongArrayMap<>();
        Iterator<DbEntry> it = deepCopy(items).iterator();
        while (it.hasNext()) {
            DbEntry e = it.next();
            itemMap.put(e.id, e);
        }
        Iterator<DbEntry> it2 = finalItems.iterator();
        while (it2.hasNext()) {
            DbEntry item = it2.next();
            DbEntry org = itemMap.get(item.id);
            itemMap.remove(item.id);
            if (!item.columnsSame(org)) {
                update(item);
            }
        }
        Iterator<DbEntry> it3 = itemMap.iterator();
        while (it3.hasNext()) {
            this.mCarryOver.add(it3.next());
        }
        if (!this.mCarryOver.isEmpty() && removeWt == 0.0f) {
            boolean[][] occupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mTrgX, this.mTrgY);
            Iterator<DbEntry> it4 = finalItems.iterator();
            while (it4.hasNext()) {
                markCells(occupied, it4.next(), true);
            }
            OptimalPlacementSolution placement = new OptimalPlacementSolution(occupied, deepCopy(this.mCarryOver), true);
            placement.find();
            if (placement.lowestWeightLoss == 0.0f) {
                Iterator<DbEntry> it5 = placement.finalPlacedItems.iterator();
                while (it5.hasNext()) {
                    DbEntry item2 = it5.next();
                    item2.screenId = screenId;
                    update(item2);
                }
                this.mCarryOver.clear();
            }
        }
    }

    private void update(DbEntry item) {
        this.mTempValues.clear();
        item.addToContentValues(this.mTempValues);
        this.mUpdateOperations.add(ContentProviderOperation.newUpdate(LauncherSettings.Favorites.getContentUri(item.id)).withValues(this.mTempValues).build());
    }

    private ArrayList<DbEntry> tryRemove(int col, int row, ArrayList<DbEntry> items, float[] outLoss) {
        boolean[][] occupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mTrgX, this.mTrgY);
        if (!this.mShouldRemoveX) {
            col = Integer.MAX_VALUE;
        }
        if (!this.mShouldRemoveY) {
            row = Integer.MAX_VALUE;
        }
        ArrayList<DbEntry> finalItems = new ArrayList<>();
        ArrayList<DbEntry> removedItems = new ArrayList<>();
        Iterator<DbEntry> it = items.iterator();
        while (it.hasNext()) {
            DbEntry item = it.next();
            if ((item.cellX <= col && item.spanX + item.cellX > col) || (item.cellY <= row && item.spanY + item.cellY > row)) {
                removedItems.add(item);
                if (item.cellX >= col) {
                    item.cellX--;
                }
                if (item.cellY >= row) {
                    item.cellY--;
                }
            } else {
                if (item.cellX > col) {
                    item.cellX--;
                }
                if (item.cellY > row) {
                    item.cellY--;
                }
                finalItems.add(item);
                markCells(occupied, item, true);
            }
        }
        OptimalPlacementSolution placement = new OptimalPlacementSolution(this, occupied, removedItems);
        placement.find();
        finalItems.addAll(placement.finalPlacedItems);
        outLoss[0] = placement.lowestWeightLoss;
        outLoss[1] = placement.lowestMoveCost;
        return finalItems;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markCells(boolean[][] occupied, DbEntry item, boolean val) {
        for (int i = item.cellX; i < item.cellX + item.spanX; i++) {
            for (int j = item.cellY; j < item.cellY + item.spanY; j++) {
                occupied[i][j] = val;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVacant(boolean[][] occupied, int x, int y, int w, int h) {
        if (x + w > this.mTrgX || y + h > this.mTrgY) {
            return false;
        }
        for (int i = 0; i < w; i++) {
            for (int j = 0; j < h; j++) {
                if (occupied[i + x][j + y]) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class OptimalPlacementSolution {
        ArrayList<DbEntry> finalPlacedItems;
        private final boolean ignoreMove;
        private final ArrayList<DbEntry> itemsToPlace;
        float lowestMoveCost;
        float lowestWeightLoss;
        private final boolean[][] occupied;

        public OptimalPlacementSolution(GridSizeMigrationTask gridSizeMigrationTask, boolean[][] occupied, ArrayList<DbEntry> itemsToPlace) {
            this(occupied, itemsToPlace, false);
        }

        public OptimalPlacementSolution(boolean[][] occupied, ArrayList<DbEntry> itemsToPlace, boolean ignoreMove) {
            this.lowestWeightLoss = Float.MAX_VALUE;
            this.lowestMoveCost = Float.MAX_VALUE;
            this.occupied = occupied;
            this.itemsToPlace = itemsToPlace;
            this.ignoreMove = ignoreMove;
            Collections.sort(this.itemsToPlace);
        }

        public void find() {
            find(0, 0.0f, 0.0f, new ArrayList<>());
        }

        public void find(int index, float weightLoss, float moveCost, ArrayList<DbEntry> itemsPlaced) {
            if (weightLoss < this.lowestWeightLoss) {
                if (weightLoss != this.lowestWeightLoss || moveCost < this.lowestMoveCost) {
                    if (index >= this.itemsToPlace.size()) {
                        this.lowestWeightLoss = weightLoss;
                        this.lowestMoveCost = moveCost;
                        this.finalPlacedItems = GridSizeMigrationTask.deepCopy(itemsPlaced);
                        return;
                    }
                    DbEntry me = this.itemsToPlace.get(index);
                    int myX = me.cellX;
                    int myY = me.cellY;
                    ArrayList<DbEntry> itemsIncludingMe = new ArrayList<>(itemsPlaced.size() + 1);
                    itemsIncludingMe.addAll(itemsPlaced);
                    itemsIncludingMe.add(me);
                    if (me.spanX > 1 || me.spanY > 1) {
                        int myW = me.spanX;
                        int myH = me.spanY;
                        for (int y = 0; y < GridSizeMigrationTask.this.mTrgY; y++) {
                            for (int x = 0; x < GridSizeMigrationTask.this.mTrgX; x++) {
                                float newMoveCost = moveCost;
                                if (x != myX) {
                                    me.cellX = x;
                                    newMoveCost += 1.0f;
                                }
                                if (y != myY) {
                                    me.cellY = y;
                                    newMoveCost += 1.0f;
                                }
                                if (this.ignoreMove) {
                                    newMoveCost = moveCost;
                                }
                                if (GridSizeMigrationTask.this.isVacant(this.occupied, x, y, myW, myH)) {
                                    GridSizeMigrationTask.this.markCells(this.occupied, me, true);
                                    find(index + 1, weightLoss, newMoveCost, itemsIncludingMe);
                                    GridSizeMigrationTask.this.markCells(this.occupied, me, false);
                                }
                                if (myW > me.minSpanX) {
                                    if (GridSizeMigrationTask.this.isVacant(this.occupied, x, y, myW - 1, myH)) {
                                        me.spanX--;
                                        GridSizeMigrationTask.this.markCells(this.occupied, me, true);
                                        find(index + 1, weightLoss, 1.0f + newMoveCost, itemsIncludingMe);
                                        GridSizeMigrationTask.this.markCells(this.occupied, me, false);
                                        me.spanX++;
                                    }
                                }
                                if (myH > me.minSpanY) {
                                    if (GridSizeMigrationTask.this.isVacant(this.occupied, x, y, myW, myH - 1)) {
                                        me.spanY--;
                                        GridSizeMigrationTask.this.markCells(this.occupied, me, true);
                                        find(index + 1, weightLoss, 1.0f + newMoveCost, itemsIncludingMe);
                                        GridSizeMigrationTask.this.markCells(this.occupied, me, false);
                                        me.spanY++;
                                    }
                                }
                                if (myH > me.minSpanY && myW > me.minSpanX) {
                                    if (GridSizeMigrationTask.this.isVacant(this.occupied, x, y, myW - 1, myH - 1)) {
                                        me.spanX--;
                                        me.spanY--;
                                        GridSizeMigrationTask.this.markCells(this.occupied, me, true);
                                        find(index + 1, weightLoss, GridSizeMigrationTask.WT_WIDGET_MIN + newMoveCost, itemsIncludingMe);
                                        GridSizeMigrationTask.this.markCells(this.occupied, me, false);
                                        me.spanX++;
                                        me.spanY++;
                                    }
                                }
                                me.cellX = myX;
                                me.cellY = myY;
                            }
                        }
                        find(index + 1, me.weight + weightLoss, moveCost, itemsPlaced);
                        return;
                    }
                    int newDistance = Integer.MAX_VALUE;
                    int newX = Integer.MAX_VALUE;
                    int newY = Integer.MAX_VALUE;
                    for (int y2 = 0; y2 < GridSizeMigrationTask.this.mTrgY; y2++) {
                        for (int x2 = 0; x2 < GridSizeMigrationTask.this.mTrgX; x2++) {
                            if (!this.occupied[x2][y2]) {
                                int dist = this.ignoreMove ? 0 : ((me.cellX - x2) * (me.cellX - x2)) + ((me.cellY - y2) * (me.cellY - y2));
                                if (dist < newDistance) {
                                    newX = x2;
                                    newY = y2;
                                    newDistance = dist;
                                }
                            }
                        }
                    }
                    if (newX < GridSizeMigrationTask.this.mTrgX && newY < GridSizeMigrationTask.this.mTrgY) {
                        float newMoveCost2 = moveCost;
                        if (newX != myX) {
                            me.cellX = newX;
                            newMoveCost2 += 1.0f;
                        }
                        if (newY != myY) {
                            me.cellY = newY;
                            newMoveCost2 += 1.0f;
                        }
                        if (this.ignoreMove) {
                            newMoveCost2 = moveCost;
                        }
                        GridSizeMigrationTask.this.markCells(this.occupied, me, true);
                        find(index + 1, weightLoss, newMoveCost2, itemsIncludingMe);
                        GridSizeMigrationTask.this.markCells(this.occupied, me, false);
                        me.cellX = myX;
                        me.cellY = myY;
                        if (index + 1 < this.itemsToPlace.size() && this.itemsToPlace.get(index + 1).weight >= me.weight && !this.ignoreMove) {
                            find(index + 1, me.weight + weightLoss, moveCost, itemsPlaced);
                            return;
                        }
                        return;
                    }
                    for (int i = index + 1; i < this.itemsToPlace.size(); i++) {
                        weightLoss += this.itemsToPlace.get(i).weight;
                    }
                    find(this.itemsToPlace.size(), me.weight + weightLoss, moveCost, itemsPlaced);
                }
            }
        }
    }

    private ArrayList<DbEntry> loadHotseatEntries() {
        Cursor c = this.mContext.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.BaseLauncherColumns.ITEM_TYPE, LauncherSettings.BaseLauncherColumns.INTENT, LauncherSettings.Favorites.SCREEN}, "container = -101", null, null, null);
        int indexId = c.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
        int indexItemType = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
        int indexIntent = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
        int indexScreen = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
        ArrayList<DbEntry> entries = new ArrayList<>();
        while (c.moveToNext()) {
            DbEntry entry = new DbEntry();
            entry.id = c.getLong(indexId);
            entry.itemType = c.getInt(indexItemType);
            entry.screenId = c.getLong(indexScreen);
            if (entry.screenId >= this.mSrcHotseatSize) {
                this.mEntryToRemove.add(Long.valueOf(entry.id));
            } else {
                try {
                    switch (entry.itemType) {
                        case 0:
                        case 1:
                            verifyIntent(c.getString(indexIntent));
                            entry.weight = entry.itemType == 1 ? 1.0f : 0.8f;
                            break;
                        case 2:
                            int total = getFolderItemsCount(entry.id);
                            if (total == 0) {
                                throw new Exception("Folder is empty");
                            }
                            entry.weight = WT_FOLDER_FACTOR * total;
                            break;
                        default:
                            throw new Exception("Invalid item type");
                    }
                    entries.add(entry);
                } catch (Exception e) {
                    Log.d(TAG, "Removing item " + entry.id, e);
                    this.mEntryToRemove.add(Long.valueOf(entry.id));
                }
            }
        }
        c.close();
        return entries;
    }

    private ArrayList<DbEntry> loadWorkspaceEntries(long screen) {
        Cursor c = this.mContext.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.BaseLauncherColumns.ITEM_TYPE, LauncherSettings.Favorites.CELLX, LauncherSettings.Favorites.CELLY, LauncherSettings.Favorites.SPANX, LauncherSettings.Favorites.SPANY, LauncherSettings.BaseLauncherColumns.INTENT, LauncherSettings.Favorites.APPWIDGET_PROVIDER}, "container = -100 AND screen = " + screen, null, null, null);
        int indexId = c.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
        int indexItemType = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
        int indexCellX = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
        int indexCellY = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
        int indexSpanX = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANX);
        int indexSpanY = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANY);
        int indexIntent = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
        int indexAppWidgetProvider = c.getColumnIndexOrThrow(LauncherSettings.Favorites.APPWIDGET_PROVIDER);
        ArrayList<DbEntry> entries = new ArrayList<>();
        while (c.moveToNext()) {
            DbEntry entry = new DbEntry();
            entry.id = c.getLong(indexId);
            entry.itemType = c.getInt(indexItemType);
            entry.cellX = c.getInt(indexCellX);
            entry.cellY = c.getInt(indexCellY);
            entry.spanX = c.getInt(indexSpanX);
            entry.spanY = c.getInt(indexSpanY);
            entry.screenId = screen;
            try {
                switch (entry.itemType) {
                    case 0:
                    case 1:
                        verifyIntent(c.getString(indexIntent));
                        entry.weight = entry.itemType == 1 ? 1.0f : 0.8f;
                        break;
                    case 2:
                        int total = getFolderItemsCount(entry.id);
                        if (total == 0) {
                            throw new Exception("Folder is empty");
                        }
                        entry.weight = WT_FOLDER_FACTOR * total;
                        break;
                    case 3:
                    default:
                        throw new Exception("Invalid item type");
                    case 4:
                    case 5:
                        String provider = c.getString(indexAppWidgetProvider);
                        ComponentName cn = ComponentName.unflattenFromString(provider);
                        verifyPackage(cn.getPackageName());
                        entry.weight = Math.max(WT_WIDGET_MIN, 0.6f * entry.spanX * entry.spanY);
                        LauncherAppWidgetProviderInfo pInfo = LauncherModel.getProviderInfo(this.mContext, cn, UserHandleCompat.myUserHandle());
                        Point spans = pInfo == null ? this.mWidgetMinSize.get(provider) : pInfo.getMinSpans(this.mIdp, this.mContext);
                        if (spans != null) {
                            entry.minSpanX = spans.x > 0 ? spans.x : entry.spanX;
                            entry.minSpanY = spans.y > 0 ? spans.y : entry.spanY;
                            if (cn.getClassName().equals(ClockWidget.class.getCanonicalName())) {
                                entry.minSpanX = entry.minSpanX > this.mTrgX ? this.mTrgX : entry.minSpanX;
                                entry.minSpanY = entry.minSpanY > this.mTrgY ? this.mTrgY : entry.minSpanY;
                            }
                        } else {
                            entry.minSpanY = 2;
                            entry.minSpanX = 2;
                        }
                        if (entry.minSpanX > this.mTrgX || entry.minSpanY > this.mTrgY) {
                            Logger.d(TAG, "[loadWorkspaceEntries] Widget can't be resized down to fit the grid. entry.minSpanX = " + entry.minSpanX + ", entry.minSpanY = " + entry.minSpanY + "ComponentName = " + cn);
                            throw new Exception("Widget can't be resized down to fit the grid");
                        }
                        break;
                }
                entries.add(entry);
            } catch (Exception e) {
                Log.d(TAG, "Removing item " + entry.id, e);
                this.mEntryToRemove.add(Long.valueOf(entry.id));
            }
        }
        c.close();
        return entries;
    }

    private int getFolderItemsCount(long folderId) {
        Cursor c = this.mContext.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.BaseLauncherColumns.INTENT}, "container = " + folderId, null, null, null);
        int total = 0;
        while (c.moveToNext()) {
            try {
                verifyIntent(c.getString(1));
                total++;
            } catch (Exception e) {
                this.mEntryToRemove.add(Long.valueOf(c.getLong(0)));
            }
        }
        c.close();
        return total;
    }

    private void verifyIntent(String intentStr) throws Exception {
        Intent intent = Intent.parseUri(intentStr, 0);
        if (intent.getComponent() != null) {
            verifyPackage(intent.getComponent().getPackageName());
        } else if (intent.getPackage() != null) {
            verifyPackage(intent.getPackage());
        }
    }

    private void verifyPackage(String packageName) throws Exception {
        if (!this.mValidPackages.contains(packageName)) {
            throw new Exception("Package not available");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DbEntry extends ItemInfo implements Comparable<DbEntry> {
        public float weight;

        public DbEntry copy() {
            DbEntry entry = new DbEntry();
            entry.copyFrom(this);
            entry.weight = this.weight;
            entry.minSpanX = this.minSpanX;
            entry.minSpanY = this.minSpanY;
            return entry;
        }

        @Override // java.lang.Comparable
        public int compareTo(DbEntry another) {
            if (this.itemType == 4) {
                if (another.itemType == 4) {
                    return (another.spanY * another.spanX) - (this.spanX * this.spanY);
                }
                return -1;
            }
            if (another.itemType == 4) {
                return 1;
            }
            return Float.compare(another.weight, this.weight);
        }

        public boolean columnsSame(DbEntry org) {
            return org.cellX == this.cellX && org.cellY == this.cellY && org.spanX == this.spanX && org.spanY == this.spanY && org.screenId == this.screenId;
        }

        public void addToContentValues(ContentValues values) {
            values.put(LauncherSettings.Favorites.SCREEN, Long.valueOf(this.screenId));
            values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(this.cellX));
            values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(this.cellY));
            values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(this.spanX));
            values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(this.spanY));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<DbEntry> deepCopy(ArrayList<DbEntry> src) {
        ArrayList<DbEntry> dup = new ArrayList<>(src.size());
        Iterator<DbEntry> it = src.iterator();
        while (it.hasNext()) {
            DbEntry e = it.next();
            dup.add(e.copy());
        }
        return dup;
    }

    private static Point parsePoint(String point) {
        String[] split = point.split(",");
        return new Point(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
    }

    private static String getPointString(int x, int y) {
        return String.format(Locale.ENGLISH, "%d,%d", Integer.valueOf(x), Integer.valueOf(y));
    }

    public static void markForMigration(Context context, HashSet<String> widgets, BackupProtos.DeviceProfieData srcProfile) {
        SharedPreferences prefs = context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        prefs.edit().putString(KEY_MIGRATION_SRC_WORKSPACE_SIZE, getPointString((int) srcProfile.desktopCols, (int) srcProfile.desktopRows)).putString(KEY_MIGRATION_SRC_HOTSEAT_SIZE, getPointString((int) srcProfile.hotseatCount, srcProfile.allappsRank)).putStringSet(KEY_MIGRATION_WIDGET_MINSIZE, widgets).apply();
    }

    public static boolean migrateGridIfNeeded(Context context) {
        String str;
        StringBuilder sb;
        String str2;
        StringBuilder append;
        long currentTimeMillis;
        long j;
        StringBuilder append2;
        String str3;
        StringBuilder append3;
        String sb2;
        SharedPreferences.Editor edit;
        String str4;
        SharedPreferences.Editor putString;
        String str5;
        SharedPreferences.Editor putString2;
        String str6;
        SharedPreferences.Editor remove;
        SharedPreferences prefs = context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        InvariantDeviceProfile idp = LauncherAppState.getInstance().getInvariantDeviceProfile();
        String gridSizeString = getPointString(idp.numColumns, idp.numRows);
        String hotseatSizeString = getPointString(idp.numHotseatIcons, idp.hotseatAllAppsRank);
        if (prefs.getBoolean(SwitchLayoutFragment.SHOW_SWITCHING_VIEW, false)) {
            Logger.d(TAG, "[migrateGridIfNeeded] layout switch case no need migrate.");
            prefs.edit().putString(KEY_MIGRATION_SRC_WORKSPACE_SIZE, gridSizeString).putString(KEY_MIGRATION_SRC_HOTSEAT_SIZE, hotseatSizeString).remove(KEY_MIGRATION_WIDGET_MINSIZE).apply();
            return false;
        }
        if (gridSizeString.equals(prefs.getString(KEY_MIGRATION_SRC_WORKSPACE_SIZE, "")) && hotseatSizeString.equals(prefs.getString(KEY_MIGRATION_SRC_HOTSEAT_SIZE, ""))) {
            return true;
        }
        long migrationStartTime = System.currentTimeMillis();
        try {
            HashSet validPackages = new HashSet();
            for (PackageInfo info : context.getPackageManager().getInstalledPackages(0)) {
                validPackages.add(info.packageName);
            }
            validPackages.addAll(PackageInstallerCompat.getInstance(context).updateAndGetActiveSessionCache().keySet());
            Point srcHotseatSize = parsePoint(prefs.getString(KEY_MIGRATION_SRC_HOTSEAT_SIZE, hotseatSizeString));
            boolean dbChanged = (srcHotseatSize.x == idp.numHotseatIcons && srcHotseatSize.y == idp.hotseatAllAppsRank) ? false : new GridSizeMigrationTask(context, LauncherAppState.getInstance().getInvariantDeviceProfile(), validPackages, srcHotseatSize.x, srcHotseatSize.y, idp.numHotseatIcons, idp.hotseatAllAppsRank).migrateHotseat();
            Point targetSize = new Point(idp.numColumns, idp.numRows);
            Point sourceSize = parsePoint(prefs.getString(KEY_MIGRATION_SRC_WORKSPACE_SIZE, gridSizeString));
            Logger.d(TAG, "[migrateGridIfNeeded] sourceSize = " + sourceSize + ", targetSize = " + targetSize);
            if (!targetSize.equals(sourceSize)) {
                ArrayList<Point> gridSizeSteps = new ArrayList<>();
                gridSizeSteps.add(new Point(3, 5));
                gridSizeSteps.add(new Point(4, 5));
                gridSizeSteps.add(new Point(5, 5));
                int sourceSizeIndex = gridSizeSteps.indexOf(sourceSize);
                int targetSizeIndex = gridSizeSteps.indexOf(targetSize);
                Logger.d(TAG, "[migrateGridIfNeeded] sourceSizeIndex = " + sourceSizeIndex + ", targetSizeIndex = " + targetSizeIndex);
                if (sourceSizeIndex <= -1 || targetSizeIndex <= -1) {
                    throw new Exception("Unable to migrate grid size from " + sourceSize + " to " + targetSize);
                }
                HashMap<String, Point> widgetMinSize = new HashMap<>();
                for (String s : prefs.getStringSet(KEY_MIGRATION_WIDGET_MINSIZE, Collections.emptySet())) {
                    String[] parts = s.split("#");
                    widgetMinSize.put(parts[0], parsePoint(parts[1]));
                }
                while (targetSizeIndex < sourceSizeIndex) {
                    Point stepTargetSize = gridSizeSteps.get(sourceSizeIndex - 1);
                    Point stepSourceSize = gridSizeSteps.get(sourceSizeIndex);
                    if (new GridSizeMigrationTask(context, LauncherAppState.getInstance().getInvariantDeviceProfile(), validPackages, widgetMinSize, stepSourceSize, stepTargetSize).migrateWorkspace()) {
                        dbChanged = true;
                    }
                    sourceSizeIndex--;
                }
            }
            if (dbChanged) {
                Cursor c = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, null, null, null, null);
                boolean hasData = c.moveToNext();
                c.close();
                if (!hasData) {
                    throw new Exception("Removed every thing during grid resize");
                }
            }
            return true;
        } catch (Exception e) {
            Log.w(TAG, "Error during grid migration", e);
            return false;
        } finally {
            Log.v(TAG, "Workspace migration completed in " + (System.currentTimeMillis() - migrationStartTime) + "ms");
            prefs.edit().putString(KEY_MIGRATION_SRC_WORKSPACE_SIZE, gridSizeString).putString(KEY_MIGRATION_SRC_HOTSEAT_SIZE, hotseatSizeString).remove(KEY_MIGRATION_WIDGET_MINSIZE).apply();
        }
    }
}
