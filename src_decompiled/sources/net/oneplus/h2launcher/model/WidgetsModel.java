package net.oneplus.h2launcher.model;

import android.content.ComponentName;
import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.AppFilter;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.AlphabeticIndexCompat;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.util.ComponentNameHelper;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class WidgetsModel {
    private static final boolean DEBUG = false;
    private static final String TAG = "WidgetsModel";
    private final AppFilter mAppFilter;
    private final Comparator<ItemInfo> mAppNameComparator;
    private final AppWidgetManagerCompat mAppWidgetMgr;
    private final AssetCache mAssetCache;
    private Context mContext;
    private AlphabeticIndexCompat mIndexer;
    private final ArrayList<PackageItemInfo> mPackageItemInfos;
    private ArrayList<WidgetItem> mRawList;
    private final WidgetsAndShortcutNameComparator mWidgetAndShortcutNameComparator;
    private final HashMap<PackageItemInfo, ArrayList<WidgetItem>> mWidgetsList;

    public WidgetsModel(Context context, AssetCache assetCache, AppFilter appFilter) {
        this.mAppWidgetMgr = AppWidgetManagerCompat.getInstance(context);
        this.mWidgetAndShortcutNameComparator = new WidgetsAndShortcutNameComparator(context);
        this.mAppNameComparator = new AppNameComparator(context).getAppInfoComparator();
        this.mAssetCache = assetCache;
        this.mAppFilter = appFilter;
        this.mIndexer = new AlphabeticIndexCompat(context);
        this.mPackageItemInfos = new ArrayList<>();
        this.mWidgetsList = new HashMap<>();
        this.mRawList = new ArrayList<>();
        this.mContext = context;
    }

    private WidgetsModel(WidgetsModel model) {
        this.mAppWidgetMgr = model.mAppWidgetMgr;
        this.mPackageItemInfos = (ArrayList) model.mPackageItemInfos.clone();
        this.mWidgetsList = (HashMap) model.mWidgetsList.clone();
        this.mWidgetAndShortcutNameComparator = model.mWidgetAndShortcutNameComparator;
        this.mAppNameComparator = model.mAppNameComparator;
        this.mAssetCache = model.mAssetCache;
        this.mAppFilter = model.mAppFilter;
        this.mIndexer = model.mIndexer;
        this.mRawList = (ArrayList) model.mRawList.clone();
    }

    public int getPackageSize() {
        return this.mPackageItemInfos.size();
    }

    public PackageItemInfo getPackageItemInfo(int pos) {
        if (pos >= this.mPackageItemInfos.size() || pos < 0) {
            return null;
        }
        return this.mPackageItemInfos.get(pos);
    }

    public List<WidgetItem> getSortedWidgets(int pos) {
        return this.mWidgetsList.get(this.mPackageItemInfos.get(pos));
    }

    public ArrayList<WidgetItem> getRawList() {
        return this.mRawList;
    }

    public void setWidgetsAndShortcuts(ArrayList<WidgetItem> rawWidgetsShortcuts, boolean refresh) {
        Utilities.assertWorkerThread();
        this.mRawList = rawWidgetsShortcuts;
        HashMap<String, PackageItemInfo> tmpPackageItemInfos = new HashMap<>();
        this.mWidgetsList.clear();
        this.mPackageItemInfos.clear();
        this.mWidgetAndShortcutNameComparator.reset();
        InvariantDeviceProfile idp = LauncherAppState.getInstance().getInvariantDeviceProfile();
        new ComponentName(WidgetConstant.COM_AUTONAVI_MANU_WIDGET, WidgetConstant.COM_AUTONAVI_MANU_WIDGET_REMOTEVIEW_MAINAPPWIDGETPROVIDER);
        Iterator<WidgetItem> it = rawWidgetsShortcuts.iterator();
        while (it.hasNext()) {
            WidgetItem item = it.next();
            if (item.componentName == null || !ComponentNameHelper.isSameComponent(item.componentName, WidgetConstant.COM_AUTONAVI_MANU_WIDGET, WidgetConstant.COM_AUTONAVI_MANU_WIDGET_REMOTEVIEW_MAINAPPWIDGETPROVIDER)) {
                if (item.widgetInfo == null || !item.widgetInfo.isCustomWidget) {
                    if (item.widgetInfo != null) {
                        int minSpanX = Math.min(item.widgetInfo.spanX, item.widgetInfo.minSpanX);
                        int minSpanY = Math.min(item.widgetInfo.spanY, item.widgetInfo.minSpanY);
                        if (minSpanX <= idp.numColumns && minSpanY <= idp.numRows) {
                        }
                    }
                    if (this.mAppFilter == null || this.mAppFilter.shouldShowApp(item.componentName)) {
                        String packageName = item.componentName.getPackageName();
                        ArrayList<WidgetItem> widgetsShortcutsList = this.mWidgetsList.get(tmpPackageItemInfos.get(packageName));
                        if (widgetsShortcutsList == null) {
                            widgetsShortcutsList = new ArrayList<>();
                            PackageItemInfo pInfo = new PackageItemInfo(packageName);
                            if (refresh) {
                                this.mIndexer = new AlphabeticIndexCompat(this.mContext);
                            }
                            this.mAssetCache.getTitleAndIconForApp(packageName, pInfo.user, true, pInfo);
                            tmpPackageItemInfos.put(packageName, pInfo);
                            this.mPackageItemInfos.add(pInfo);
                            this.mWidgetsList.put(pInfo, widgetsShortcutsList);
                        }
                        widgetsShortcutsList.add(item);
                    }
                }
            }
        }
        Iterator<PackageItemInfo> it2 = this.mPackageItemInfos.iterator();
        while (it2.hasNext()) {
            PackageItemInfo p = it2.next();
            ArrayList<WidgetItem> widgetsShortcutsList2 = this.mWidgetsList.get(p);
            Collections.sort(widgetsShortcutsList2);
            p.user = widgetsShortcutsList2.get(0).user;
            this.mAssetCache.getTitleAndIconForApp(p.packageName, p.user, true, p);
            p.titleSectionName = this.mIndexer.computeSectionName(p.title);
        }
        Collections.sort(this.mPackageItemInfos, this.mAppNameComparator);
    }

    public WidgetsModel clone() {
        return new WidgetsModel(this);
    }
}
