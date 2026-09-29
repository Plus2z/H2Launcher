package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.Patterns;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import net.oneplus.h2launcher.LauncherProvider;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.launcherProviderHelper.LauncherProviderUtil;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AutoInstallsLayout {
    private static final String ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE";
    static final String ACTION_LAUNCHER_CUSTOMIZATION = "android.autoinstalls.config.action.PLAY_AUTO_INSTALL";
    private static final String ATTR_CLASS_NAME = "className";
    private static final String ATTR_CONTAINER = "container";
    private static final String ATTR_ICON = "icon";
    private static final String ATTR_KEY = "key";
    private static final String ATTR_PACKAGE_NAME = "packageName";
    private static final String ATTR_RANK = "rank";
    private static final String ATTR_SCREEN = "screen";
    private static final String ATTR_SPAN_X = "spanX";
    private static final String ATTR_SPAN_Y = "spanY";
    private static final String ATTR_TITLE = "title";
    private static final String ATTR_URL = "url";
    private static final String ATTR_VALUE = "value";
    private static final String ATTR_WORKSPACE = "workspace";
    private static final String ATTR_X = "x";
    private static final String ATTR_Y = "y";
    private static final String FORMATTED_LAYOUT_RES = "default_layout_%dx%d";
    private static final String FORMATTED_LAYOUT_RES_WITH_HOSTEAT = "default_layout_%dx%d_h%s";
    private static final String HOTSEAT_CONTAINER_NAME = LauncherSettings.Favorites.containerToString(LauncherSettings.Favorites.CONTAINER_HOTSEAT);
    private static final String LAYOUT_RES = "default_layout";
    private static final boolean LOGD = false;
    private static final String TAG = "AutoInstalls";
    private static final String TAG_APPWIDGET = "appwidget";
    private static final String TAG_APP_ICON = "appicon";
    private static final String TAG_AUTO_INSTALL = "autoinstall";
    private static final String TAG_CUSTOMWIDGET = "customwidget";
    private static final String TAG_EXTRA = "extra";
    private static final String TAG_FOLDER = "folder";
    private static final String TAG_INCLUDE = "include";
    private static final String TAG_SHORTCUT = "shortcut";
    private static final String TAG_WORKSPACE = "workspace";
    final AppWidgetHost mAppWidgetHost;
    protected final LayoutParserCallback mCallback;
    final Context mContext;
    protected SQLiteDatabase mDb;
    private final int mHotseatAllAppsRank;
    protected final int mLayoutId;
    protected final PackageManager mPackageManager;
    protected final String mRootTag;
    protected final Resources mSourceRes;
    private final long[] mTemp;
    final ContentValues mValues;

    /* loaded from: classes.dex */
    public interface LayoutParserCallback {
        long generateNewItemId();

        long insertAndCheck(SQLiteDatabase sQLiteDatabase, ContentValues contentValues);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface TagParser {
        long parseAndAdd(XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AutoInstallsLayout get(Context context, AppWidgetHost appWidgetHost, LayoutParserCallback callback) {
        Pair<String, Resources> customizationApkInfo = Utilities.findSystemApk(ACTION_LAUNCHER_CUSTOMIZATION, context.getPackageManager());
        if (customizationApkInfo == null) {
            return null;
        }
        return get(context, (String) customizationApkInfo.first, (Resources) customizationApkInfo.second, appWidgetHost, callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AutoInstallsLayout get(Context context, String pkg, Resources targetRes, AppWidgetHost appWidgetHost, LayoutParserCallback callback) {
        InvariantDeviceProfile grid = LauncherAppState.getInstance().getInvariantDeviceProfile();
        String layoutName = String.format(Locale.ENGLISH, FORMATTED_LAYOUT_RES_WITH_HOSTEAT, Integer.valueOf(grid.numColumns), Integer.valueOf(grid.numRows), Integer.valueOf(grid.numHotseatIcons));
        int layoutId = targetRes.getIdentifier(layoutName, "xml", pkg);
        if (layoutId == 0) {
            Log.d(TAG, "Formatted layout: " + layoutName + " not found. Trying layout without hosteat");
            layoutName = String.format(Locale.ENGLISH, FORMATTED_LAYOUT_RES, Integer.valueOf(grid.numColumns), Integer.valueOf(grid.numRows));
            layoutId = targetRes.getIdentifier(layoutName, "xml", pkg);
        }
        if (layoutId == 0) {
            Log.d(TAG, "Formatted layout: " + layoutName + " not found. Trying the default layout");
            layoutId = targetRes.getIdentifier(LAYOUT_RES, "xml", pkg);
        }
        if (layoutId != 0) {
            return new AutoInstallsLayout(context, appWidgetHost, callback, targetRes, layoutId, "workspace");
        }
        Log.e(TAG, "Layout definition not found in package: " + pkg);
        return null;
    }

    public AutoInstallsLayout(Context context, AppWidgetHost appWidgetHost, LayoutParserCallback callback, Resources res, int layoutId, String rootTag) {
        this(context, appWidgetHost, callback, res, layoutId, rootTag, LauncherAppState.getInstance().getInvariantDeviceProfile().hotseatAllAppsRank);
    }

    public AutoInstallsLayout(Context context, AppWidgetHost appWidgetHost, LayoutParserCallback callback, Resources res, int layoutId, String rootTag, int hotseatAllAppsRank) {
        this.mTemp = new long[2];
        this.mContext = context;
        this.mAppWidgetHost = appWidgetHost;
        this.mCallback = callback;
        this.mPackageManager = context.getPackageManager();
        this.mValues = new ContentValues();
        this.mRootTag = rootTag;
        this.mSourceRes = res;
        this.mLayoutId = layoutId;
        this.mHotseatAllAppsRank = hotseatAllAppsRank;
    }

    public int loadLayout(SQLiteDatabase db, ArrayList<Long> screenIds) {
        this.mDb = db;
        try {
            return parseLayout(this.mLayoutId, screenIds);
        } catch (Exception e) {
            Log.w(TAG, "Got exception parsing layout.", e);
            return -1;
        }
    }

    protected int parseLayout(int layoutId, ArrayList<Long> screenIds) throws XmlPullParserException, IOException {
        XmlResourceParser parser = this.mSourceRes.getXml(layoutId);
        beginDocument(parser, this.mRootTag);
        int depth = parser.getDepth();
        HashMap<String, TagParser> tagParserMap = getLayoutElementsMap();
        int count = 0;
        while (true) {
            int type = parser.next();
            if ((type != 3 || parser.getDepth() > depth) && type != 1) {
                if (type == 2) {
                    count += parseAndAddNode(parser, tagParserMap, screenIds);
                }
            }
        }
        return count;
    }

    protected void parseContainerAndScreen(XmlResourceParser parser, long[] out) {
        if (HOTSEAT_CONTAINER_NAME.equals(getAttributeValue(parser, "container"))) {
            out[0] = -101;
            long rank = Long.parseLong(getAttributeValue(parser, "rank"));
            if (rank >= this.mHotseatAllAppsRank) {
                rank++;
            }
            out[1] = rank;
            return;
        }
        out[0] = -100;
        out[1] = Long.parseLong(getAttributeValue(parser, "screen"));
    }

    protected int parseAndAddNode(XmlResourceParser parser, HashMap<String, TagParser> tagParserMap, ArrayList<Long> screenIds) throws XmlPullParserException, IOException {
        if (TAG_INCLUDE.equals(parser.getName())) {
            int resId = getAttributeResourceValue(parser, "workspace", 0);
            if (resId != 0) {
                return parseLayout(resId, screenIds);
            }
            return 0;
        }
        this.mValues.clear();
        parseContainerAndScreen(parser, this.mTemp);
        long container = this.mTemp[0];
        long screenId = this.mTemp[1];
        this.mValues.put("container", Long.valueOf(container));
        this.mValues.put("screen", Long.valueOf(screenId));
        this.mValues.put(LauncherSettings.Favorites.CELLX, getAttributeValue(parser, ATTR_X));
        this.mValues.put(LauncherSettings.Favorites.CELLY, getAttributeValue(parser, ATTR_Y));
        TagParser tagParser = tagParserMap.get(parser.getName());
        if (tagParser == null) {
            return 0;
        }
        long newElementId = tagParser.parseAndAdd(parser);
        if (newElementId >= 0) {
            if (!screenIds.contains(Long.valueOf(screenId)) && container == -100) {
                screenIds.add(Long.valueOf(screenId));
            }
            return 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long addShortcut(String title, Intent intent, int type) {
        long id = this.mCallback.generateNewItemId();
        this.mValues.put(LauncherSettings.BaseLauncherColumns.INTENT, intent.toUri(0));
        this.mValues.put("title", title);
        this.mValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(type));
        this.mValues.put("spanX", (Integer) 1);
        this.mValues.put("spanY", (Integer) 1);
        this.mValues.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(id));
        if (this.mCallback.insertAndCheck(this.mDb, this.mValues) < 0) {
            return -1L;
        }
        return id;
    }

    protected HashMap<String, TagParser> getFolderElementsMap() {
        HashMap<String, TagParser> parsers = new HashMap<>();
        parsers.put(TAG_APP_ICON, new AppShortcutParser());
        parsers.put(TAG_AUTO_INSTALL, new AutoInstallParser());
        parsers.put(TAG_SHORTCUT, new ShortcutParser(this.mSourceRes));
        return parsers;
    }

    protected HashMap<String, TagParser> getLayoutElementsMap() {
        HashMap<String, TagParser> parsers = new HashMap<>();
        parsers.put(TAG_APP_ICON, new AppShortcutParser());
        parsers.put(TAG_AUTO_INSTALL, new AutoInstallParser());
        parsers.put("folder", new FolderParser(this));
        parsers.put(TAG_APPWIDGET, new AppWidgetParser());
        parsers.put(TAG_CUSTOMWIDGET, new CustomWidgetParser());
        parsers.put(TAG_SHORTCUT, new ShortcutParser(this.mSourceRes));
        return parsers;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class AppShortcutParser implements TagParser {
        /* JADX INFO: Access modifiers changed from: protected */
        public AppShortcutParser() {
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) {
            ComponentName cn;
            ActivityInfo info;
            String packageName = AutoInstallsLayout.getAttributeValue(parser, "packageName");
            String className = AutoInstallsLayout.getAttributeValue(parser, "className");
            if (!TextUtils.isEmpty(packageName)) {
                try {
                    if (!TextUtils.isEmpty(className)) {
                        try {
                            if (packageName.equals(Utilities.DIALER_PACKAGE_M) && className.equals(Utilities.DIALER_CLASSNAME) && Utilities.ATLEAST_ANDROID_N) {
                                packageName = Utilities.DIALER_PACKAGE_N;
                            }
                            cn = new ComponentName(packageName, className);
                            info = AutoInstallsLayout.this.mPackageManager.getActivityInfo(cn, 0);
                        } catch (PackageManager.NameNotFoundException e) {
                            String[] packages = AutoInstallsLayout.this.mPackageManager.currentToCanonicalPackageNames(new String[]{packageName});
                            cn = new ComponentName(packages[0], className);
                            info = AutoInstallsLayout.this.mPackageManager.getActivityInfo(cn, 0);
                        }
                        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null).addCategory("android.intent.category.LAUNCHER").setComponent(cn).setFlags(270532608);
                        return AutoInstallsLayout.this.addShortcut(info.loadLabel(AutoInstallsLayout.this.mPackageManager).toString(), intent, 0);
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e(AutoInstallsLayout.TAG, "Unable to add favorite: " + packageName + "/" + className, e2);
                    return -1L;
                }
            }
            return invalidPackageOrClass(parser);
        }

        protected long invalidPackageOrClass(XmlResourceParser parser) {
            Log.w(AutoInstallsLayout.TAG, "Skipping invalid <favorite> with no component");
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class AutoInstallParser implements TagParser {
        protected AutoInstallParser() {
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) {
            String packageName = AutoInstallsLayout.getAttributeValue(parser, "packageName");
            String className = AutoInstallsLayout.getAttributeValue(parser, "className");
            if (TextUtils.isEmpty(packageName) || TextUtils.isEmpty(className)) {
                return -1L;
            }
            AutoInstallsLayout.this.mValues.put(LauncherSettings.Favorites.RESTORED, (Integer) 2);
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null).addCategory("android.intent.category.LAUNCHER").setComponent(new ComponentName(packageName, className)).setFlags(270532608);
            return AutoInstallsLayout.this.addShortcut(AutoInstallsLayout.this.mContext.getString(R.string.package_state_unknown), intent, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class ShortcutParser implements TagParser {
        private final Resources mIconRes;

        public ShortcutParser(Resources iconRes) {
            this.mIconRes = iconRes;
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) {
            Intent intent;
            Drawable icon;
            int titleResId = AutoInstallsLayout.getAttributeResourceValue(parser, "title", 0);
            int iconId = AutoInstallsLayout.getAttributeResourceValue(parser, "icon", 0);
            if (titleResId == 0 || iconId == 0 || (intent = parseIntent(parser)) == null || (icon = this.mIconRes.getDrawable(iconId)) == null) {
                return -1L;
            }
            ItemInfo.writeBitmap(AutoInstallsLayout.this.mValues, Utilities.createIconBitmap(icon, AutoInstallsLayout.this.mContext));
            AutoInstallsLayout.this.mValues.put("iconType", (Integer) 0);
            AutoInstallsLayout.this.mValues.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, this.mIconRes.getResourcePackageName(iconId));
            AutoInstallsLayout.this.mValues.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, this.mIconRes.getResourceName(iconId));
            intent.setFlags(270532608);
            return AutoInstallsLayout.this.addShortcut(AutoInstallsLayout.this.mSourceRes.getString(titleResId), intent, 1);
        }

        protected Intent parseIntent(XmlResourceParser parser) {
            String url = AutoInstallsLayout.getAttributeValue(parser, "url");
            if (TextUtils.isEmpty(url) || !Patterns.WEB_URL.matcher(url).matches()) {
                return null;
            }
            return new Intent("android.intent.action.VIEW", (Uri) null).setData(Uri.parse(url));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class AppWidgetParser implements TagParser {
        /* JADX INFO: Access modifiers changed from: protected */
        public AppWidgetParser() {
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) throws XmlPullParserException, IOException {
            String packageName = AutoInstallsLayout.getAttributeValue(parser, "packageName");
            String className = AutoInstallsLayout.getAttributeValue(parser, "className");
            if (TextUtils.isEmpty(packageName) || TextUtils.isEmpty(className)) {
                return -1L;
            }
            ComponentName cn = new ComponentName(packageName, className);
            try {
                AutoInstallsLayout.this.mPackageManager.getReceiverInfo(cn, 0);
            } catch (Exception e) {
                String[] packages = AutoInstallsLayout.this.mPackageManager.currentToCanonicalPackageNames(new String[]{packageName});
                cn = new ComponentName(packages[0], className);
                try {
                    AutoInstallsLayout.this.mPackageManager.getReceiverInfo(cn, 0);
                } catch (Exception e2) {
                    return -1L;
                }
            }
            AutoInstallsLayout.this.mValues.put("spanX", AutoInstallsLayout.getAttributeValue(parser, "spanX"));
            AutoInstallsLayout.this.mValues.put("spanY", AutoInstallsLayout.getAttributeValue(parser, "spanY"));
            Bundle extras = new Bundle();
            int widgetDepth = parser.getDepth();
            while (true) {
                int type = parser.next();
                if (type != 3 || parser.getDepth() > widgetDepth) {
                    if (type == 2) {
                        if (AutoInstallsLayout.TAG_EXTRA.equals(parser.getName())) {
                            String key = AutoInstallsLayout.getAttributeValue(parser, "key");
                            String value = AutoInstallsLayout.getAttributeValue(parser, "value");
                            if (key == null || value == null) {
                                break;
                            }
                            extras.putString(key, value);
                        } else {
                            throw new RuntimeException("Widgets can contain only extras");
                        }
                    }
                } else {
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(AutoInstallsLayout.this.mContext);
                    long insertedId = -1;
                    try {
                        int appWidgetId = AutoInstallsLayout.this.mAppWidgetHost.allocateAppWidgetId();
                        if (!appWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, cn)) {
                            insertedId = -1;
                        } else {
                            AutoInstallsLayout.this.mValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 4);
                            AutoInstallsLayout.this.mValues.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(appWidgetId));
                            AutoInstallsLayout.this.mValues.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, cn.flattenToString());
                            AutoInstallsLayout.this.mValues.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(AutoInstallsLayout.this.mCallback.generateNewItemId()));
                            insertedId = AutoInstallsLayout.this.mCallback.insertAndCheck(AutoInstallsLayout.this.mDb, AutoInstallsLayout.this.mValues);
                            if (insertedId < 0) {
                                AutoInstallsLayout.this.mAppWidgetHost.deleteAppWidgetId(appWidgetId);
                            } else if (!extras.isEmpty()) {
                                Intent intent = new Intent(AutoInstallsLayout.ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE);
                                intent.setComponent(cn);
                                intent.putExtras(extras);
                                intent.putExtra(LauncherSettings.Favorites.APPWIDGET_ID, appWidgetId);
                                AutoInstallsLayout.this.mContext.sendBroadcast(intent);
                            }
                        }
                        return insertedId;
                    } catch (RuntimeException e3) {
                        return insertedId;
                    }
                }
            }
            throw new RuntimeException("Widget extras must have a key and value");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class CustomWidgetParser implements TagParser {
        /* JADX INFO: Access modifiers changed from: protected */
        public CustomWidgetParser() {
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) throws XmlPullParserException, IOException {
            String packageName = AutoInstallsLayout.getAttributeValue(parser, "packageName");
            String className = AutoInstallsLayout.getAttributeValue(parser, "className");
            if (TextUtils.isEmpty(packageName) || TextUtils.isEmpty(className)) {
                return -1L;
            }
            ComponentName cn = new ComponentName(packageName, className);
            AutoInstallsLayout.this.mValues.put("spanX", AutoInstallsLayout.getAttributeValue(parser, "spanX"));
            AutoInstallsLayout.this.mValues.put("spanY", AutoInstallsLayout.getAttributeValue(parser, "spanY"));
            long insertedId = -1;
            try {
                int appWidgetId = AutoInstallsLayout.this.mAppWidgetHost.allocateAppWidgetId();
                AutoInstallsLayout.this.mValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 5);
                AutoInstallsLayout.this.mValues.put(LauncherSettings.Favorites.APPWIDGET_ID, (Integer) (-100));
                AutoInstallsLayout.this.mValues.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, cn.flattenToString());
                AutoInstallsLayout.this.mValues.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(AutoInstallsLayout.this.mCallback.generateNewItemId()));
                insertedId = AutoInstallsLayout.this.mCallback.insertAndCheck(AutoInstallsLayout.this.mDb, AutoInstallsLayout.this.mValues);
                if (insertedId < 0) {
                    AutoInstallsLayout.this.mAppWidgetHost.deleteAppWidgetId(appWidgetId);
                    return insertedId;
                }
                return insertedId;
            } catch (RuntimeException e) {
                return insertedId;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class FolderParser implements TagParser {
        private final HashMap<String, TagParser> mFolderElements;

        public FolderParser(AutoInstallsLayout this$0) {
            this(this$0.getFolderElementsMap());
        }

        public FolderParser(HashMap<String, TagParser> elements) {
            this.mFolderElements = elements;
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) throws XmlPullParserException, IOException {
            String title;
            int titleResId = AutoInstallsLayout.getAttributeResourceValue(parser, "title", 0);
            if (titleResId != 0) {
                title = AutoInstallsLayout.this.mSourceRes.getString(titleResId);
            } else {
                title = AutoInstallsLayout.this.mContext.getResources().getString(R.string.folder_name);
            }
            AutoInstallsLayout.this.mValues.put("title", title);
            AutoInstallsLayout.this.mValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, (Integer) 2);
            AutoInstallsLayout.this.mValues.put("spanX", (Integer) 1);
            AutoInstallsLayout.this.mValues.put("spanY", (Integer) 1);
            AutoInstallsLayout.this.mValues.put(GlobalSearchDbHelper.COLUMN_ID, Long.valueOf(AutoInstallsLayout.this.mCallback.generateNewItemId()));
            long folderId = AutoInstallsLayout.this.mCallback.insertAndCheck(AutoInstallsLayout.this.mDb, AutoInstallsLayout.this.mValues);
            if (folderId < 0) {
                return -1L;
            }
            ContentValues myValues = new ContentValues(AutoInstallsLayout.this.mValues);
            ArrayList<Long> folderItems = new ArrayList<>();
            int folderDepth = parser.getDepth();
            int rank = 0;
            while (true) {
                int type = parser.next();
                if (type != 3 || parser.getDepth() > folderDepth) {
                    if (type == 2) {
                        AutoInstallsLayout.this.mValues.clear();
                        AutoInstallsLayout.this.mValues.put("container", Long.valueOf(folderId));
                        AutoInstallsLayout.this.mValues.put("rank", Integer.valueOf(rank));
                        TagParser tagParser = this.mFolderElements.get(parser.getName());
                        if (tagParser != null) {
                            long id = tagParser.parseAndAdd(parser);
                            if (id >= 0) {
                                folderItems.add(Long.valueOf(id));
                                rank++;
                            }
                        } else {
                            throw new RuntimeException("Invalid folder item " + parser.getName());
                        }
                    }
                } else {
                    if (folderItems.size() >= 2) {
                        return folderId;
                    }
                    Uri uri = LauncherSettings.Favorites.getContentUri(folderId);
                    LauncherProvider.SqlArguments args = new LauncherProvider.SqlArguments(uri, null, null);
                    AutoInstallsLayout.this.mDb.delete(args.table, args.where, args.args);
                    if (folderItems.size() != 1) {
                        return -1L;
                    }
                    ContentValues childValues = new ContentValues();
                    AutoInstallsLayout.copyInteger(myValues, childValues, "container");
                    AutoInstallsLayout.copyInteger(myValues, childValues, "screen");
                    AutoInstallsLayout.copyInteger(myValues, childValues, LauncherSettings.Favorites.CELLX);
                    AutoInstallsLayout.copyInteger(myValues, childValues, LauncherSettings.Favorites.CELLY);
                    long addedId = folderItems.get(0).longValue();
                    AutoInstallsLayout.this.mDb.update(LauncherProviderUtil.getFavoritesTable(), childValues, "_id=" + addedId, null);
                    return addedId;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final void beginDocument(XmlPullParser parser, String firstElementName) throws XmlPullParserException, IOException {
        int type;
        do {
            type = parser.next();
            if (type == 2) {
                break;
            }
        } while (type != 1);
        if (type != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (!parser.getName().equals(firstElementName)) {
            throw new XmlPullParserException("Unexpected start tag: found " + parser.getName() + ", expected " + firstElementName);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getAttributeValue(XmlResourceParser parser, String attribute) {
        String value = parser.getAttributeValue("http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher", attribute);
        if (value == null) {
            return parser.getAttributeValue(null, attribute);
        }
        return value;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getAttributeResourceValue(XmlResourceParser parser, String attribute, int defaultValue) {
        int value = parser.getAttributeResourceValue("http://schemas.android.com/apk/res-auto/net.oneplus.h2launcher", attribute, defaultValue);
        if (value == defaultValue) {
            return parser.getAttributeResourceValue(null, attribute, defaultValue);
        }
        return value;
    }

    static void copyInteger(ContentValues from, ContentValues to, String key) {
        to.put(key, from.getAsInteger(key));
    }
}
