package net.oneplus.h2launcher.quickpage;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Bundle;
import android.os.StrictMode;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetHost;
import net.oneplus.h2launcher.LauncherFiles;
import net.oneplus.h2launcher.LauncherProvider;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.launcherProviderHelper.LauncherProviderUtil;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.ManagedProfileHeuristic;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class ExternalWidgetProvider extends ContentProvider {
    static final /* synthetic */ boolean $assertionsDisabled;
    static final String TAG;
    private Context mContext;
    DatabaseHelper mOpenHelper;

    static {
        $assertionsDisabled = !ExternalWidgetProvider.class.desiredAssertionStatus();
        TAG = ExternalWidgetProvider.class.getSimpleName();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext();
        StrictMode.ThreadPolicy oldPolicy = StrictMode.allowThreadDiskWrites();
        this.mOpenHelper = new DatabaseHelper(this.mContext);
        StrictMode.setThreadPolicy(oldPolicy);
        return true;
    }

    public void addModifiedTime(ContentValues values) {
        values.put(LauncherSettings.ChangeLogColumns.MODIFIED, Long.valueOf(System.currentTimeMillis()));
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        qb.setTables(args.table);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        Cursor result = qb.query(db, projection, args.where, args.args, null, null, sortOrder);
        result.setNotificationUri(this.mContext.getContentResolver(), uri);
        return result;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(Uri uri) {
        SqlArguments args = new SqlArguments(uri, null, null);
        return TextUtils.isEmpty(args.where) ? "vnd.android.cursor.dir/" + args.table : "vnd.android.cursor.item/" + args.table;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, ContentValues values) {
        SqlArguments args = new SqlArguments(uri);
        addModifiedTime(values);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        long rowId = db.insert(args.table, null, values);
        if (rowId < 0) {
            return null;
        }
        Uri newUri = ContentUris.withAppendedId(uri, rowId);
        this.mContext.getContentResolver().notifyChange(newUri, null);
        return newUri;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        return db.delete(args.table, args.where, args.args);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SqlArguments args = new SqlArguments(uri, selection, selectionArgs);
        addModifiedTime(values);
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        return db.update(args.table, values, args.where, args.args);
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        String[] selectionArguments;
        int widgetId;
        char c = 65535;
        switch (method.hashCode()) {
            case 463635465:
                if (method.equals(LauncherSettings.ExternalWidget.METHOD_MANAGE_WIDGET)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                Bundle result = new Bundle();
                String widgetPackage = extras.getString(LauncherSettings.ExternalWidget.EXTRA_WIDGET_PACKAGE);
                String widgetClass = extras.getString(LauncherSettings.ExternalWidget.EXTRA_WIDGET_CLASS);
                ComponentName component = new ComponentName(widgetPackage, widgetClass);
                if (widgetPackage == null || widgetClass == null) {
                    Logger.e(TAG, "the given widget package/class name is invalid: %s / %s", widgetPackage, widgetClass);
                    return null;
                }
                Logger.d(TAG, "%s widget component name: %s", arg, component.flattenToString());
                boolean validComponent = false;
                String callingPackage = getCallingPackage();
                for (String allow : WidgetConstant.ALLOWED_EXTERNAL_WIDGET_OWNER) {
                    if (allow.equals(callingPackage)) {
                        validComponent = true;
                    }
                }
                if (!validComponent) {
                    Logger.e(TAG, "the given component is not allowed for the operation: %s", component.flattenToString());
                    return null;
                }
                char c2 = 65535;
                switch (arg.hashCode()) {
                    case -934610812:
                        if (arg.equals(LauncherSettings.ExternalWidget.ARG_REMOVE_WIDGET)) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -733902135:
                        if (arg.equals(LauncherSettings.ExternalWidget.ARG_SEAT_AVAILABLE)) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 96417:
                        if (arg.equals(LauncherSettings.ExternalWidget.ARG_ADD_WIDGET)) {
                            c2 = 0;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        AppWidgetManager widgetManager = AppWidgetManager.getInstance(getContext());
                        boolean reached = hasQuickPageItemsReachedLimit();
                        result.putInt(LauncherSettings.ExternalWidget.EXTRA_WIDGET_ID, -1);
                        result.putBoolean(LauncherSettings.ExternalWidget.EXTRA_REACH_LIMIT, reached);
                        if (reached) {
                            Logger.d(TAG, "the number of widget has reached the limitation");
                            return result;
                        }
                        try {
                            Method setWidgetPermission = widgetManager.getClass().getMethod("setBindAppWidgetPermission", String.class, Boolean.TYPE);
                            setWidgetPermission.invoke(widgetManager, this.mContext.getPackageName(), true);
                            LauncherAppState state = LauncherAppState.getInstanceNoCreate();
                            if (state != null) {
                                widgetId = state.getAppWidgetHost().allocateAppWidgetId();
                            } else {
                                Logger.d(TAG, "Launcher instance is null, create new widget host");
                                LauncherAppWidgetHost host = new LauncherAppWidgetHost(getContext(), 1024);
                                host.startListening();
                                widgetId = host.allocateAppWidgetId();
                                host.stopListening();
                            }
                            if (widgetManager.bindAppWidgetIdIfAllowed(widgetId, component)) {
                                Logger.d(TAG, "id: %d, component: %s", Integer.valueOf(widgetId), component.flattenToString());
                                ContentValues values = new ContentValues();
                                values.put(LauncherSettings.ExternalWidget.TYPE, (Integer) 0);
                                values.put("widgetId", Integer.valueOf(widgetId));
                                values.put("component", component.flattenToString());
                                if (insert(LauncherSettings.ExternalWidget.CONTENT_URI, values) != null) {
                                    result.putInt(LauncherSettings.ExternalWidget.EXTRA_WIDGET_ID, widgetId);
                                    return result;
                                }
                                Logger.e(TAG, "failed to insert data to external widget provider");
                                return result;
                            }
                            Logger.e(TAG, "no permission to bind app widgets, component invalid?");
                            return result;
                        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                            Logger.e(TAG, "Failed to invoke bindAppWidgetPermission: %s", e);
                            return result;
                        }
                    case 1:
                        int widgetId2 = extras.getInt(LauncherSettings.ExternalWidget.EXTRA_WIDGET_ID, -1);
                        boolean isExternalOnly = extras.getBoolean(LauncherSettings.ExternalWidget.EXTRA_EXTERNAL_ONLY);
                        String content = isExternalOnly ? LauncherSettings.ExternalWidget.CONTENT_EXTERNAL : "";
                        result.putInt(LauncherSettings.ExternalWidget.EXTRA_WIDGET_ID, widgetId2);
                        result.putBoolean(LauncherSettings.ExternalWidget.EXTRA_SUCCESS, false);
                        Logger.d(TAG, "the widget id going to be removed: %d", Integer.valueOf(widgetId2));
                        String selectionStatement = "widgetId = ? AND component = ? AND type = ?";
                        if (isExternalOnly) {
                            selectionStatement = "widgetId = ? AND component = ? AND type = ? AND content = ?";
                            selectionArguments = new String[]{String.valueOf(widgetId2), component.flattenToString(), String.valueOf(2), LauncherSettings.ExternalWidget.CONTENT_EXTERNAL};
                        } else {
                            selectionArguments = new String[]{String.valueOf(widgetId2), component.flattenToString(), String.valueOf(2)};
                        }
                        ContentResolver resolver = this.mContext.getContentResolver();
                        Cursor shelfCursor = null;
                        try {
                            shelfCursor = resolver.query(LauncherSettings.QuickPage.CONTENT_URI, null, selectionStatement, selectionArguments, null);
                            if (!LauncherProviderUtil.isCursorDataAvailable(shelfCursor)) {
                                Logger.e(TAG, "ignored invalid widget data, id: %d, component: %s, external: %B", Integer.valueOf(widgetId2), component.flattenToString(), Boolean.valueOf(isExternalOnly));
                            }
                            if (shelfCursor != null) {
                                shelfCursor.close();
                            }
                            ContentValues values2 = new ContentValues();
                            values2.put(LauncherSettings.ExternalWidget.TYPE, (Integer) 1);
                            values2.put("widgetId", Integer.valueOf(widgetId2));
                            values2.put(LauncherSettings.ExternalWidget.CONTENT, content);
                            values2.put("component", component.flattenToString());
                            if (insert(LauncherSettings.ExternalWidget.CONTENT_URI, values2) != null) {
                                result.putBoolean(LauncherSettings.ExternalWidget.EXTRA_SUCCESS, true);
                                return result;
                            }
                            Logger.e(TAG, "failed to remove external widget: %d", Integer.valueOf(widgetId2));
                            return result;
                        } finally {
                            if (shelfCursor != null) {
                                shelfCursor.close();
                            }
                        }
                    case 2:
                        result.putBoolean(LauncherSettings.ExternalWidget.EXTRA_SEAT_AVAILABLE, !hasQuickPageItemsReachedLimit());
                        return result;
                    default:
                        Logger.w(TAG, "unexpected operation: %s", arg);
                        return null;
                }
            default:
                Logger.w(TAG, "unexpected method: %s", method);
                return null;
        }
    }

    private boolean hasQuickPageItemsReachedLimit() {
        boolean z;
        boolean reached = true;
        String spKey = LauncherAppState.getSharedPreferencesKey();
        SharedPreferences sp = this.mContext.getSharedPreferences(spKey, 0);
        if (sp.getBoolean(LauncherProvider.HAS_LOADED_QUICK_PAGE_DEFAULT_VALUES, false)) {
            ContentResolver resolver = this.mContext.getContentResolver();
            Cursor cursor = null;
            try {
                cursor = resolver.query(LauncherSettings.QuickPage.CONTENT_URI, null, "type != ?", new String[]{String.valueOf(4)}, null);
                if (cursor == null) {
                    Logger.e(TAG, "something wrong in launcher provider, check database");
                    z = true;
                } else {
                    int currentCount = cursor.getCount();
                    if (cursor != null) {
                        cursor.close();
                    }
                    try {
                        cursor = query(LauncherSettings.ExternalWidget.CONTENT_URI, null, "operationType = ?", new String[]{String.valueOf(0)}, null);
                        if (cursor == null) {
                            Logger.e(TAG, "something wrong in external widget provider, check database");
                            z = true;
                            if (cursor != null) {
                                cursor.close();
                            }
                        } else {
                            int addingWidgetCount = cursor.getCount();
                            if (cursor != null) {
                                cursor.close();
                            }
                            try {
                                cursor = query(LauncherSettings.ExternalWidget.CONTENT_URI, null, "operationType = ?", new String[]{String.valueOf(1)}, null);
                                if (cursor == null) {
                                    Logger.e(TAG, "something wrong in external widget provider, check database");
                                    z = true;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                } else {
                                    int removingWidgetCount = cursor.getCount();
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    int totalCount = (currentCount + addingWidgetCount) - removingWidgetCount;
                                    Logger.d(TAG, "total number of widgets: %d, current: %d, adding: %d, removing: %d", Integer.valueOf(totalCount), Integer.valueOf(currentCount), Integer.valueOf(addingWidgetCount), Integer.valueOf(removingWidgetCount));
                                    reached = totalCount + 2 >= 16;
                                }
                            } finally {
                                if (cursor != null) {
                                    cursor.close();
                                }
                            }
                        }
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
                return z;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        Logger.w(TAG, "launcher is never loaded");
        z = reached;
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x00d4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00eb A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #4 {all -> 0x0039, blocks: (B:10:0x001d, B:23:0x0052, B:35:0x006d, B:36:0x0070, B:37:0x0090, B:39:0x00aa, B:42:0x00d7, B:44:0x00eb, B:45:0x00c4, B:48:0x00ca, B:54:0x0363, B:59:0x013d, B:63:0x0143, B:64:0x0148, B:65:0x0149, B:66:0x014d, B:70:0x0153, B:71:0x0158, B:72:0x0159, B:74:0x01a9, B:75:0x01d6, B:87:0x022a, B:91:0x0230, B:92:0x0235, B:93:0x0236, B:95:0x021b, B:98:0x0221, B:99:0x0226, B:100:0x023b, B:101:0x023e, B:114:0x025c, B:118:0x0262, B:119:0x0267, B:120:0x0268, B:133:0x02d9, B:137:0x02df, B:138:0x02e4, B:139:0x02e5, B:144:0x0306, B:148:0x030c, B:149:0x0311, B:150:0x0316, B:158:0x0334, B:162:0x033a, B:163:0x033f, B:164:0x0340, B:166:0x0328, B:169:0x032e, B:170:0x0333, B:171:0x035f, B:172:0x0362, B:104:0x01c6, B:107:0x01cc, B:108:0x01d1, B:109:0x01d2, B:110:0x01d5, B:174:0x027a, B:177:0x0280, B:178:0x0285, B:179:0x0312, B:180:0x0315, B:181:0x00b0, B:184:0x0035, B:185:0x0038, B:7:0x000b, B:15:0x0026, B:18:0x002c, B:19:0x0031, B:20:0x0040, B:28:0x005b, B:31:0x0061, B:32:0x0066, B:33:0x0067, B:56:0x0106, B:58:0x0123, B:142:0x02ea, B:151:0x031b, B:155:0x0321, B:156:0x0326, B:112:0x023f, B:121:0x026d, B:125:0x0273, B:126:0x0278, B:128:0x0286, B:130:0x02b1, B:77:0x01f2, B:79:0x020e, B:83:0x0214, B:84:0x0219, B:86:0x0227), top: B:5:0x000b, inners: #0, #1, #2, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0363 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #4 {all -> 0x0039, blocks: (B:10:0x001d, B:23:0x0052, B:35:0x006d, B:36:0x0070, B:37:0x0090, B:39:0x00aa, B:42:0x00d7, B:44:0x00eb, B:45:0x00c4, B:48:0x00ca, B:54:0x0363, B:59:0x013d, B:63:0x0143, B:64:0x0148, B:65:0x0149, B:66:0x014d, B:70:0x0153, B:71:0x0158, B:72:0x0159, B:74:0x01a9, B:75:0x01d6, B:87:0x022a, B:91:0x0230, B:92:0x0235, B:93:0x0236, B:95:0x021b, B:98:0x0221, B:99:0x0226, B:100:0x023b, B:101:0x023e, B:114:0x025c, B:118:0x0262, B:119:0x0267, B:120:0x0268, B:133:0x02d9, B:137:0x02df, B:138:0x02e4, B:139:0x02e5, B:144:0x0306, B:148:0x030c, B:149:0x0311, B:150:0x0316, B:158:0x0334, B:162:0x033a, B:163:0x033f, B:164:0x0340, B:166:0x0328, B:169:0x032e, B:170:0x0333, B:171:0x035f, B:172:0x0362, B:104:0x01c6, B:107:0x01cc, B:108:0x01d1, B:109:0x01d2, B:110:0x01d5, B:174:0x027a, B:177:0x0280, B:178:0x0285, B:179:0x0312, B:180:0x0315, B:181:0x00b0, B:184:0x0035, B:185:0x0038, B:7:0x000b, B:15:0x0026, B:18:0x002c, B:19:0x0031, B:20:0x0040, B:28:0x005b, B:31:0x0061, B:32:0x0066, B:33:0x0067, B:56:0x0106, B:58:0x0123, B:142:0x02ea, B:151:0x031b, B:155:0x0321, B:156:0x0326, B:112:0x023f, B:121:0x026d, B:125:0x0273, B:126:0x0278, B:128:0x0286, B:130:0x02b1, B:77:0x01f2, B:79:0x020e, B:83:0x0214, B:84:0x0219, B:86:0x0227), top: B:5:0x000b, inners: #0, #1, #2, #3, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void syncWithLauncherProvider(net.oneplus.h2launcher.Launcher r25) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.quickpage.ExternalWidgetProvider.syncWithLauncherProvider(net.oneplus.h2launcher.Launcher):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DatabaseHelper extends SQLiteOpenHelper {
        private static final int DATABASE_VERSION = 1;
        private final Context mContext;

        DatabaseHelper(Context context) {
            super(context, LauncherFiles.NOTE_WIDGET_DB, (SQLiteDatabase.CursorFactory) null, 1);
            this.mContext = context;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            Logger.d(ExternalWidgetProvider.TAG, "creating new note widget database");
            db.execSQL("CREATE TABLE widgets (_id INTEGER PRIMARY KEY,operationType INTEGER NOT NULL DEFAULT -1,widgetId INTEGER NOT NULL DEFAULT -1,CONTENT TEXT,component TEXT,modified INTEGER NOT NULL DEFAULT 0);");
            ManagedProfileHeuristic.processAllUsers(Collections.emptyList(), this.mContext);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Logger.d(ExternalWidgetProvider.TAG, "onUpgrade triggered: " + oldVersion + " newVersion " + newVersion);
            createEmptyDB(db);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Logger.w(ExternalWidgetProvider.TAG, "onDowngrade triggered: " + oldVersion + " newVersion " + newVersion);
            createEmptyDB(db);
        }

        public void createEmptyDB(SQLiteDatabase db) {
            db.execSQL("DROP TABLE IF EXISTS widgets");
            onCreate(db);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SqlArguments {
        public final String[] args;
        public final String table;
        public final String where;

        SqlArguments(Uri url, String where, String[] args) {
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
    }
}
