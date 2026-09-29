package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHost;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import net.oneplus.h2launcher.AutoInstallsLayout;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class DefaultLayoutParser extends AutoInstallsLayout {
    private static final String ATTR_CONTAINER = "container";
    private static final String ATTR_FOLDER_ITEMS = "folderItems";
    private static final String ATTR_SCREEN = "screen";
    protected static final String ATTR_URI = "uri";
    private static final String TAG = "DefaultLayoutParser";
    private static final String TAG_APPWIDGET = "appwidget";
    private static final String TAG_CUSTOMWIDGET = "customwidget";
    protected static final String TAG_FAVORITE = "favorite";
    private static final String TAG_FAVORITES = "favorites";
    private static final String TAG_FOLDER = "folder";
    private static final String TAG_PARTNER_FOLDER = "partner-folder";
    protected static final String TAG_RESOLVE = "resolve";
    private static final String TAG_SHORTCUT = "shortcut";

    public DefaultLayoutParser(Context context, AppWidgetHost appWidgetHost, AutoInstallsLayout.LayoutParserCallback callback, Resources sourceRes, int layoutId) {
        super(context, appWidgetHost, callback, sourceRes, layoutId, "favorites");
    }

    public DefaultLayoutParser(Context context, AppWidgetHost appWidgetHost, AutoInstallsLayout.LayoutParserCallback callback, Resources sourceRes, int layoutId, String rootTag, int hotseatAllAppsRank) {
        super(context, appWidgetHost, callback, sourceRes, layoutId, rootTag, hotseatAllAppsRank);
    }

    @Override // net.oneplus.h2launcher.AutoInstallsLayout
    protected HashMap<String, AutoInstallsLayout.TagParser> getFolderElementsMap() {
        return getFolderElementsMap(this.mSourceRes);
    }

    HashMap<String, AutoInstallsLayout.TagParser> getFolderElementsMap(Resources res) {
        HashMap<String, AutoInstallsLayout.TagParser> parsers = new HashMap<>();
        parsers.put(TAG_FAVORITE, new AppShortcutWithUriParser());
        parsers.put(TAG_SHORTCUT, new UriShortcutParser(res));
        return parsers;
    }

    @Override // net.oneplus.h2launcher.AutoInstallsLayout
    protected HashMap<String, AutoInstallsLayout.TagParser> getLayoutElementsMap() {
        HashMap<String, AutoInstallsLayout.TagParser> parsers = new HashMap<>();
        parsers.put(TAG_FAVORITE, new AppShortcutWithUriParser());
        parsers.put(TAG_APPWIDGET, new AutoInstallsLayout.AppWidgetParser());
        parsers.put(TAG_CUSTOMWIDGET, new AutoInstallsLayout.CustomWidgetParser());
        parsers.put(TAG_SHORTCUT, new UriShortcutParser(this.mSourceRes));
        parsers.put(TAG_RESOLVE, new ResolveParser());
        parsers.put("folder", new MyFolderParser());
        parsers.put(TAG_PARTNER_FOLDER, new PartnerFolderParser());
        return parsers;
    }

    @Override // net.oneplus.h2launcher.AutoInstallsLayout
    protected void parseContainerAndScreen(XmlResourceParser parser, long[] out) {
        out[0] = -100;
        String strContainer = getAttributeValue(parser, "container");
        if (strContainer != null) {
            out[0] = Long.valueOf(strContainer).longValue();
        }
        out[1] = Long.parseLong(getAttributeValue(parser, "screen"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AppShortcutWithUriParser extends AutoInstallsLayout.AppShortcutParser {
        AppShortcutWithUriParser() {
            super();
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.AppShortcutParser
        protected long invalidPackageOrClass(XmlResourceParser parser) {
            String uri = AutoInstallsLayout.getAttributeValue(parser, DefaultLayoutParser.ATTR_URI);
            if (TextUtils.isEmpty(uri)) {
                Log.e(DefaultLayoutParser.TAG, "Skipping invalid <favorite> with no component or uri");
                return -1L;
            }
            try {
                Intent metaIntent = Intent.parseUri(uri, 0);
                ResolveInfo resolved = DefaultLayoutParser.this.mPackageManager.resolveActivity(metaIntent, 65536);
                List<ResolveInfo> appList = DefaultLayoutParser.this.mPackageManager.queryIntentActivities(metaIntent, 65536);
                if (wouldLaunchResolverActivity(resolved, appList)) {
                    ResolveInfo systemApp = getSingleSystemActivity(appList);
                    if (systemApp == null) {
                        Log.w(DefaultLayoutParser.TAG, "No preference or single system activity found for " + metaIntent.toString());
                        return -1L;
                    }
                    resolved = systemApp;
                }
                ActivityInfo info = resolved.activityInfo;
                Intent intent = DefaultLayoutParser.this.mPackageManager.getLaunchIntentForPackage(info.packageName);
                if (intent == null) {
                    return -1L;
                }
                intent.setFlags(270532608);
                return DefaultLayoutParser.this.addShortcut(info.loadLabel(DefaultLayoutParser.this.mPackageManager).toString(), intent, 0);
            } catch (URISyntaxException e) {
                Log.e(DefaultLayoutParser.TAG, "Unable to add meta-favorite: " + uri, e);
                return -1L;
            }
        }

        private ResolveInfo getSingleSystemActivity(List<ResolveInfo> appList) {
            ResolveInfo systemResolve = null;
            int N = appList.size();
            for (int i = 0; i < N; i++) {
                try {
                    ApplicationInfo info = DefaultLayoutParser.this.mPackageManager.getApplicationInfo(appList.get(i).activityInfo.packageName, 0);
                    if ((info.flags & 1) != 0) {
                        if (systemResolve != null) {
                            return null;
                        }
                        ResolveInfo systemResolve2 = appList.get(i);
                        systemResolve = systemResolve2;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w(DefaultLayoutParser.TAG, "Unable to get info about resolve results", e);
                    return null;
                }
            }
            return systemResolve;
        }

        private boolean wouldLaunchResolverActivity(ResolveInfo resolved, List<ResolveInfo> appList) {
            for (int i = 0; i < appList.size(); i++) {
                ResolveInfo tmp = appList.get(i);
                if (tmp.activityInfo.name.equals(resolved.activityInfo.name) && tmp.activityInfo.packageName.equals(resolved.activityInfo.packageName)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class UriShortcutParser extends AutoInstallsLayout.ShortcutParser {
        public UriShortcutParser(Resources iconRes) {
            super(iconRes);
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.ShortcutParser
        protected Intent parseIntent(XmlResourceParser parser) {
            String uri = null;
            try {
                uri = AutoInstallsLayout.getAttributeValue(parser, DefaultLayoutParser.ATTR_URI);
                return Intent.parseUri(uri, 0);
            } catch (URISyntaxException e) {
                Log.w(DefaultLayoutParser.TAG, "Shortcut has malformed uri: " + uri);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    protected class ResolveParser implements AutoInstallsLayout.TagParser {
        private final AppShortcutWithUriParser mChildParser;

        /* JADX INFO: Access modifiers changed from: protected */
        public ResolveParser() {
            this.mChildParser = new AppShortcutWithUriParser();
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) throws XmlPullParserException, IOException {
            int groupDepth = parser.getDepth();
            long addedId = -1;
            while (true) {
                int type = parser.next();
                if (type != 3 || parser.getDepth() > groupDepth) {
                    if (type == 2 && addedId <= -1) {
                        String fallback_item_name = parser.getName();
                        if (DefaultLayoutParser.TAG_FAVORITE.equals(fallback_item_name)) {
                            addedId = this.mChildParser.parseAndAdd(parser);
                        } else {
                            Log.e(DefaultLayoutParser.TAG, "Fallback groups can contain only favorites, found " + fallback_item_name);
                        }
                    }
                } else {
                    return addedId;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    class PartnerFolderParser implements AutoInstallsLayout.TagParser {
        PartnerFolderParser() {
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) throws XmlPullParserException, IOException {
            Resources partnerRes;
            int resId;
            Partner partner = Partner.get(DefaultLayoutParser.this.mPackageManager);
            if (partner == null || (resId = (partnerRes = partner.getResources()).getIdentifier(Partner.RES_FOLDER, "xml", partner.getPackageName())) == 0) {
                return -1L;
            }
            XmlResourceParser partnerParser = partnerRes.getXml(resId);
            AutoInstallsLayout.beginDocument(partnerParser, "folder");
            AutoInstallsLayout.FolderParser folderParser = new AutoInstallsLayout.FolderParser(DefaultLayoutParser.this.getFolderElementsMap(partnerRes));
            return folderParser.parseAndAdd(partnerParser);
        }
    }

    /* loaded from: classes.dex */
    class MyFolderParser extends AutoInstallsLayout.FolderParser {
        MyFolderParser() {
            super(DefaultLayoutParser.this);
        }

        @Override // net.oneplus.h2launcher.AutoInstallsLayout.FolderParser, net.oneplus.h2launcher.AutoInstallsLayout.TagParser
        public long parseAndAdd(XmlResourceParser parser) throws XmlPullParserException, IOException {
            int resId = AutoInstallsLayout.getAttributeResourceValue(parser, DefaultLayoutParser.ATTR_FOLDER_ITEMS, 0);
            if (resId != 0) {
                parser = DefaultLayoutParser.this.mSourceRes.getXml(resId);
                AutoInstallsLayout.beginDocument(parser, "folder");
            }
            return super.parseAndAdd(parser);
        }
    }
}
