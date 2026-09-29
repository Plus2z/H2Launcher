package net.oneplus.h2launcher;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class Stats implements LauncherAppsCompat.OnAppsChangedCallbackCompat {
    private static final int APP_UPDATE_DELAY = 500;
    public static final String CONTAINER_ALL_APPS = "all_apps";
    public static final String CONTAINER_HOMESCREEN = "homescreen";
    public static final String CONTAINER_HOTSEAT = "hotseat";
    public static final String CONTAINER_SEARCH_BOX = "search_box";
    public static final int DATABASE_COLUMN_COMPONENT_NAME = 1;
    public static final int DATABASE_COLUMN_DISPLAY_NAME = 1;
    public static final int DATABASE_COLUMN_HISTORY_TIME = 4;
    public static final int DATABASE_COLUMN_ID = 0;
    public static final int DATABASE_COLUMN_LAUNCH_COUNT = 3;
    public static final int DATABASE_COLUMN_PACKAGE_NAME = 2;
    public static final int DATABASE_COLUMN_PHOTO_URI = 2;
    private static final int INITIAL_STATS_SIZE = 100;
    private static final boolean LOCAL_LAUNCH_LOG = false;
    private static final int LOG_TAG_LAUNCH = 4096;
    private static final int LOG_TAG_VERSION = 1;
    private static final int LOG_VERSION = 1;
    private static final String PACKAGE_NAME_CONTACTS = "com.android.contacts";
    private static final String PACKAGE_NAME_DIALER = "com.android.dialer";
    private static final String PACKAGE_NAME_MMS = "com.android.mms";
    public static final String SOURCE_EXTRA_CONTAINER = "container";
    public static final String SOURCE_EXTRA_CONTAINER_PAGE = "container_page";
    public static final String SOURCE_EXTRA_SUB_CONTAINER = "sub_container";
    public static final String SOURCE_EXTRA_SUB_CONTAINER_PAGE = "sub_container_page";
    private static final int STATS_VERSION = 2;
    public static final String SUB_CONTAINER_ALL_APPS_A_Z = "a-z";
    public static final String SUB_CONTAINER_ALL_APPS_PREDICTION = "prediction";
    public static final String SUB_CONTAINER_ALL_APPS_SEARCH = "search";
    public static final String SUB_CONTAINER_FOLDER = "folder";
    private static final String TAG = "Stats";
    private ArrayList<ComponentName> mAppPkgs;
    private HashMap<ComponentName, Long> mAppsHistoryTime;
    private StatsChangedCallback mCallback;
    private ContactHistoryComparator mContactComparator;
    private ArrayList<String> mContactIds;
    private ArrayList<String> mContactNames;
    private HashMap<String, Long> mContactsHistoryTime;
    private final Context mContext;
    private GlobalSearchDbHelper mGlobalSearchDbHelper;
    private final String mLaunchBroadcastPermission;
    private PkgHistoryComparator mPkgComparator;
    private HashMap<ComponentName, Integer> mAppsHistoryLaunchCount = null;
    private HashMap<String, Integer> mContactsHistoryLaunchCount = null;
    private ArrayList<Stat> mCurrentState = new ArrayList<>();
    HashSet<String> mDeepShortcutDarkList = new HashSet<>();
    private Handler mPackageChangedHandler = new Handler(Looper.getMainLooper());
    private Handler mLaunchHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    public interface LaunchSourceProvider {
        void fillInLaunchSourceData(Bundle bundle);
    }

    /* loaded from: classes.dex */
    public interface StatsChangedCallback {
        void onStatsAdded(ComponentName componentName, String str, int i, long j, UserHandleCompat userHandleCompat);

        void onStatsRemoved(long j, UserHandleCompat userHandleCompat);

        void onStatsRemoved(String str, UserHandleCompat userHandleCompat);
    }

    /* loaded from: classes.dex */
    public static class LaunchSourceUtils {
        public static Bundle createSourceData() {
            Bundle sourceData = new Bundle();
            sourceData.putString("container", Stats.CONTAINER_HOMESCREEN);
            sourceData.putInt(Stats.SOURCE_EXTRA_CONTAINER_PAGE, 0);
            sourceData.putInt(Stats.SOURCE_EXTRA_SUB_CONTAINER_PAGE, 0);
            return sourceData;
        }

        public static void populateSourceDataFromAncestorProvider(View v, Bundle sourceData) {
            if (v != null) {
                LaunchSourceProvider provider = null;
                ViewParent parent = v.getParent();
                while (true) {
                    if (parent == null || !(parent instanceof View)) {
                        break;
                    }
                    if (parent instanceof LaunchSourceProvider) {
                        provider = (LaunchSourceProvider) parent;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (provider != null) {
                    provider.fillInLaunchSourceData(sourceData);
                } else if (LauncherAppState.isDogfoodBuild()) {
                    throw new RuntimeException("Expected LaunchSourceProvider");
                }
            }
        }
    }

    public Stats(Context context) {
        this.mGlobalSearchDbHelper = null;
        this.mContext = context;
        this.mLaunchBroadcastPermission = context.getResources().getString(R.string.receive_launch_broadcasts_permission);
        this.mGlobalSearchDbHelper = new GlobalSearchDbHelper(this.mContext);
        this.mDeepShortcutDarkList.add("com.android.dialer");
        this.mDeepShortcutDarkList.add("com.android.contacts");
        this.mDeepShortcutDarkList.add(PACKAGE_NAME_MMS);
        new LoadStats().executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageRemoved(final String packageName, final UserHandleCompat user) {
        if (packageName != null && this.mCurrentState != null) {
            this.mPackageChangedHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Stats.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Stats.this.mCurrentState != null) {
                        Iterator<Stat> it = Stats.this.mCurrentState.iterator();
                        while (it.hasNext()) {
                            Stat stat = it.next();
                            if (packageName.equals(stat.componentName.getPackageName()) && user.equals(stat.user)) {
                                it.remove();
                            }
                        }
                    }
                    if (Stats.this.mCallback != null) {
                        Stats.this.mCallback.onStatsRemoved(packageName, user);
                    }
                    TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.Stats.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SQLiteDatabase db = Stats.this.mGlobalSearchDbHelper.getWritableDatabase();
                            db.delete(GlobalSearchDbHelper.APP_TABLE_NAME, "package_name=?", new String[]{packageName});
                            Stats.this.loadAppsHistory(false);
                        }
                    });
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onShortcutRemoved(final long id, final UserHandleCompat user) {
        if (this.mCurrentState != null) {
            this.mPackageChangedHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Stats.2
                @Override // java.lang.Runnable
                public void run() {
                    if (Stats.this.mCurrentState != null) {
                        Iterator<Stat> it = Stats.this.mCurrentState.iterator();
                        while (it.hasNext()) {
                            Stat stat = it.next();
                            if (id == stat.id) {
                                it.remove();
                            }
                        }
                    }
                    if (Stats.this.mCallback != null) {
                        Stats.this.mCallback.onStatsRemoved(id, user);
                    }
                }
            }, 500L);
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageAdded(String packageName, UserHandleCompat user) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageChanged(final String packageName, final UserHandleCompat user) {
        if (packageName != null && this.mCurrentState != null) {
            this.mPackageChangedHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Stats.3
                @Override // java.lang.Runnable
                public void run() {
                    if (!Utilities.isPackageValid(Stats.this.mContext, packageName)) {
                        if (Stats.this.mCurrentState != null) {
                            Iterator<Stat> it = Stats.this.mCurrentState.iterator();
                            while (it.hasNext()) {
                                Stat stat = it.next();
                                if (packageName.equals(stat.componentName.getPackageName()) && user.equals(stat.user)) {
                                    it.remove();
                                    if (Stats.this.mCallback != null) {
                                        Stats.this.mCallback.onStatsRemoved(packageName, user);
                                    }
                                }
                            }
                            return;
                        }
                        return;
                    }
                    if (Stats.this.mCurrentState != null) {
                        Iterator<Stat> it2 = Stats.this.mCurrentState.iterator();
                        while (it2.hasNext()) {
                            Stat stat2 = it2.next();
                            if (packageName.equals(stat2.componentName.getPackageName()) && user.equals(stat2.user)) {
                                Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
                                intent.setComponent(stat2.componentName);
                                intent.addCategory("android.intent.category.LAUNCHER");
                                List appList = Stats.this.mContext.getPackageManager().queryIntentActivities(intent, 0);
                                if (appList.size() == 0) {
                                    it2.remove();
                                    if (Stats.this.mCallback != null) {
                                        Stats.this.mCallback.onStatsRemoved(packageName, user);
                                    }
                                }
                            }
                        }
                    }
                }
            }, 500L);
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesAvailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnavailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesSuspended(String[] packageNames, UserHandleCompat user) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnsuspended(String[] packageNames, UserHandleCompat user) {
    }

    public void setCallback(StatsChangedCallback callback) {
        this.mCallback = callback;
    }

    private void incrementLaunchForIntent(View v, String intentStr, ShortcutInfo shortcut, long id, int itemType, UserHandleCompat user) {
        new SaveStats(v, intentStr, shortcut, id, itemType, user).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }

    private boolean isIncrementLaunchAllowed(ItemInfo item) {
        try {
            if (Utilities.ATLEAST_MARSHMALLOW && (item instanceof ShortcutInfo) && item.itemType == 6 && !((ShortcutInfo) item).isPromise()) {
                ShortcutInfo info = (ShortcutInfo) item;
                if (this.mDeepShortcutDarkList.contains(info.getDeepShortcutComponent().getPackageName())) {
                    boolean isAllow = ((ShortcutInfo) item).isDeepShortcutDeclaredInManifest();
                    if (!isAllow) {
                        Logger.d(TAG, "disallow to increment launch: " + info.getDeepShortcutComponent().getPackageName() + ", shortcut_id: " + info.getDeepShortcutId());
                        return isAllow;
                    }
                    return isAllow;
                }
            }
        } catch (ActivityNotFoundException e) {
            e = e;
            Log.w(TAG, "Unable to increment launch. tag=" + item, e);
        } catch (SecurityException e2) {
            e = e2;
            Log.w(TAG, "Unable to increment launch. tag=" + item, e);
        } catch (RuntimeException e3) {
            Log.w(TAG, "Unable to increment launch. tag=" + item, e3);
        }
        return true;
    }

    public void recordLaunch(View v, Intent intent, ShortcutInfo shortcut, ItemInfo item, UserHandleCompat user) {
        if (isIncrementLaunchAllowed(item)) {
            Intent intent2 = new Intent(intent);
            intent2.setSourceBounds(null);
            String flat = intent2.toUri(0);
            incrementLaunchForIntent(v, flat, shortcut, item.id, item.itemType, user);
        }
    }

    public void recordLaunch(View v, Intent intent, ShortcutInfo shortcut, long id, int itemType, UserHandleCompat user) {
        Intent intent2 = new Intent(intent);
        intent2.setSourceBounds(null);
        String flat = intent2.toUri(0);
        incrementLaunchForIntent(v, flat, shortcut, id, itemType, user);
    }

    public ArrayList<Stat> getMostLaunchedPackages(int pkgCount) {
        ArrayList<Stat> mostLaunchedPackages = new ArrayList<>();
        for (int i = 0; i < pkgCount && i < this.mCurrentState.size(); i++) {
            Stat stat = this.mCurrentState.get(i);
            mostLaunchedPackages.add(stat);
        }
        return mostLaunchedPackages;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SaveStats extends AsyncTask<Void, Void, Void> {
        ArrayList<Stat> currentStateCopy;
        long id;
        String intentStr;
        int itemType;
        UserHandleCompat user;
        View view;

        SaveStats(View v, String s, ShortcutInfo si, long id, int itemType, UserHandleCompat user) {
            this.view = v;
            this.intentStr = s;
            this.id = id;
            this.itemType = itemType;
            this.user = user;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onPreExecute() {
            /*
                Method dump skipped, instructions count: 221
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Stats.SaveStats.onPreExecute():void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... params) {
            Logger.d(Stats.TAG, "SaveStats doInBackground...");
            return Stats.this.saveStatToFile(this.currentStateCopy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0093  */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Void saveStatToFile(java.util.ArrayList<net.oneplus.h2launcher.Stats.Stat> r19) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Stats.saveStatToFile(java.util.ArrayList):java.lang.Void");
    }

    /* loaded from: classes.dex */
    private class LoadStats extends AsyncTask<Void, Void, Void> {
        private LoadStats() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0192  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x023b  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Void... r36) {
            /*
                Method dump skipped, instructions count: 791
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Stats.LoadStats.doInBackground(java.lang.Void[]):java.lang.Void");
        }
    }

    private String getPackageFromIntentString(String intentStr) {
        try {
            Intent intent = Intent.parseUri(intentStr, 0);
            if (intent.getComponent() != null) {
                return intent.getComponent().getPackageName();
            }
            return intentStr;
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return intentStr;
        }
    }

    public ComponentName getComponentFromIntentString(String intentStr) {
        try {
            Intent intent = Intent.parseUri(intentStr, 0);
            if (intent.getComponent() != null) {
                return intent.getComponent();
            }
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        return new ComponentName("", "");
    }

    /* loaded from: classes.dex */
    public class Stat {
        public ComponentName componentName;
        public long id;
        public String intentStr;
        public int itemType;
        int launchCount;
        public UserHandleCompat user;

        Stat(String intentStr, int launchCount, int itemType, long id, UserHandleCompat user) {
            this.launchCount = 0;
            this.intentStr = intentStr;
            this.componentName = Stats.this.getComponentFromIntentString(intentStr);
            this.launchCount = launchCount;
            this.itemType = itemType;
            this.id = id;
            this.user = user;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            Stat stat = (Stat) o;
            if (this.componentName != null) {
                if (this.componentName.equals(stat.componentName)) {
                    return true;
                }
            } else if (stat.componentName == null) {
                return true;
            }
            return false;
        }
    }

    private void incrementAppHistory(ComponentName componentName, long time) {
        int pos = this.mAppPkgs.indexOf(componentName);
        if (pos < 0) {
            this.mAppPkgs.add(componentName);
        }
        if (this.mAppsHistoryLaunchCount.containsKey(componentName)) {
            this.mAppsHistoryLaunchCount.put(componentName, Integer.valueOf(this.mAppsHistoryLaunchCount.get(componentName).intValue() + 1));
        } else {
            this.mAppsHistoryLaunchCount.put(componentName, 1);
        }
        this.mAppsHistoryTime.put(componentName, Long.valueOf(time));
    }

    private void incrementContactHistory(String id, String displayName, Uri iconUri, long time) {
        int pos = this.mContactNames.indexOf(displayName);
        if (pos < 0) {
            this.mContactNames.add(displayName);
        }
        if (this.mContactsHistoryLaunchCount.containsKey(displayName)) {
            this.mContactsHistoryLaunchCount.put(displayName, Integer.valueOf(this.mContactsHistoryLaunchCount.get(displayName).intValue() + 1));
        } else {
            this.mContactsHistoryLaunchCount.put(displayName, 1);
        }
        this.mContactsHistoryTime.put(displayName, Long.valueOf(time));
    }

    public void recordAppHistory(ComponentName componentName, long time) {
        incrementAppHistory(componentName, time);
        saveAppHistory(componentName);
    }

    public void recordContactHistory(String id, String displayName, Uri iconUri, long time) {
        incrementContactHistory(id, displayName, iconUri, time);
        saveContactHistory(id, displayName, iconUri);
    }

    private void saveAppHistory(ComponentName componentName) {
        SQLiteDatabase db = this.mGlobalSearchDbHelper.getWritableDatabase();
        if (componentName != null) {
            ContentValues values = new ContentValues();
            values.put(GlobalSearchDbHelper.LAUNCH_COUNT, this.mAppsHistoryLaunchCount.get(componentName));
            values.put(GlobalSearchDbHelper.HISTORY_TIME, this.mAppsHistoryTime.get(componentName));
            if (this.mAppsHistoryLaunchCount.get(componentName).intValue() == 1) {
                values.put(GlobalSearchDbHelper.COMPONENT_NAME, componentName.flattenToString());
                values.put(GlobalSearchDbHelper.PACKAGE_NAME, componentName.getPackageName());
                db.insert(GlobalSearchDbHelper.APP_TABLE_NAME, null, values);
            } else {
                db.update(GlobalSearchDbHelper.APP_TABLE_NAME, values, "component_name=?", new String[]{componentName.flattenToString()});
            }
            loadAppsHistory(false);
        }
    }

    private void saveContactHistory(String id, String displayName, Uri iconUri) {
        SQLiteDatabase db = this.mGlobalSearchDbHelper.getWritableDatabase();
        if (id == null || displayName == null) {
            Logger.d(TAG, "invalid id:%s or displayname:%s", id, displayName);
            return;
        }
        ContentValues values = new ContentValues();
        values.put(GlobalSearchDbHelper.LAUNCH_COUNT, this.mContactsHistoryLaunchCount.get(displayName));
        values.put(GlobalSearchDbHelper.HISTORY_TIME, this.mContactsHistoryTime.get(displayName));
        if (this.mContactsHistoryLaunchCount.get(displayName).intValue() == 1) {
            values.put(GlobalSearchDbHelper.COLUMN_ID, id);
            values.put(GlobalSearchDbHelper.DISPLAY_NAME, displayName);
            if (iconUri != null) {
                values.put(GlobalSearchDbHelper.PHOTO_THUMBNAIL_URI, iconUri.toString());
            }
            db.insert(GlobalSearchDbHelper.CONTACT_TABLE_NAME, null, values);
        } else {
            db.update(GlobalSearchDbHelper.CONTACT_TABLE_NAME, values, "display_name=?", new String[]{displayName});
        }
        loadContactsHistory();
    }

    public void clearAppHistory() {
        SQLiteDatabase db = this.mGlobalSearchDbHelper.getWritableDatabase();
        if (this.mAppPkgs != null) {
            this.mAppPkgs.clear();
        }
        if (this.mAppsHistoryTime != null) {
            this.mAppsHistoryTime.clear();
        }
        if (this.mAppsHistoryLaunchCount != null) {
            this.mAppsHistoryLaunchCount.clear();
        }
        db.delete(GlobalSearchDbHelper.APP_TABLE_NAME, null, null);
        loadAppsHistory(false);
    }

    public void clearContactHistory() {
        SQLiteDatabase db = this.mGlobalSearchDbHelper.getWritableDatabase();
        if (this.mContactIds != null) {
            this.mContactIds.clear();
        }
        if (this.mContactNames != null) {
            this.mContactNames.clear();
        }
        if (this.mContactsHistoryTime != null) {
            this.mContactsHistoryTime.clear();
        }
        if (this.mContactsHistoryLaunchCount != null) {
            this.mContactsHistoryLaunchCount.clear();
        }
        db.delete(GlobalSearchDbHelper.CONTACT_TABLE_NAME, null, null);
        loadContactsHistory();
    }

    public boolean loadAppsHistory(boolean isLegacyFormatWithCount) {
        if (this.mAppPkgs != null) {
            this.mAppPkgs.clear();
        } else {
            this.mAppPkgs = new ArrayList<>(100);
        }
        if (this.mAppsHistoryTime != null) {
            this.mAppsHistoryTime.clear();
        } else {
            this.mAppsHistoryTime = new HashMap<>(100);
        }
        if (this.mAppsHistoryLaunchCount != null) {
            this.mAppsHistoryLaunchCount.clear();
        } else {
            this.mAppsHistoryLaunchCount = new HashMap<>(100);
        }
        SQLiteDatabase db = this.mGlobalSearchDbHelper.getReadableDatabase();
        Cursor cursor = db.query(GlobalSearchDbHelper.APP_TABLE_NAME, new String[]{GlobalSearchDbHelper.COLUMN_ID, GlobalSearchDbHelper.COMPONENT_NAME, GlobalSearchDbHelper.PACKAGE_NAME, GlobalSearchDbHelper.LAUNCH_COUNT, GlobalSearchDbHelper.HISTORY_TIME}, null, null, null, null, "_id DESC", null);
        ArrayList<AppInfo> appList = LauncherAppState.getInstance().getModel().mBgAllAppsList.data;
        HashMap<String, ComponentName> appMap = new HashMap<>();
        Iterator<AppInfo> it = appList.iterator();
        while (it.hasNext()) {
            AppInfo appInfo = it.next();
            appMap.put(appInfo.getPkgName(), appInfo.componentName);
        }
        while (true) {
            if (cursor == null || !cursor.moveToNext()) {
                break;
            }
            String strComponent = cursor.getString(1);
            String[] componentArray = strComponent.split("/");
            ComponentName componentName = null;
            if (componentArray.length > 1) {
                componentName = new ComponentName(componentArray[0], componentArray[1]);
            } else if (componentArray.length == 1 && appMap.containsKey(componentArray[0])) {
                componentName = appMap.get(componentArray[0]);
            }
            if (componentName != null) {
                long time = cursor.getLong(4);
                this.mAppPkgs.add(componentName);
                this.mAppsHistoryTime.put(componentName, Long.valueOf(time));
                if (componentArray.length > 1 || isLegacyFormatWithCount) {
                    int launchCount = cursor.getInt(3);
                    this.mAppsHistoryLaunchCount.put(componentName, Integer.valueOf(launchCount));
                } else {
                    this.mAppsHistoryLaunchCount.put(componentName, 1);
                }
            } else if (!isLegacyFormatWithCount) {
                Logger.w(TAG, "legacy format with count column, retry the history loading process");
                loadAppsHistory(true);
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        return this.mAppsHistoryLaunchCount.size() != 0;
    }

    public boolean loadContactsHistory() {
        if (this.mContactIds != null) {
            this.mContactIds.clear();
        } else {
            this.mContactIds = new ArrayList<>(100);
        }
        if (this.mContactNames != null) {
            this.mContactNames.clear();
        } else {
            this.mContactNames = new ArrayList<>(100);
        }
        if (this.mContactsHistoryTime != null) {
            this.mContactsHistoryTime.clear();
        } else {
            this.mContactsHistoryTime = new HashMap<>(100);
        }
        if (this.mContactsHistoryLaunchCount != null) {
            this.mContactsHistoryLaunchCount.clear();
        } else {
            this.mContactsHistoryLaunchCount = new HashMap<>(100);
        }
        SQLiteDatabase db = this.mGlobalSearchDbHelper.getReadableDatabase();
        Cursor cursor = db.query(GlobalSearchDbHelper.CONTACT_TABLE_NAME, new String[]{GlobalSearchDbHelper.COLUMN_ID, GlobalSearchDbHelper.DISPLAY_NAME, GlobalSearchDbHelper.PHOTO_THUMBNAIL_URI, GlobalSearchDbHelper.LAUNCH_COUNT, GlobalSearchDbHelper.HISTORY_TIME}, null, null, null, null, "_id DESC", null);
        while (cursor != null && cursor.moveToNext()) {
            String id = cursor.getString(0);
            String displayName = cursor.getString(1);
            int launchCount = cursor.getInt(3);
            long time = cursor.getLong(4);
            this.mContactIds.add(id);
            this.mContactNames.add(displayName);
            this.mContactsHistoryTime.put(displayName, Long.valueOf(time));
            this.mContactsHistoryLaunchCount.put(displayName, Integer.valueOf(launchCount));
        }
        if (cursor != null) {
            cursor.close();
        }
        return this.mContactsHistoryLaunchCount.size() != 0;
    }

    public ArrayList<ComponentName> getOrderedAppList() {
        ArrayList<PkgHistory> pkgHistoryList = new ArrayList<>();
        Iterator<ComponentName> it = this.mAppPkgs.iterator();
        while (it.hasNext()) {
            ComponentName componentName = it.next();
            if (this.mAppsHistoryLaunchCount.containsKey(componentName)) {
                pkgHistoryList.add(new PkgHistory(componentName, this.mAppsHistoryTime.get(componentName).longValue(), this.mAppsHistoryLaunchCount.get(componentName).intValue()));
            }
        }
        if (this.mPkgComparator == null) {
            this.mPkgComparator = new PkgHistoryComparator();
        }
        Collections.sort(pkgHistoryList, this.mPkgComparator);
        ArrayList<ComponentName> resultList = new ArrayList<>();
        Iterator<PkgHistory> it2 = pkgHistoryList.iterator();
        while (it2.hasNext()) {
            PkgHistory pkgHistory = it2.next();
            if (pkgHistory.mComponentName != null) {
                resultList.add(pkgHistory.mComponentName);
            }
        }
        return resultList;
    }

    public ArrayList<String> getOrderedContactList() {
        ArrayList<ContactHistory> contactHistoryList = new ArrayList<>();
        Iterator<String> it = this.mContactNames.iterator();
        while (it.hasNext()) {
            String displayName = it.next();
            if (this.mContactsHistoryLaunchCount.containsKey(displayName)) {
                contactHistoryList.add(new ContactHistory(displayName, this.mContactsHistoryTime.get(displayName).longValue(), this.mContactsHistoryLaunchCount.get(displayName).intValue()));
            }
        }
        if (this.mContactComparator == null) {
            this.mContactComparator = new ContactHistoryComparator();
        }
        Collections.sort(contactHistoryList, this.mContactComparator);
        ArrayList<String> resultList = new ArrayList<>();
        Iterator<ContactHistory> it2 = contactHistoryList.iterator();
        while (it2.hasNext()) {
            ContactHistory contactHistory = it2.next();
            if (contactHistory.mDisplayName != null) {
                resultList.add(contactHistory.mDisplayName);
            }
        }
        return resultList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PkgHistory {
        long mAppsHistoryTime;
        ComponentName mComponentName;
        int mLaunchCount;

        PkgHistory(ComponentName componentName, long historyTime, int launchCount) {
            this.mComponentName = componentName;
            this.mAppsHistoryTime = historyTime;
            this.mLaunchCount = launchCount;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ContactHistory {
        long mContactsHistoryTime;
        String mDisplayName;
        int mLaunchCount;

        ContactHistory(String displayName, long historyTime, int launchCount) {
            this.mDisplayName = displayName;
            this.mContactsHistoryTime = historyTime;
            this.mLaunchCount = launchCount;
        }
    }

    /* loaded from: classes.dex */
    private class PkgHistoryComparator implements Comparator<PkgHistory> {
        PkgHistoryComparator() {
        }

        @Override // java.util.Comparator
        public int compare(PkgHistory pkg1, PkgHistory pkg2) {
            if (pkg1.mLaunchCount > pkg2.mLaunchCount) {
                return -1;
            }
            if (pkg1.mLaunchCount < pkg2.mLaunchCount) {
                return 1;
            }
            if (pkg1.mLaunchCount != pkg2.mLaunchCount) {
                return 0;
            }
            if (pkg1.mAppsHistoryTime > pkg2.mAppsHistoryTime) {
                return -1;
            }
            if (pkg1.mAppsHistoryTime >= pkg2.mAppsHistoryTime) {
                return 0;
            }
            return 1;
        }
    }

    /* loaded from: classes.dex */
    private class ContactHistoryComparator implements Comparator<ContactHistory> {
        ContactHistoryComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ContactHistory contact1, ContactHistory contact2) {
            if (contact1.mLaunchCount > contact2.mLaunchCount) {
                return -1;
            }
            if (contact1.mLaunchCount < contact2.mLaunchCount) {
                return 1;
            }
            if (contact1.mLaunchCount != contact2.mLaunchCount) {
                return 0;
            }
            if (contact1.mContactsHistoryTime > contact2.mContactsHistoryTime) {
                return -1;
            }
            if (contact1.mContactsHistoryTime >= contact2.mContactsHistoryTime) {
                return 0;
            }
            return 1;
        }
    }

    public ArrayList<ComponentName> getHistoryAppPkgs() {
        return this.mAppPkgs;
    }

    public HashMap<ComponentName, Long> getAppsHistoryTime() {
        return this.mAppsHistoryTime;
    }

    public GlobalSearchDbHelper getGlobalSearchDbHelper() {
        return this.mGlobalSearchDbHelper;
    }

    public ArrayList<String> getContactIdList() {
        return this.mContactIds;
    }
}
