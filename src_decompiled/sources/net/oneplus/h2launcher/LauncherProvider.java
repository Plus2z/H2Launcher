package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.StrictMode;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.AutoInstallsLayout;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.config.ProviderConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconTextConfig;
import net.oneplus.h2launcher.dynamicui.ExtractionUtils;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.launcherProviderHelper.DataBaseHelperCallback;
import net.oneplus.h2launcher.launcherProviderHelper.H2UpgradeHelper;
import net.oneplus.h2launcher.launcherProviderHelper.LauncherProviderUtil;
import net.oneplus.h2launcher.launcherProviderHelper.O2UpgradeHelper;
import net.oneplus.h2launcher.launcherProviderHelper.UpgradeHelper;
import net.oneplus.h2launcher.migrate.MigrationManager;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.ManagedProfileHeuristic;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class LauncherProvider extends ContentProvider {
    public static final String AUTHORITY = ProviderConfig.AUTHORITY;
    private static final int DATABASE_VERSION = 31;
    static final String EMPTY_DATABASE_CREATED = "EMPTY_DATABASE_CREATED";
    public static final String HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES = "HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES";
    private static final boolean LOGD = false;
    static final String METHOD_SET_LAUNCHER_PROVIDER = "set_launcher_provider";
    private static final String NAMESPACE = "http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher";
    static final String PARAMETER_NOTIFY = "notify";
    private static final String PREF_KEY_REPLACE_MARKET_TO_OPPO = "replace_1+market_to_oppo_market";
    private static final String RESTRICTION_PACKAGE_NAME = "workspace.configuration.package.name";
    private static final String TAG = "LauncherProvider";
    static final String UPGRADED_FROM_OLD_DATABASE = "UPGRADED_FROM_OLD_DATABASE";
    LauncherProviderChangeListener mListener;
    private Handler mListenerHandler;
    private final ChangeListenerWrapper mListenerWrapper = new ChangeListenerWrapper();
    DatabaseHelper mOpenHelper;

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Logger.d(TAG, "onCreate");
        Context context = getContext();
        StyleManager.init(context);
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        LauncherAppState.setLauncherProvider(this);
        this.mOpenHelper = new DatabaseHelper(context);
        StrictMode.setThreadPolicy(oldPolicy);
        this.mListenerHandler = new Handler(this.mListenerWrapper);
        return true;
    }

    public void reloadOpenDatabaseHelper() {
        this.mOpenHelper = new DatabaseHelper(getContext());
    }

    public boolean wasNewDbCreated() {
        return this.mOpenHelper.wasNewDbCreated();
    }

    public void setLauncherProviderChangeListener(LauncherProviderChangeListener listener) {
        this.mListener = listener;
        this.mOpenHelper.mListener = this.mListener;
        this.mListenerWrapper.mListener = listener;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        SqlArguments args = new SqlArguments(uri, null, null);
        return TextUtils.isEmpty(args.where) ? "vnd.android.cursor.dir/" + args.table : "vnd.android.cursor.item/" + args.table;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        qb.setTables(args.table);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        Cursor result = qb.query(db, projection, args.where, args.args, null, null, sortOrder);
        result.setNotificationUri(getContext().getContentResolver(), uri);
        return result;
    }

    static long dbInsertAndCheck(DatabaseHelper helper, SQLiteDatabase db, String table, String nullColumnHack, ContentValues values) {
        if (values == null) {
            throw new RuntimeException("Error: attempting to insert null values");
        }
        if (!values.containsKey(GlobalSearchDbHelper.COLUMN_ID)) {
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        }
        helper.checkId(table, values);
        return db.insert(table, nullColumnHack, values);
    }

    private void reloadLauncherIfExternal() {
        LauncherAppState app;
        if (Utilities.ATLEAST_MARSHMALLOW && Binder.getCallingPid() != Process.myPid() && (app = LauncherAppState.getInstanceNoCreate()) != null) {
            app.reloadWorkspace();
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues initialValues) {
        SqlArguments args = new SqlArguments(uri);
        if (Binder.getCallingPid() != Process.myPid() && !this.mOpenHelper.initializeExternalAdd(initialValues)) {
            return null;
        }
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        LauncherProviderUtil.addModifiedTime(initialValues);
        long rowId = dbInsertAndCheck(this.mOpenHelper, db, args.table, null, initialValues);
        if (rowId < 0) {
            return null;
        }
        Uri uri2 = ContentUris.withAppendedId(uri, rowId);
        notifyListeners();
        if (Utilities.ATLEAST_MARSHMALLOW) {
            reloadLauncherIfExternal();
        } else {
            LauncherAppState app = LauncherAppState.getInstanceNoCreate();
            if (app != null && DynamicIconTextConfig.KEY_TRUE.equals(uri2.getQueryParameter("isExternalAdd"))) {
                app.reloadWorkspace();
            }
            String notify = uri2.getQueryParameter(PARAMETER_NOTIFY);
            if (notify == null || DynamicIconTextConfig.KEY_TRUE.equals(notify)) {
                getContext().getContentResolver().notifyChange(uri2, null);
            }
        }
        return uri2;
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] values) {
        SqlArguments args = new SqlArguments(uri);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        db.beginTransaction();
        try {
            int numValues = values.length;
            for (int i = 0; i < numValues; i++) {
                LauncherProviderUtil.addModifiedTime(values[i]);
                if (dbInsertAndCheck(this.mOpenHelper, db, args.table, null, values[i]) < 0) {
                    return 0;
                }
            }
            db.setTransactionSuccessful();
            db.endTransaction();
            notifyListeners();
            reloadLauncherIfExternal();
            return values.length;
        } finally {
            db.endTransaction();
        }
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations) throws OperationApplicationException {
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        db.beginTransaction();
        try {
            ContentProviderResult[] result = super.applyBatch(operations);
            db.setTransactionSuccessful();
            reloadLauncherIfExternal();
            return result;
        } finally {
            db.endTransaction();
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        int count = db.delete(args.table, args.where, args.args);
        if (count > 0) {
            notifyListeners();
        }
        reloadLauncherIfExternal();
        return count;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        LauncherProviderUtil.addModifiedTime(values);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        int count = db.update(args.table, values, args.where, args.args);
        if (count > 0) {
            notifyListeners();
        }
        reloadLauncherIfExternal();
        return count;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        if (Binder.getCallingUid() != Process.myUid()) {
            return null;
        }
        Logger.i(TAG, "method: %s", method);
        char c = 65535;
        switch (method.hashCode()) {
            case -1803226544:
                if (method.equals(LauncherSettings.Settings.METHOD_GET_BOOLEAN)) {
                    c = 1;
                    break;
                }
                break;
            case -950799388:
                if (method.equals(LauncherSettings.Settings.METHOD_SET_EXTRACTED_COLORS_AND_WALLPAPER_ID)) {
                    c = 0;
                    break;
                }
                break;
            case 948012892:
                if (method.equals(LauncherSettings.Settings.METHOD_SET_BOOLEAN)) {
                    c = 2;
                    break;
                }
                break;
            case 2075708691:
                if (method.equals(METHOD_SET_LAUNCHER_PROVIDER)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                String extractedColors = extras.getString(LauncherSettings.Settings.EXTRA_EXTRACTED_COLORS);
                int wallpaperId = extras.getInt(LauncherSettings.Settings.EXTRA_WALLPAPER_ID);
                Utilities.getPrefs(getContext()).edit().putString(ExtractionUtils.EXTRACTED_COLORS_PREFERENCE_KEY, extractedColors).putInt(ExtractionUtils.WALLPAPER_ID_PREFERENCE_KEY, wallpaperId).apply();
                this.mListenerHandler.sendEmptyMessage(2);
                Bundle result = new Bundle();
                result.putString("value", extractedColors);
                return result;
            case 1:
                Bundle result2 = new Bundle();
                result2.putBoolean("value", getContext().getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0).getBoolean(arg, extras.getBoolean(LauncherSettings.Settings.EXTRA_DEFAULT_VALUE)));
                return result2;
            case 2:
                boolean value = extras.getBoolean("value");
                getContext().getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0).edit().putBoolean(arg, value).apply();
                if (this.mListener != null) {
                    this.mListener.onSettingsChanged(arg, value);
                }
                Bundle result3 = new Bundle();
                result3.putBoolean("value", value);
                return result3;
            case 3:
                LauncherAppState.setLauncherProvider(this);
                return null;
            default:
                Log.w(TAG, "unexpected method: " + method);
                return null;
        }
    }

    public List<Long> deleteEmptyFolders() {
        ArrayList<Long> folderIds = new ArrayList<>();
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        db.beginTransaction();
        try {
            String selection = "itemType = 2 AND _id NOT IN (SELECT container FROM " + LauncherProviderUtil.getFavoritesTable() + ")";
            Cursor c = db.query(LauncherProviderUtil.getFavoritesTable(), new String[]{GlobalSearchDbHelper.COLUMN_ID}, selection, null, null, null, null);
            while (c.moveToNext()) {
                folderIds.add(Long.valueOf(c.getLong(0)));
            }
            c.close();
            if (folderIds.size() > 0) {
                db.delete(LauncherProviderUtil.getFavoritesTable(), Utilities.createDbSelectionQuery(GlobalSearchDbHelper.COLUMN_ID, folderIds), null);
            }
            db.setTransactionSuccessful();
        } catch (SQLException ex) {
            Log.e(TAG, ex.getMessage(), ex);
            folderIds.clear();
        } finally {
            db.endTransaction();
        }
        return folderIds;
    }

    private void notifyListeners() {
        LauncherBackupAgentHelper.dataChanged(getContext());
        if (this.mListener != null) {
            this.mListener.onLauncherProviderChange();
        }
    }

    public long generateNewItemId() {
        return this.mOpenHelper.generateNewItemId();
    }

    public void updateMaxItemId(long id) {
        this.mOpenHelper.updateMaxItemId(id);
    }

    public long generateNewScreenId() {
        return this.mOpenHelper.generateNewScreenId();
    }

    public synchronized void createEmptyDB() {
        this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
    }

    public void clearFlagEmptyDbCreated() {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        getContext().getSharedPreferences(spKey, 0).edit().remove(EMPTY_DATABASE_CREATED).commit();
    }

    public synchronized void loadDefaultFavoritesIfNecessary() {
        Partner partner;
        Resources partnerRes;
        String identifierName;
        int workspaceResId;
        synchronized (this) {
            String spKey = LauncherAppState.getSharedPreferencesKey();
            SharedPreferences sp = getContext().getSharedPreferences(spKey, 0);
            boolean isEmptyDBCreate = sp.getBoolean(EMPTY_DATABASE_CREATED, false);
            if (isEmptyDBCreate || isTableEmpty(LauncherProviderUtil.getFavoritesTable())) {
                Log.d(TAG, "loading default workspace");
                AutoInstallsLayout loader = createWorkspaceLoaderFromAppRestriction();
                if (loader == null) {
                    loader = AutoInstallsLayout.get(getContext(), this.mOpenHelper.mAppWidgetHost, this.mOpenHelper);
                }
                if (loader == null && (partner = Partner.get(getContext().getPackageManager())) != null && partner.hasDefaultLayout() && (workspaceResId = (partnerRes = partner.getResources()).getIdentifier((identifierName = partner.getIdentifierName()), "xml", partner.getPackageName())) != 0) {
                    loader = new DefaultLayoutParser(getContext(), this.mOpenHelper.mAppWidgetHost, this.mOpenHelper, partnerRes, workspaceResId);
                    Logger.d(TAG, "[loadDefaultFavoritesIfNecessary] " + identifierName);
                }
                boolean usingExternallyProvidedLayout = loader != null;
                if (loader == null) {
                    loader = getDefaultLayoutParser();
                    Logger.d(TAG, "[loadDefaultFavoritesIfNecessary] use default layout");
                }
                if (isEmptyDBCreate) {
                    createEmptyDB();
                }
                if (this.mOpenHelper.loadFavorites(this.mOpenHelper.getWritableDatabase(), loader) <= 0 && usingExternallyProvidedLayout) {
                    createEmptyDB();
                    this.mOpenHelper.loadFavorites(this.mOpenHelper.getWritableDatabase(), getDefaultLayoutParser());
                }
                clearFlagEmptyDbCreated();
            }
        }
    }

    @TargetApi(18)
    private AutoInstallsLayout createWorkspaceLoaderFromAppRestriction() {
        String packageName;
        if (!Utilities.ATLEAST_JB_MR2) {
            return null;
        }
        Context ctx = getContext();
        UserManager um = (UserManager) ctx.getSystemService("user");
        Bundle bundle = um.getApplicationRestrictions(ctx.getPackageName());
        if (bundle == null || (packageName = bundle.getString(RESTRICTION_PACKAGE_NAME)) == null) {
            return null;
        }
        try {
            Resources targetResources = ctx.getPackageManager().getResourcesForApplication(packageName);
            return AutoInstallsLayout.get(ctx, packageName, targetResources, this.mOpenHelper.mAppWidgetHost, this.mOpenHelper);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Target package for restricted profile not found", e);
            return null;
        }
    }

    public synchronized void loadDefaultQuickPageItemsIfNecessary() {
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = getContext().getSharedPreferences(spKey, 0);
        if (!sp.getBoolean(HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES, false)) {
            this.mOpenHelper.loadDefaultQuickPageItems(this.mOpenHelper.getWritableDatabase());
            SharedPreferences.Editor editor = sp.edit().putBoolean(HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES, true);
            editor.commit();
        }
    }

    private DefaultLayoutParser getDefaultLayoutParser() {
        int defaultLayout = LauncherAppState.getInstance().getInvariantDeviceProfile().defaultLayoutId;
        return new DefaultLayoutParser(getContext(), this.mOpenHelper.mAppWidgetHost, this.mOpenHelper, getContext().getResources(), defaultLayout);
    }

    public void migrateLauncher2Shortcuts() {
        this.mOpenHelper.migrateLauncher2Shortcuts(this.mOpenHelper.getWritableDatabase(), Uri.parse(getContext().getString(R.string.old_launcher_provider_uri)));
    }

    public void updateFolderItemsRank() {
        this.mOpenHelper.updateFolderItemsRank(this.mOpenHelper.getWritableDatabase(), false);
    }

    public void convertShortcutsToLauncherActivities() {
        this.mOpenHelper.convertShortcutsToLauncherActivities(this.mOpenHelper.getWritableDatabase());
    }

    public void deleteDatabase() {
        this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DatabaseHelper extends SQLiteOpenHelper implements AutoInstallsLayout.LayoutParserCallback, DataBaseHelperCallback {
        final AppWidgetHost mAppWidgetHost;
        private final Context mContext;
        LauncherProviderChangeListener mListener;
        private long mMaxItemId;
        private long mMaxScreenId;
        private boolean mNewDbCreated;

        DatabaseHelper(Context context) {
            super(context, LauncherFiles.LAUNCHER_DB, (SQLiteDatabase.CursorFactory) null, 31);
            this.mMaxItemId = -1L;
            this.mMaxScreenId = -1L;
            this.mNewDbCreated = false;
            StyleManager.init(context);
            this.mContext = context;
            this.mAppWidgetHost = new AppWidgetHost(context, 1024);
            ensureTableExist();
            if (this.mMaxItemId == -1) {
                this.mMaxItemId = initializeMaxItemId(getWritableDatabase());
            }
            if (this.mMaxScreenId == -1) {
                this.mMaxScreenId = initializeMaxScreenId(getWritableDatabase());
            }
        }

        private void ensureTableExist() {
            LauncherProvider provider = LauncherAppState.getLauncherProvider();
            boolean favoritesTableExist = provider.isTableExists(getWritableDatabase(), LauncherProviderUtil.getFavoritesTable());
            if (!favoritesTableExist) {
                UserManagerCompat userManager = UserManagerCompat.getInstance(this.mContext);
                long userSerialNumber = userManager.getSerialNumberForUser(UserHandleCompat.myUserHandle());
                LauncherProviderUtil.addFavoritesTable(getWritableDatabase(), userSerialNumber);
            }
            boolean workspaceScreensTableExist = provider.isTableExists(getWritableDatabase(), LauncherProviderUtil.getWorkspaceScreensTable());
            if (!workspaceScreensTableExist) {
                LauncherProviderUtil.addWorkspacesTable(getWritableDatabase());
            }
        }

        public boolean wasNewDbCreated() {
            return this.mNewDbCreated;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            this.mMaxItemId = 1L;
            this.mMaxScreenId = 0L;
            this.mNewDbCreated = true;
            UserManagerCompat userManager = UserManagerCompat.getInstance(this.mContext);
            long userSerialNumber = userManager.getSerialNumberForUser(UserHandleCompat.myUserHandle());
            LauncherProviderUtil.addFavoritesTable(db, userSerialNumber);
            LauncherProviderUtil.addWorkspacesTable(db);
            LauncherProviderUtil.addQuickPageTable(db);
            if (this.mAppWidgetHost != null) {
                this.mAppWidgetHost.deleteHost();
                new MainThreadExecutor().execute(new Runnable() { // from class: net.oneplus.h2launcher.LauncherProvider.DatabaseHelper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DatabaseHelper.this.mListener != null) {
                            DatabaseHelper.this.mListener.onAppWidgetHostReset();
                        }
                    }
                });
            }
            this.mMaxItemId = initializeMaxItemId(db);
            setFlagEmptyDbCreated();
            ManagedProfileHeuristic.processAllUsers(Collections.emptyList(), this.mContext);
        }

        private void setFlagJustLoadedOldDb() {
            String spKey = LauncherAppState.getSharedPreferencesKey();
            SharedPreferences sp = this.mContext.getSharedPreferences(spKey, 0);
            sp.edit().putBoolean(LauncherProvider.EMPTY_DATABASE_CREATED, false).commit();
        }

        private void setFlagEmptyDbCreated() {
            String spKey = LauncherAppState.getSharedPreferencesKey();
            SharedPreferences sp = this.mContext.getSharedPreferences(spKey, 0);
            sp.edit().putBoolean(LauncherProvider.EMPTY_DATABASE_CREATED, true).commit();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:8:0x004f. Please report as an issue. */
        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.d(LauncherProvider.TAG, "onUpgrade triggered: " + oldVersion + " newVersion " + newVersion);
            int version = oldVersion;
            if (StyleManager.isStandardLayout()) {
                version = O2UpgradeHelper.upgrade(this.mContext, db, oldVersion, this);
            } else if (StyleManager.isSimplifiedLayout() && (version = H2UpgradeHelper.upgrade(oldVersion)) != -100) {
                version = H2UpgradeHelper.upgradeToOOS(db, oldVersion, this);
            }
            if (version == -100) {
                Log.w(LauncherProvider.TAG, "Destroying all old data.");
                createEmptyDB(db);
                return;
            }
            switch (version) {
                case 27:
                    UpgradeHelper.convertAppComponentName(this.mContext, db);
                    MigrationManager.MigrationPref(this.mContext);
                case 28:
                    Logger.d(LauncherProvider.TAG, "onUpgrade - migrateShortcutsToSeparateTable");
                    LauncherAppState.getLauncherProvider().migrateShortcutsToSeparateTable(db);
                case 29:
                    MigrationManager.MigrationComOnePlusPref(this.mContext);
                    StyleManager.saveLayoutStyle(StyleManager.getLayoutStyle());
                    StyleManager.getInstance().reloadStyleConfigurationInfo();
                    StyleManager.getInstance().reloadStyleResourceInfo();
                    UpgradeHelper.addInternalClockWidget(db, this);
                case 30:
                    if (!LauncherProvider.addReminderColumns(db)) {
                        db.execSQL("DROP TABLE IF EXISTS quickPage");
                        LauncherProviderUtil.addQuickPageTable(db);
                        return;
                    } else {
                        if (StyleManager.isO2Device() && StyleManager.isStandardLayout()) {
                            UpgradeHelper.moveAllItemsdown(db);
                            if (!PreferencesHelper.isSearchBarStyleHidden(this.mContext)) {
                                Log.w(LauncherProvider.TAG, "onUpgrade - addGoogleSearchBarWidget");
                                UpgradeHelper.addGoogleSearchBarWidget(db, this, StyleManager.getInstance().getWorkspaceColumns(), this.mContext);
                                LauncherModel.sBgWidgetProviders = null;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                default:
                    if (newVersion != 31) {
                        Log.w(LauncherProvider.TAG, "Destroying all old data.");
                        createEmptyDB(db);
                        return;
                    }
                    return;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.w(LauncherProvider.TAG, "Database version downgrade from: " + oldVersion + " to " + newVersion + ". Wiping databse.");
            createEmptyDB(db);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase db) {
            super.onOpen(db);
            replaceComponentName(db);
        }

        private void replaceComponentName(SQLiteDatabase db) {
            if (db == null) {
                Logger.w(LauncherProvider.TAG, "replaceComponentName: SQLiteDatabase is null. ");
                return;
            }
            Cursor cursor = db.rawQuery("SELECT * FROM " + LauncherSettings.Favorites.sTableName, null);
            if (cursor == null) {
                Logger.w(LauncherProvider.TAG, "replaceComponentName: cursor is null. Should not be here!");
                return;
            }
            if (cursor.getCount() <= 0) {
                Logger.w(LauncherProvider.TAG, "replaceComponentName: cursor is empty. Should not be here!");
                return;
            }
            if (this.mContext == null) {
                Logger.w(LauncherProvider.TAG, "replaceComponentName: mContext is null. Should not be here!");
                return;
            }
            SharedPreferences prefs = this.mContext.getSharedPreferences(LauncherFiles.DEVICE_PREFERENCES_KEY, 0);
            boolean replaced = false;
            if (prefs != null) {
                replaced = prefs.getBoolean(LauncherProvider.PREF_KEY_REPLACE_MARKET_TO_OPPO, false);
            } else {
                Logger.w(LauncherProvider.TAG, "replaceComponentName: prefs is null. Should not be here!");
            }
            boolean hasOppoMarket = Utilities.isPackageValid(this.mContext, Utilities.PACKAGE_NAME_OPPO_MARKET);
            Logger.d(LauncherProvider.TAG, "replaceOneplusMarketToOppo: replaced= " + replaced + ", oppo market exist= " + hasOppoMarket);
            if (!replaced && hasOppoMarket) {
                replaceOneplusMarketToOppo(db, cursor, prefs);
            }
        }

        private void replaceOneplusMarketToOppo(SQLiteDatabase db, Cursor cursor, SharedPreferences prefs) {
            ComponentName cn;
            try {
                if (db == null) {
                    Logger.w(LauncherProvider.TAG, "replaceOneplusMarketToOppo: SQLiteDatabase is null. ");
                    return;
                }
                try {
                    int idIndex = cursor.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                    int intentIndex = cursor.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
                    db.beginTransaction();
                    while (cursor.moveToNext()) {
                        long id = cursor.getLong(idIndex);
                        String intentDescription = cursor.getString(intentIndex);
                        Intent intent = TextUtils.isEmpty(intentDescription) ? null : Intent.parseUri(intentDescription, 0);
                        if (intent != null && (cn = intent.getComponent()) != null && Utilities.PACKAGE_NAME_ONEPLUS_MARKET.equals(cn.getPackageName())) {
                            String className = cn.getClassName().replace(Utilities.PACKAGE_NAME_ONEPLUS_MARKET, Utilities.PACKAGE_NAME_OPPO_MARKET);
                            intent.setComponent(new ComponentName(Utilities.PACKAGE_NAME_OPPO_MARKET, className));
                            String update = "UPDATE " + LauncherSettings.Favorites.sTableName + " SET " + LauncherSettings.BaseLauncherColumns.INTENT + " = '" + intent.toUri(0) + "' WHERE " + GlobalSearchDbHelper.COLUMN_ID + " = " + id;
                            db.execSQL(update);
                            Logger.d(LauncherProvider.TAG, "replaceOneplusMarketToOppo: update= " + update);
                            Logger.d(LauncherProvider.TAG, "replaceOneplusMarketToOppo: Change it. " + intent.toUri(0));
                        }
                    }
                    if (prefs != null) {
                        prefs.edit().putBoolean(LauncherProvider.PREF_KEY_REPLACE_MARKET_TO_OPPO, true).apply();
                    } else {
                        Logger.w(LauncherProvider.TAG, "replaceOneplusMarketToOppo: prefs is null.");
                    }
                    db.setTransactionSuccessful();
                    db.endTransaction();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception ex) {
                    Logger.w(LauncherProvider.TAG, "replaceOneplusMarketToOppo: " + ex.getMessage());
                    ex.printStackTrace();
                    if (prefs != null) {
                        prefs.edit().putBoolean(LauncherProvider.PREF_KEY_REPLACE_MARKET_TO_OPPO, true).apply();
                    } else {
                        Logger.w(LauncherProvider.TAG, "replaceOneplusMarketToOppo: prefs is null.");
                    }
                    db.setTransactionSuccessful();
                    db.endTransaction();
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (Throwable th) {
                if (prefs != null) {
                    prefs.edit().putBoolean(LauncherProvider.PREF_KEY_REPLACE_MARKET_TO_OPPO, true).apply();
                } else {
                    Logger.w(LauncherProvider.TAG, "replaceOneplusMarketToOppo: prefs is null.");
                }
                db.setTransactionSuccessful();
                db.endTransaction();
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }

        public void createEmptyDB(SQLiteDatabase db) {
            db.execSQL("DROP TABLE IF EXISTS " + LauncherProviderUtil.getFavoritesTable());
            db.execSQL("DROP TABLE IF EXISTS " + LauncherProviderUtil.getWorkspaceScreensTable());
            db.execSQL("DROP TABLE IF EXISTS quickPage");
            onCreate(db);
        }

        void convertShortcutsToLauncherActivities(SQLiteDatabase db) {
            LauncherProviderUtil.convertShortcutsToLauncherActivities(db, this.mContext);
        }

        boolean updateFolderItemsRank(SQLiteDatabase db, boolean addRankColumn) {
            return LauncherProviderUtil.updateFolderItemsRank(db, addRankColumn);
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.LayoutParserCallback
        public synchronized long generateNewItemId() {
            if (this.mMaxItemId < 0) {
                throw new RuntimeException("Error: max item id was not initialized");
            }
            this.mMaxItemId++;
            return this.mMaxItemId;
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.LayoutParserCallback
        public long insertAndCheck(SQLiteDatabase db, ContentValues values) {
            return LauncherProvider.dbInsertAndCheck(this, db, LauncherProviderUtil.getFavoritesTable(), null, values);
        }

        public void updateMaxItemId(long id) {
            this.mMaxItemId = 1 + id;
        }

        public void checkId(String table, ContentValues values) {
            long id = values.getAsLong(GlobalSearchDbHelper.COLUMN_ID).longValue();
            if (table == LauncherProviderUtil.getWorkspaceScreensTable()) {
                this.mMaxScreenId = Math.max(id, this.mMaxScreenId);
            } else {
                this.mMaxItemId = Math.max(id, this.mMaxItemId);
            }
        }

        private long initializeMaxItemId(SQLiteDatabase db) {
            return LauncherProvider.getMaxId(db, LauncherProviderUtil.getFavoritesTable());
        }

        public long generateNewScreenId() {
            if (this.mMaxScreenId < 0) {
                throw new RuntimeException("Error: max screen id was not initialized");
            }
            this.mMaxScreenId++;
            return this.mMaxScreenId;
        }

        private long initializeMaxScreenId(SQLiteDatabase db) {
            return LauncherProvider.getMaxId(db, LauncherProviderUtil.getWorkspaceScreensTable());
        }

        boolean initializeExternalAdd(ContentValues values) {
            long id = generateNewItemId();
            values.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(id));
            Integer itemType = values.getAsInteger(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
            if (itemType != null && itemType.intValue() == 4 && !values.containsKey(LauncherSettings.Favorites.APPWIDGET_ID)) {
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.mContext);
                ComponentName cn = ComponentName.unflattenFromString(values.getAsString(LauncherSettings.Favorites.APPWIDGET_PROVIDER));
                if (cn == null) {
                    return false;
                }
                try {
                    int appWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
                    values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(appWidgetId));
                    if (!appWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, cn)) {
                        return false;
                    }
                } catch (RuntimeException e) {
                    Log.e(LauncherProvider.TAG, "Failed to initialize external widget", e);
                    return false;
                }
            }
            long screenId = values.getAsLong(LauncherSettings.Favorites.SCREEN).longValue();
            return addScreenIdIfNecessary(screenId);
        }

        private boolean addScreenIdIfNecessary(long screenId) {
            if (!hasScreenId(screenId)) {
                int rank = getMaxScreenRank() + 1;
                ContentValues v = new ContentValues();
                v.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(screenId));
                v.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, Integer.valueOf(rank));
                if (LauncherProvider.dbInsertAndCheck(this, getWritableDatabase(), LauncherProviderUtil.getWorkspaceScreensTable(), null, v) < 0) {
                    return false;
                }
            }
            return true;
        }

        private boolean hasScreenId(long screenId) {
            SQLiteDatabase db = getWritableDatabase();
            Cursor c = db.rawQuery("SELECT * FROM " + LauncherProviderUtil.getWorkspaceScreensTable() + " WHERE " + GlobalSearchDbHelper.COLUMN_ID + " = " + screenId, null);
            if (c == null) {
                return false;
            }
            int count = c.getCount();
            c.close();
            return count > 0;
        }

        private int getMaxScreenRank() {
            SQLiteDatabase db = getWritableDatabase();
            Cursor c = db.rawQuery("SELECT MAX(screenRank) FROM " + LauncherProviderUtil.getWorkspaceScreensTable(), null);
            int rank = -1;
            if (c != null && c.moveToNext()) {
                rank = c.getInt(0);
            }
            if (c != null) {
                c.close();
            }
            return rank;
        }

        int loadFavorites(SQLiteDatabase db, AutoInstallsLayout loader) {
            ArrayList<Long> screenIds = new ArrayList<>();
            int count = loader.loadLayout(db, screenIds);
            Collections.sort(screenIds);
            int rank = 0;
            ContentValues values = new ContentValues();
            Iterator<Long> it = screenIds.iterator();
            while (it.hasNext()) {
                Long id = it.next();
                values.clear();
                values.put(GlobalSearchDbHelper.COLUMN_ID, id);
                values.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, Integer.valueOf(rank));
                if (LauncherProvider.dbInsertAndCheck(this, db, LauncherProviderUtil.getWorkspaceScreensTable(), null, values) < 0) {
                    throw new RuntimeException("Failed initialize screen tablefrom default layout");
                }
                rank++;
            }
            this.mMaxItemId = initializeMaxItemId(db);
            this.mMaxScreenId = initializeMaxScreenId(db);
            return count;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0128 A[DONT_GENERATE] */
        /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void loadDefaultQuickPageItems(android.database.sqlite.SQLiteDatabase r29) {
            /*
                Method dump skipped, instructions count: 354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.LauncherProvider.DatabaseHelper.loadDefaultQuickPageItems(android.database.sqlite.SQLiteDatabase):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:101:0x0351, code lost:
        
            if (r32 < r0) goto L160;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0353, code lost:
        
            r59.put("container", (java.lang.Integer) (-100));
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x0360, code lost:
        
            r39 = r39 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x032e, code lost:
        
            if (r32 == r48.hotseatAllAppsRank) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0330, code lost:
        
            r32 = r32 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0336, code lost:
        
            if (r32 >= r0) goto L162;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0340, code lost:
        
            if (r30.get(r32) != null) goto L163;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0342, code lost:
        
            r59.put(net.oneplus.h2launcher.LauncherSettings.Favorites.SCREEN, java.lang.Integer.valueOf(r32));
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void migrateLauncher2Shortcuts(android.database.sqlite.SQLiteDatabase r64, android.net.Uri r65) {
            /*
                Method dump skipped, instructions count: 1194
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.LauncherProvider.DatabaseHelper.migrateLauncher2Shortcuts(android.database.sqlite.SQLiteDatabase, android.net.Uri):void");
        }

        @Override // net.oneplus.h2launcher.launcherProviderHelper.DataBaseHelperCallback
        public void onMaxScreenIdChange(long screenid) {
            this.mMaxScreenId = screenid;
        }

        @Override // net.oneplus.h2launcher.launcherProviderHelper.DataBaseHelperCallback
        public void onMaxItemIdChange(long itemid) {
            updateMaxItemId(itemid);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SqlArguments {
        public final String[] args;
        public final String table;
        public final String where;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SqlArguments(Uri url, String where, String[] args) {
            if (url.getPathSegments().size() == 1) {
                this.table = url.getPathSegments().get(0);
                this.where = where;
                this.args = args;
            } else {
                if (url.getPathSegments().size() != 2) {
                    throw new IllegalArgumentException("Invalid URI: " + url);
                }
                if (!TextUtils.isEmpty(where)) {
                    throw new UnsupportedOperationException("WHERE clause not supported: " + url);
                }
                this.table = url.getPathSegments().get(0);
                this.where = "_id=" + ContentUris.parseId(url);
                this.args = null;
            }
        }

        SqlArguments(Uri url) {
            if (url.getPathSegments().size() == 1) {
                this.table = url.getPathSegments().get(0);
                this.where = null;
                this.args = null;
                return;
            }
            throw new IllegalArgumentException("Invalid URI: " + url);
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append("SELECT * FROM ").append(this.table);
            if (!TextUtils.isEmpty(this.where)) {
                builder.append(" WHERE ").append(this.where);
            }
            String tmpStr = builder.toString();
            if (this.args != null) {
                for (String arg : this.args) {
                    tmpStr = tmpStr.replaceFirst("\\?", arg);
                }
            }
            return tmpStr;
        }
    }

    public boolean isTableExists(SQLiteDatabase db, String tableName) {
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

    public boolean isTableEmpty(String tableName) {
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        if (db == null) {
            Log.w(TAG, "[isTableEmpty] db is null. Should not be here!!!!");
            return true;
        }
        if (TextUtils.isEmpty(tableName)) {
            Log.w(TAG, "[isTableEmpty] tableName is null. Should not be here!!!!");
            return true;
        }
        Cursor cursor = db.query(tableName, null, null, null, null, null, null);
        if (cursor == null) {
            Log.w(TAG, "[isTableEmpty] cursor is null. table = " + tableName);
            return true;
        }
        int count = cursor.getCount();
        cursor.close();
        return count == 0;
    }

    private boolean shouldMigrateToSeparateTable(SQLiteDatabase db) {
        db.beginTransaction();
        if (isTableExists(db, LauncherProviderUtil.TABLE_FAVORITES)) {
            db.setTransactionSuccessful();
            db.endTransaction();
            return true;
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        return false;
    }

    public void migrateShortcutsToSeparateTable(SQLiteDatabase db) {
        UserHandleCompat userHandle;
        long userSerialNumber;
        if (shouldMigrateToSeparateTable(db)) {
            UserManagerCompat userManager = UserManagerCompat.getInstance(getContext());
            long userSerialNumber2 = userManager.getSerialNumberForUser(UserHandleCompat.myUserHandle());
            Cursor c = null;
            int count = 0;
            ArrayList<Integer> screenIds = new ArrayList<>();
            String[] columns = {GlobalSearchDbHelper.COLUMN_ID, LauncherSettings.BaseLauncherColumns.INTENT, "title", "iconType", "icon", LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, "container", LauncherSettings.BaseLauncherColumns.ITEM_TYPE, LauncherSettings.Favorites.SCREEN, LauncherSettings.Favorites.CELLX, LauncherSettings.Favorites.CELLY, "uri", "displayMode", "profileId", LauncherSettings.Favorites.SPANX, LauncherSettings.Favorites.SPANY, LauncherSettings.Favorites.APPWIDGET_ID, LauncherSettings.Favorites.APPWIDGET_PROVIDER, LauncherSettings.Favorites.RANK};
            try {
                db.beginTransaction();
                boolean favoritesTableExist = isTableExists(db, LauncherProviderUtil.getFavoritesTable());
                if (!favoritesTableExist) {
                    LauncherProviderUtil.addFavoritesTable(db, userSerialNumber2);
                }
                boolean workspaceScreensTableExist = isTableExists(db, LauncherProviderUtil.getWorkspaceScreensTable());
                if (!workspaceScreensTableExist) {
                    LauncherProviderUtil.addWorkspacesTable(db);
                }
                c = db.query(LauncherProviderUtil.TABLE_FAVORITES, columns, null, null, null, null, "title ASC");
                db.setTransactionSuccessful();
            } catch (Exception e) {
                Log.w(TAG, "[migrateShortcutsToSeparateTable] query favorite table fail.");
            } finally {
            }
            try {
                if (c != null) {
                    if (c.getCount() > 0) {
                        int idIndex = c.getColumnIndexOrThrow(GlobalSearchDbHelper.COLUMN_ID);
                        int intentIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
                        int titleIndex = c.getColumnIndexOrThrow("title");
                        int iconTypeIndex = c.getColumnIndexOrThrow("iconType");
                        int iconIndex = c.getColumnIndexOrThrow("icon");
                        int iconPackageIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE);
                        int iconResourceIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE);
                        int containerIndex = c.getColumnIndexOrThrow("container");
                        int itemTypeIndex = c.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.ITEM_TYPE);
                        int screenIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SCREEN);
                        int cellXIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLX);
                        int cellYIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.CELLY);
                        int uriIndex = c.getColumnIndexOrThrow("uri");
                        int displayModeIndex = c.getColumnIndexOrThrow("displayMode");
                        int profileIndex = c.getColumnIndex("profileId");
                        int spanXIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANX);
                        int spanYIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.SPANY);
                        int appWidgetIdIndex = c.getColumnIndex(LauncherSettings.Favorites.APPWIDGET_ID);
                        int appWidgetProviderIndex = c.getColumnIndex(LauncherSettings.Favorites.APPWIDGET_PROVIDER);
                        int rankIndex = c.getColumnIndexOrThrow(LauncherSettings.Favorites.RANK);
                        HashSet<String> seenIntents = new HashSet<>(c.getCount());
                        ArrayList<ContentValues> shortcuts = new ArrayList<>();
                        ArrayList<ContentValues> folders = new ArrayList<>();
                        while (c.moveToNext()) {
                            int itemType = c.getInt(itemTypeIndex);
                            if (itemType == 0 || itemType == 1 || itemType == 2 || itemType == 4 || itemType == 5) {
                                int cellX = c.getInt(cellXIndex);
                                int cellY = c.getInt(cellYIndex);
                                int spanX = c.getInt(spanXIndex);
                                int spanY = c.getInt(spanYIndex);
                                int screen = c.getInt(screenIndex);
                                int container = c.getInt(containerIndex);
                                String intentStr = c.getString(intentIndex);
                                if (!screenIds.contains(Integer.valueOf(screen)) && container == -100) {
                                    screenIds.add(Integer.valueOf(screen));
                                }
                                if (profileIndex == -1 || c.isNull(profileIndex)) {
                                    userHandle = UserHandleCompat.myUserHandle();
                                    userSerialNumber = userManager.getSerialNumberForUser(userHandle);
                                } else {
                                    userSerialNumber = c.getInt(profileIndex);
                                    userHandle = userManager.getUserForSerialNumber(userSerialNumber);
                                }
                                if (userHandle == null) {
                                    Launcher.addDumpLog(TAG, "skipping deleted user", true);
                                } else {
                                    Launcher.addDumpLog(TAG, "migrating \"" + c.getString(titleIndex) + "\" (" + cellX + "," + cellY + "@" + LauncherSettings.Favorites.containerToString(container) + "/" + screen + "): " + intentStr, true);
                                    if (itemType != 2 && itemType != 4 && itemType != 5) {
                                        try {
                                            Intent intent = Intent.parseUri(intentStr, 0);
                                            ComponentName cn = intent.getComponent();
                                            if (TextUtils.isEmpty(intentStr)) {
                                                Launcher.addDumpLog(TAG, "skipping empty intent", true);
                                            } else if (cn != null && !LauncherModel.isValidPackageActivity(getContext(), cn, userHandle)) {
                                                Launcher.addDumpLog(TAG, "Item whose component no longer exists.", true);
                                            } else if (container == -100) {
                                                if (cn == null || !WidgetConstant.COM_ONEPLUS_SECURITY.equals(cn.getPackageName())) {
                                                    intent.setPackage(null);
                                                    int flags = intent.getFlags();
                                                    intent.setFlags(0);
                                                    String key = intent.toUri(0);
                                                    intent.setFlags(flags);
                                                    if (seenIntents.contains(key) && StyleManager.isSimplifiedLayout()) {
                                                        Launcher.addDumpLog(TAG, "skipping duplicate", true);
                                                    } else {
                                                        seenIntents.add(key);
                                                    }
                                                } else {
                                                    Logger.d(TAG, "don't migrate managerCenter. Should not show on workspace. cn = " + cn);
                                                }
                                            }
                                        } catch (URISyntaxException e2) {
                                            Launcher.addDumpLog(TAG, "skipping invalid intent uri", true);
                                        }
                                    }
                                    ContentValues values = new ContentValues(c.getColumnCount());
                                    values.put(GlobalSearchDbHelper.COLUMN_ID, Integer.valueOf(c.getInt(idIndex)));
                                    values.put(LauncherSettings.BaseLauncherColumns.INTENT, intentStr);
                                    values.put("title", c.getString(titleIndex));
                                    values.put("iconType", Integer.valueOf(c.getInt(iconTypeIndex)));
                                    values.put("icon", c.getBlob(iconIndex));
                                    values.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, c.getString(iconPackageIndex));
                                    values.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, c.getString(iconResourceIndex));
                                    values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(itemType));
                                    values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(c.getInt(appWidgetIdIndex)));
                                    values.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, c.getString(appWidgetProviderIndex));
                                    values.put("uri", c.getString(uriIndex));
                                    values.put("displayMode", Integer.valueOf(c.getInt(displayModeIndex)));
                                    values.put("profileId", Long.valueOf(userSerialNumber));
                                    values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(c.getInt(rankIndex)));
                                    if (container == -100 || container == -101) {
                                        values.put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(screen));
                                        values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(cellX));
                                        values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(cellY));
                                        values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(spanX));
                                        values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(spanY));
                                    }
                                    values.put("container", Integer.valueOf(container));
                                    if (itemType != 2) {
                                        shortcuts.add(values);
                                    } else {
                                        folders.add(values);
                                    }
                                }
                            } else {
                                Logger.d(TAG, "[migrateShortcutsToSeparateTable] invalid itemType = " + itemType);
                            }
                        }
                        ArrayList<ContentValues> allItems = new ArrayList<>();
                        allItems.addAll(folders);
                        allItems.addAll(shortcuts);
                        if (allItems.size() > 0) {
                            db.beginTransaction();
                            try {
                                Iterator<ContentValues> it = allItems.iterator();
                                while (it.hasNext()) {
                                    ContentValues row = it.next();
                                    if (row != null) {
                                        long insertId = db.insertOrThrow(LauncherProviderUtil.getFavoritesTable(), null, row);
                                        if (insertId < 0) {
                                            Logger.d(TAG, "[migrateShortcutsToSeparateTable] invalid item = " + row);
                                            return;
                                        }
                                        count++;
                                    }
                                }
                                db.setTransactionSuccessful();
                                db.endTransaction();
                            } finally {
                            }
                        }
                        db.beginTransaction();
                        for (int i = 0; i < screenIds.size(); i++) {
                            try {
                                ContentValues values2 = new ContentValues();
                                values2.put(GlobalSearchDbHelper.COLUMN_ID, screenIds.get(i));
                                values2.put(LauncherSettings.WorkspaceScreens.SCREEN_RANK, screenIds.get(i));
                                long insertId2 = db.insertOrThrow(LauncherProviderUtil.getWorkspaceScreensTable(), null, values2);
                                if (insertId2 < 0) {
                                    Logger.d(TAG, "[migrateShortcutsToSeparateTable] invalid screen = " + values2);
                                    return;
                                }
                            } finally {
                            }
                        }
                        db.setTransactionSuccessful();
                        db.endTransaction();
                        LauncherProviderUtil.updateFolderItemsRank(db, false);
                    }
                }
            } catch (SQLException ex) {
                Log.e(TAG, "[migrateShortcutsToSeparateTable] " + ex.getMessage(), ex);
            } finally {
                c.close();
            }
            Launcher.addDumpLog(TAG, "migrated " + count + " icons from Launcher3 H2/O2 into " + screenIds.size() + " screens", true);
            String spKey = LauncherAppState.getSharedPreferencesKey();
            SharedPreferences sp = getContext().getSharedPreferences(spKey, 0);
            sp.edit().putBoolean(EMPTY_DATABASE_CREATED, false).commit();
            try {
                db.beginTransaction();
                db.execSQL("DROP TABLE IF EXISTS favorites");
                db.execSQL("DROP TABLE IF EXISTS workspaceScreens");
                db.setTransactionSuccessful();
            } catch (Exception ex2) {
                Log.e(TAG, "[migrateShortcutsToSeparateTable] DROP TABLE fail. " + ex2.getMessage(), ex2);
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ChangeListenerWrapper implements Handler.Callback {
        private static final int MSG_EXTRACTED_COLORS_CHANGED = 2;
        private LauncherProviderChangeListener mListener;

        private ChangeListenerWrapper() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            if (this.mListener != null) {
                switch (msg.what) {
                    case 2:
                        this.mListener.onExtractedColorsChanged();
                        return true;
                    default:
                        return true;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x001f, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean addReminderColumns(android.database.sqlite.SQLiteDatabase r14) {
        /*
            r13 = 1
            r12 = 0
            r8 = 0
            java.lang.String r1 = "quickPage"
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r0 = r14
            android.database.Cursor r8 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            if (r8 != 0) goto L20
            java.lang.String r0 = "LauncherProvider"
            java.lang.String r1 = "addReminderColumns failed: cannot query quick page database"
            android.util.Log.e(r0, r1)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            if (r8 == 0) goto L1e
            r8.close()
        L1e:
            r0 = r12
        L1f:
            return r0
        L20:
            java.lang.String r0 = "reminderTime"
            int r11 = r8.getColumnIndex(r0)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            java.lang.String r0 = "reminderId"
            int r10 = r8.getColumnIndex(r0)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            if (r11 >= 0) goto L41
            if (r10 >= 0) goto L41
            java.lang.String r0 = "ALTER TABLE quickPage ADD COLUMN reminderTime INTEGER NOT NULL DEFAULT -1;"
            r14.execSQL(r0)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            java.lang.String r0 = "ALTER TABLE quickPage ADD COLUMN reminderId INTEGER NOT NULL DEFAULT -1;"
            r14.execSQL(r0)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            if (r8 == 0) goto L3f
            r8.close()
        L3f:
            r0 = r13
            goto L1f
        L41:
            java.lang.String r0 = "LauncherProvider"
            java.lang.String r1 = "addReminderColumns failed: the target columns already exist"
            android.util.Log.w(r0, r1)     // Catch: android.database.SQLException -> L4f java.lang.Throwable -> L73
            if (r8 == 0) goto L4d
            r8.close()
        L4d:
            r0 = r13
            goto L1f
        L4f:
            r9 = move-exception
            java.lang.String r0 = "LauncherProvider"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = "addReminderColumns failed: "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = r9.getMessage()     // Catch: java.lang.Throwable -> L73
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L73
            android.util.Log.e(r0, r1, r9)     // Catch: java.lang.Throwable -> L73
            if (r8 == 0) goto L71
            r8.close()
        L71:
            r0 = r12
            goto L1f
        L73:
            r0 = move-exception
            if (r8 == 0) goto L79
            r8.close()
        L79:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.LauncherProvider.addReminderColumns(android.database.sqlite.SQLiteDatabase):boolean");
    }
}
