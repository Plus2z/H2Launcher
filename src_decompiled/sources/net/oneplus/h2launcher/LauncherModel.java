package net.oneplus.h2launcher;

import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.os.TransactionTooLargeException;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pair;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.net.URISyntaxException;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.PackageInstallerCompat;
import net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.CustomInfoHelper;
import net.oneplus.h2launcher.config.CustomInfoLegacyHelper;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.inputmethod.T9.HanziToPinyin;
import net.oneplus.h2launcher.internalwidget.clock.ClockWidget;
import net.oneplus.h2launcher.model.WidgetItem;
import net.oneplus.h2launcher.model.WidgetsModel;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.quickpage.QuickPageItemInfo;
import net.oneplus.h2launcher.util.ComponentKey;
import net.oneplus.h2launcher.util.CursorIconInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.LongArrayMap;
import net.oneplus.h2launcher.util.ManagedProfileHeuristic;

/* loaded from: classes.dex */
public class LauncherModel extends BroadcastReceiver implements LauncherAppsCompat.OnAppsChangedCallbackCompat {
    static final boolean DEBUG_LOADERS = true;
    private static final boolean DEBUG_RECEIVER = false;
    private static final boolean HAS_EXTERNAL_STORAGE = false;
    private static final long INVALID_SCREEN_ID = -1;
    private static final int ITEMS_CHUNK = 6;
    public static final int LOADER_FLAG_CLEAR_WORKSPACE = 1;
    public static final int LOADER_FLAG_MIGRATE_SHORTCUTS = 2;
    public static final int LOADER_FLAG_NONE = 0;
    private static final String MIGRATE_AUTHORITY = "com.android.launcher2.settings";
    private static final boolean REMOVE_UNRESTORED_ICONS = true;
    public static final String STK_PACKAGE_NAME = "com.android.stk";
    static final String TAG = "Launcher.Model";
    static final ArrayList<Runnable> mBindCompleteRunnables;
    static final ArrayList<LauncherAppWidgetInfo> sBgAppWidgets;
    static final HashSet<IDynamicShortcut> sBgDynamicItems;
    static final LongArrayMap<FolderInfo> sBgFolders;
    static final LongArrayMap<ItemInfo> sBgItemsIdMap;
    static final Object sBgLock;
    public static HashMap<ComponentKey, LauncherAppWidgetProviderInfo> sBgWidgetProviders;
    static final ArrayList<ItemInfo> sBgWorkspaceItems;
    static final ArrayList<Long> sBgWorkspaceScreens;
    private static HashMap<String, LauncherAppWidgetProviderInfo> sCustomAppWidgetProviderInfos;
    static final HashMap<UserHandleCompat, HashSet<String>> sPendingPackages;
    static final Handler sWorker;
    static final HandlerThread sWorkerThread = new HandlerThread("launcher-loader");
    boolean mAllAppsLoaded;
    final LauncherAppState mApp;
    final boolean mAppsCanBeOnRemoveableStorage;
    AssetCache mAssetCache;
    AllAppsList mBgAllAppsList;
    WidgetsModel mBgWidgetsModel;
    WeakReference<Callbacks> mCallbacks;
    private boolean mCurrentPageBindingFinished;
    private Runnable mDelayBindOtherWorkspaceRunnable;
    WidgetsModel mFgWidgetsModel;
    boolean mHasLoaderCompletedOnce;
    boolean mIsLoaderTaskRunning;
    final LauncherAppsCompat mLauncherApps;
    LoaderTask mLoaderTask;
    private final boolean mOldContentProviderExists;
    final UserManagerCompat mUserManager;
    boolean mWorkspaceLoaded;
    final Object mLock = new Object();
    DeferredHandler mHandler = new DeferredHandler();

    /* loaded from: classes.dex */
    public interface Callbacks {
        void bindAddScreens(ArrayList<Long> arrayList);

        void bindAllApplications(ArrayList<AppInfo> arrayList);

        void bindAllPackages(WidgetsModel widgetsModel);

        void bindAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo);

        void bindAppsAdded(ArrayList<Long> arrayList, ArrayList<ItemInfo> arrayList2, ArrayList<ItemInfo> arrayList3, ArrayList<AppInfo> arrayList4);

        void bindAppsUpdated(ArrayList<AppInfo> arrayList);

        void bindComponentsRemoved(ArrayList<String> arrayList, ArrayList<AppInfo> arrayList2, ArrayList<ShortcutInfo> arrayList3, UserHandleCompat userHandleCompat, int i);

        void bindFolders(LongArrayMap<FolderInfo> longArrayMap);

        void bindItems(ArrayList<ItemInfo> arrayList, int i, int i2, boolean z);

        void bindQuickPage();

        void bindRestoreItemsChange(HashSet<ItemInfo> hashSet);

        void bindScreens(ArrayList<Long> arrayList);

        void bindSearchProviderChanged(boolean z);

        void bindShortcutsChanged(ArrayList<ShortcutInfo> arrayList, ArrayList<ShortcutInfo> arrayList2, UserHandleCompat userHandleCompat);

        void bindWidgetsRestored(ArrayList<LauncherAppWidgetInfo> arrayList);

        void dumpLogsToLocalData();

        void finishBindingItems();

        void finishLoaderTask();

        int getCurrentWorkspaceScreen();

        boolean isAllAppsButtonRank(int i);

        void onPageBoundSynchronously(int i);

        void resetLoaderTask();

        boolean setLoadOnResume();

        void startBinding();
    }

    /* loaded from: classes.dex */
    public interface ItemInfoFilter {
        boolean filterItem(ItemInfo itemInfo, ItemInfo itemInfo2, ComponentName componentName);
    }

    static {
        sWorkerThread.start();
        sWorker = new Handler(sWorkerThread.getLooper());
        mBindCompleteRunnables = new ArrayList<>();
        sBgLock = new Object();
        sBgItemsIdMap = new LongArrayMap<>();
        sBgWorkspaceItems = new ArrayList<>();
        sBgDynamicItems = new HashSet<>();
        sBgAppWidgets = new ArrayList<>();
        sBgFolders = new LongArrayMap<>();
        sBgWorkspaceScreens = new ArrayList<>();
        sPendingPackages = new HashMap<>();
        sCustomAppWidgetProviderInfos = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherModel(LauncherAppState app, AssetCache assetCache, AppFilter appFilter) {
        boolean z = false;
        Context context = app.getContext();
        this.mAppsCanBeOnRemoveableStorage = isExternalStorageRemovable();
        String oldProvider = context.getString(R.string.old_launcher_provider_uri);
        String redirectAuthority = Uri.parse(oldProvider).getAuthority();
        ProviderInfo providerInfo = context.getPackageManager().resolveContentProvider(MIGRATE_AUTHORITY, 0);
        ProviderInfo redirectProvider = context.getPackageManager().resolveContentProvider(redirectAuthority, 0);
        Log.d(TAG, "Old launcher provider: " + oldProvider);
        if (providerInfo != null && redirectProvider != null) {
            z = true;
        }
        this.mOldContentProviderExists = z;
        if (this.mOldContentProviderExists) {
            Log.d(TAG, "Old launcher provider exists.");
        } else {
            Log.d(TAG, "Old launcher provider does not exist.");
        }
        this.mApp = app;
        this.mBgAllAppsList = new AllAppsList(assetCache, appFilter);
        this.mBgWidgetsModel = new WidgetsModel(context, assetCache, appFilter);
        this.mFgWidgetsModel = this.mBgWidgetsModel.clone();
        this.mAssetCache = assetCache;
        this.mLauncherApps = LauncherAppsCompat.getInstance(context);
        this.mUserManager = UserManagerCompat.getInstance(context);
    }

    void runOnMainThread(Runnable r) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            this.mHandler.post(r);
        } else {
            r.run();
        }
    }

    static void runOnWorkerThread(Runnable r) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            r.run();
        } else {
            sWorker.post(r);
        }
    }

    boolean isExternalStorageRemovable() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canMigrateFromOldLauncherDb(Launcher launcher) {
        return this.mOldContentProviderExists && !launcher.isLauncherPreinstalled();
    }

    public void setPackageState(final PackageInstallerCompat.PackageInstallInfo installInfo) {
        Runnable updateRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (LauncherModel.sBgLock) {
                    final HashSet<ItemInfo> updates = new HashSet<>();
                    if (installInfo.state != 0) {
                        Iterator<ItemInfo> it = LauncherModel.sBgItemsIdMap.iterator();
                        while (it.hasNext()) {
                            ItemInfo info = it.next();
                            if (info instanceof ShortcutInfo) {
                                ShortcutInfo si = (ShortcutInfo) info;
                                ComponentName cn = si.getTargetComponent();
                                if (si.isPromise() && cn != null && installInfo.packageName.equals(cn.getPackageName())) {
                                    si.setInstallProgress(installInfo.progress);
                                    if (installInfo.state == 2) {
                                        si.status &= -5;
                                    }
                                    updates.add(si);
                                }
                            }
                        }
                        Iterator<LauncherAppWidgetInfo> it2 = LauncherModel.sBgAppWidgets.iterator();
                        while (it2.hasNext()) {
                            LauncherAppWidgetInfo widget = it2.next();
                            if (widget.providerName.getPackageName().equals(installInfo.packageName)) {
                                widget.installProgress = installInfo.progress;
                                updates.add(widget);
                            }
                        }
                        if (!updates.isEmpty()) {
                            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Callbacks callbacks = LauncherModel.this.getCallback();
                                    if (callbacks != null) {
                                        callbacks.bindRestoreItemsChange(updates);
                                    }
                                }
                            };
                            LauncherModel.this.mHandler.post(r);
                        }
                    }
                }
            }
        };
        runOnWorkerThread(updateRunnable);
    }

    public void updateSessionDisplayInfo(final String packageName) {
        Runnable updateRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (LauncherModel.sBgLock) {
                    final ArrayList<ShortcutInfo> updates = new ArrayList<>();
                    final UserHandleCompat user = UserHandleCompat.myUserHandle();
                    Iterator<ItemInfo> it = LauncherModel.sBgItemsIdMap.iterator();
                    while (it.hasNext()) {
                        ItemInfo info = it.next();
                        if (info instanceof ShortcutInfo) {
                            ShortcutInfo si = (ShortcutInfo) info;
                            ComponentName cn = si.getTargetComponent();
                            if (si.isPromise() && cn != null && packageName.equals(cn.getPackageName())) {
                                if (si.hasStatusFlag(2)) {
                                    LauncherModel.this.mAssetCache.getTitleAndIcon(si, si.promisedIntent, user, si.shouldUseLowResIcon());
                                } else {
                                    si.updateIcon(LauncherModel.this.mAssetCache);
                                }
                                updates.add(si);
                            }
                        }
                    }
                    if (!updates.isEmpty()) {
                        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Callbacks callbacks = LauncherModel.this.getCallback();
                                if (callbacks != null) {
                                    callbacks.bindShortcutsChanged(updates, new ArrayList<>(), user);
                                }
                            }
                        };
                        LauncherModel.this.mHandler.post(r);
                    }
                }
            }
        };
        runOnWorkerThread(updateRunnable);
    }

    public void addAppsToAllApps(Context ctx, final ArrayList<AppInfo> allAppsApps) {
        final Callbacks callbacks = getCallback();
        if (allAppsApps == null) {
            throw new RuntimeException("allAppsApps must not be null");
        }
        if (!allAppsApps.isEmpty()) {
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.3
                @Override // java.lang.Runnable
                public void run() {
                    LauncherModel.this.runOnMainThread(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Callbacks cb = LauncherModel.this.getCallback();
                            if (callbacks == cb && cb != null) {
                                callbacks.bindAppsAdded(null, null, null, allAppsApps);
                            }
                        }
                    });
                }
            };
            runOnWorkerThread(r);
        }
    }

    private static boolean findNextAvailableIconSpaceInScreen(ArrayList<ItemInfo> occupiedPos, int[] xy, int spanX, int spanY) {
        LauncherAppState app = LauncherAppState.getInstance();
        InvariantDeviceProfile profile = app.getInvariantDeviceProfile();
        int xCount = profile.numColumns;
        int yCount = profile.numRows;
        boolean[][] occupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, xCount, yCount);
        if (occupiedPos != null) {
            Iterator<ItemInfo> it = occupiedPos.iterator();
            while (it.hasNext()) {
                ItemInfo r = it.next();
                int right = r.cellX + r.spanX;
                int bottom = r.cellY + r.spanY;
                for (int x = r.cellX; x >= 0 && x < right && x < xCount; x++) {
                    for (int y = r.cellY; y >= 0 && y < bottom && y < yCount; y++) {
                        occupied[x][y] = true;
                    }
                }
            }
        }
        return Utilities.findVacantCell(xy, spanX, spanY, xCount, yCount, occupied);
    }

    Pair<Long, int[]> findSpaceForItem(Context context, ArrayList<Long> workspaceScreens, ArrayList<Long> addedWorkspaceScreensFinal, int spanX, int spanY) {
        LongSparseArray<ArrayList<ItemInfo>> screenItems = new LongSparseArray<>();
        assertWorkspaceLoaded();
        synchronized (sBgLock) {
            Iterator<ItemInfo> it = sBgItemsIdMap.iterator();
            while (it.hasNext()) {
                ItemInfo info = it.next();
                if (info.container == -100) {
                    ArrayList<ItemInfo> items = screenItems.get(info.screenId);
                    if (items == null) {
                        items = new ArrayList<>();
                        screenItems.put(info.screenId, items);
                    }
                    items.add(info);
                }
            }
        }
        long screenId = 0;
        int[] cordinates = new int[2];
        boolean found = false;
        int screenCount = workspaceScreens.size();
        int preferredScreenIndex = workspaceScreens.isEmpty() ? 0 : 1;
        if (preferredScreenIndex < screenCount) {
            screenId = workspaceScreens.get(preferredScreenIndex).longValue();
            found = findNextAvailableIconSpaceInScreen(screenItems.get(screenId), cordinates, spanX, spanY);
        }
        if (!found) {
            int screen = 1;
            while (true) {
                if (screen >= screenCount) {
                    break;
                }
                screenId = workspaceScreens.get(screen).longValue();
                if (!findNextAvailableIconSpaceInScreen(screenItems.get(screenId), cordinates, spanX, spanY)) {
                    screen++;
                } else {
                    found = true;
                    break;
                }
            }
        }
        if (!found) {
            screenId = LauncherAppState.getLauncherProvider().generateNewScreenId();
            workspaceScreens.add(Long.valueOf(screenId));
            addedWorkspaceScreensFinal.add(Long.valueOf(screenId));
            if (!findNextAvailableIconSpaceInScreen(screenItems.get(screenId), cordinates, spanX, spanY)) {
                throw new RuntimeException("Can't find space to add the item");
            }
        }
        return Pair.create(Long.valueOf(screenId), cordinates);
    }

    public void addAndBindAddedWorkspaceItems(final Context context, final ArrayList<? extends ItemInfo> workspaceApps) {
        final Callbacks callbacks = getCallback();
        if (!workspaceApps.isEmpty()) {
            Iterator<? extends ItemInfo> it = workspaceApps.iterator();
            while (it.hasNext()) {
                ItemInfo item = it.next();
                if (item instanceof AppInfo) {
                    AppInfo appInfo = (AppInfo) item;
                    if (appInfo.componentName != null && STK_PACKAGE_NAME.equals(appInfo.componentName.getPackageName())) {
                        Logger.d(TAG, "addAndBindAddedWorkspaceItems contains STK");
                    }
                }
            }
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.4
                @Override // java.lang.Runnable
                public void run() {
                    ItemInfo itemInfo;
                    final ArrayList<ItemInfo> addedShortcutsFinal = new ArrayList<>();
                    final ArrayList<Long> addedWorkspaceScreensFinal = new ArrayList<>();
                    ArrayList<Long> workspaceScreens = LauncherModel.loadWorkspaceScreensDb(context);
                    synchronized (LauncherModel.sBgLock) {
                        Iterator it2 = workspaceApps.iterator();
                        while (it2.hasNext()) {
                            ItemInfo item2 = (ItemInfo) it2.next();
                            if ((!(item2 instanceof ShortcutInfo) && !(item2 instanceof AppInfo)) || !LauncherModel.this.shortcutExists(context, item2.getIntent(), item2.user)) {
                                Pair<Long, int[]> coords = LauncherModel.this.findSpaceForItem(context, workspaceScreens, addedWorkspaceScreensFinal, 1, 1);
                                long screenId = ((Long) coords.first).longValue();
                                int[] cordinates = (int[]) coords.second;
                                if ((item2 instanceof ShortcutInfo) || (item2 instanceof FolderInfo)) {
                                    itemInfo = item2;
                                } else if (item2 instanceof AppInfo) {
                                    itemInfo = ((AppInfo) item2).makeShortcut();
                                } else {
                                    Logger.w(LauncherModel.TAG, "[addAndBindAddedWorkspaceItems] Unexpected info type. item = " + item2);
                                }
                                if (item2 instanceof AppInfo) {
                                    AppInfo appInfo2 = (AppInfo) item2;
                                    if (appInfo2.componentName != null && LauncherModel.STK_PACKAGE_NAME.equals(appInfo2.componentName.getPackageName())) {
                                        Logger.d(LauncherModel.TAG, "addAndBindAddedWorkspaceItems STK add to DB");
                                    }
                                }
                                LauncherModel.addItemToDatabase(context, itemInfo, -100L, screenId, cordinates[0], cordinates[1]);
                                addedShortcutsFinal.add(itemInfo);
                            }
                        }
                    }
                    LauncherModel.this.updateWorkspaceScreenOrder(context, workspaceScreens);
                    if (!addedShortcutsFinal.isEmpty()) {
                        LauncherModel.this.runOnMainThread(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Callbacks cb = LauncherModel.this.getCallback();
                                if (callbacks == cb && cb != null) {
                                    ArrayList<ItemInfo> addAnimated = new ArrayList<>();
                                    ArrayList<ItemInfo> addNotAnimated = new ArrayList<>();
                                    if (!addedShortcutsFinal.isEmpty()) {
                                        ItemInfo info = (ItemInfo) addedShortcutsFinal.get(addedShortcutsFinal.size() - 1);
                                        long lastScreenId = info.screenId;
                                        Iterator it3 = addedShortcutsFinal.iterator();
                                        while (it3.hasNext()) {
                                            ItemInfo i = (ItemInfo) it3.next();
                                            if (i.screenId == lastScreenId) {
                                                addAnimated.add(i);
                                            } else {
                                                addNotAnimated.add(i);
                                            }
                                            if (i instanceof ShortcutInfo) {
                                                ShortcutInfo shortcutInfo = (ShortcutInfo) i;
                                                if (shortcutInfo.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(shortcutInfo.getTargetComponent().getPackageName())) {
                                                    Logger.d(LauncherModel.TAG, "addAndBindAddedWorkspaceItems STK try to bindView");
                                                }
                                            }
                                        }
                                    }
                                    callbacks.bindAppsAdded(addedWorkspaceScreensFinal, addNotAnimated, addAnimated, null);
                                }
                            }
                        });
                    }
                }
            };
            runOnWorkerThread(r);
        }
    }

    private void unbindItemInfosAndClearQueuedBindRunnables() {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            throw new RuntimeException("Expected unbindLauncherItemInfos() to be called from the main thread");
        }
        this.mHandler.cancelAll();
        unbindWorkspaceItemsOnMainThread();
    }

    void unbindWorkspaceItemsOnMainThread() {
        final ArrayList<ItemInfo> tmpItems = new ArrayList<>();
        synchronized (sBgLock) {
            tmpItems.addAll(sBgWorkspaceItems);
            tmpItems.addAll(sBgAppWidgets);
        }
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = tmpItems.iterator();
                while (it.hasNext()) {
                    ItemInfo item = (ItemInfo) it.next();
                    item.unbind();
                }
            }
        };
        runOnMainThread(r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addOrMoveItemInDatabase(Context context, ItemInfo item, long container, long screenId, int cellX, int cellY) {
        if (item.container == -1) {
            addItemToDatabase(context, item, container, screenId, cellX, cellY);
        } else {
            moveItemInDatabase(context, item, container, screenId, cellX, cellY);
        }
    }

    static void checkItemInfoLocked(long itemId, ItemInfo item, StackTraceElement[] stackTrace) {
        ItemInfo modelItem = sBgItemsIdMap.get(itemId);
        if (modelItem != null && item != modelItem) {
            if ((modelItem instanceof ShortcutInfo) && (item instanceof ShortcutInfo)) {
                ShortcutInfo modelShortcut = (ShortcutInfo) modelItem;
                ShortcutInfo shortcut = (ShortcutInfo) item;
                if (modelShortcut.title.toString().equals(shortcut.title.toString()) && modelShortcut.intent.filterEquals(shortcut.intent) && modelShortcut.id == shortcut.id && modelShortcut.itemType == shortcut.itemType && modelShortcut.container == shortcut.container && modelShortcut.screenId == shortcut.screenId && modelShortcut.cellX == shortcut.cellX && modelShortcut.cellY == shortcut.cellY && modelShortcut.spanX == shortcut.spanX && modelShortcut.spanY == shortcut.spanY) {
                    if (modelShortcut.dropPos == null && shortcut.dropPos == null) {
                        return;
                    }
                    if (modelShortcut.dropPos != null && shortcut.dropPos != null && modelShortcut.dropPos[0] == shortcut.dropPos[0] && modelShortcut.dropPos[1] == shortcut.dropPos[1]) {
                        return;
                    }
                }
            }
            String msg = "item: " + (item != null ? item.toString() : "null") + "modelItem: " + (modelItem != null ? modelItem.toString() : "null") + "Error: ItemInfo passed to checkItemInfo doesn't match original";
            RuntimeException e = new RuntimeException(msg);
            if (stackTrace != null) {
                e.setStackTrace(stackTrace);
                throw e;
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkItemInfo(final ItemInfo item) {
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        final long itemId = item.id;
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.6
            @Override // java.lang.Runnable
            public void run() {
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.checkItemInfoLocked(itemId, item, stackTrace);
                }
            }
        };
        runOnWorkerThread(r);
    }

    static void updateItemInDatabaseHelper(Context context, final ContentValues values, final ItemInfo item, String callingFunction) {
        final long itemId = item.id;
        final Uri uri = LauncherSettings.Favorites.getContentUri(itemId);
        final ContentResolver cr = context.getContentResolver();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.7
            @Override // java.lang.Runnable
            public void run() {
                cr.update(uri, values, null, null);
                LauncherModel.updateItemArrays(item, itemId, stackTrace);
            }
        };
        runOnWorkerThread(r);
    }

    static void updateItemsInDatabaseHelper(Context context, final ArrayList<ContentValues> valuesList, final ArrayList<ItemInfo> items, String callingFunction) {
        final ContentResolver cr = context.getContentResolver();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.8
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<ContentProviderOperation> ops = new ArrayList<>();
                int count = items.size();
                for (int i = 0; i < count; i++) {
                    ItemInfo item = (ItemInfo) items.get(i);
                    long itemId = item.id;
                    Uri uri = LauncherSettings.Favorites.getContentUri(itemId);
                    ContentValues values = (ContentValues) valuesList.get(i);
                    ops.add(ContentProviderOperation.newUpdate(uri).withValues(values).build());
                    LauncherModel.updateItemArrays(item, itemId, stackTrace);
                }
                try {
                    cr.applyBatch(LauncherProvider.AUTHORITY, ops);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        runOnWorkerThread(r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void updateItemArrays(ItemInfo item, long itemId, StackTraceElement[] stackTrace) {
        synchronized (sBgLock) {
            checkItemInfoLocked(itemId, item, stackTrace);
            if (item.container != -100 && item.container != -101 && !sBgFolders.containsKey(item.container)) {
                String msg = "item: " + item + " container being set to: " + item.container + ", not in the list of folders";
                Log.e(TAG, msg);
            }
            ItemInfo itemInfo = sBgItemsIdMap.get(itemId);
            if (itemInfo != 0 && (itemInfo.container == -100 || itemInfo.container == -101)) {
                switch (itemInfo.itemType) {
                    case 0:
                    case 1:
                    case 2:
                        if (!sBgWorkspaceItems.contains(itemInfo)) {
                            sBgWorkspaceItems.add(itemInfo);
                            if (itemInfo instanceof IDynamicShortcut) {
                                sBgDynamicItems.add((IDynamicShortcut) itemInfo);
                                break;
                            }
                        }
                        break;
                }
            } else {
                sBgWorkspaceItems.remove(itemInfo);
            }
        }
    }

    public static void moveItemInDatabase(Context context, ItemInfo item, long container, long screenId, int cellX, int cellY) {
        item.container = container;
        item.cellX = cellX;
        item.cellY = cellY;
        if ((context instanceof Launcher) && screenId < 0 && container == -101) {
            item.screenId = ((Launcher) context).getHotseatController().getOrderInHotseat(cellX, cellY);
        } else {
            item.screenId = screenId;
        }
        ContentValues values = new ContentValues();
        values.put("container", Long.valueOf(item.container));
        values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(item.cellX));
        values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(item.cellY));
        values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(item.rank));
        values.put(LauncherSettings.Favorites.SCREEN, Long.valueOf(item.screenId));
        updateItemInDatabaseHelper(context, values, item, "moveItemInDatabase");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void moveItemsInDatabase(Context context, ArrayList<ItemInfo> items, long container, int screen) {
        ArrayList<ContentValues> contentValues = new ArrayList<>();
        int count = items.size();
        for (int i = 0; i < count; i++) {
            ItemInfo item = items.get(i);
            item.container = container;
            if ((context instanceof Launcher) && screen < 0 && container == -101) {
                item.screenId = ((Launcher) context).getHotseatController().getOrderInHotseat(item.cellX, item.cellY);
            } else {
                item.screenId = screen;
            }
            ContentValues values = new ContentValues();
            values.put("container", Long.valueOf(item.container));
            values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(item.cellX));
            values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(item.cellY));
            values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(item.rank));
            values.put(LauncherSettings.Favorites.SCREEN, Long.valueOf(item.screenId));
            contentValues.add(values);
        }
        updateItemsInDatabaseHelper(context, contentValues, items, "moveItemInDatabase");
    }

    public static void modifyItemInDatabase(Context context, ItemInfo item, long container, long screenId, int cellX, int cellY, int spanX, int spanY) {
        item.container = container;
        item.cellX = cellX;
        item.cellY = cellY;
        item.spanX = spanX;
        item.spanY = spanY;
        if ((context instanceof Launcher) && screenId < 0 && container == -101) {
            item.screenId = ((Launcher) context).getHotseatController().getOrderInHotseat(cellX, cellY);
        } else {
            item.screenId = screenId;
        }
        ContentValues values = new ContentValues();
        values.put("container", Long.valueOf(item.container));
        values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(item.cellX));
        values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(item.cellY));
        values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(item.rank));
        values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(item.spanX));
        values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(item.spanY));
        values.put(LauncherSettings.Favorites.SCREEN, Long.valueOf(item.screenId));
        updateItemInDatabaseHelper(context, values, item, "modifyItemInDatabase");
    }

    public static void updateItemInDatabase(Context context, ItemInfo item) {
        ContentValues values = new ContentValues();
        item.onAddToDatabase(context, values);
        updateItemInDatabaseHelper(context, values, item, "updateItemInDatabase");
    }

    public static void modifyItemToIconRearrangementInDatabase(Context context, ItemInfo item) {
        ContentValues values = new ContentValues();
        values.put("container", Integer.valueOf(LauncherSettings.Favorites.CONTAINER_ICON_REARRANGEMENT));
        updateItemInDatabaseHelper(context, values, item, "modifyItemToIconRearrangementInDatabase");
    }

    private void assertWorkspaceLoaded() {
        if (LauncherAppState.isDogfoodBuild()) {
            synchronized (this.mLock) {
                if (!this.mHasLoaderCompletedOnce || (this.mLoaderTask != null && this.mLoaderTask.mIsLoadingAndBindingWorkspace)) {
                    throw new RuntimeException("Trying to add shortcut while loader is running");
                }
            }
        }
    }

    boolean shortcutExists(Context context, Intent intent, UserHandleCompat user) {
        Intent intentWithoutExtraProfile;
        Intent intentWithExtraProfile;
        assertWorkspaceLoaded();
        HashSet<String> matchUri = new HashSet<>();
        boolean existExtraProfile = intent.hasExtra(ItemInfo.EXTRA_PROFILE);
        if (existExtraProfile) {
            intentWithExtraProfile = new Intent(intent);
            intentWithoutExtraProfile = new Intent(intent);
            intentWithoutExtraProfile.removeExtra(ItemInfo.EXTRA_PROFILE);
        } else {
            long serialNumber = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
            intentWithoutExtraProfile = new Intent(intent);
            intentWithExtraProfile = new Intent(intent).putExtra(ItemInfo.EXTRA_PROFILE, serialNumber);
        }
        if (intent.getComponent() != null) {
            String packageName = intent.getComponent().getPackageName();
            if (intent.getPackage() != null) {
                matchUri.add(intentWithoutExtraProfile.toUri(0));
                matchUri.add(new Intent(intentWithoutExtraProfile).setPackage(null).toUri(0));
                matchUri.add(intentWithExtraProfile.toUri(0));
                matchUri.add(new Intent(intentWithExtraProfile).setPackage(null).toUri(0));
            } else {
                matchUri.add(new Intent(intentWithoutExtraProfile).setPackage(packageName).toUri(0));
                matchUri.add(intentWithoutExtraProfile.toUri(0));
                matchUri.add(new Intent(intentWithExtraProfile).setPackage(packageName).toUri(0));
                matchUri.add(intentWithExtraProfile.toUri(0));
            }
        } else {
            matchUri.add(intentWithoutExtraProfile.toUri(0));
            matchUri.add(intentWithExtraProfile.toUri(0));
        }
        synchronized (sBgLock) {
            Iterator<ItemInfo> it = sBgItemsIdMap.iterator();
            while (it.hasNext()) {
                ItemInfo item = it.next();
                if (item instanceof ShortcutInfo) {
                    ShortcutInfo info = (ShortcutInfo) item;
                    Intent targetIntent = info.promisedIntent == null ? info.intent : info.promisedIntent;
                    if (targetIntent != null && info.user.equals(user)) {
                        targetIntent.setSourceBounds(null);
                        String s = targetIntent.toUri(0);
                        if (matchUri.contains(s)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }

    FolderInfo getFolderById(Context context, LongArrayMap<FolderInfo> folderList, long id) {
        ContentResolver cr = context.getContentResolver();
        Cursor c = cr.query(LauncherSettings.Favorites.CONTENT_URI, null, "_id=? and (itemType=? or itemType=?)", new String[]{String.valueOf(id), String.valueOf(2)}, null);
        try {
            if (c.moveToFirst()) {
                int itemTypeIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
                int titleIndex = c.getColumnIndexOrThrow("title");
                int containerIndex = c.getColumnIndexOrThrow("container");
                int screenIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
                int cellXIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
                int cellYIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
                int optionsIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.OPTIONS);
                FolderInfo folderInfo = null;
                switch (c.getInt(itemTypeIndex)) {
                    case 2:
                        folderInfo = findOrMakeFolder(folderList, id);
                        break;
                }
                folderInfo.title = c.getString(titleIndex);
                folderInfo.id = id;
                folderInfo.container = c.getInt(containerIndex);
                folderInfo.screenId = c.getInt(screenIndex);
                folderInfo.cellX = c.getInt(cellXIndex);
                folderInfo.cellY = c.getInt(cellYIndex);
                folderInfo.options = c.getInt(optionsIndex);
                return folderInfo;
            }
            c.close();
            return null;
        } finally {
            c.close();
        }
    }

    public static void addQuickPageItem(Context context, int id, int type, int size, String content, int widgetId, String component, long reminderTime, long reminderId) {
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        values.put(GlobalSearchDbHelper.COLUMN_ID, Integer.valueOf(id));
        values.put("type", Integer.valueOf(type));
        values.put(LauncherSettings.QuickPage.SIZE, Integer.valueOf(size));
        values.put(LauncherSettings.QuickPage.CONTENT, content);
        values.put("widgetId", Integer.valueOf(widgetId));
        values.put("component", component);
        values.put(LauncherSettings.QuickPage.REMINDER_TIME, Long.valueOf(reminderTime));
        values.put(LauncherSettings.QuickPage.REMINDER_ID, Long.valueOf(reminderId));
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.9
            @Override // java.lang.Runnable
            public void run() {
                cr.insert(LauncherSettings.QuickPage.CONTENT_URI, values);
            }
        };
        runOnWorkerThread(r);
    }

    public static void updateQuickPageItemId(Context context, int oldId, int newId) {
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        values.put(GlobalSearchDbHelper.COLUMN_ID, Integer.valueOf(newId));
        final String where = "_id=" + oldId;
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.10
            @Override // java.lang.Runnable
            public void run() {
                cr.update(LauncherSettings.QuickPage.CONTENT_URI, values, where, null);
            }
        };
        runOnWorkerThread(r);
    }

    public static void updateQuickPageItemContent(Context context, int id, String content) {
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        values.put(LauncherSettings.QuickPage.CONTENT, content);
        values.put(LauncherSettings.ChangeLogColumns.MODIFIED, Long.valueOf(System.currentTimeMillis()));
        final String where = "_id=" + id;
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.11
            @Override // java.lang.Runnable
            public void run() {
                cr.update(LauncherSettings.QuickPage.CONTENT_URI, values, where, null);
            }
        };
        runOnWorkerThread(r);
    }

    public static void updateQuickPageItemWidgetId(Context context, int id, int widgetId) {
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        values.put("widgetId", Integer.valueOf(widgetId));
        values.put(LauncherSettings.ChangeLogColumns.MODIFIED, Long.valueOf(System.currentTimeMillis()));
        final String where = "_id=" + id;
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.12
            @Override // java.lang.Runnable
            public void run() {
                cr.update(LauncherSettings.QuickPage.CONTENT_URI, values, where, null);
            }
        };
        runOnWorkerThread(r);
    }

    public static void removeQuickPageItem(Context context, int id) {
        final ContentResolver cr = context.getContentResolver();
        final Uri uri = LauncherSettings.QuickPage.getContentUri(id);
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.13
            @Override // java.lang.Runnable
            public void run() {
                cr.delete(uri, null, null);
            }
        };
        runOnWorkerThread(r);
    }

    public static void addNoteReminder(Context context, int id, long reminderTime, final long reminderId) {
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        values.put(LauncherSettings.QuickPage.REMINDER_TIME, Long.valueOf(reminderTime));
        values.put(LauncherSettings.QuickPage.REMINDER_ID, Long.valueOf(reminderId));
        final String[] whereArgs = {String.valueOf(id), String.valueOf(4)};
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.14
            @Override // java.lang.Runnable
            public void run() {
                int result = cr.update(LauncherSettings.QuickPage.CONTENT_URI, values, "_id = ? AND type = ?", whereArgs);
                Logger.d(LauncherModel.TAG, "add reminder id:%d result:%d", Long.valueOf(reminderId), Integer.valueOf(result));
            }
        };
        runOnWorkerThread(r);
    }

    public static ArrayList<QuickPageItemInfo> loadQuickPageDb(Context context) {
        ArrayList<QuickPageItemInfo> quickPageItems = new ArrayList<>();
        ContentResolver cr = context.getContentResolver();
        Cursor sc = cr.query(LauncherSettings.QuickPage.CONTENT_URI, new String[]{GlobalSearchDbHelper.COLUMN_ID, "type", LauncherSettings.QuickPage.SIZE, LauncherSettings.QuickPage.CONTENT, LauncherSettings.ChangeLogColumns.MODIFIED, "widgetId", "component", LauncherSettings.QuickPage.REMINDER_TIME, LauncherSettings.QuickPage.REMINDER_ID}, null, null, null);
        try {
            int idIndex = sc.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
            int typeIndex = sc.getColumnIndexOrThrow("type");
            int sizeIndex = sc.getColumnIndexOrThrow(LauncherSettings.QuickPage.SIZE);
            int contentIndex = sc.getColumnIndexOrThrow(LauncherSettings.QuickPage.CONTENT);
            int modificationIndex = sc.getColumnIndexOrThrow(LauncherSettings.ChangeLogColumns.MODIFIED);
            int widgetIdIndex = sc.getColumnIndexOrThrow("widgetId");
            int componentIndex = sc.getColumnIndexOrThrow("component");
            int reminderTimeIndex = sc.getColumnIndexOrThrow(LauncherSettings.QuickPage.REMINDER_TIME);
            int reminderIdIndex = sc.getColumnIndexOrThrow(LauncherSettings.QuickPage.REMINDER_ID);
            while (sc.moveToNext()) {
                try {
                    QuickPageItemInfo info = new QuickPageItemInfo();
                    info.id = sc.getInt(idIndex);
                    info.type = sc.getInt(typeIndex);
                    info.size = sc.getInt(sizeIndex);
                    info.content = sc.getString(contentIndex);
                    info.modified = sc.getLong(modificationIndex);
                    info.widgetId = sc.getInt(widgetIdIndex);
                    info.component = sc.getString(componentIndex);
                    info.reminderTime = sc.getLong(reminderTimeIndex);
                    info.reminderId = sc.getLong(reminderIdIndex);
                    quickPageItems.add(info);
                } catch (Exception e) {
                    Launcher.addDumpLog(TAG, "Quick page loading interrupted - invalid item: " + e, true);
                }
            }
            sc.close();
            Collections.sort(quickPageItems);
            return quickPageItems;
        } catch (Throwable th) {
            sc.close();
            throw th;
        }
    }

    public static void clearQuickPageDb(Context context) {
        ContentResolver cr = context.getContentResolver();
        cr.delete(LauncherSettings.QuickPage.CONTENT_URI, null, null);
    }

    public static void addItemToDatabase(Context context, final ItemInfo item, long container, long screenId, int cellX, int cellY) {
        item.container = container;
        item.cellX = cellX;
        item.cellY = cellY;
        if ((context instanceof Launcher) && screenId < 0 && container == -101) {
            item.screenId = ((Launcher) context).getHotseatController().getOrderInHotseat(cellX, cellY);
        } else {
            item.screenId = screenId;
        }
        final ContentValues values = new ContentValues();
        final ContentResolver cr = context.getContentResolver();
        item.onAddToDatabase(context, values);
        item.id = LauncherAppState.getLauncherProvider().generateNewItemId();
        values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(item.id));
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.15
            @Override // java.lang.Runnable
            public void run() {
                cr.insert(LauncherSettings.Favorites.CONTENT_URI, values);
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.checkItemInfoLocked(item.id, item, stackTrace);
                    LauncherModel.sBgItemsIdMap.put(item.id, item);
                    switch (item.itemType) {
                        case 2:
                            LauncherModel.sBgFolders.put(item.id, (FolderInfo) item);
                        case 0:
                        case 1:
                            if (item.container == -100 || item.container == -101) {
                                LauncherModel.sBgWorkspaceItems.add(item);
                                if (item instanceof IDynamicShortcut) {
                                    LauncherModel.sBgDynamicItems.add((IDynamicShortcut) item);
                                    break;
                                }
                            } else if (!LauncherModel.sBgFolders.containsKey(item.container)) {
                                String msg = "adding item: " + item + " to a folder that  doesn't exist";
                                Log.e(LauncherModel.TAG, msg);
                                break;
                            } else if (item instanceof IDynamicShortcut) {
                                LauncherModel.sBgDynamicItems.add((IDynamicShortcut) item);
                                break;
                            }
                            break;
                        case 4:
                            LauncherModel.sBgAppWidgets.add((LauncherAppWidgetInfo) item);
                            break;
                    }
                }
            }
        };
        runOnWorkerThread(r);
    }

    static int getCellLayoutChildId(long container, long screen, int localCellX, int localCellY, int spanX, int spanY) {
        return ((((int) container) & 255) << 24) | ((((int) screen) & 255) << 16) | ((localCellX & 255) << 8) | (localCellY & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<ItemInfo> getItemsByPackageName(final String pn, final UserHandleCompat user) {
        ItemInfoFilter filter = new ItemInfoFilter() { // from class: net.oneplus.h2launcher.LauncherModel.16
            @Override // net.oneplus.h2launcher.LauncherModel.ItemInfoFilter
            public boolean filterItem(ItemInfo parent, ItemInfo info, ComponentName cn) {
                return cn.getPackageName().equals(pn) && info.user.equals(user);
            }
        };
        return filterItemInfos(sBgItemsIdMap, filter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void deletePackageFromDatabase(Context context, String pn, UserHandleCompat user) {
        deleteItemsFromDatabase(context, getItemsByPackageName(pn, user));
    }

    public static void deleteItemFromDatabase(Context context, ItemInfo item) {
        ArrayList<ItemInfo> items = new ArrayList<>();
        items.add(item);
        deleteItemsFromDatabase(context, items);
    }

    static void deleteItemsFromDatabase(Context context, final ArrayList<? extends ItemInfo> items) {
        final ContentResolver cr = context.getContentResolver();
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.17
            /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0056. Please report as an issue. */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                ComponentName name;
                Iterator it = items.iterator();
                while (it.hasNext()) {
                    ItemInfo itemInfo = (ItemInfo) it.next();
                    if ((itemInfo instanceof ShortcutInfo) && (name = ((ShortcutInfo) itemInfo).getTargetComponent()) != null && LauncherModel.STK_PACKAGE_NAME.equals(name.getPackageName())) {
                        Logger.d(LauncherModel.TAG, "really Delete stk from db & sBgWorkspaceItems, id = " + itemInfo.id);
                    }
                    Uri uri = LauncherSettings.Favorites.getContentUri(itemInfo.id);
                    cr.delete(uri, null, null);
                    synchronized (LauncherModel.sBgLock) {
                        switch (itemInfo.itemType) {
                            case 0:
                            case 1:
                                LauncherModel.sBgWorkspaceItems.remove(itemInfo);
                                if (itemInfo instanceof IDynamicShortcut) {
                                    ((IDynamicShortcut) itemInfo).unregisterDataProvider();
                                    LauncherModel.sBgDynamicItems.remove((IDynamicShortcut) itemInfo);
                                    break;
                                }
                                break;
                            case 2:
                                LauncherModel.sBgFolders.remove(itemInfo.id);
                                Iterator<ItemInfo> it2 = LauncherModel.sBgItemsIdMap.iterator();
                                while (it2.hasNext()) {
                                    ItemInfo info = it2.next();
                                    if (info.container == itemInfo.id) {
                                        String msg = "deleting a folder (" + itemInfo + ") which still contains items (" + info + ")";
                                        Log.e(LauncherModel.TAG, msg);
                                    }
                                }
                                LauncherModel.sBgWorkspaceItems.remove(itemInfo);
                                break;
                            case 4:
                                LauncherModel.sBgAppWidgets.remove((LauncherAppWidgetInfo) itemInfo);
                                break;
                        }
                        LauncherModel.sBgItemsIdMap.remove(itemInfo.id);
                    }
                }
            }
        };
        runOnWorkerThread(r);
    }

    public void updateWorkspaceScreenOrder(Context context, ArrayList<Long> screens) {
        final ArrayList<Long> screensCopy = new ArrayList<>(screens);
        final ContentResolver cr = context.getContentResolver();
        final Uri uri = LauncherSettings.WorkspaceScreens.CONTENT_URI;
        Iterator<Long> iter = screensCopy.iterator();
        while (iter.hasNext()) {
            long id = iter.next().longValue();
            if (id < 0) {
                iter.remove();
            }
        }
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.18
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<ContentProviderOperation> ops = new ArrayList<>();
                ops.add(ContentProviderOperation.newDelete(uri).build());
                int count = screensCopy.size();
                for (int i = 0; i < count; i++) {
                    ContentValues v = new ContentValues();
                    long screenId = ((Long) screensCopy.get(i)).longValue();
                    v.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(screenId));
                    v.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, Integer.valueOf(i));
                    ops.add(ContentProviderOperation.newInsert(uri).withValues(v).build());
                }
                try {
                    cr.applyBatch(LauncherProvider.AUTHORITY, ops);
                    synchronized (LauncherModel.sBgLock) {
                        LauncherModel.sBgWorkspaceScreens.clear();
                        LauncherModel.sBgWorkspaceScreens.addAll(screensCopy);
                    }
                } catch (Exception ex) {
                    throw new RuntimeException(ex);
                }
            }
        };
        runOnWorkerThread(r);
    }

    public static void deleteFolderContentsFromDatabase(Context context, final FolderInfo info) {
        final ContentResolver cr = context.getContentResolver();
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.19
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                cr.delete(LauncherSettings.Favorites.getContentUri(info.id), null, null);
                synchronized (LauncherModel.sBgLock) {
                    LauncherModel.sBgItemsIdMap.remove(info.id);
                    LauncherModel.sBgFolders.remove(info.id);
                    LauncherModel.sBgWorkspaceItems.remove(info);
                }
                cr.delete(LauncherSettings.Favorites.CONTENT_URI, "container=" + info.id, null);
                synchronized (LauncherModel.sBgLock) {
                    for (ShortcutInfo shortcutInfo : info.getContents()) {
                        LauncherModel.sBgItemsIdMap.remove(shortcutInfo.id);
                        if (shortcutInfo instanceof IDynamicShortcut) {
                            ((IDynamicShortcut) shortcutInfo).unregisterDataProvider();
                            LauncherModel.sBgDynamicItems.remove((IDynamicShortcut) shortcutInfo);
                        }
                    }
                }
            }
        };
        runOnWorkerThread(r);
    }

    public void initialize(Callbacks callbacks) {
        synchronized (this.mLock) {
            unbindItemInfosAndClearQueuedBindRunnables();
            this.mCallbacks = new WeakReference<>(callbacks);
        }
    }

    public static boolean haveSameItemOnDesktop(Context context, ComponentName component) {
        if (component == null || component.flattenToString().length() == 0) {
            Logger.d(TAG, "invalid component name:%s", component);
            return false;
        }
        String[] columns = {LauncherSettings.BaseLauncherColumns.INTENT};
        Cursor c = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, columns, null, null, null);
        boolean match = false;
        while (!match && c.moveToNext()) {
            try {
                String data = c.getString(0);
                if (data != null) {
                    Intent intent = Intent.parseUri(data, 0);
                    ComponentName cn = intent.getComponent();
                    if (component.equals(cn)) {
                        match = true;
                    }
                }
            } catch (URISyntaxException e) {
                Launcher.addDumpLog(TAG, "haveSameItemOnDesktop Invalid uri : " + c.getString(0), true);
            }
        }
        c.close();
        return match;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageChanged(String packageName, UserHandleCompat user) {
        enqueuePackageUpdated(new PackageUpdatedTask(2, new String[]{packageName}, user));
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageRemoved(String packageName, UserHandleCompat user) {
        enqueuePackageUpdated(new PackageUpdatedTask(3, new String[]{packageName}, user));
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageAdded(String packageName, UserHandleCompat user) {
        enqueuePackageUpdated(new PackageUpdatedTask(1, new String[]{packageName}, user));
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesAvailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
        if (!replacing) {
            enqueuePackageUpdated(new PackageUpdatedTask(1, packageNames, user));
            if (this.mAppsCanBeOnRemoveableStorage) {
                startLoaderFromBackground();
                return;
            }
            return;
        }
        enqueuePackageUpdated(new PackageUpdatedTask(2, packageNames, user));
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnavailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
        if (!replacing) {
            enqueuePackageUpdated(new PackageUpdatedTask(4, packageNames, user));
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesSuspended(String[] packageNames, UserHandleCompat user) {
        enqueuePackageUpdated(new PackageUpdatedTask(5, packageNames, user));
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnsuspended(String[] packageNames, UserHandleCompat user) {
        enqueuePackageUpdated(new PackageUpdatedTask(6, packageNames, user));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        UserHandleCompat user;
        String action = intent.getAction();
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            LauncherAppState app = LauncherAppState.getInstance();
            if (app != null) {
                AssetCache assetCache = app.getAssetCache();
                if (assetCache != null) {
                    assetCache.updateCurrentLocale();
                }
                WidgetPreviewLoader widgetCache = app.getWidgetCache();
                if (widgetCache != null) {
                    widgetCache.clearDB();
                }
            }
            Folder.updateHintText(context);
            forceReload();
            return;
        }
        if ("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED".equals(action)) {
            Callbacks callbacks = getCallback();
            if (callbacks != null) {
                callbacks.bindSearchProviderChanged(true);
                return;
            }
            return;
        }
        if (LauncherAppsCompat.ACTION_MANAGED_PROFILE_ADDED.equals(action) || LauncherAppsCompat.ACTION_MANAGED_PROFILE_REMOVED.equals(action)) {
            UserManagerCompat.getInstance(context).enableAndResetCache();
            forceReload();
        } else if ((LauncherAppsCompat.ACTION_MANAGED_PROFILE_AVAILABLE.equals(action) || LauncherAppsCompat.ACTION_MANAGED_PROFILE_UNAVAILABLE.equals(action)) && (user = UserHandleCompat.fromIntent(intent)) != null) {
            int operation = LauncherAppsCompat.ACTION_MANAGED_PROFILE_AVAILABLE.equals(action) ? 7 : 8;
            enqueuePackageUpdated(new PackageUpdatedTask(operation, new String[0], user));
        }
    }

    void forceReload() {
        resetLoadedState(true, true);
        startLoaderFromBackground();
    }

    public void resetLoadedState(boolean resetAllAppsLoaded, boolean resetWorkspaceLoaded) {
        synchronized (this.mLock) {
            stopLoaderLocked();
            if (resetAllAppsLoaded) {
                this.mAllAppsLoaded = false;
            }
            if (resetWorkspaceLoaded) {
                this.mWorkspaceLoaded = false;
            }
            if (this.mCallbacks == null || this.mCallbacks.get() == null) {
                Log.w(TAG, "LoaderTask running with no launcher");
            } else {
                Callbacks callback = this.mCallbacks.get();
                callback.resetLoaderTask();
            }
        }
    }

    public void startLoaderFromBackground() {
        boolean runLoader = false;
        Callbacks callbacks = getCallback();
        if (callbacks != null && !callbacks.setLoadOnResume()) {
            runLoader = true;
        }
        if (runLoader) {
            startLoader(PagedView.INVALID_RESTORE_PAGE);
        }
    }

    private void stopLoaderLocked() {
        LoaderTask oldTask = this.mLoaderTask;
        if (oldTask != null) {
            oldTask.stopLocked();
        }
    }

    public boolean isCurrentCallbacks(Callbacks callbacks) {
        return this.mCallbacks != null && this.mCallbacks.get() == callbacks;
    }

    public void startLoader(int synchronousBindPage) {
        startLoader(synchronousBindPage, 0);
    }

    public void startLoader(int synchronousBindPage, int loadFlags) {
        InstallShortcutReceiver.enableInstallQueue();
        synchronized (this.mLock) {
            if (this.mCallbacks != null && this.mCallbacks.get() != null) {
                stopLoaderLocked();
                this.mLoaderTask = new LoaderTask(this.mApp.getContext(), loadFlags);
                if (synchronousBindPage != -1001 && this.mAllAppsLoaded && this.mWorkspaceLoaded && !this.mIsLoaderTaskRunning) {
                    this.mLoaderTask.runBindSynchronousPage(synchronousBindPage);
                } else {
                    sWorkerThread.setPriority(5);
                    sWorker.post(this.mLoaderTask);
                }
            }
        }
    }

    public void stopLoader() {
        synchronized (this.mLock) {
            if (this.mLoaderTask != null) {
                this.mLoaderTask.stopLocked();
            }
        }
    }

    public static ArrayList<Long> loadWorkspaceScreensDb(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        Uri screensUri = LauncherSettings.WorkspaceScreens.CONTENT_URI;
        Log.d(TAG, "loadWorkspaceScreensDb - screensUri = " + screensUri);
        Cursor sc = contentResolver.query(screensUri, null, null, null, LauncherSettings.WorkspaceScreens.SCREEN_RANK);
        ArrayList<Long> screenIds = new ArrayList<>();
        try {
            int idIndex = sc.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
            while (sc.moveToNext()) {
                try {
                    screenIds.add(Long.valueOf(sc.getLong(idIndex)));
                } catch (Exception e) {
                    Launcher.addDumpLog(TAG, "Desktop items loading interrupted - invalid screens: " + e, true);
                }
            }
        } catch (Exception e2) {
            Logger.e(TAG, "loadWorkspaceScreensDb - ", e2);
        } finally {
            sc.close();
        }
        return screenIds;
    }

    public boolean isAllAppsLoaded() {
        return this.mAllAppsLoaded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class LoaderTask implements Runnable {
        private Context mContext;
        private int mFlags;
        boolean mIsLoadingAndBindingWorkspace;
        boolean mLoadAndBindStepFinished;
        private boolean mStopped;

        LoaderTask(Context context, int flags) {
            this.mContext = context;
            this.mFlags = flags;
        }

        private void loadAndBindWorkspace() {
            this.mIsLoadingAndBindingWorkspace = true;
            Log.d(LauncherModel.TAG, "loadAndBindWorkspace mWorkspaceLoaded=" + LauncherModel.this.mWorkspaceLoaded);
            if (!LauncherModel.this.mWorkspaceLoaded) {
                loadWorkspace();
                synchronized (this) {
                    if (!this.mStopped) {
                        LauncherModel.this.mWorkspaceLoaded = true;
                    } else {
                        return;
                    }
                }
            }
            bindWorkspace(0);
        }

        private void bindRemainingWorkspace() {
            if (LauncherModel.this.mDelayBindOtherWorkspaceRunnable != null) {
                LauncherModel.this.mDelayBindOtherWorkspaceRunnable.run();
                LauncherModel.this.mDelayBindOtherWorkspaceRunnable = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fireWorkspaceCurrentPageStepFinished() {
            LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (LoaderTask.this) {
                        Log.d(LauncherModel.TAG, "done with current page binding step");
                        LoaderTask.this.notify();
                    }
                }
            });
        }

        private void waitForCurrentPageIdle() {
            synchronized (this) {
                long workspaceWaitTime = SystemClock.uptimeMillis();
                while (!this.mStopped && !LauncherModel.this.mCurrentPageBindingFinished) {
                    try {
                        wait(1000L);
                    } catch (InterruptedException e) {
                    }
                }
                Log.d(LauncherModel.TAG, "waited " + (SystemClock.uptimeMillis() - workspaceWaitTime) + "ms for current page to finish binding");
            }
        }

        private void waitForIdle() {
            synchronized (this) {
                long workspaceWaitTime = SystemClock.uptimeMillis();
                LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (LoaderTask.this) {
                            LoaderTask.this.mLoadAndBindStepFinished = true;
                            Log.d(LauncherModel.TAG, "done with previous binding step");
                            LoaderTask.this.notify();
                        }
                    }
                });
                while (!this.mStopped && !this.mLoadAndBindStepFinished) {
                    try {
                        wait(1000L);
                    } catch (InterruptedException e) {
                    }
                }
                Log.d(LauncherModel.TAG, "waited " + (SystemClock.uptimeMillis() - workspaceWaitTime) + "ms for previous step to finish binding");
            }
        }

        void runBindSynchronousPage(int synchronousBindPage) {
            if (synchronousBindPage == -1001) {
                throw new RuntimeException("Should not call runBindSynchronousPage() without valid page index");
            }
            if (!LauncherModel.this.mAllAppsLoaded || !LauncherModel.this.mWorkspaceLoaded) {
                throw new RuntimeException("Expecting AllApps and Workspace to be loaded");
            }
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mIsLoaderTaskRunning) {
                    throw new RuntimeException("Error! Background loading is already running");
                }
            }
            LauncherModel.this.mHandler.flush();
            bindWorkspace(synchronousBindPage);
            onlyBindAllApps();
            Callbacks callback = LauncherModel.this.mCallbacks.get();
            if (callback == null) {
                Log.w(LauncherModel.TAG, "LoaderTask running with no launcher");
            } else {
                callback.finishLoaderTask();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (LauncherModel.this.mLock) {
                if (!this.mStopped) {
                    LauncherModel.this.mIsLoaderTaskRunning = true;
                    Logger.d(LauncherModel.TAG, "step 1: loading workspace");
                    loadAndBindWorkspace();
                    if (!this.mStopped) {
                        waitForCurrentPageIdle();
                        bindRemainingWorkspace();
                        waitForIdle();
                        Logger.d(LauncherModel.TAG, "step 2: loading all apps");
                        loadAndBindAllApps();
                        if (StyleManager.getInstance().needVerifyApplications()) {
                            Logger.d(LauncherModel.TAG, "step 3: loading rest of applications");
                            verifyApplications();
                        }
                    }
                    this.mContext = null;
                    synchronized (LauncherModel.this.mLock) {
                        if (LauncherModel.this.mLoaderTask == this) {
                            LauncherModel.this.mLoaderTask = null;
                        }
                        LauncherModel.this.mIsLoaderTaskRunning = false;
                        LauncherModel.this.mHasLoaderCompletedOnce = true;
                        Callbacks callback = LauncherModel.this.mCallbacks.get();
                        if (callback == null) {
                            Log.w(LauncherModel.TAG, "LoaderTask running with no launcher");
                        } else {
                            callback.finishLoaderTask();
                            LauncherAppState.getInstance().getAssetCache().checkAndPreloadAllItem();
                        }
                    }
                }
            }
        }

        public void stopLocked() {
            synchronized (this) {
                this.mStopped = true;
                notify();
            }
        }

        Callbacks tryGetCallbacks(Callbacks oldCallbacks) {
            synchronized (LauncherModel.this.mLock) {
                if (this.mStopped) {
                    return null;
                }
                if (LauncherModel.this.mCallbacks == null) {
                    return null;
                }
                Callbacks callbacks = LauncherModel.this.mCallbacks.get();
                if (callbacks != oldCallbacks) {
                    return null;
                }
                if (callbacks == null) {
                    Log.w(LauncherModel.TAG, "no mCallbacks");
                    return null;
                }
                return callbacks;
            }
        }

        private void verifyApplications() {
            Context context = LauncherModel.this.mApp.getContext();
            ArrayList<ItemInfo> removedAppList = new ArrayList<>();
            ArrayList<String> removedPackageNames = new ArrayList<>();
            final ArrayList<ShortcutInfo> removedShortcutList = new ArrayList<>();
            synchronized (LauncherModel.sBgLock) {
                if (LauncherModel.this.mBgAllAppsList.data != null && LauncherModel.this.mBgAllAppsList.data.size() == 0) {
                    Logger.w(LauncherModel.TAG, "AllApps have no item, ignore verifyApplications!!");
                    return;
                }
                HashSet<ComponentName> componentNameHashSet = new HashSet<>();
                Iterator<AppInfo> appInfoIterator = LauncherModel.this.mBgAllAppsList.data.iterator();
                while (appInfoIterator.hasNext()) {
                    componentNameHashSet.add(appInfoIterator.next().componentName);
                }
                Iterator<ItemInfo> it = LauncherModel.sBgItemsIdMap.iterator();
                while (it.hasNext()) {
                    ItemInfo info = it.next();
                    if ((info instanceof ShortcutInfo) && info.itemType != 1) {
                        ShortcutInfo si = (ShortcutInfo) info;
                        ComponentName targetComponent = si.getTargetComponent();
                        if (targetComponent == null) {
                            Logger.d(LauncherModel.TAG, "[verifyApplications] targetComponent is null. ShortcutInfo = " + si + ", isDisabled = " + si.isDisabled + ", status = " + si.status + ", isPromise = " + si.isPromise());
                        } else if (!componentNameHashSet.contains(targetComponent) && !isInPendingPackages(context, targetComponent)) {
                            Logger.d(LauncherModel.TAG, "[verifyApplications] remove: " + targetComponent);
                            removedAppList.add(info);
                            removedPackageNames.add(targetComponent.getPackageName());
                            removedShortcutList.add((ShortcutInfo) info);
                        }
                    }
                }
                if (!removedAppList.isEmpty()) {
                    LauncherModel.deleteItemsFromDatabase(context, removedAppList);
                    final Callbacks callbacks = LauncherModel.this.getCallback();
                    LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Callbacks cb = LauncherModel.this.getCallback();
                            if (callbacks == cb && cb != null) {
                                callbacks.bindComponentsRemoved(new ArrayList<>(), new ArrayList<>(), removedShortcutList, UserHandleCompat.myUserHandle(), 0);
                            }
                        }
                    });
                }
                ArrayList<ItemInfo> added = new ArrayList<>();
                synchronized (LauncherModel.sBgLock) {
                    if (LauncherModel.sBgItemsIdMap != null && LauncherModel.sBgItemsIdMap.size() == 0) {
                        Logger.w(LauncherModel.TAG, "Workspace have no item, ignore verifyApplications!!");
                        return;
                    }
                    Iterator<AppInfo> it2 = LauncherModel.this.mBgAllAppsList.data.iterator();
                    while (it2.hasNext()) {
                        AppInfo app = it2.next();
                        ArrayList<ItemInfo> tempInfos = LauncherModel.this.getItemInfoForComponentName(app.componentName, app.user);
                        if (tempInfos.isEmpty()) {
                            added.add(app);
                            Logger.i(LauncherModel.TAG, "Add missing application back, " + app.componentName);
                        }
                    }
                    if (!added.isEmpty()) {
                        addAndBindAddedWorkspaceApps(context, added);
                    }
                }
            }
        }

        private boolean isInPendingPackages(Context context, ComponentName componentName) {
            boolean isSdCardReady = Utilities.isBootCompleted();
            if (isSdCardReady || componentName == null || LauncherModel.sPendingPackages.isEmpty()) {
                return false;
            }
            UserHandleCompat user = UserHandleCompat.myUserHandle();
            HashSet<String> pendingPackages = LauncherModel.sPendingPackages.get(user);
            if (pendingPackages.isEmpty() || !pendingPackages.contains(componentName.getPackageName())) {
                return false;
            }
            Logger.d(LauncherModel.TAG, "[isInPendingPackages] pending will handle this. " + componentName);
            return true;
        }

        public void addAndBindAddedWorkspaceApps(final Context context, final ArrayList<ItemInfo> workspaceApps) {
            final Callbacks callbacks = LauncherModel.this.getCallback();
            if (workspaceApps == null) {
                throw new RuntimeException("workspaceApps and allAppsApps must not be null");
            }
            if (!workspaceApps.isEmpty()) {
                Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ShortcutInfo shortcutInfo;
                        ArrayList<ItemInfo> addedShortcutsFinal = new ArrayList<>();
                        ArrayList<Long> addedWorkspaceScreensFinal = new ArrayList<>();
                        final ArrayList<AppInfo> restoredAppsFinal = new ArrayList<>();
                        ArrayList<Long> workspaceScreens = new ArrayList<>();
                        TreeMap<Integer, Long> orderedScreens = LoaderTask.this.loadWorkspaceScreensDb(context);
                        for (Integer i : orderedScreens.keySet()) {
                            workspaceScreens.add(Long.valueOf(orderedScreens.get(i).longValue()));
                        }
                        synchronized (LauncherModel.sBgLock) {
                            Iterator<ItemInfo> iter = workspaceApps.iterator();
                            while (iter.hasNext()) {
                                ItemInfo a = iter.next();
                                Intent launchIntent = a.getIntent();
                                if (LauncherModel.this.shortcutExists(context, launchIntent, a.user)) {
                                    if ((a instanceof AppInfo) && LoaderTask.this.appWasPromise(context, launchIntent, a.user)) {
                                        restoredAppsFinal.add((AppInfo) a);
                                    }
                                } else {
                                    Pair<Long, int[]> coords = LoaderTask.this.findNextAvailableIconSpace(context, 0, workspaceScreens);
                                    if (coords == null) {
                                        LauncherProvider lp = LauncherAppState.getLauncherProvider();
                                        for (int numPagesToAdd = Math.max(1, 1 - workspaceScreens.size()); numPagesToAdd > 0; numPagesToAdd--) {
                                            long screenId = lp.generateNewScreenId();
                                            workspaceScreens.add(Long.valueOf(screenId));
                                            addedWorkspaceScreensFinal.add(Long.valueOf(screenId));
                                        }
                                        coords = LoaderTask.this.findNextAvailableIconSpace(context, 0, workspaceScreens);
                                    }
                                    if (coords == null) {
                                        throw new RuntimeException("Coordinates should not be null");
                                    }
                                    if (a instanceof ShortcutInfo) {
                                        shortcutInfo = (ShortcutInfo) a;
                                    } else if (a instanceof AppInfo) {
                                        shortcutInfo = ((AppInfo) a).makeShortcut();
                                    } else {
                                        throw new RuntimeException("Unexpected info type");
                                    }
                                    LauncherModel.addItemToDatabase(context, shortcutInfo, -100L, ((Long) coords.first).longValue(), ((int[]) coords.second)[0], ((int[]) coords.second)[1]);
                                    addedShortcutsFinal.add(shortcutInfo);
                                }
                            }
                        }
                        LauncherModel.this.updateWorkspaceScreenOrder(context, workspaceScreens);
                        if (!addedShortcutsFinal.isEmpty()) {
                            int N = addedShortcutsFinal.size();
                            for (int i2 = 0; i2 < N; i2 += 6) {
                                int start = i2;
                                int chunkSize = i2 + 6 <= N ? 6 : N - i2;
                                int end = start + chunkSize;
                                LoaderTask.this.loadItemsTitleAndIcon(addedShortcutsFinal, start, end);
                                final ArrayList<Long> newBindedScreenId = new ArrayList<>();
                                final ArrayList<ItemInfo> addNotAnimated = new ArrayList<>();
                                for (int j = start; j < end; j++) {
                                    ItemInfo info = addedShortcutsFinal.get(j);
                                    addNotAnimated.add(info);
                                    if (addedWorkspaceScreensFinal.contains(Long.valueOf(info.screenId))) {
                                        newBindedScreenId.add(Long.valueOf(info.screenId));
                                        addedWorkspaceScreensFinal.remove(Long.valueOf(info.screenId));
                                    }
                                }
                                LauncherModel.this.runOnMainThread(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.4.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Callbacks cb = LauncherModel.this.getCallback();
                                        if (callbacks == cb && cb != null) {
                                            callbacks.bindAppsAdded(newBindedScreenId, addNotAnimated, null, null);
                                        }
                                    }
                                });
                            }
                        }
                        if (!restoredAppsFinal.isEmpty()) {
                            LauncherModel.this.runOnMainThread(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.4.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    Callbacks cb = LauncherModel.this.getCallback();
                                    if (callbacks == cb && cb != null) {
                                        callbacks.bindAppsUpdated(restoredAppsFinal);
                                    }
                                }
                            });
                        }
                    }
                };
                LauncherModel.runOnWorkerThread(r);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public TreeMap<Integer, Long> loadWorkspaceScreensDb(Context context) {
            ContentResolver contentResolver = context.getContentResolver();
            Uri screensUri = LauncherSettings.WorkspaceScreens.CONTENT_URI;
            Cursor sc = contentResolver.query(screensUri, null, null, null, null);
            TreeMap<Integer, Long> orderedScreens = new TreeMap<>();
            try {
                int idIndex = sc.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                int rankIndex = sc.getColumnIndexOrThrow(LauncherSettings.WorkspaceScreens.SCREEN_RANK);
                while (sc.moveToNext()) {
                    try {
                        long screenId = sc.getLong(idIndex);
                        int rank = sc.getInt(rankIndex);
                        orderedScreens.put(Integer.valueOf(rank), Long.valueOf(screenId));
                    } catch (Exception e) {
                        Launcher.addDumpLog(LauncherModel.TAG, "Desktop items loading interrupted - invalid screens: " + e, true);
                    }
                }
                sc.close();
                Launcher.addDumpLog(LauncherModel.TAG, "loadWorkspaceScreensDb()", true);
                ArrayList<String> orderedScreensPairs = new ArrayList<>();
                for (Integer i : orderedScreens.keySet()) {
                    orderedScreensPairs.add("{ " + i + ": " + orderedScreens.get(i) + " }");
                }
                Launcher.addDumpLog(LauncherModel.TAG, "screens: " + TextUtils.join(", ", orderedScreensPairs), true);
                return orderedScreens;
            } catch (Throwable th) {
                sc.close();
                throw th;
            }
        }

        boolean findNextAvailableIconSpaceInScreen(ArrayList<ItemInfo> items, int[] xy, long screen) {
            LauncherAppState app = LauncherAppState.getInstance();
            InvariantDeviceProfile invariantDeviceProfile = app.getInvariantDeviceProfile();
            int xCount = invariantDeviceProfile.numColumns;
            int yCount = invariantDeviceProfile.numRows;
            boolean[][] occupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, xCount, yCount);
            for (int i = 0; i < items.size(); i++) {
                ItemInfo item = items.get(i);
                if (item.container == -100 && item.screenId == screen) {
                    int cellX = item.cellX;
                    int cellY = item.cellY;
                    int spanX = item.spanX;
                    int spanY = item.spanY;
                    for (int x = cellX; x >= 0 && x < cellX + spanX && x < xCount; x++) {
                        for (int y = cellY; y >= 0 && y < cellY + spanY && y < yCount; y++) {
                            occupied[x][y] = true;
                        }
                    }
                }
            }
            return Utilities.findVacantCell(xy, 1, 1, xCount, yCount, occupied);
        }

        Pair<Long, int[]> findNextAvailableIconSpace(Context context, int firstScreenIndex, ArrayList<Long> workspaceScreens) {
            LauncherAppState app = LauncherAppState.getInstance();
            app.getModel();
            synchronized (app) {
                if (LauncherModel.sWorkerThread.getThreadId() != Process.myTid()) {
                }
                ArrayList<ItemInfo> items = getItemsInLocalCoordinates(context);
                int firstScreenIndex2 = Math.min(firstScreenIndex, workspaceScreens.size());
                int count = workspaceScreens.size();
                for (int screen = firstScreenIndex2; screen < count && 0 == 0; screen++) {
                    int[] tmpCoordinates = new int[2];
                    if (findNextAvailableIconSpaceInScreen(items, tmpCoordinates, workspaceScreens.get(count - 1).longValue())) {
                        return new Pair<>(workspaceScreens.get(count - 1), tmpCoordinates);
                    }
                }
                return null;
            }
        }

        boolean appWasPromise(Context context, Intent intent, UserHandleCompat user) {
            ComponentName component = intent.getComponent();
            return (component == null || LauncherModel.getItemsByPackageName(component.getPackageName(), user).isEmpty()) ? false : true;
        }

        ArrayList<ItemInfo> getItemsInLocalCoordinates(Context context) {
            ArrayList<ItemInfo> items = new ArrayList<>();
            ContentResolver cr = context.getContentResolver();
            Cursor c = cr.query(LauncherSettings.Favorites.CONTENT_URI, new String[]{LauncherSettings.BaseLauncherColumns.ITEM_TYPE, "container", LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.CELLX, LauncherSettings.Favorites.CELLY, LauncherSettings.Favorites.SPANX, LauncherSettings.Favorites.SPANY, "profileId"}, null, null, null);
            int itemTypeIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
            int containerIndex = c.getColumnIndexOrThrow("container");
            int screenIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
            int cellXIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
            int cellYIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
            int spanXIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANX);
            int spanYIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANY);
            int profileIdIndex = c.getColumnIndexOrThrow("profileId");
            UserManagerCompat userManager = UserManagerCompat.getInstance(context);
            while (c.moveToNext()) {
                try {
                    ItemInfo item = new ItemInfo();
                    item.cellX = c.getInt(cellXIndex);
                    item.cellY = c.getInt(cellYIndex);
                    item.spanX = Math.max(1, c.getInt(spanXIndex));
                    item.spanY = Math.max(1, c.getInt(spanYIndex));
                    item.container = c.getInt(containerIndex);
                    item.itemType = c.getInt(itemTypeIndex);
                    item.screenId = c.getInt(screenIndex);
                    long serialNumber = c.getInt(profileIdIndex);
                    item.user = userManager.getUserForSerialNumber(serialNumber);
                    if (item.user != null) {
                        items.add(item);
                    }
                } catch (Exception e) {
                    items.clear();
                } finally {
                    c.close();
                }
            }
            return items;
        }

        private boolean checkItemPlacement(LongArrayMap<ItemInfo[][]> occupied, ItemInfo item, ArrayList<Long> workspaceScreens) {
            LauncherAppState app = LauncherAppState.getInstance();
            InvariantDeviceProfile profile = app.getInvariantDeviceProfile();
            int countX = profile.numColumns;
            int countY = profile.numRows;
            long containerIndex = item.screenId;
            if (item.container == -102) {
                return false;
            }
            if (item.container == -101) {
                if (LauncherModel.this.mCallbacks == null || LauncherModel.this.mCallbacks.get().isAllAppsButtonRank((int) item.screenId)) {
                    Log.e(LauncherModel.TAG, "Error loading shortcut into hotseat " + item + " into position (" + item.screenId + CustomInfoLegacyHelper.RESOURCE_PATH_DIVIDER + item.cellX + "," + item.cellY + ") occupied by all apps");
                    return false;
                }
                ItemInfo[][] hotseatItems = occupied.get(-101L);
                if (item.screenId >= profile.numHotseatIcons) {
                    Log.e(LauncherModel.TAG, "Error loading shortcut " + item + " into hotseat position " + item.screenId + ", position out of bounds: (0 to " + (profile.numHotseatIcons - 1) + ")");
                    return false;
                }
                if (hotseatItems != null) {
                    if (hotseatItems[(int) item.screenId][0] != null) {
                        Log.e(LauncherModel.TAG, "Error loading shortcut into hotseat " + item + " into position (" + item.screenId + CustomInfoLegacyHelper.RESOURCE_PATH_DIVIDER + item.cellX + "," + item.cellY + ") occupied by " + occupied.get(-101L)[(int) item.screenId][0]);
                        return false;
                    }
                    hotseatItems[(int) item.screenId][0] = item;
                    return true;
                }
                ItemInfo[][] items = (ItemInfo[][]) Array.newInstance((Class<?>) ItemInfo.class, profile.numHotseatIcons, 1);
                items[(int) item.screenId][0] = item;
                occupied.put(-101L, items);
                return true;
            }
            if (item.container == -100) {
                if (!workspaceScreens.contains(Long.valueOf(item.screenId))) {
                    return false;
                }
                if (!occupied.containsKey(item.screenId)) {
                    occupied.put(item.screenId, (ItemInfo[][]) Array.newInstance((Class<?>) ItemInfo.class, countX + 1, countY + 1));
                }
                ItemInfo[][] screens = occupied.get(item.screenId);
                if ((item.container == -100 && item.cellX < 0) || item.cellY < 0 || item.cellX + item.spanX > countX || item.cellY + item.spanY > countY) {
                    Log.e(LauncherModel.TAG, "Error loading shortcut " + item + " into cell (" + containerIndex + "-" + item.screenId + CustomInfoLegacyHelper.RESOURCE_PATH_DIVIDER + item.cellX + "," + item.cellY + ") out of screen bounds ( " + countX + "x" + countY + ")");
                    return false;
                }
                for (int x = item.cellX; x < item.cellX + item.spanX; x++) {
                    for (int y = item.cellY; y < item.cellY + item.spanY; y++) {
                        if (screens[x][y] != null) {
                            Log.e(LauncherModel.TAG, "Error loading shortcut " + item + " into cell (" + containerIndex + "-" + item.screenId + CustomInfoLegacyHelper.RESOURCE_PATH_DIVIDER + x + "," + y + ") occupied by " + screens[x][y]);
                            return false;
                        }
                    }
                }
                for (int x2 = item.cellX; x2 < item.cellX + item.spanX; x2++) {
                    for (int y2 = item.cellY; y2 < item.cellY + item.spanY; y2++) {
                        screens[x2][y2] = item;
                    }
                }
                return true;
            }
            return true;
        }

        private boolean findShortcutItemPlacement(LongArrayMap<ItemInfo[][]> occupied, ItemInfo item) {
            LauncherAppState app = LauncherAppState.getInstance();
            InvariantDeviceProfile profile = app.getInvariantDeviceProfile();
            int countX = profile.numColumns;
            int countY = profile.numRows;
            long j = item.screenId;
            if (!occupied.containsKey(item.screenId)) {
                ItemInfo[][] items = (ItemInfo[][]) Array.newInstance((Class<?>) ItemInfo.class, countX + 1, countY + 1);
                occupied.put(item.screenId, items);
            }
            ItemInfo[][] screens = occupied.get(item.screenId);
            int targetCellX = -1;
            int targetCellY = 0;
            boolean findNotEmpty = false;
            for (int y = countY - 1; y >= 0 && !findNotEmpty; y--) {
                for (int x = countX - 1; x >= 0 && !findNotEmpty; x--) {
                    if (screens[x][y] != null) {
                        targetCellX = x;
                        targetCellY = y;
                        findNotEmpty = true;
                    }
                }
            }
            if (targetCellX == countX - 1 && targetCellY == countY - 1) {
                return false;
            }
            int targetCellX2 = targetCellX + 1;
            if (targetCellX2 >= countX) {
                targetCellX2 = 0;
                targetCellY++;
            }
            screens[targetCellX2][targetCellY] = item;
            item.cellX = targetCellX2;
            item.cellY = targetCellY;
            item.container = -100L;
            return true;
        }

        private void clearSBgDataStructures() {
            Logger.d(LauncherModel.TAG, "clearSBgDataStructures");
            synchronized (LauncherModel.sBgLock) {
                LauncherModel.sBgWorkspaceItems.clear();
                LauncherModel.sBgAppWidgets.clear();
                LauncherModel.sBgFolders.clear();
                LauncherModel.sBgItemsIdMap.clear();
                LauncherModel.sBgWorkspaceScreens.clear();
                Iterator<IDynamicShortcut> it = LauncherModel.sBgDynamicItems.iterator();
                while (it.hasNext()) {
                    IDynamicShortcut info = it.next();
                    info.unregisterDataProvider();
                }
                LauncherModel.sBgDynamicItems.clear();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:278:0x0952, code lost:
        
            if (r52 != false) goto L423;
         */
        /* JADX WARN: Code restructure failed: missing block: B:279:0x0954, code lost:
        
            if (r122 != false) goto L424;
         */
        /* JADX WARN: Code restructure failed: missing block: B:345:0x0956, code lost:
        
            r81 = "Deleting widget that isn't a valid widget in AppWidgetManager: id=" + r60 + " appWidgetId=" + r38 + " component:" + r46.flattenToShortString();
            net.oneplus.h2launcher.util.Logger.e(net.oneplus.h2launcher.LauncherModel.TAG, r81);
            net.oneplus.h2launcher.Launcher.addDumpLog(net.oneplus.h2launcher.LauncherModel.TAG, r81, false);
            r75.add(java.lang.Long.valueOf(r60));
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:36:0x020a. Please report as an issue. */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void loadWorkspace() {
            /*
                Method dump skipped, instructions count: 3844
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.LauncherModel.LoaderTask.loadWorkspace():void");
        }

        private void updateItem(long itemId, ContentValues update) {
            this.mContext.getContentResolver().update(LauncherSettings.Favorites.CONTENT_URI, update, "_id= ?", new String[]{Long.toString(itemId)});
        }

        private void filterCurrentWorkspaceItems(long currentScreenId, ArrayList<ItemInfo> allWorkspaceItems, ArrayList<ItemInfo> currentScreenItems, ArrayList<ItemInfo> otherScreenItems) {
            Iterator<ItemInfo> iter = allWorkspaceItems.iterator();
            while (iter.hasNext()) {
                ItemInfo i = iter.next();
                if (i == null) {
                    iter.remove();
                }
            }
            Set<Long> itemsOnScreen = new HashSet<>();
            Collections.sort(allWorkspaceItems, new Comparator<ItemInfo>() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.5
                @Override // java.util.Comparator
                public int compare(ItemInfo lhs, ItemInfo rhs) {
                    return (int) (lhs.container - rhs.container);
                }
            });
            Iterator<ItemInfo> it = allWorkspaceItems.iterator();
            while (it.hasNext()) {
                ItemInfo info = it.next();
                if (info.container == -100) {
                    if (info.screenId == currentScreenId) {
                        currentScreenItems.add(info);
                        itemsOnScreen.add(Long.valueOf(info.id));
                    } else {
                        otherScreenItems.add(info);
                    }
                } else if (info.container == -101) {
                    currentScreenItems.add(info);
                    itemsOnScreen.add(Long.valueOf(info.id));
                } else if (itemsOnScreen.contains(Long.valueOf(info.container))) {
                    currentScreenItems.add(info);
                    itemsOnScreen.add(Long.valueOf(info.id));
                } else {
                    otherScreenItems.add(info);
                }
            }
        }

        private void filterCurrentAppWidgets(long currentScreenId, ArrayList<LauncherAppWidgetInfo> appWidgets, ArrayList<LauncherAppWidgetInfo> currentScreenWidgets, ArrayList<LauncherAppWidgetInfo> otherScreenWidgets) {
            Iterator<LauncherAppWidgetInfo> it = appWidgets.iterator();
            while (it.hasNext()) {
                LauncherAppWidgetInfo widget = it.next();
                if (widget != null) {
                    if (widget.container == -100 && widget.screenId == currentScreenId) {
                        currentScreenWidgets.add(widget);
                    } else {
                        otherScreenWidgets.add(widget);
                    }
                }
            }
        }

        private void filterCurrentFolders(long currentScreenId, LongArrayMap<ItemInfo> itemsIdMap, LongArrayMap<FolderInfo> folders, LongArrayMap<FolderInfo> currentScreenFolders, LongArrayMap<FolderInfo> otherScreenFolders) {
            int total = folders.size();
            for (int i = 0; i < total; i++) {
                long id = folders.keyAt(i);
                FolderInfo folder = folders.valueAt(i);
                ItemInfo info = itemsIdMap.get(id);
                if (info != null && folder != null) {
                    if (info.container == -100 && info.screenId == currentScreenId) {
                        currentScreenFolders.put(id, folder);
                    } else {
                        otherScreenFolders.put(id, folder);
                    }
                }
            }
        }

        private void sortWorkspaceItemsSpatially(ArrayList<ItemInfo> workspaceItems) {
            LauncherAppState app = LauncherAppState.getInstance();
            final InvariantDeviceProfile profile = app.getInvariantDeviceProfile();
            Collections.sort(workspaceItems, new Comparator<ItemInfo>() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.6
                @Override // java.util.Comparator
                public int compare(ItemInfo lhs, ItemInfo rhs) {
                    int cellCountX = profile.numColumns;
                    int cellCountY = profile.numRows;
                    int screenOffset = cellCountX * cellCountY;
                    int containerOffset = screenOffset * 6;
                    long lr = (lhs.container * containerOffset) + (lhs.screenId * screenOffset) + (lhs.cellY * cellCountX) + lhs.cellX;
                    long rr = (rhs.container * containerOffset) + (rhs.screenId * screenOffset) + (rhs.cellY * cellCountX) + rhs.cellX;
                    return (int) (lr - rr);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindQuickPage(final Callbacks oldCallbacks) {
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.7
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                    if (callbacks != null) {
                        callbacks.bindQuickPage();
                    }
                }
            };
            LauncherModel.this.runOnMainThread(r);
        }

        private void bindWorkspaceScreens(final Callbacks oldCallbacks, final ArrayList<Long> orderedScreens) {
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.8
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                    if (callbacks != null) {
                        callbacks.bindScreens(orderedScreens);
                    }
                }
            };
            LauncherModel.this.runOnMainThread(r);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindWorkspaceItems(final Callbacks oldCallbacks, final ArrayList<ItemInfo> workspaceItems, ArrayList<LauncherAppWidgetInfo> appWidgets, final LongArrayMap<FolderInfo> folders, ArrayList<Runnable> deferredBindRunnables) {
            boolean postOnMainThread = deferredBindRunnables != null;
            int N = workspaceItems.size();
            for (int i = 0; i < N; i += 6) {
                final int start = i;
                int chunkSize = i + 6 <= N ? 6 : N - i;
                final int end = start + chunkSize;
                loadItemsTitleAndIcon(workspaceItems, start, end);
                Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.9
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                        if (callbacks != null) {
                            callbacks.bindItems(workspaceItems, start, end, false);
                        }
                    }
                };
                if (postOnMainThread) {
                    synchronized (deferredBindRunnables) {
                        deferredBindRunnables.add(r);
                    }
                } else {
                    LauncherModel.this.runOnMainThread(r);
                }
            }
            if (!folders.isEmpty()) {
                Runnable r2 = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.10
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                        if (callbacks != null) {
                            callbacks.bindFolders(folders);
                        }
                    }
                };
                if (postOnMainThread) {
                    synchronized (deferredBindRunnables) {
                        deferredBindRunnables.add(r2);
                    }
                } else {
                    LauncherModel.this.runOnMainThread(r2);
                }
            }
            int N2 = appWidgets.size();
            for (int i2 = 0; i2 < N2; i2++) {
                final LauncherAppWidgetInfo widget = appWidgets.get(i2);
                Runnable r3 = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.11
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                        if (callbacks != null) {
                            callbacks.bindAppWidget(widget);
                        }
                    }
                };
                if (postOnMainThread) {
                    deferredBindRunnables.add(r3);
                } else {
                    LauncherModel.this.runOnMainThread(r3);
                }
            }
        }

        private void bindWorkspace(int synchronizeBindPage) {
            LongArrayMap<FolderInfo> folders;
            LongArrayMap<ItemInfo> itemsIdMap;
            final long t = SystemClock.uptimeMillis();
            final Callbacks oldCallbacks = LauncherModel.this.mCallbacks.get();
            if (oldCallbacks == null) {
                Log.w(LauncherModel.TAG, "LoaderTask running with no launcher");
                return;
            }
            ArrayList<ItemInfo> workspaceItems = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> appWidgets = new ArrayList<>();
            ArrayList<Long> orderedScreenIds = new ArrayList<>();
            synchronized (LauncherModel.sBgLock) {
                workspaceItems.addAll(LauncherModel.sBgWorkspaceItems);
                appWidgets.addAll(LauncherModel.sBgAppWidgets);
                orderedScreenIds.addAll(LauncherModel.sBgWorkspaceScreens);
                folders = LauncherModel.sBgFolders.clone();
                itemsIdMap = LauncherModel.sBgItemsIdMap.clone();
            }
            boolean isLoadingSynchronously = synchronizeBindPage != -1001;
            int currScreen = isLoadingSynchronously ? synchronizeBindPage : oldCallbacks.getCurrentWorkspaceScreen();
            if (currScreen >= orderedScreenIds.size()) {
                currScreen = PagedView.INVALID_RESTORE_PAGE;
            }
            final int currentScreen = currScreen;
            long currentScreenId = currentScreen < 0 ? -1L : orderedScreenIds.get(currentScreen).longValue();
            LauncherModel.this.unbindWorkspaceItemsOnMainThread();
            ArrayList<ItemInfo> currentWorkspaceItems = new ArrayList<>();
            final ArrayList<ItemInfo> otherWorkspaceItems = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> currentAppWidgets = new ArrayList<>();
            final ArrayList<LauncherAppWidgetInfo> otherAppWidgets = new ArrayList<>();
            LongArrayMap<FolderInfo> currentFolders = new LongArrayMap<>();
            final LongArrayMap<FolderInfo> otherFolders = new LongArrayMap<>();
            filterCurrentWorkspaceItems(currentScreenId, workspaceItems, currentWorkspaceItems, otherWorkspaceItems);
            filterCurrentAppWidgets(currentScreenId, appWidgets, currentAppWidgets, otherAppWidgets);
            filterCurrentFolders(currentScreenId, itemsIdMap, folders, currentFolders, otherFolders);
            sortWorkspaceItemsSpatially(currentWorkspaceItems);
            sortWorkspaceItemsSpatially(otherWorkspaceItems);
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.12
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                    if (callbacks != null) {
                        callbacks.startBinding();
                    }
                }
            };
            LauncherModel.this.runOnMainThread(r);
            bindWorkspaceScreens(oldCallbacks, orderedScreenIds);
            bindWorkspaceItems(oldCallbacks, currentWorkspaceItems, currentAppWidgets, currentFolders, null);
            if (currentWorkspaceItems.size() == 0 && currentAppWidgets.size() == 0) {
                LauncherModel.this.mCurrentPageBindingFinished = true;
            }
            if (isLoadingSynchronously) {
                Runnable r2 = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.13
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                        if (callbacks != null && currentScreen != -1001) {
                            callbacks.onPageBoundSynchronously(currentScreen);
                        }
                    }
                };
                LauncherModel.this.runOnMainThread(r2);
            }
            Runnable bindOtherWorkspaceRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.14
                @Override // java.lang.Runnable
                public void run() {
                    LoaderTask.this.bindWorkspaceItems(oldCallbacks, otherWorkspaceItems, otherAppWidgets, otherFolders, null);
                    LoaderTask.this.doneBindingItems(oldCallbacks, t);
                    LoaderTask.this.bindQuickPage(oldCallbacks);
                }
            };
            if (!LauncherModel.this.mCurrentPageBindingFinished) {
                LauncherModel.this.mDelayBindOtherWorkspaceRunnable = bindOtherWorkspaceRunnable;
            } else {
                bindOtherWorkspaceRunnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doneBindingItems(final Callbacks oldCallbacks, final long time) {
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.15
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                    if (callbacks != null) {
                        callbacks.finishBindingItems();
                    }
                    LoaderTask.this.mIsLoadingAndBindingWorkspace = false;
                    if (!LauncherModel.mBindCompleteRunnables.isEmpty()) {
                        synchronized (LauncherModel.mBindCompleteRunnables) {
                            Iterator<Runnable> it = LauncherModel.mBindCompleteRunnables.iterator();
                            while (it.hasNext()) {
                                Runnable r2 = it.next();
                                LauncherModel.runOnWorkerThread(r2);
                            }
                            LauncherModel.mBindCompleteRunnables.clear();
                        }
                    }
                    Log.d(LauncherModel.TAG, "bound workspace in " + (SystemClock.uptimeMillis() - time) + "ms");
                }
            };
            LauncherModel.this.runOnMainThread(r);
        }

        private void loadAndBindAllApps() {
            Log.d(LauncherModel.TAG, "loadAndBindAllApps mAllAppsLoaded=" + LauncherModel.this.mAllAppsLoaded);
            if (!LauncherModel.this.mAllAppsLoaded) {
                loadAllApps();
                synchronized (this) {
                    if (!this.mStopped) {
                        System.currentTimeMillis();
                        updateIconCache();
                        synchronized (this) {
                            if (!this.mStopped) {
                                LauncherModel.this.mAllAppsLoaded = true;
                            }
                        }
                    }
                }
                return;
            }
            onlyBindAllApps();
        }

        private void updateIconCache() {
            HashSet<String> packagesToIgnore = new HashSet<>();
            synchronized (LauncherModel.sBgLock) {
                Iterator<ItemInfo> it = LauncherModel.sBgItemsIdMap.iterator();
                while (it.hasNext()) {
                    ItemInfo info = it.next();
                    if (info instanceof ShortcutInfo) {
                        ShortcutInfo si = (ShortcutInfo) info;
                        if (si.isPromise() && si.getTargetComponent() != null) {
                            packagesToIgnore.add(si.getTargetComponent().getPackageName());
                        }
                    } else if (info instanceof LauncherAppWidgetInfo) {
                        LauncherAppWidgetInfo lawi = (LauncherAppWidgetInfo) info;
                        if (lawi.hasRestoreFlag(2)) {
                            packagesToIgnore.add(lawi.providerName.getPackageName());
                        }
                    }
                }
            }
            LauncherModel.this.mAssetCache.updateDbIcons(packagesToIgnore);
        }

        private void onlyBindAllApps() {
            final Callbacks oldCallbacks = LauncherModel.this.mCallbacks.get();
            if (oldCallbacks == null) {
                Log.w(LauncherModel.TAG, "LoaderTask running with no launcher (onlyBindAllApps)");
                return;
            }
            final ArrayList<AppInfo> list = (ArrayList) LauncherModel.this.mBgAllAppsList.data.clone();
            Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.16
                @Override // java.lang.Runnable
                public void run() {
                    long t = SystemClock.uptimeMillis();
                    Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                    if (callbacks != null) {
                        callbacks.bindAllApplications(list);
                        callbacks.bindAllPackages(LauncherModel.this.mFgWidgetsModel);
                    }
                    Log.d(LauncherModel.TAG, "bound all " + list.size() + " apps from cache in " + (SystemClock.uptimeMillis() - t) + "ms");
                }
            };
            boolean isRunningOnMainThread = LauncherModel.sWorkerThread.getThreadId() != Process.myTid();
            if (isRunningOnMainThread) {
                r.run();
            } else {
                LauncherModel.this.mHandler.post(r);
            }
        }

        private void loadAllApps() {
            long loadTime = SystemClock.uptimeMillis();
            final Callbacks oldCallbacks = LauncherModel.this.mCallbacks.get();
            if (oldCallbacks == null) {
                Log.w(LauncherModel.TAG, "LoaderTask running with no launcher (loadAllApps)");
                return;
            }
            List<UserHandleCompat> profiles = LauncherModel.this.mUserManager.getUserProfiles();
            LauncherModel.this.mBgAllAppsList.clear();
            for (UserHandleCompat user : profiles) {
                long qiaTime = SystemClock.uptimeMillis();
                final List<LauncherActivityInfoCompat> apps = LauncherModel.this.mLauncherApps.getActivityList(null, user);
                Log.d(LauncherModel.TAG, "getActivityList took " + (SystemClock.uptimeMillis() - qiaTime) + "ms for user " + user);
                Log.d(LauncherModel.TAG, "getActivityList got " + apps.size() + " apps for user " + user);
                if (!apps.isEmpty()) {
                    boolean quietMode = LauncherModel.this.mUserManager.isQuietModeEnabled(user);
                    CustomInfoHelper.checkComponent(this.mContext, user, apps);
                    for (int i = 0; i < apps.size(); i++) {
                        LauncherActivityInfoCompat app = apps.get(i);
                        LauncherModel.this.mBgAllAppsList.add(new AppInfo(this.mContext, app, user, LauncherModel.this.mAssetCache, quietMode));
                    }
                    final ManagedProfileHeuristic heuristic = ManagedProfileHeuristic.get(this.mContext, user);
                    if (heuristic != null) {
                        final Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.17
                            @Override // java.lang.Runnable
                            public void run() {
                                heuristic.processUserApps(apps);
                            }
                        };
                        LauncherModel.this.runOnMainThread(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.18
                            @Override // java.lang.Runnable
                            public void run() {
                                if (LoaderTask.this.mIsLoadingAndBindingWorkspace) {
                                    synchronized (LauncherModel.mBindCompleteRunnables) {
                                        LauncherModel.mBindCompleteRunnables.add(r);
                                    }
                                    return;
                                }
                                LauncherModel.runOnWorkerThread(r);
                            }
                        });
                    }
                }
            }
            final ArrayList<AppInfo> added = LauncherModel.this.mBgAllAppsList.added;
            LauncherModel.this.mBgAllAppsList.added = new ArrayList<>();
            LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.LoaderTask.19
                @Override // java.lang.Runnable
                public void run() {
                    long bindTime = SystemClock.uptimeMillis();
                    Callbacks callbacks = LoaderTask.this.tryGetCallbacks(oldCallbacks);
                    if (callbacks != null) {
                        callbacks.bindAllApplications(added);
                        Log.d(LauncherModel.TAG, "bound " + added.size() + " apps in " + (SystemClock.uptimeMillis() - bindTime) + "ms");
                    } else {
                        Log.i(LauncherModel.TAG, "not binding apps: no Launcher activity");
                    }
                }
            });
            ManagedProfileHeuristic.processAllUsers(profiles, this.mContext);
            LauncherModel.this.loadAndBindWidgetsAndShortcuts(tryGetCallbacks(oldCallbacks), true);
            Log.d(LauncherModel.TAG, "Icons processed in " + (SystemClock.uptimeMillis() - loadTime) + "ms");
        }

        private void loadItemsTitleAndIcon(ArrayList<ItemInfo> itemInfos) {
            loadItemsTitleAndIcon(itemInfos, 0, itemInfos.size());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadItemsTitleAndIcon(ArrayList<ItemInfo> itemInfos, int start, int end) {
            if (start < 0) {
                start = 0;
            }
            if (end > itemInfos.size()) {
                end = itemInfos.size();
            }
            for (int i = start; i < end; i++) {
                ItemInfo info = itemInfos.get(i);
                if (info instanceof ShortcutInfo) {
                    ((ShortcutInfo) info).getIcon(LauncherModel.this.mAssetCache);
                } else if (info instanceof AppInfo) {
                    ((AppInfo) info).getIcon(LauncherModel.this.mAssetCache, false);
                }
            }
        }

        public void dumpState() {
            synchronized (LauncherModel.sBgLock) {
                Log.d(LauncherModel.TAG, "mLoaderTask.mContext=" + this.mContext);
                Log.d(LauncherModel.TAG, "mLoaderTask.mStopped=" + this.mStopped);
                Log.d(LauncherModel.TAG, "mLoaderTask.mLoadAndBindStepFinished=" + this.mLoadAndBindStepFinished);
                Log.d(LauncherModel.TAG, "mItems size=" + LauncherModel.sBgWorkspaceItems.size());
            }
        }
    }

    public void onPackageIconsUpdated(HashSet<String> updatedPackages, final UserHandleCompat user) {
        ShortcutInfo si;
        ComponentName cn;
        final Callbacks callbacks = getCallback();
        final ArrayList<AppInfo> updatedApps = new ArrayList<>();
        final ArrayList<ShortcutInfo> updatedShortcuts = new ArrayList<>();
        synchronized (sBgLock) {
            Iterator<ItemInfo> it = sBgItemsIdMap.iterator();
            while (it.hasNext()) {
                ItemInfo info = it.next();
                if ((info instanceof ShortcutInfo) && user.equals(info.user) && info.itemType == 0 && (cn = (si = (ShortcutInfo) info).getTargetComponent()) != null && updatedPackages.contains(cn.getPackageName())) {
                    si.updateIcon(this.mAssetCache);
                    updatedShortcuts.add(si);
                }
            }
            this.mBgAllAppsList.updateIconsAndLabels(updatedPackages, user, updatedApps);
        }
        if (!updatedShortcuts.isEmpty()) {
            this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.20
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks cb = LauncherModel.this.getCallback();
                    if (cb != null && callbacks == cb) {
                        cb.bindShortcutsChanged(updatedShortcuts, new ArrayList<>(), user);
                    }
                }
            });
        }
        if (!updatedApps.isEmpty()) {
            this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.21
                @Override // java.lang.Runnable
                public void run() {
                    Callbacks cb = LauncherModel.this.getCallback();
                    if (cb != null && callbacks == cb) {
                        cb.bindAppsUpdated(updatedApps);
                    }
                }
            });
        }
        loadAndBindWidgetsAndShortcuts(callbacks, false);
    }

    void enqueuePackageUpdated(PackageUpdatedTask task) {
        sWorker.post(task);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AppsAvailabilityCheck extends BroadcastReceiver {
        AppsAvailabilityCheck() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (LauncherModel.sBgLock) {
                LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(LauncherModel.this.mApp.getContext());
                PackageManager manager = context.getPackageManager();
                ArrayList<String> packagesRemoved = new ArrayList<>();
                ArrayList<String> packagesUnavailable = new ArrayList<>();
                for (Map.Entry<UserHandleCompat, HashSet<String>> entry : LauncherModel.sPendingPackages.entrySet()) {
                    UserHandleCompat user = entry.getKey();
                    packagesRemoved.clear();
                    packagesUnavailable.clear();
                    Iterator<String> it = entry.getValue().iterator();
                    while (it.hasNext()) {
                        String pkg = it.next();
                        if (!launcherApps.isPackageEnabledForProfile(pkg, user)) {
                            boolean packageOnSdcard = launcherApps.isAppEnabled(manager, pkg, 8192);
                            if (packageOnSdcard) {
                                Launcher.addDumpLog(LauncherModel.TAG, "Package found on sd-card: " + pkg, true);
                                packagesUnavailable.add(pkg);
                            } else {
                                Launcher.addDumpLog(LauncherModel.TAG, "Package not found: " + pkg, true);
                                packagesRemoved.add(pkg);
                            }
                        }
                    }
                    if (!packagesRemoved.isEmpty()) {
                        LauncherModel.this.enqueuePackageUpdated(new PackageUpdatedTask(3, (String[]) packagesRemoved.toArray(new String[packagesRemoved.size()]), user));
                    }
                    if (!packagesUnavailable.isEmpty()) {
                        LauncherModel.this.enqueuePackageUpdated(new PackageUpdatedTask(4, (String[]) packagesUnavailable.toArray(new String[packagesUnavailable.size()]), user));
                    }
                }
                LauncherModel.sPendingPackages.clear();
            }
        }
    }

    /* loaded from: classes.dex */
    private class PackageUpdatedTask implements Runnable {
        public static final int OP_ADD = 1;
        public static final int OP_NONE = 0;
        public static final int OP_REMOVE = 3;
        public static final int OP_SUSPEND = 5;
        public static final int OP_UNAVAILABLE = 4;
        public static final int OP_UNSUSPEND = 6;
        public static final int OP_UPDATE = 2;
        public static final int OP_USER_AVAILABLE = 7;
        public static final int OP_USER_UNAVAILABLE = 8;
        int mOp;
        String[] mPackages;
        UserHandleCompat mUser;

        public PackageUpdatedTask(int op, String[] packages, UserHandleCompat user) {
            this.mOp = op;
            this.mPackages = packages;
            this.mUser = user;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap icon;
            final int removeReason;
            if (LauncherModel.this.mHasLoaderCompletedOnce) {
                Context context = LauncherModel.this.mApp.getContext();
                String[] packages = this.mPackages;
                int N = packages.length;
                switch (this.mOp) {
                    case 1:
                        for (int i = 0; i < N; i++) {
                            Log.d(LauncherModel.TAG, "mAllAppsList.addPackage " + packages[i]);
                            LauncherModel.this.mAssetCache.updateIconsForPkg(packages[i], this.mUser);
                            LauncherModel.this.mBgAllAppsList.addPackage(context, packages[i], this.mUser);
                        }
                        ManagedProfileHeuristic heuristic = ManagedProfileHeuristic.get(context, this.mUser);
                        if (heuristic != null) {
                            heuristic.processPackageAdd(this.mPackages);
                            break;
                        }
                        break;
                    case 2:
                        for (int i2 = 0; i2 < N; i2++) {
                            Log.d(LauncherModel.TAG, "mAllAppsList.updatePackage " + packages[i2]);
                            if (LauncherModel.STK_PACKAGE_NAME.equals(packages[i2])) {
                                Logger.d(LauncherModel.TAG, "STK updatePackage");
                            }
                            LauncherModel.this.mAssetCache.updateIconsForPkg(packages[i2], this.mUser);
                            LauncherModel.this.mBgAllAppsList.updatePackage(context, packages[i2], this.mUser);
                            LauncherModel.this.mApp.getWidgetCache().removePackage(packages[i2], this.mUser);
                        }
                        break;
                    case 3:
                        ManagedProfileHeuristic heuristic2 = ManagedProfileHeuristic.get(context, this.mUser);
                        if (heuristic2 != null) {
                            heuristic2.processPackageRemoved(this.mPackages);
                        }
                        for (int i3 = 0; i3 < N; i3++) {
                            Log.d(LauncherModel.TAG, "mAllAppsList.removePackage " + packages[i3]);
                            LauncherModel.this.mAssetCache.removeIconForPackageUpdate(packages[i3], this.mUser);
                        }
                    case 4:
                        for (int i4 = 0; i4 < N; i4++) {
                            Log.d(LauncherModel.TAG, "mAllAppsList.removePackage " + packages[i4]);
                            LauncherModel.this.mBgAllAppsList.removePackage(packages[i4], this.mUser);
                            LauncherModel.this.mApp.getWidgetCache().removePackage(packages[i4], this.mUser);
                        }
                        break;
                    case 5:
                    case 6:
                        boolean suspend = this.mOp == 5;
                        for (int i5 = 0; i5 < N; i5++) {
                            Log.d(LauncherModel.TAG, "mAllAppsList.suspendPackage " + suspend + HanziToPinyin.Token.SEPARATOR + packages[i5]);
                            LauncherModel.this.mBgAllAppsList.suspendPackage(packages[i5], this.mUser, suspend);
                        }
                        break;
                    case 7:
                    case 8:
                        boolean quiet = this.mOp == 7;
                        for (int i6 = 0; i6 < N; i6++) {
                            Log.d(LauncherModel.TAG, "mAllAppsList.quietUserPackage " + quiet + HanziToPinyin.Token.SEPARATOR + packages[i6]);
                            LauncherModel.this.mBgAllAppsList.quietUserPackage(packages[i6], this.mUser, quiet);
                        }
                        break;
                }
                ArrayList<AppInfo> added = null;
                ArrayList<AppInfo> modified = null;
                final ArrayList<AppInfo> removedApps = new ArrayList<>();
                if (LauncherModel.this.mBgAllAppsList.added.size() > 0) {
                    added = new ArrayList<>(LauncherModel.this.mBgAllAppsList.added);
                    LauncherModel.this.mBgAllAppsList.added.clear();
                }
                if (LauncherModel.this.mBgAllAppsList.modified.size() > 0) {
                    modified = new ArrayList<>(LauncherModel.this.mBgAllAppsList.modified);
                    LauncherModel.this.mBgAllAppsList.modified.clear();
                }
                if (LauncherModel.this.mBgAllAppsList.removed.size() > 0) {
                    removedApps.addAll(LauncherModel.this.mBgAllAppsList.removed);
                    LauncherModel.this.mBgAllAppsList.removed.clear();
                }
                final Callbacks callbacks = LauncherModel.this.getCallback();
                if (callbacks == null) {
                    Log.w(LauncherModel.TAG, "Nobody to tell about the new app.  Launcher is probably loading.");
                    return;
                }
                HashMap<ComponentName, AppInfo> addedOrUpdatedApps = new HashMap<>();
                if (added != null) {
                    if (StyleManager.getInstance().addExtraWorkspaceItems()) {
                        ArrayList<ItemInfo> addedInfos = new ArrayList<>(added);
                        LauncherModel.this.addAndBindAddedWorkspaceItems(context, addedInfos);
                    } else {
                        LauncherModel.this.addAppsToAllApps(context, added);
                        Iterator<AppInfo> it = added.iterator();
                        while (it.hasNext()) {
                            AppInfo ai = it.next();
                            addedOrUpdatedApps.put(ai.componentName, ai);
                        }
                    }
                }
                if (modified != null) {
                    final ArrayList<AppInfo> modifiedFinal = modified;
                    Iterator<AppInfo> it2 = modified.iterator();
                    while (it2.hasNext()) {
                        AppInfo ai2 = it2.next();
                        addedOrUpdatedApps.put(ai2.componentName, ai2);
                    }
                    LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.PackageUpdatedTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Callbacks cb = LauncherModel.this.getCallback();
                            if (callbacks == cb && cb != null) {
                                callbacks.bindAppsUpdated(modifiedFinal);
                            }
                        }
                    });
                }
                if (this.mOp == 1 || this.mOp == 2 || this.mOp == 5 || this.mOp == 6 || this.mOp == 7 || this.mOp == 8) {
                    final ArrayList<ShortcutInfo> updatedShortcuts = new ArrayList<>();
                    final ArrayList<ShortcutInfo> removedShortcuts = new ArrayList<>();
                    final ArrayList<LauncherAppWidgetInfo> widgets = new ArrayList<>();
                    HashSet<String> packageSet = new HashSet<>(Arrays.asList(packages));
                    synchronized (LauncherModel.sBgLock) {
                        Iterator<ItemInfo> it3 = LauncherModel.sBgItemsIdMap.iterator();
                        while (it3.hasNext()) {
                            ItemInfo info = it3.next();
                            if ((info instanceof ShortcutInfo) && this.mUser.equals(info.user)) {
                                ShortcutInfo si = (ShortcutInfo) info;
                                boolean infoUpdated = false;
                                boolean shortcutUpdated = false;
                                boolean iconUpdated = false;
                                if (this.mOp == 5) {
                                    si.isDisabled |= 4;
                                    infoUpdated = true;
                                }
                                if (this.mOp == 6) {
                                    si.isDisabled &= -5;
                                    infoUpdated = true;
                                }
                                if (this.mOp == 7) {
                                    si.isDisabled &= -9;
                                    infoUpdated = true;
                                }
                                if (this.mOp == 8) {
                                    si.isDisabled |= 8;
                                    infoUpdated = true;
                                }
                                if (si.iconResource != null && packageSet.contains(si.iconResource.packageName) && (icon = Utilities.createIconBitmap(si.iconResource.packageName, si.iconResource.resourceName, context)) != null) {
                                    Bitmap resizeIcon = IconCache.checkAndResizeIcon(icon);
                                    if (resizeIcon != null) {
                                        icon = resizeIcon;
                                    }
                                    si.setIcon(icon);
                                    si.usingFallbackIcon = false;
                                    infoUpdated = true;
                                }
                                ComponentName cn = si.getTargetComponent();
                                if (cn != null && packageSet.contains(cn.getPackageName())) {
                                    LauncherModel.this.mAssetCache.packagedUpdated(si);
                                    iconUpdated = true;
                                    AppInfo appInfo = addedOrUpdatedApps.get(cn);
                                    if (si.isPromise()) {
                                        if (si.hasStatusFlag(2)) {
                                            PackageManager pm = context.getPackageManager();
                                            ResolveInfo matched = pm.resolveActivity(new Intent("android.intent.action.MAIN").setComponent(cn).addCategory("android.intent.category.LAUNCHER"), 65536);
                                            if (matched == null) {
                                                Intent intent = pm.getLaunchIntentForPackage(cn.getPackageName());
                                                if (intent != null) {
                                                    appInfo = addedOrUpdatedApps.get(intent.getComponent());
                                                }
                                                if (intent == null || appInfo == null) {
                                                    removedShortcuts.add(si);
                                                } else {
                                                    si.promisedIntent = intent;
                                                }
                                            }
                                        }
                                        if (appInfo != null) {
                                            si.flags = appInfo.flags;
                                        }
                                        si.intent = si.promisedIntent;
                                        si.promisedIntent = null;
                                        si.status = 0;
                                        infoUpdated = true;
                                        si.forceUpdateIcon(LauncherModel.this.mAssetCache);
                                    }
                                    if (appInfo != null && "android.intent.action.MAIN".equals(si.intent.getAction()) && si.itemType == 0) {
                                        si.forceUpdateIcon(LauncherModel.this.mAssetCache);
                                        si.title = Utilities.trim(appInfo.title);
                                        si.contentDescription = appInfo.contentDescription;
                                        infoUpdated = true;
                                    }
                                    if ((si.isDisabled & 2) != 0) {
                                        si.isDisabled &= -3;
                                        shortcutUpdated = true;
                                    }
                                }
                                if (infoUpdated || shortcutUpdated || iconUpdated) {
                                    updatedShortcuts.add(si);
                                }
                                if (infoUpdated) {
                                    LauncherModel.updateItemInDatabase(context, si);
                                }
                            } else if (info instanceof LauncherAppWidgetInfo) {
                                LauncherAppWidgetInfo widgetInfo = (LauncherAppWidgetInfo) info;
                                if (this.mUser.equals(widgetInfo.user) && widgetInfo.hasRestoreFlag(2) && packageSet.contains(widgetInfo.providerName.getPackageName())) {
                                    widgetInfo.restoreStatus &= -11;
                                    widgetInfo.restoreStatus |= 4;
                                    widgets.add(widgetInfo);
                                    LauncherModel.updateItemInDatabase(context, widgetInfo);
                                }
                            }
                        }
                    }
                    if (!updatedShortcuts.isEmpty() || !removedShortcuts.isEmpty()) {
                        LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.PackageUpdatedTask.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Callbacks cb = LauncherModel.this.getCallback();
                                Iterator it4 = removedShortcuts.iterator();
                                while (it4.hasNext()) {
                                    ShortcutInfo info2 = (ShortcutInfo) it4.next();
                                    if (info2.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(info2.getTargetComponent().getPackageName())) {
                                        Logger.d(LauncherModel.TAG, "STK remove WorkspaceItem PackagedUpdatedTask, shortcut id = " + info2.id);
                                    }
                                }
                                Iterator it5 = updatedShortcuts.iterator();
                                while (it5.hasNext()) {
                                    ShortcutInfo info3 = (ShortcutInfo) it5.next();
                                    if (info3.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(info3.getTargetComponent().getPackageName())) {
                                        Logger.d(LauncherModel.TAG, "STK updateShortcuts WorkspaceItem PackagedUpdatedTask, shortcut id = " + info3.id);
                                    }
                                }
                                if (callbacks == cb && cb != null) {
                                    callbacks.bindShortcutsChanged(updatedShortcuts, removedShortcuts, PackageUpdatedTask.this.mUser);
                                }
                            }
                        });
                        if (!removedShortcuts.isEmpty()) {
                            Iterator<ShortcutInfo> it4 = removedShortcuts.iterator();
                            while (it4.hasNext()) {
                                ShortcutInfo info2 = it4.next();
                                if (info2.getTargetComponent() != null && LauncherModel.STK_PACKAGE_NAME.equals(info2.getTargetComponent().getPackageName())) {
                                    Logger.d(LauncherModel.TAG, "STK deleteItem From Database on PackagedUpdatedTask, shortcut id = " + info2.id);
                                }
                            }
                            LauncherModel.deleteItemsFromDatabase(context, removedShortcuts);
                        }
                    }
                    if (!widgets.isEmpty()) {
                        LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.PackageUpdatedTask.3
                            @Override // java.lang.Runnable
                            public void run() {
                                Callbacks cb = LauncherModel.this.getCallback();
                                if (callbacks == cb && cb != null) {
                                    callbacks.bindWidgetsRestored(widgets);
                                }
                            }
                        });
                    }
                }
                final ArrayList<String> removedPackageNames = new ArrayList<>();
                if (this.mOp == 3 || this.mOp == 4 || this.mOp == 5) {
                    removedPackageNames.addAll(Arrays.asList(packages));
                } else if (this.mOp == 2) {
                    for (int i7 = 0; i7 < N; i7++) {
                        if (LauncherModel.isPackageDisabled(context, packages[i7], this.mUser)) {
                            removedPackageNames.add(packages[i7]);
                        }
                    }
                }
                if (!removedPackageNames.isEmpty() || !removedApps.isEmpty()) {
                    if (this.mOp == 4) {
                        removeReason = 2;
                    } else if (this.mOp == 5) {
                        removeReason = 4;
                    } else {
                        Iterator<String> it5 = removedPackageNames.iterator();
                        while (it5.hasNext()) {
                            String pn = it5.next();
                            LauncherModel.deletePackageFromDatabase(context, pn, this.mUser);
                        }
                        Iterator<AppInfo> it6 = removedApps.iterator();
                        while (it6.hasNext()) {
                            AppInfo a = it6.next();
                            ArrayList<ItemInfo> infos = LauncherModel.this.getItemInfoForComponentName(a.componentName, this.mUser);
                            if (a.componentName != null && a.componentName.getPackageName().equals(LauncherModel.STK_PACKAGE_NAME)) {
                                ArrayList<Long> ids = new ArrayList<>();
                                Iterator<ItemInfo> it7 = infos.iterator();
                                while (it7.hasNext()) {
                                    ids.add(Long.valueOf(it7.next().id));
                                }
                                Logger.d(LauncherModel.TAG, "STK deleteItem From Database on PackagedUpdatedTask, id = " + ids.toString());
                            }
                            LauncherModel.deleteItemsFromDatabase(context, infos);
                        }
                        removeReason = 0;
                    }
                    InstallShortcutReceiver.removeFromInstallQueue(context, removedPackageNames, this.mUser);
                    LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.PackageUpdatedTask.4
                        @Override // java.lang.Runnable
                        public void run() {
                            Callbacks cb = LauncherModel.this.getCallback();
                            if (callbacks == cb && cb != null) {
                                if (removedApps != null) {
                                    Iterator it8 = removedApps.iterator();
                                    while (it8.hasNext()) {
                                        AppInfo a2 = (AppInfo) it8.next();
                                        if (a2.componentName != null && a2.componentName.getPackageName().equals(LauncherModel.STK_PACKAGE_NAME)) {
                                            Logger.d(LauncherModel.TAG, "post bindComponentsRemoved for delete STK");
                                        }
                                    }
                                }
                                callbacks.bindComponentsRemoved(removedPackageNames, removedApps, null, PackageUpdatedTask.this.mUser, removeReason);
                            }
                        }
                    });
                }
                if (this.mOp == 1 || this.mOp == 3 || this.mOp == 2) {
                    boolean needToRefresh = !this.mUser.equals(UserHandleCompat.myUserHandle());
                    synchronized (LauncherModel.sBgLock) {
                        if (LauncherModel.sBgWidgetProviders != null) {
                            HashSet<String> pkgSet = new HashSet<>();
                            Collections.addAll(pkgSet, this.mPackages);
                            for (ComponentKey key : LauncherModel.sBgWidgetProviders.keySet()) {
                                needToRefresh |= key.user.equals(this.mUser) && pkgSet.contains(key.componentName.getPackageName());
                            }
                        }
                    }
                    if (!needToRefresh && this.mOp != 3) {
                        PackageManager pm2 = context.getPackageManager();
                        String[] strArr = this.mPackages;
                        int length = strArr.length;
                        int i8 = 0;
                        while (true) {
                            int i9 = i8;
                            if (i9 < length) {
                                String pkg = strArr[i9];
                                List<ResolveInfo> receivers = pm2.queryBroadcastReceivers(new Intent("android.appwidget.action.APPWIDGET_UPDATE").setPackage(pkg), 0);
                                if (receivers != null) {
                                    needToRefresh |= !receivers.isEmpty();
                                }
                                i8 = i9 + 1;
                            }
                        }
                    }
                    LauncherModel.this.loadAndBindWidgetsAndShortcuts(callbacks, needToRefresh);
                }
                LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.PackageUpdatedTask.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks cb = LauncherModel.this.getCallback();
                        if (callbacks == cb && cb != null) {
                            callbacks.dumpLogsToLocalData();
                        }
                    }
                });
            }
        }
    }

    public static List<WidgetItem> getWidgetProviders(Context context, boolean refresh) {
        ArrayList<WidgetItem> results = new ArrayList<>();
        PackageManager pm = context.getPackageManager();
        InvariantDeviceProfile idp = LauncherAppState.getInstance().getInvariantDeviceProfile();
        try {
            synchronized (sBgLock) {
                if (sBgWidgetProviders == null || refresh) {
                    HashMap<ComponentKey, LauncherAppWidgetProviderInfo> tmpWidgetProviders = new HashMap<>();
                    AppWidgetManagerCompat wm = AppWidgetManagerCompat.getInstance(context);
                    List<AppWidgetProviderInfo> widgets = wm.getAllProviders();
                    for (AppWidgetProviderInfo pInfo : widgets) {
                        LauncherAppWidgetProviderInfo info = LauncherAppWidgetProviderInfo.fromProviderInfo(context, pInfo);
                        UserHandleCompat user = wm.getUser(info);
                        tmpWidgetProviders.put(new ComponentKey(info.provider, user), info);
                        results.add(new WidgetItem(info, pm, idp));
                    }
                    Collection<LauncherAppWidgetProviderInfo> customWidgetProviderInfos = getCustomAppWidgetProviderInfos().values();
                    for (LauncherAppWidgetProviderInfo widgetinfo : customWidgetProviderInfos) {
                        if (widgetinfo != null) {
                            Logger.d(TAG, "custom widget provider:%s", widgetinfo.provider);
                            UserHandleCompat user2 = wm.getUser(widgetinfo);
                            tmpWidgetProviders.put(new ComponentKey(widgetinfo.provider, user2), widgetinfo);
                            results.add(new WidgetItem(widgetinfo, pm, idp));
                        } else {
                            Logger.w(TAG, "custom widget info is null.");
                        }
                    }
                    sBgWidgetProviders = tmpWidgetProviders;
                } else {
                    ArrayList<LauncherAppWidgetProviderInfo> widgetProviders = new ArrayList<>(sBgWidgetProviders.values());
                    Iterator<LauncherAppWidgetProviderInfo> it = widgetProviders.iterator();
                    while (it.hasNext()) {
                        LauncherAppWidgetProviderInfo widgetInfo = it.next();
                        results.add(new WidgetItem(widgetInfo, pm, idp));
                    }
                }
            }
        } catch (Exception e) {
            if (e.getCause() instanceof TransactionTooLargeException) {
                synchronized (sBgLock) {
                }
            } else {
                throw e;
            }
        }
        return results;
    }

    public static LauncherAppWidgetProviderInfo getProviderInfo(Context ctx, ComponentName name, UserHandleCompat user) {
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo;
        synchronized (sBgLock) {
            if (sBgWidgetProviders == null) {
                getWidgetProviders(ctx, false);
            } else if (StyleManager.isSimplifiedLayout()) {
                Collection<LauncherAppWidgetProviderInfo> customWidgetProviderInfos = getCustomAppWidgetProviderInfos().values();
                for (LauncherAppWidgetProviderInfo widgetinfo : customWidgetProviderInfos) {
                    if (!sBgWidgetProviders.containsKey(new ComponentKey(widgetinfo.provider, user))) {
                        Logger.d(TAG, "[getProviderInfo] SimplifiedLayout add custom provider:%s", widgetinfo.provider);
                        sBgWidgetProviders.put(new ComponentKey(widgetinfo.provider, user), widgetinfo);
                    }
                }
            }
            launcherAppWidgetProviderInfo = sBgWidgetProviders.get(new ComponentKey(name, user));
        }
        return launcherAppWidgetProviderInfo;
    }

    public void loadAndBindWidgetsAndShortcuts(final Callbacks callbacks, final boolean refresh) {
        runOnWorkerThread(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.22
            @Override // java.lang.Runnable
            public void run() {
                LauncherModel.this.updateWidgetsModel(refresh);
                LauncherModel.this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherModel.22.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Callbacks cb = LauncherModel.this.getCallback();
                        if (callbacks == cb && cb != null) {
                            callbacks.bindAllPackages(LauncherModel.this.mFgWidgetsModel);
                        }
                    }
                });
                LauncherAppState.getInstance().getWidgetCache().removeObsoletePreviews(LauncherModel.this.mFgWidgetsModel.getRawList());
            }
        });
    }

    void updateWidgetsModel(boolean refresh) {
        Utilities.assertWorkerThread();
        this.mApp.getContext().getPackageManager();
        ArrayList<WidgetItem> widgetsAndShortcuts = new ArrayList<>();
        widgetsAndShortcuts.addAll(getWidgetProviders(this.mApp.getContext(), refresh));
        new Intent("android.intent.action.CREATE_SHORTCUT");
        Context context = LauncherAppState.getInstance().getContext();
        List<ShortcutConfigActivityInfo> list = LauncherAppsCompat.getInstance(context).getCustomShortcutActivityList(null);
        for (ShortcutConfigActivityInfo info : list) {
            widgetsAndShortcuts.add(new WidgetItem(info));
        }
        this.mBgWidgetsModel.setWidgetsAndShortcuts(widgetsAndShortcuts, refresh);
        this.mFgWidgetsModel = this.mBgWidgetsModel.clone();
    }

    static boolean isPackageDisabled(Context context, String packageName, UserHandleCompat user) {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        return !launcherApps.isPackageEnabledForProfile(packageName, user);
    }

    public static boolean isValidPackageActivity(Context context, ComponentName cn, UserHandleCompat user) {
        if (cn == null) {
            return false;
        }
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        if (launcherApps.isPackageEnabledForProfile(cn.getPackageName(), user)) {
            return launcherApps.isActivityEnabledForProfile(cn, user);
        }
        return false;
    }

    public static boolean isValidPackage(Context context, String packageName, UserHandleCompat user) {
        if (packageName == null) {
            return false;
        }
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        return launcherApps.isPackageEnabledForProfile(packageName, user);
    }

    public ShortcutInfo getRestoredItemInfo(Cursor c, int titleIndex, Intent intent, int promiseType, int itemType, CursorIconInfo iconInfo, Context context) {
        ShortcutInfo info;
        if (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(intent)) {
            info = DynamicIconManager.getInstance().createShortcutInfo(intent);
        } else {
            info = new ShortcutInfo();
        }
        info.user = UserHandleCompat.myUserHandle();
        Bitmap icon = iconInfo.loadIcon(c, info, context);
        if (icon == null) {
            this.mAssetCache.getTitleAndIcon(info, intent, info.user, false);
        } else {
            info.setIcon(icon);
        }
        if ((promiseType & 1) != 0) {
            String title = c != null ? c.getString(titleIndex) : null;
            if (!TextUtils.isEmpty(title)) {
                info.title = Utilities.trim(title);
            }
        } else if ((promiseType & 2) != 0) {
            if (TextUtils.isEmpty(info.title)) {
                info.title = c != null ? Utilities.trim(c.getString(titleIndex)) : "";
            }
        } else {
            throw new InvalidParameterException("Invalid restoreType " + promiseType);
        }
        info.contentDescription = this.mUserManager.getBadgedLabelForUser(info.title, info.user);
        info.itemType = itemType;
        info.promisedIntent = intent;
        info.status = promiseType;
        return info;
    }

    Intent getRestoredItemIntent(Cursor c, Context context, Intent intent) {
        ComponentName componentName = intent.getComponent();
        return getMarketIntent(componentName.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent getMarketIntent(String packageName) {
        return new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", packageName).build());
    }

    public ShortcutInfo getAppShortcutInfo(PackageManager manager, Intent intent, UserHandleCompat user, Context context, Cursor c, int iconIndex, int titleIndex, boolean allowMissingTarget, boolean useLowResIcon) {
        ShortcutInfo info;
        if (user == null) {
            Log.d(TAG, "Null user found in getShortcutInfo");
            return null;
        }
        ComponentName componentName = intent.getComponent();
        if (componentName == null) {
            Log.d(TAG, "Missing component found in getShortcutInfo: " + componentName);
            return null;
        }
        Intent newIntent = new Intent(intent.getAction(), (Uri) null);
        newIntent.addCategory("android.intent.category.LAUNCHER");
        newIntent.setComponent(componentName);
        LauncherActivityInfoCompat lai = this.mLauncherApps.resolveActivity(newIntent, user);
        if (lai == null && !allowMissingTarget) {
            Log.d(TAG, "Missing activity found in getShortcutInfo: " + componentName);
            return null;
        }
        if (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(componentName)) {
            info = DynamicIconManager.getInstance().createShortcutInfo(componentName);
        } else {
            info = new ShortcutInfo();
        }
        if (info.title == null && c != null) {
            info.title = Utilities.trim(c.getString(titleIndex));
        }
        if (info.title == null) {
            info.title = componentName.getClassName();
        }
        info.itemType = 0;
        info.user = user;
        info.contentDescription = this.mUserManager.getBadgedLabelForUser(info.title, info.user);
        if (lai != null) {
            info.flags = AppInfo.initFlags(lai);
            if (info instanceof IDynamicShortcut) {
                ((IDynamicShortcut) info).initFlags();
                return info;
            }
            return info;
        }
        return info;
    }

    public static ArrayList<ItemInfo> filterItemInfos(Iterable<ItemInfo> infos, ItemInfoFilter f) {
        LauncherAppWidgetInfo info;
        ComponentName cn;
        HashSet<ItemInfo> filtered = new HashSet<>();
        for (ItemInfo i : infos) {
            if (i instanceof ShortcutInfo) {
                ShortcutInfo info2 = (ShortcutInfo) i;
                ComponentName cn2 = info2.getTargetComponent();
                if (cn2 != null && f.filterItem(null, info2, cn2)) {
                    filtered.add(info2);
                }
            } else if (i instanceof FolderInfo) {
                FolderInfo info3 = (FolderInfo) i;
                for (ShortcutInfo s : info3.getContents()) {
                    ComponentName cn3 = s.getTargetComponent();
                    if (cn3 != null && f.filterItem(info3, s, cn3)) {
                        filtered.add(s);
                    }
                }
            } else if ((i instanceof LauncherAppWidgetInfo) && (cn = (info = (LauncherAppWidgetInfo) i).providerName) != null && f.filterItem(null, info, cn)) {
                filtered.add(info);
            }
        }
        return new ArrayList<>(filtered);
    }

    ArrayList<ItemInfo> getItemInfoForComponentName(final ComponentName cname, final UserHandleCompat user) {
        ItemInfoFilter filter = new ItemInfoFilter() { // from class: net.oneplus.h2launcher.LauncherModel.23
            @Override // net.oneplus.h2launcher.LauncherModel.ItemInfoFilter
            public boolean filterItem(ItemInfo parent, ItemInfo info, ComponentName cn) {
                if (info.user == null) {
                    return cn.equals(cname);
                }
                return cn.equals(cname) && info.user.equals(user);
            }
        };
        return filterItemInfos(sBgItemsIdMap, filter);
    }

    ShortcutInfo getShortcutInfo(Cursor c, Context context, int titleIndex, CursorIconInfo iconInfo) {
        ShortcutInfo info = new ShortcutInfo();
        info.user = UserHandleCompat.myUserHandle();
        info.itemType = 1;
        info.title = Utilities.trim(c.getString(titleIndex));
        Bitmap icon = iconInfo.loadIcon(c, info, context);
        if (icon == null) {
            icon = this.mAssetCache.getDefaultIcon(info.user);
            info.usingFallbackIcon = true;
        }
        info.setIcon(icon);
        return info;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShortcutInfo infoFromShortcutIntent(Context context, Intent data) {
        ShortcutInfo info;
        Intent intent = (Intent) data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String name = data.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable bitmap = data.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent == null) {
            Log.e(TAG, "Can't construct ShorcutInfo with null intent");
            return null;
        }
        Bitmap icon = null;
        boolean customIcon = false;
        Intent.ShortcutIconResource iconResource = null;
        if (bitmap instanceof Bitmap) {
            icon = Utilities.createIconBitmap((Bitmap) bitmap, context);
            customIcon = true;
        } else {
            Parcelable extra = data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (extra instanceof Intent.ShortcutIconResource) {
                iconResource = (Intent.ShortcutIconResource) extra;
                icon = Utilities.createIconBitmap(iconResource.packageName, iconResource.resourceName, context);
            }
        }
        if (StyleManager.getInstance().showDynamicIcon() && DynamicIconManager.getInstance().isDynamicIcon(intent)) {
            info = DynamicIconManager.getInstance().createShortcutInfo(intent);
        } else {
            info = new ShortcutInfo();
        }
        info.user = UserHandleCompat.myUserHandle();
        if (icon == null) {
            icon = this.mAssetCache.getDefaultIcon(info.user);
            info.usingFallbackIcon = true;
        } else {
            Bitmap resizedIcon = IconCache.checkAndResizeIcon(icon);
            if (resizedIcon != null) {
                icon = resizedIcon;
            }
        }
        info.setIcon(icon);
        info.title = Utilities.trim(name);
        info.contentDescription = this.mUserManager.getBadgedLabelForUser(info.title, info.user);
        info.intent = intent;
        info.customIcon = customIcon;
        info.iconResource = iconResource;
        return info;
    }

    static FolderInfo findOrMakeFolder(LongArrayMap<FolderInfo> folders, long id) {
        FolderInfo folderInfo = folders.get(id);
        if (folderInfo == null) {
            FolderInfo folderInfo2 = new FolderInfo();
            folders.put(id, folderInfo2);
            return folderInfo2;
        }
        return folderInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidProvider(AppWidgetProviderInfo provider) {
        return (provider == null || provider.provider == null || provider.provider.getPackageName() == null) ? false : true;
    }

    public void dumpState() {
        Log.d(TAG, "mCallbacks=" + this.mCallbacks);
        AppInfo.dumpApplicationInfoList(TAG, "mAllAppsList.data", this.mBgAllAppsList.data);
        AppInfo.dumpApplicationInfoList(TAG, "mAllAppsList.added", this.mBgAllAppsList.added);
        AppInfo.dumpApplicationInfoList(TAG, "mAllAppsList.removed", this.mBgAllAppsList.removed);
        AppInfo.dumpApplicationInfoList(TAG, "mAllAppsList.modified", this.mBgAllAppsList.modified);
        if (this.mLoaderTask != null) {
            this.mLoaderTask.dumpState();
        } else {
            Log.d(TAG, "mLoaderTask=null");
        }
    }

    public Callbacks getCallback() {
        if (this.mCallbacks != null) {
            return this.mCallbacks.get();
        }
        return null;
    }

    public FolderInfo findFolderById(Long folderId) {
        FolderInfo folderInfo;
        synchronized (sBgLock) {
            folderInfo = sBgFolders.get(folderId.longValue());
        }
        return folderInfo;
    }

    public static Looper getWorkerLooper() {
        return sWorkerThread.getLooper();
    }

    public ArrayList<AppInfo> getAllAppsList() {
        return (ArrayList) this.mBgAllAppsList.data.clone();
    }

    public static HashSet<IDynamicShortcut> getDynamicItems() {
        return sBgDynamicItems;
    }

    public static LauncherAppWidgetProviderInfo getCustomAppWidgetProviderInfo(String name) {
        return sCustomAppWidgetProviderInfos.get(name);
    }

    public static HashMap<String, LauncherAppWidgetProviderInfo> getCustomAppWidgetProviderInfos() {
        return sCustomAppWidgetProviderInfos;
    }

    public void addClockWidgetProviderInfo(LauncherAppWidgetProviderInfo info) {
        Logger.d(TAG, "addClockWidgetProviderInfo:");
        sCustomAppWidgetProviderInfos.put(ClockWidget.TAG, info);
    }

    public static void updateClockWidgetProviderInfo(int widgetLayout) {
        Logger.d(TAG, "updateClockWidgetProviderInfo:" + widgetLayout);
        LauncherAppWidgetProviderInfo clockProviderInfo = sCustomAppWidgetProviderInfos.get(ClockWidget.TAG);
        if (clockProviderInfo != null) {
            clockProviderInfo.initialLayout = widgetLayout;
        }
    }

    public void onWorkspaceBindItem() {
        Logger.d(TAG, "onWorkspaceBindItem# isLoading: %b, currentPageBindingFinished: %b", Boolean.valueOf(this.mIsLoaderTaskRunning), Boolean.valueOf(this.mCurrentPageBindingFinished));
        if (!this.mCurrentPageBindingFinished && this.mIsLoaderTaskRunning) {
            this.mCurrentPageBindingFinished = true;
            this.mLoaderTask.fireWorkspaceCurrentPageStepFinished();
        }
    }
}
