package net.oneplus.h2launcher.allapps;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.compat.AlphabeticIndexCompat;
import net.oneplus.h2launcher.model.AppNameComparator;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class AlphabeticalAppsList {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_PREDICTIONS = false;
    private static final int FAST_SCROLL_FRACTION_DISTRIBUTE_BY_NUM_SECTIONS = 1;
    private static final int FAST_SCROLL_FRACTION_DISTRIBUTE_BY_ROWS_FRACTION = 0;
    private static final String SWIFTKEY_PACKAGE = "com.touchtype.swiftkey";
    public static final String TAG = "AlphabeticalAppsList";
    private AllAppsGridAdapter mAdapter;
    private AppNameComparator mAppNameComparator;
    private AlphabeticIndexCompat mIndexer;
    private Launcher mLauncher;
    private MergeAlgorithm mMergeAlgorithm;
    private int mNumAppRowsInAdapter;
    private int mNumAppsPerRow;
    private int mNumPredictedAppsPerRow;
    private ArrayList<ComponentKey> mSearchResults;
    private final int mFastScrollDistributionMode = 1;
    private final List<AppInfo> mApps = new ArrayList();
    private final HashMap<ComponentKey, AppInfo> mComponentToAppMap = new HashMap<>();
    private List<AppInfo> mFilteredApps = new ArrayList();
    private List<AdapterItem> mAdapterItems = new ArrayList();
    private List<SectionInfo> mSections = new ArrayList();
    private List<FastScrollSectionInfo> mFastScrollerSections = new ArrayList();
    private List<ComponentKey> mPredictedAppComponents = new ArrayList();
    private List<AppInfo> mPredictedApps = new ArrayList();
    private HashMap<CharSequence, String> mCachedSectionNames = new HashMap<>();

    /* loaded from: classes.dex */
    public interface MergeAlgorithm {
        boolean continueMerging(SectionInfo sectionInfo, SectionInfo sectionInfo2, int i, int i2, int i3);
    }

    /* loaded from: classes.dex */
    public static class SectionInfo {
        public AdapterItem firstAppItem;
        public int numApps;
        public AdapterItem sectionBreakItem;
    }

    /* loaded from: classes.dex */
    public static class FastScrollSectionInfo {
        public AdapterItem fastScrollToItem;
        public String sectionName;
        public float touchFraction;

        public FastScrollSectionInfo(String sectionName) {
            this.sectionName = sectionName;
        }
    }

    /* loaded from: classes.dex */
    public static class AdapterItem {
        public int position;
        public int rowAppIndex;
        public int rowIndex;
        public SectionInfo sectionInfo;
        public int viewType;
        public String sectionName = null;
        public int sectionAppIndex = -1;
        public AppInfo appInfo = null;
        public int appIndex = -1;

        public static AdapterItem asSectionBreak(int pos, SectionInfo section) {
            AdapterItem item = new AdapterItem();
            item.viewType = 0;
            item.position = pos;
            item.sectionInfo = section;
            section.sectionBreakItem = item;
            return item;
        }

        public static AdapterItem asPredictedApp(int pos, SectionInfo section, String sectionName, int sectionAppIndex, AppInfo appInfo, int appIndex) {
            AdapterItem item = asApp(pos, section, sectionName, sectionAppIndex, appInfo, appIndex);
            item.viewType = 2;
            return item;
        }

        public static AdapterItem asApp(int pos, SectionInfo section, String sectionName, int sectionAppIndex, AppInfo appInfo, int appIndex) {
            AdapterItem item = new AdapterItem();
            item.viewType = 1;
            item.position = pos;
            item.sectionInfo = section;
            item.sectionName = sectionName;
            item.sectionAppIndex = sectionAppIndex;
            item.appInfo = appInfo;
            item.appIndex = appIndex;
            return item;
        }

        public static AdapterItem asEmptySearch(int pos) {
            AdapterItem item = new AdapterItem();
            item.viewType = 3;
            item.position = pos;
            return item;
        }

        public static AdapterItem asDivider(int pos) {
            AdapterItem item = new AdapterItem();
            item.viewType = 4;
            item.position = pos;
            return item;
        }

        public static AdapterItem asMarketSearch(int pos) {
            AdapterItem item = new AdapterItem();
            item.viewType = 5;
            item.position = pos;
            return item;
        }
    }

    public AlphabeticalAppsList(Context context) {
        this.mLauncher = (Launcher) context;
        this.mIndexer = new AlphabeticIndexCompat(context);
        this.mAppNameComparator = new AppNameComparator(context);
    }

    public void setNumAppsPerRow(int numAppsPerRow, int numPredictedAppsPerRow, MergeAlgorithm mergeAlgorithm) {
        this.mNumAppsPerRow = numAppsPerRow;
        this.mNumPredictedAppsPerRow = numPredictedAppsPerRow;
        this.mMergeAlgorithm = mergeAlgorithm;
        updateAdapterItems(true);
    }

    public void setAdapter(AllAppsGridAdapter adapter) {
        this.mAdapter = adapter;
    }

    public List<AppInfo> getApps() {
        return this.mApps;
    }

    public List<SectionInfo> getSections() {
        return this.mSections;
    }

    public List<FastScrollSectionInfo> getFastScrollerSections() {
        return this.mFastScrollerSections;
    }

    public List<AdapterItem> getAdapterItems() {
        return this.mAdapterItems;
    }

    public int getNumAppRows() {
        return this.mNumAppRowsInAdapter;
    }

    public int getNumFilteredApps() {
        return this.mFilteredApps.size();
    }

    public boolean hasFilter() {
        return this.mSearchResults != null;
    }

    public boolean hasNoFilteredResults() {
        return this.mSearchResults != null && this.mFilteredApps.isEmpty();
    }

    public void setOrderedFilter(ArrayList<ComponentKey> f) {
        if (this.mSearchResults != f) {
            this.mSearchResults = f;
            updateAdapterItems();
        }
    }

    public void setPredictedApps(List<ComponentKey> apps) {
        this.mPredictedAppComponents.clear();
        this.mPredictedAppComponents.addAll(apps);
        onAppsUpdated();
    }

    public void setApps(List<AppInfo> apps) {
        this.mComponentToAppMap.clear();
        addApps(apps);
    }

    public void addApps(List<AppInfo> apps) {
        updateApps(apps);
    }

    public void updateApps(List<AppInfo> apps) {
        for (AppInfo app : apps) {
            if (!app.componentName.getPackageName().equals(SWIFTKEY_PACKAGE)) {
                this.mComponentToAppMap.put(app.toComponentKey(), app);
            }
        }
        onAppsUpdated();
    }

    public void removeApps(List<AppInfo> apps) {
        for (AppInfo app : apps) {
            this.mComponentToAppMap.remove(app.toComponentKey());
        }
        onAppsUpdated();
    }

    private void onAppsUpdated() {
        this.mApps.clear();
        this.mApps.addAll(this.mComponentToAppMap.values());
        Collections.sort(this.mApps, this.mAppNameComparator.getAppInfoComparator());
        Locale curLocale = this.mLauncher.getResources().getConfiguration().locale;
        boolean localeRequiresSectionSorting = curLocale.equals(Locale.SIMPLIFIED_CHINESE);
        if (localeRequiresSectionSorting) {
            TreeMap<String, ArrayList<AppInfo>> sectionMap = new TreeMap<>(this.mAppNameComparator.getSectionNameComparator());
            for (AppInfo info : this.mApps) {
                String sectionName = getAndUpdateCachedSectionName(info.title);
                ArrayList<AppInfo> sectionApps = sectionMap.get(sectionName);
                if (sectionApps == null) {
                    sectionApps = new ArrayList<>();
                    sectionMap.put(sectionName, sectionApps);
                }
                sectionApps.add(info);
            }
            List<AppInfo> allApps = new ArrayList<>(this.mApps.size());
            for (Map.Entry<String, ArrayList<AppInfo>> entry : sectionMap.entrySet()) {
                allApps.addAll(entry.getValue());
            }
            this.mApps.clear();
            this.mApps.addAll(allApps);
        } else {
            Iterator<AppInfo> it = this.mApps.iterator();
            while (it.hasNext()) {
                getAndUpdateCachedSectionName(it.next().title);
            }
        }
        updateAdapterItems();
    }

    private void updateAdapterItems() {
        updateAdapterItems(false);
    }

    private void updateAdapterItems(boolean isFromCustomization) {
        int position;
        SectionInfo lastSectionInfo = null;
        String lastSectionName = null;
        FastScrollSectionInfo lastFastScrollerSectionInfo = null;
        int position2 = 0;
        int appIndex = 0;
        this.mFilteredApps.clear();
        this.mFastScrollerSections.clear();
        this.mAdapterItems.clear();
        this.mSections.clear();
        this.mPredictedApps.clear();
        if (this.mPredictedAppComponents != null && !this.mPredictedAppComponents.isEmpty() && !hasFilter()) {
            for (ComponentKey ck : this.mPredictedAppComponents) {
                AppInfo info = this.mComponentToAppMap.get(ck);
                if (info != null) {
                    this.mPredictedApps.add(info);
                } else if (LauncherAppState.isDogfoodBuild()) {
                    Log.e(TAG, "Predicted app not found: " + ck.flattenToString(this.mLauncher));
                }
                if (this.mPredictedApps.size() == this.mNumPredictedAppsPerRow) {
                    break;
                }
            }
            if (!this.mPredictedApps.isEmpty()) {
                lastSectionInfo = new SectionInfo();
                lastFastScrollerSectionInfo = new FastScrollSectionInfo("");
                int position3 = 0 + 1;
                AdapterItem sectionItem = AdapterItem.asSectionBreak(0, lastSectionInfo);
                this.mSections.add(lastSectionInfo);
                this.mFastScrollerSections.add(lastFastScrollerSectionInfo);
                this.mAdapterItems.add(sectionItem);
                Iterator<AppInfo> it = this.mPredictedApps.iterator();
                while (true) {
                    position2 = position3;
                    if (!it.hasNext()) {
                        break;
                    }
                    AppInfo info2 = it.next();
                    position3 = position2 + 1;
                    int i = lastSectionInfo.numApps;
                    lastSectionInfo.numApps = i + 1;
                    int appIndex2 = appIndex + 1;
                    AdapterItem appItem = AdapterItem.asPredictedApp(position2, lastSectionInfo, "", i, info2, appIndex);
                    if (lastSectionInfo.firstAppItem == null) {
                        lastSectionInfo.firstAppItem = appItem;
                        lastFastScrollerSectionInfo.fastScrollToItem = appItem;
                    }
                    this.mAdapterItems.add(appItem);
                    this.mFilteredApps.add(info2);
                    appIndex = appIndex2;
                }
            }
        }
        for (AppInfo info3 : getFiltersAppInfos()) {
            String sectionName = getAndUpdateCachedSectionName(info3.title);
            if (lastSectionInfo == null || !sectionName.equals(lastSectionName)) {
                lastSectionName = sectionName;
                lastSectionInfo = new SectionInfo();
                lastFastScrollerSectionInfo = new FastScrollSectionInfo(sectionName);
                this.mSections.add(lastSectionInfo);
                this.mFastScrollerSections.add(lastFastScrollerSectionInfo);
                if (!hasFilter()) {
                    AdapterItem sectionItem2 = AdapterItem.asSectionBreak(position2, lastSectionInfo);
                    this.mAdapterItems.add(sectionItem2);
                    position2++;
                }
            }
            int position4 = position2 + 1;
            int i2 = lastSectionInfo.numApps;
            lastSectionInfo.numApps = i2 + 1;
            int appIndex3 = appIndex + 1;
            AdapterItem appItem2 = AdapterItem.asApp(position2, lastSectionInfo, sectionName, i2, info3, appIndex);
            if (lastSectionInfo.firstAppItem == null) {
                lastSectionInfo.firstAppItem = appItem2;
                lastFastScrollerSectionInfo.fastScrollToItem = appItem2;
            }
            this.mAdapterItems.add(appItem2);
            this.mFilteredApps.add(info3);
            appIndex = appIndex3;
            position2 = position4;
        }
        if (hasFilter()) {
            if (hasNoFilteredResults()) {
                this.mAdapterItems.add(AdapterItem.asEmptySearch(position2));
                position = position2 + 1;
            } else {
                this.mAdapterItems.add(AdapterItem.asDivider(position2));
                position = position2 + 1;
            }
            int i3 = position + 1;
            this.mAdapterItems.add(AdapterItem.asMarketSearch(position));
        }
        mergeSections();
        if (this.mNumAppsPerRow != 0) {
            int numAppsInSection = 0;
            int numAppsInRow = 0;
            int rowIndex = -1;
            for (AdapterItem item : this.mAdapterItems) {
                item.rowIndex = 0;
                if (item.viewType == 0) {
                    numAppsInSection = 0;
                } else if (item.viewType == 1 || item.viewType == 2) {
                    if (numAppsInSection % this.mNumAppsPerRow == 0) {
                        numAppsInRow = 0;
                        rowIndex++;
                    }
                    item.rowIndex = rowIndex;
                    item.rowAppIndex = numAppsInRow;
                    numAppsInSection++;
                    numAppsInRow++;
                }
            }
            this.mNumAppRowsInAdapter = rowIndex + 1;
            switch (1) {
                case 0:
                    float rowFraction = 1.0f / this.mNumAppRowsInAdapter;
                    for (FastScrollSectionInfo info4 : this.mFastScrollerSections) {
                        AdapterItem item2 = info4.fastScrollToItem;
                        if (item2.viewType != 1 && item2.viewType != 2) {
                            info4.touchFraction = 0.0f;
                        } else {
                            float subRowFraction = item2.rowAppIndex * (rowFraction / this.mNumAppsPerRow);
                            info4.touchFraction = (item2.rowIndex * rowFraction) + subRowFraction;
                        }
                    }
                    break;
                case 1:
                    float perSectionTouchFraction = 1.0f / this.mFastScrollerSections.size();
                    float cumulativeTouchFraction = 0.0f;
                    for (FastScrollSectionInfo info5 : this.mFastScrollerSections) {
                        AdapterItem item3 = info5.fastScrollToItem;
                        if (item3.viewType != 1 && item3.viewType != 2) {
                            info5.touchFraction = 0.0f;
                        } else {
                            info5.touchFraction = cumulativeTouchFraction;
                            cumulativeTouchFraction += perSectionTouchFraction;
                        }
                    }
                    break;
            }
        }
        if (this.mAdapter != null) {
            if (isFromCustomization) {
                this.mAdapter.notifyItemRangeChanged(0, this.mAdapter.getItemCount(), null);
            } else {
                this.mAdapter.notifyDataSetChanged();
            }
        }
    }

    private List<AppInfo> getFiltersAppInfos() {
        if (this.mSearchResults == null) {
            return this.mApps;
        }
        ArrayList<AppInfo> result = new ArrayList<>();
        Iterator<ComponentKey> it = this.mSearchResults.iterator();
        while (it.hasNext()) {
            ComponentKey key = it.next();
            AppInfo match = this.mComponentToAppMap.get(key);
            if (match != null) {
                result.add(match);
            }
        }
        return result;
    }

    private void mergeSections() {
        if (this.mMergeAlgorithm != null && this.mNumAppsPerRow != 0 && !hasFilter()) {
            for (int i = 0; i < this.mSections.size() - 1; i++) {
                SectionInfo section = this.mSections.get(i);
                int sectionAppCount = section.numApps;
                for (int mergeCount = 1; i < this.mSections.size() - 1 && this.mMergeAlgorithm.continueMerging(section, this.mSections.get(i + 1), sectionAppCount, this.mNumAppsPerRow, mergeCount); mergeCount++) {
                    SectionInfo nextSection = this.mSections.remove(i + 1);
                    this.mAdapterItems.remove(nextSection.sectionBreakItem);
                    int pos = this.mAdapterItems.indexOf(section.firstAppItem);
                    int nextPos = pos + section.numApps;
                    for (int j = nextPos; j < nextSection.numApps + nextPos; j++) {
                        AdapterItem item = this.mAdapterItems.get(j);
                        item.sectionInfo = section;
                        item.sectionAppIndex += section.numApps;
                    }
                    int pos2 = this.mAdapterItems.indexOf(nextSection.firstAppItem);
                    for (int j2 = pos2; j2 < this.mAdapterItems.size(); j2++) {
                        AdapterItem item2 = this.mAdapterItems.get(j2);
                        item2.position--;
                    }
                    section.numApps += nextSection.numApps;
                    sectionAppCount += nextSection.numApps;
                }
            }
        }
    }

    private String getAndUpdateCachedSectionName(CharSequence title) {
        String sectionName = this.mCachedSectionNames.get(title);
        if (sectionName == null) {
            String sectionName2 = this.mIndexer.computeSectionName(title);
            this.mCachedSectionNames.put(title, sectionName2);
            return sectionName2;
        }
        return sectionName;
    }

    public HashMap<ComponentKey, AppInfo> getComponentToAppMap() {
        return this.mComponentToAppMap;
    }
}
