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
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.LauncherProvider;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.PackageInstallerCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.LongArrayMap;

/* loaded from: classes.dex */
public class MigrateFromRestoreTask {
    private static final boolean DEBUG = true;
    public static boolean ENABLED = false;
    private static final String KEY_MIGRATION_SOURCE_SIZE = "migration_restore_src_size";
    private static final String KEY_MIGRATION_WIDGET_MINSIZE = "migration_widget_min_size";
    private static final String TAG = "MigrateFromRestoreTask";
    private static final float WT_APPLICATION = 0.8f;
    private static final float WT_FOLDER_FACTOR = 0.5f;
    private static final float WT_SHORTCUT = 1.0f;
    private static final float WT_WIDGET_FACTOR = 0.6f;
    private static final float WT_WIDGET_MIN = 2.0f;
    private ArrayList<DbEntry> mCarryOver;
    private final Context mContext;
    public ArrayList<Long> mEntryToRemove;
    private final InvariantDeviceProfile mIdp;
    private final boolean mShouldRemoveX;
    private final boolean mShouldRemoveY;
    private final int mSrcX;
    private final int mSrcY;
    private final ContentValues mTempValues = new ContentValues();
    final int mTrgX;
    final int mTrgY;
    private ArrayList<ContentProviderOperation> mUpdateOperations;
    private HashSet<String> mValidPackages;
    private final HashMap<String, Point> mWidgetMinSize;

    public MigrateFromRestoreTask(Context context) {
        this.mContext = context;
        SharedPreferences prefs = prefs(context);
        Point sourceSize = parsePoint(prefs.getString(KEY_MIGRATION_SOURCE_SIZE, ""));
        this.mSrcX = sourceSize.x;
        this.mSrcY = sourceSize.y;
        this.mWidgetMinSize = new HashMap<>();
        for (String s : prefs.getStringSet(KEY_MIGRATION_WIDGET_MINSIZE, Collections.emptySet())) {
            String[] parts = s.split("#");
            this.mWidgetMinSize.put(parts[0], parsePoint(parts[1]));
        }
        this.mIdp = LauncherAppState.getInstance().getInvariantDeviceProfile();
        this.mTrgX = this.mIdp.numColumns;
        this.mTrgY = this.mIdp.numRows;
        this.mShouldRemoveX = this.mTrgX < this.mSrcX;
        this.mShouldRemoveY = this.mTrgY < this.mSrcY;
    }

    public void execute() throws Exception {
        this.mEntryToRemove = new ArrayList<>();
        this.mCarryOver = new ArrayList<>();
        this.mUpdateOperations = new ArrayList<>();
        this.mValidPackages = new HashSet<>();
        for (PackageInfo info : this.mContext.getPackageManager().getInstalledPackages(0)) {
            this.mValidPackages.add(info.packageName);
        }
        this.mValidPackages.addAll(PackageInstallerCompat.getInstance(this.mContext).updateAndGetActiveSessionCache().keySet());
        ArrayList<Long> allScreens = LauncherModel.loadWorkspaceScreensDb(this.mContext);
        if (allScreens.isEmpty()) {
            throw new Exception("Unable to get workspace screens");
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
            LauncherAppState.getInstance().getModel().updateWorkspaceScreenOrder(this.mContext, allScreens);
        }
        this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, this.mUpdateOperations);
        if (!this.mEntryToRemove.isEmpty()) {
            Log.d(TAG, "Removing items: " + TextUtils.join(", ", this.mEntryToRemove));
            this.mContext.getContentResolver().delete(LauncherSettings.Favorites.CONTENT_URI, Utilities.createDbSelectionQuery(GlobalSearchDbHelper.COLUMN_ID, this.mEntryToRemove), null);
        }
        Cursor c = this.mContext.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, null, null, null, null);
        boolean hasData = c.moveToNext();
        c.close();
        if (!hasData) {
            throw new Exception("Removed every thing during grid resize");
        }
    }

    private void migrateScreen(long screenId) {
        ArrayList<DbEntry> items = loadEntries(screenId);
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

    void markCells(boolean[][] occupied, DbEntry item, boolean val) {
        for (int i = item.cellX; i < item.cellX + item.spanX; i++) {
            for (int j = item.cellY; j < item.cellY + item.spanY; j++) {
                occupied[i][j] = val;
            }
        }
    }

    boolean isVacant(boolean[][] occupied, int x, int y, int w, int h) {
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

        public OptimalPlacementSolution(MigrateFromRestoreTask migrateFromRestoreTask, boolean[][] occupied, ArrayList<DbEntry> itemsToPlace) {
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
                        this.finalPlacedItems = MigrateFromRestoreTask.deepCopy(itemsPlaced);
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
                        for (int y = 0; y < MigrateFromRestoreTask.this.mTrgY; y++) {
                            for (int x = 0; x < MigrateFromRestoreTask.this.mTrgX; x++) {
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
                                if (MigrateFromRestoreTask.this.isVacant(this.occupied, x, y, myW, myH)) {
                                    MigrateFromRestoreTask.this.markCells(this.occupied, me, true);
                                    find(index + 1, weightLoss, newMoveCost, itemsIncludingMe);
                                    MigrateFromRestoreTask.this.markCells(this.occupied, me, false);
                                }
                                if (myW > me.minSpanX) {
                                    if (MigrateFromRestoreTask.this.isVacant(this.occupied, x, y, myW - 1, myH)) {
                                        me.spanX--;
                                        MigrateFromRestoreTask.this.markCells(this.occupied, me, true);
                                        find(index + 1, weightLoss, 1.0f + newMoveCost, itemsIncludingMe);
                                        MigrateFromRestoreTask.this.markCells(this.occupied, me, false);
                                        me.spanX++;
                                    }
                                }
                                if (myH > me.minSpanY) {
                                    if (MigrateFromRestoreTask.this.isVacant(this.occupied, x, y, myW, myH - 1)) {
                                        me.spanY--;
                                        MigrateFromRestoreTask.this.markCells(this.occupied, me, true);
                                        find(index + 1, weightLoss, 1.0f + newMoveCost, itemsIncludingMe);
                                        MigrateFromRestoreTask.this.markCells(this.occupied, me, false);
                                        me.spanY++;
                                    }
                                }
                                if (myH > me.minSpanY && myW > me.minSpanX) {
                                    if (MigrateFromRestoreTask.this.isVacant(this.occupied, x, y, myW - 1, myH - 1)) {
                                        me.spanX--;
                                        me.spanY--;
                                        MigrateFromRestoreTask.this.markCells(this.occupied, me, true);
                                        find(index + 1, weightLoss, MigrateFromRestoreTask.WT_WIDGET_MIN + newMoveCost, itemsIncludingMe);
                                        MigrateFromRestoreTask.this.markCells(this.occupied, me, false);
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
                    for (int y2 = 0; y2 < MigrateFromRestoreTask.this.mTrgY; y2++) {
                        for (int x2 = 0; x2 < MigrateFromRestoreTask.this.mTrgX; x2++) {
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
                    if (newX < MigrateFromRestoreTask.this.mTrgX && newY < MigrateFromRestoreTask.this.mTrgY) {
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
                        MigrateFromRestoreTask.this.markCells(this.occupied, me, true);
                        find(index + 1, weightLoss, newMoveCost2, itemsIncludingMe);
                        MigrateFromRestoreTask.this.markCells(this.occupied, me, false);
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

    public ArrayList<DbEntry> loadEntries(long screen) {
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
                        String provider = c.getString(indexAppWidgetProvider);
                        ComponentName cn = ComponentName.unflattenFromString(provider);
                        verifyPackage(cn.getPackageName());
                        entry.weight = Math.max(WT_WIDGET_MIN, 0.6f * entry.spanX * entry.spanY);
                        LauncherAppWidgetProviderInfo pInfo = LauncherModel.getProviderInfo(this.mContext, cn, UserHandleCompat.myUserHandle());
                        Point spans = pInfo == null ? this.mWidgetMinSize.get(provider) : pInfo.getMinSpans(this.mIdp, this.mContext);
                        if (spans != null) {
                            entry.minSpanX = spans.x > 0 ? spans.x : entry.spanX;
                            entry.minSpanY = spans.y > 0 ? spans.y : entry.spanY;
                        } else {
                            entry.minSpanY = 2;
                            entry.minSpanX = 2;
                        }
                        if (entry.minSpanX > this.mTrgX || entry.minSpanY > this.mTrgY) {
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

    static ArrayList<DbEntry> deepCopy(ArrayList<DbEntry> src) {
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

    public static void markForMigration(Context context, int srcX, int srcY, HashSet<String> widgets) {
        prefs(context).edit().putString(KEY_MIGRATION_SOURCE_SIZE, srcX + "," + srcY).putStringSet(KEY_MIGRATION_WIDGET_MINSIZE, widgets).apply();
    }

    public static boolean shouldRunTask(Context context) {
        return !TextUtils.isEmpty(prefs(context).getString(KEY_MIGRATION_SOURCE_SIZE, ""));
    }

    public static void clearFlags(Context context) {
        prefs(context).edit().remove(KEY_MIGRATION_SOURCE_SIZE).remove(KEY_MIGRATION_WIDGET_MINSIZE).commit();
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
    }
}
