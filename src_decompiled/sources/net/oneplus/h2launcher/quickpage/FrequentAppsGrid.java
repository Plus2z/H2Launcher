package net.oneplus.h2launcher.quickpage;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconManager;
import net.oneplus.h2launcher.quickpage.view.EmptyView;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.widget.OneplusFlowLayout;

/* loaded from: classes.dex */
public class FrequentAppsGrid extends QuickPageItem implements Stats.StatsChangedCallback, DynamicIconManager.UpdateIconCacheCallback {
    private static final int FREQUENT_APPS_COUNT = 10;
    private static final String TAG = "FrequentAppsGrid";
    private AppItemAdapter mAdapter;
    private AssetCache mAssetCache;
    private final int mColumnCount;
    private int mContainerSize;
    private Context mContext;
    private EmptyView mEmptyView;
    private OneplusFlowLayout mFlowLayout;
    private PorterDuffColorFilter mHighlightFilter;
    private int mIconSize;
    private boolean mIsResized;
    private FrameLayout mParentView;
    private int mSize;
    private Stats mStats;

    public FrequentAppsGrid(Context context, Stats stats, AssetCache assetCache, SchemeHelper schemeHelper, int size, int id) {
        this.mIsResized = false;
        this.mContext = context.getApplicationContext();
        this.mId = id;
        this.mSize = size;
        this.mColumnCount = context.getResources().getInteger(R.integer.config_recentAppsColumns);
        this.mStats = stats;
        this.mStats.setCallback(this);
        this.mAssetCache = assetCache;
        this.mContainerSize = context.getResources().getDimensionPixelSize(R.dimen.frequent_apps_container_size);
        this.mIconSize = context.getResources().getDimensionPixelSize(R.dimen.frequent_apps_item_size);
        this.mHighlightFilter = new PorterDuffColorFilter(context.getResources().getColor(R.color.quick_page_frequent_app_highlight, null), PorterDuff.Mode.SRC_ATOP);
        this.mParentView = (FrameLayout) View.inflate(context, R.layout.frequent_apps_grid, null);
        this.mFlowLayout = (OneplusFlowLayout) this.mParentView.findViewById(R.id.apps_grid);
        DynamicIconManager.getInstance().registerUpdateIconCacheCallback(this);
        this.mAdapter = new AppItemAdapter(getFrequentlyLaunchedApps());
        this.mAdapter.create();
        if (this.mSize <= 0) {
            this.mSize = ((this.mAdapter.getValidCount() + this.mColumnCount) - 1) / this.mColumnCount;
            this.mIsResized = false;
        } else {
            this.mIsResized = true;
        }
        this.mEmptyView = (EmptyView) this.mParentView.findViewById(R.id.empty_view);
        this.mEmptyView.setEmptyMessage(R.string.no_frequent_apps_here);
        this.mEmptyView.setEmptyImage(R.drawable.ic_no_frequent_apps);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getViewType() {
        return 0;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getIndex() {
        return this.mId;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getTitle() {
        return this.mContext.getString(R.string.frequently_used_apps);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getContent() {
        return null;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getSize() {
        return this.mSize;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean hasScrollableContent() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean isEmpty() {
        return this.mAdapter == null || this.mAdapter.getValidCount() == 0;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getParent() {
        return this.mParentView;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getView() {
        return this.mFlowLayout;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getEmptyView() {
        return this.mEmptyView;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMinHeight() {
        return this.mFlowLayout.getMinHeight();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMaxHeight() {
        return this.mFlowLayout.getMaxHeight();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getStandardHeight(int height) {
        return this.mFlowLayout.getStandardHeight();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemViewAttached() {
        ViewGroup parent;
        if (this.mSize > 0 && !isEmpty() && (parent = (ViewGroup) this.mParentView.getParent()) != null) {
            parent.getLayoutParams().height = this.mFlowLayout.getHeightForSize(this.mSize);
            parent.requestLayout();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeProgress(int height) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeFinished() {
        this.mSize = this.mFlowLayout.getRowCount();
        this.mIsResized = true;
        notifyItemSizeChanged();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onUiComponentChanged() {
        this.mAdapter.updateList(getFrequentlyLaunchedApps());
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onContainerVisibilityChanged(boolean visible) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onRemove() {
        this.mStats.setCallback(null);
        if (this.mAdapter != null) {
            this.mAdapter.clear();
        }
        DynamicIconManager.getInstance().unregisterUpdateIconCacheCallback(this);
    }

    @Override // net.oneplus.h2launcher.Stats.StatsChangedCallback
    public void onStatsAdded(final ComponentName componentName, final String intentStr, final int itemType, final long id, final UserHandleCompat user) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.FrequentAppsGrid.1
            @Override // java.lang.Runnable
            public void run() {
                Logger.d(FrequentAppsGrid.TAG, "App icon adds to Shelf: %s", componentName);
                FrequentAppsGrid.this.updateFrequentlyLaunchedApps(componentName, intentStr, itemType, id, user);
                FrequentAppsGrid.this.mAdapter.notifyDataSetChanged();
                FrequentAppsGrid.this.notifyItemAdapterChanged();
                if (!FrequentAppsGrid.this.mIsResized) {
                    FrequentAppsGrid.this.mSize = ((FrequentAppsGrid.this.mAdapter.getValidCount() + FrequentAppsGrid.this.mColumnCount) - 1) / FrequentAppsGrid.this.mColumnCount;
                }
            }
        };
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            launcher.addOnResumeCallback(r);
        } else {
            Logger.w(TAG, "launcher is null. Should not be here.");
        }
    }

    @Override // net.oneplus.h2launcher.Stats.StatsChangedCallback
    public void onStatsRemoved(String packageName, UserHandleCompat user) {
        Logger.d(TAG, "App icon %s removes from Shelf for user %s", packageName, user);
        removeFrequentlyLaunchedApps(packageName, user);
        this.mAdapter.notifyDataSetChanged();
        notifyItemAdapterChanged();
        if (!this.mIsResized) {
            this.mSize = ((this.mAdapter.getValidCount() + this.mColumnCount) - 1) / this.mColumnCount;
        }
    }

    @Override // net.oneplus.h2launcher.Stats.StatsChangedCallback
    public void onStatsRemoved(long id, UserHandleCompat user) {
        Logger.d(TAG, "App icon %d removes from Shelf for user %s", Long.valueOf(id), user);
        removeFrequentlyLaunchedShortcuts(id, user);
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
        notifyItemAdapterChanged();
        if (!this.mIsResized && this.mAdapter != null) {
            this.mSize = ((this.mAdapter.getValidCount() + this.mColumnCount) - 1) / this.mColumnCount;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFrequentlyLaunchedApps(ComponentName componentName, String intentStr, int itemType, long id, UserHandleCompat user) {
        if (this.mAdapter == null) {
            return;
        }
        this.mAdapter.updateItem(componentName, intentStr, itemType, id, user);
    }

    private void removeFrequentlyLaunchedApps(String packageName, UserHandleCompat user) {
        if (this.mAdapter == null) {
            return;
        }
        this.mAdapter.removeItem(packageName, user);
    }

    private void removeFrequentlyLaunchedShortcuts(long id, UserHandleCompat user) {
        if (this.mAdapter == null) {
            return;
        }
        this.mAdapter.removeItem(id, user);
    }

    private ArrayList<AppItem> getFrequentlyLaunchedApps() {
        ArrayList<AppItem> frequentApps = new ArrayList<>();
        ArrayList<Stats.Stat> mostLaunched = this.mStats.getMostLaunchedPackages(10);
        int skipCount = 0;
        for (int i = 0; i < 10; i++) {
            if (i < mostLaunched.size()) {
                Stats.Stat stat = mostLaunched.get(i);
                ComponentName componentName = stat.componentName;
                String intentStr = stat.intentStr;
                int itemType = stat.itemType;
                long id = stat.id;
                AppItem newItem = new AppItem();
                if (newItem.createFromPackage(this.mContext, this.mAssetCache, this.mStats, componentName, intentStr, itemType, id, stat.user, this)) {
                    frequentApps.add(newItem);
                } else {
                    Logger.w(TAG, "Component Name %s skipped.", componentName);
                    skipCount++;
                }
            } else {
                frequentApps.add(null);
            }
        }
        for (int i2 = 0; i2 < skipCount; i2++) {
            frequentApps.add(null);
        }
        return frequentApps;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AppItem getFrequentlyLaunchedApps(ComponentName componentNameToUpdate, UserHandleCompat user) {
        ArrayList<Stats.Stat> mostLaunched = this.mStats.getMostLaunchedPackages(10);
        for (int i = 0; i < 10; i++) {
            if (i < mostLaunched.size()) {
                Stats.Stat stat = mostLaunched.get(i);
                ComponentName componentName = stat.componentName;
                String intentStr = stat.intentStr;
                int itemType = stat.itemType;
                long id = stat.id;
                if (componentName.equals(componentNameToUpdate)) {
                    AppItem newItem = new AppItem();
                    if (!newItem.createFromPackage(this.mContext, this.mAssetCache, this.mStats, componentName, intentStr, itemType, id, user, this)) {
                        Logger.w(TAG, "create dynamic icon failed.");
                        return null;
                    }
                    return newItem;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AppItemAdapter {
        private ArrayList<AppItem> mListAppItem;

        AppItemAdapter(ArrayList<AppItem> list) {
            this.mListAppItem = list;
        }

        synchronized void updateList(List<AppItem> list) {
            if (list != null) {
                clear();
                this.mListAppItem.addAll(list);
                notifyDataSetChanged();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0028, code lost:
        
            r4.mListAppItem.set(r0, r2);
            getViewForItem(r4.this$0.mFlowLayout.getChildAt(r0), r2);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        synchronized void updateIconUI(android.content.ComponentName r5, net.oneplus.h2launcher.compat.UserHandleCompat r6) {
            /*
                r4 = this;
                monitor-enter(r4)
                if (r5 != 0) goto L5
            L3:
                monitor-exit(r4)
                return
            L5:
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid r3 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.this     // Catch: java.lang.Throwable -> L3b
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem r2 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.access$1000(r3, r5, r6)     // Catch: java.lang.Throwable -> L3b
                if (r2 == 0) goto L3
                r0 = 0
            Le:
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r3 = r4.mListAppItem     // Catch: java.lang.Throwable -> L3b
                int r3 = r3.size()     // Catch: java.lang.Throwable -> L3b
                if (r0 >= r3) goto L3
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r3 = r4.mListAppItem     // Catch: java.lang.Throwable -> L3b
                java.lang.Object r1 = r3.get(r0)     // Catch: java.lang.Throwable -> L3b
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem r1 = (net.oneplus.h2launcher.quickpage.FrequentAppsGrid.AppItem) r1     // Catch: java.lang.Throwable -> L3b
                if (r1 == 0) goto L3e
                android.content.ComponentName r3 = r1.componentName     // Catch: java.lang.Throwable -> L3b
                boolean r3 = r5.equals(r3)     // Catch: java.lang.Throwable -> L3b
                if (r3 == 0) goto L3e
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r3 = r4.mListAppItem     // Catch: java.lang.Throwable -> L3b
                r3.set(r0, r2)     // Catch: java.lang.Throwable -> L3b
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid r3 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.this     // Catch: java.lang.Throwable -> L3b
                net.oneplus.h2launcher.widget.OneplusFlowLayout r3 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.access$1100(r3)     // Catch: java.lang.Throwable -> L3b
                android.view.View r3 = r3.getChildAt(r0)     // Catch: java.lang.Throwable -> L3b
                r4.getViewForItem(r3, r2)     // Catch: java.lang.Throwable -> L3b
                goto L3
            L3b:
                r3 = move-exception
                monitor-exit(r4)
                throw r3
            L3e:
                int r0 = r0 + 1
                goto Le
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.quickpage.FrequentAppsGrid.AppItemAdapter.updateIconUI(android.content.ComponentName, net.oneplus.h2launcher.compat.UserHandleCompat):void");
        }

        public void notifyDataSetChanged() {
            for (int i = 0; i < this.mListAppItem.size(); i++) {
                AppItem item = this.mListAppItem.get(i);
                getViewForItem(FrequentAppsGrid.this.mFlowLayout.getChildAt(i), item);
            }
            if (!FrequentAppsGrid.this.mIsResized) {
                FrequentAppsGrid.this.mSize = ((FrequentAppsGrid.this.mAdapter.getValidCount() + FrequentAppsGrid.this.mColumnCount) - 1) / FrequentAppsGrid.this.mColumnCount;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void create() {
            for (int i = 0; i < this.mListAppItem.size(); i++) {
                AppItem item = this.mListAppItem.get(i);
                FrequentAppsGrid.this.mFlowLayout.addView(getViewForItem(null, item), i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            if (this.mListAppItem != null && this.mListAppItem.size() > 0) {
                this.mListAppItem.clear();
            }
        }

        int getValidCount() {
            int count = 0;
            Iterator<AppItem> it = this.mListAppItem.iterator();
            while (it.hasNext()) {
                AppItem item = it.next();
                if (item != null) {
                    count++;
                }
            }
            return count;
        }

        View getViewForItem(View convertView, AppItem item) {
            if (convertView == null) {
                convertView = View.inflate(FrequentAppsGrid.this.mContext, R.layout.frequent_apps_grid_item, null);
                ViewHolder holder = new ViewHolder();
                holder.name = (TextView) convertView.findViewById(R.id.name);
                convertView.setTag(holder);
            }
            FrequentAppsGrid.this.IconLoaderTask(convertView, item);
            return convertView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void removeItem(String packageName, UserHandleCompat user) {
            int removedCount = 0;
            Iterator<AppItem> it = this.mListAppItem.iterator();
            while (it.hasNext()) {
                AppItem item = it.next();
                if (item != null && item.packageName.equals(packageName) && item.user.equals(user)) {
                    it.remove();
                    removedCount++;
                }
            }
            if (removedCount != 0) {
                for (int i = 0; i < removedCount; i++) {
                    this.mListAppItem.add(null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void removeItem(long id, UserHandleCompat user) {
            int removedCount = 0;
            Iterator<AppItem> it = this.mListAppItem.iterator();
            while (it.hasNext()) {
                AppItem item = it.next();
                if (item != null && id == item.id && item.user.equals(user)) {
                    it.remove();
                    removedCount++;
                }
            }
            if (removedCount != 0) {
                for (int i = 0; i < removedCount; i++) {
                    this.mListAppItem.add(null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0062 A[Catch: all -> 0x00b2, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:10:0x0017, B:12:0x0023, B:15:0x0031, B:19:0x004c, B:27:0x0042, B:21:0x0062, B:23:0x0093), top: B:3:0x0002 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized void updateItem(android.content.ComponentName r19, java.lang.String r20, int r21, long r22, net.oneplus.h2launcher.compat.UserHandleCompat r24) {
            /*
                r18 = this;
                monitor-enter(r18)
                r15 = 0
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                if (r4 == 0) goto L12
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                int r2 = r4.size()     // Catch: java.lang.Throwable -> Lb2
                if (r2 != 0) goto L14
            L12:
                monitor-exit(r18)
                return
            L14:
                r14 = 0
            L15:
                if (r14 >= r2) goto L60
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                java.lang.Object r16 = r4.get(r14)     // Catch: java.lang.Throwable -> Lb2
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem r16 = (net.oneplus.h2launcher.quickpage.FrequentAppsGrid.AppItem) r16     // Catch: java.lang.Throwable -> Lb2
                if (r16 == 0) goto Lb5
                r0 = r16
                net.oneplus.h2launcher.compat.UserHandleCompat r4 = r0.user     // Catch: java.lang.Throwable -> Lb2
                r0 = r24
                boolean r4 = r4.equals(r0)     // Catch: java.lang.Throwable -> Lb2
                if (r4 == 0) goto Lb5
                if (r21 != 0) goto L3d
                r0 = r16
                android.content.ComponentName r4 = r0.componentName     // Catch: java.lang.Throwable -> Lb2
                r0 = r19
                boolean r4 = r4.equals(r0)     // Catch: java.lang.Throwable -> Lb2
                if (r4 != 0) goto L4a
            L3d:
                r4 = 1
                r0 = r21
                if (r0 != r4) goto Lb5
                r0 = r16
                long r4 = r0.id     // Catch: java.lang.Throwable -> Lb2
                int r4 = (r4 > r22 ? 1 : (r4 == r22 ? 0 : -1))
                if (r4 != 0) goto Lb5
            L4a:
                if (r14 == 0) goto L12
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                r0 = r16
                r4.remove(r0)     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                r5 = 0
                r0 = r16
                r4.add(r5, r0)     // Catch: java.lang.Throwable -> Lb2
                r15 = 1
            L60:
                if (r15 != 0) goto L12
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem r3 = new net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem     // Catch: java.lang.Throwable -> Lb2
                r3.<init>()     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid r4 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.this     // Catch: java.lang.Throwable -> Lb2
                android.content.Context r4 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.access$1200(r4)     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid r5 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.this     // Catch: java.lang.Throwable -> Lb2
                net.oneplus.h2launcher.AssetCache r5 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.access$1500(r5)     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid r6 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.this     // Catch: java.lang.Throwable -> Lb2
                net.oneplus.h2launcher.Stats r6 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.access$1600(r6)     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid r13 = net.oneplus.h2launcher.quickpage.FrequentAppsGrid.this     // Catch: java.lang.Throwable -> Lb2
                r7 = r19
                r8 = r20
                r9 = r21
                r10 = r22
                r12 = r24
                boolean r4 = r3.createFromPackage(r4, r5, r6, r7, r8, r9, r10, r12, r13)     // Catch: java.lang.Throwable -> Lb2
                if (r4 == 0) goto L12
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                int r5 = r2 + (-1)
                java.lang.Object r17 = r4.get(r5)     // Catch: java.lang.Throwable -> Lb2
                net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem r17 = (net.oneplus.h2launcher.quickpage.FrequentAppsGrid.AppItem) r17     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                r0 = r17
                r4.remove(r0)     // Catch: java.lang.Throwable -> Lb2
                r0 = r18
                java.util.ArrayList<net.oneplus.h2launcher.quickpage.FrequentAppsGrid$AppItem> r4 = r0.mListAppItem     // Catch: java.lang.Throwable -> Lb2
                r5 = 0
                r4.add(r5, r3)     // Catch: java.lang.Throwable -> Lb2
                goto L12
            Lb2:
                r4 = move-exception
                monitor-exit(r18)
                throw r4
            Lb5:
                int r14 = r14 + 1
                goto L15
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.quickpage.FrequentAppsGrid.AppItemAdapter.updateItem(android.content.ComponentName, java.lang.String, int, long, net.oneplus.h2launcher.compat.UserHandleCompat):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ViewHolder {
        TextView name;

        private ViewHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AppItem {
        protected ComponentName componentName;
        private FrequentAppsGrid f;
        protected long id;
        protected Intent intent;
        protected int itemType;
        protected String packageName;
        protected ShelfShortcutInfo shortcutInfo;
        protected UserHandleCompat user;

        AppItem() {
        }

        boolean createFromPackage(Context context, AssetCache cache, Stats stats, ComponentName componentName, String intentStr, int itemType, long id, UserHandleCompat user, FrequentAppsGrid f) {
            ShelfShortcutInfo info;
            this.f = f;
            String packageName = componentName.getPackageName();
            try {
                this.intent = Intent.parseUri(intentStr, 0);
                if (this.intent.getComponent() != null) {
                    componentName = stats.getComponentFromIntentString(intentStr);
                    packageName = componentName.getPackageName();
                }
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
            if (this.intent != null && Utilities.isPackageInstalled(context, packageName) && Utilities.isPackageEnabled(context, packageName)) {
                this.intent.setComponent(componentName);
                this.intent.setFlags(270532608);
                this.intent.setAction("android.intent.action.MAIN");
                this.intent.addCategory("android.intent.category.LAUNCHER");
                this.intent.setPackage(null);
                if (itemType == 1) {
                    info = new ShelfShortcutInfo();
                    info.itemType = 1;
                    new ShortcutLoaderTask(context, cache, id, info, user).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                } else {
                    info = new ShelfShortcutInfo();
                    info.itemType = 0;
                    cache.getTitleAndIcon(info, this.intent, user, false, true);
                    info.isIconReady = true;
                }
                this.id = id;
                this.itemType = itemType;
                this.shortcutInfo = info;
                this.packageName = packageName;
                this.componentName = componentName;
                this.user = user;
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class ShortcutLoaderTask extends AsyncTask<Void, Void, Cursor> {
            private AssetCache cache;
            private Context context;
            private long id;
            private ShelfShortcutInfo info;
            private UserHandleCompat user;

            ShortcutLoaderTask(Context context, AssetCache cache, long id, ShelfShortcutInfo info, UserHandleCompat user) {
                this.context = context;
                this.cache = cache;
                this.id = id;
                this.info = info;
                this.user = user;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Removed duplicated region for block: B:47:0x00b3  */
            /* JADX WARN: Removed duplicated region for block: B:57:? A[SYNTHETIC] */
            @Override // android.os.AsyncTask
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public android.database.Cursor doInBackground(java.lang.Void... r20) {
                /*
                    Method dump skipped, instructions count: 249
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.quickpage.FrequentAppsGrid.AppItem.ShortcutLoaderTask.doInBackground(java.lang.Void[]):android.database.Cursor");
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Cursor c) {
                if (c.getCount() != 0) {
                    AppItem.this.f.updateShortcutIconFinish(AppItem.this.componentName);
                    return;
                }
                this.info.itemType = -1;
                Logger.w(FrequentAppsGrid.TAG, "shortcut does not exist now." + this.id);
                AppItem.this.f.onStatsRemoved(this.id, this.user);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void IconLoaderTask(final View convertView, final AppItem item) {
        final ViewHolder mItem = (ViewHolder) convertView.getTag();
        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.FrequentAppsGrid.2
            @Override // java.lang.Runnable
            public void run() {
                if (item != null && Utilities.isPackageValid(FrequentAppsGrid.this.mContext, item.packageName) && item.shortcutInfo != null && item.shortcutInfo.isIconReady) {
                    if (item.shortcutInfo.itemType != -1) {
                        BitmapDrawable bd = new BitmapDrawable(FrequentAppsGrid.this.mContext.getResources(), item.shortcutInfo.getIcon(FrequentAppsGrid.this.mAssetCache));
                        bd.setBounds(0, 0, FrequentAppsGrid.this.mIconSize, FrequentAppsGrid.this.mIconSize);
                        mItem.name.setCompoundDrawables(null, bd, null, null);
                        mItem.name.setText(item.shortcutInfo.title.toString());
                        mItem.name.setEnabled(true);
                    } else {
                        Logger.w(FrequentAppsGrid.TAG, "item type in shortcutInfo is not correct.");
                    }
                    convertView.setOnTouchListener(new View.OnTouchListener() { // from class: net.oneplus.h2launcher.quickpage.FrequentAppsGrid.2.1
                        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View v, MotionEvent event) {
                            switch (event.getAction()) {
                                case 1:
                                    if (item.intent != null) {
                                        try {
                                            FrequentAppsGrid.this.startActivity(convertView, item.intent, item.id, item.itemType, item.user);
                                        } catch (ActivityNotFoundException | SecurityException e) {
                                            Toast.makeText(FrequentAppsGrid.this.mContext, R.string.activity_not_available, 0).show();
                                            return true;
                                        }
                                    }
                                case 0:
                                default:
                                    return false;
                            }
                        }
                    });
                    return;
                }
                mItem.name.setText("");
                mItem.name.setCompoundDrawables(null, null, null, null);
                mItem.name.setEnabled(false);
                convertView.setOnTouchListener(null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startActivity(View v, Intent intent, long id, int itemType, UserHandleCompat user) {
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher != null) {
            launcher.startActivitySafely(v, intent, null);
            this.mStats.recordLaunch(v, intent, null, id, itemType, user);
        } else {
            Logger.w(TAG, "launcher is null. Should not be here.");
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.DynamicIconManager.UpdateIconCacheCallback
    public void updateIconCacheFinish(ComponentName componentName, UserHandleCompat user) {
        if (this.mAdapter != null) {
            this.mAdapter.updateIconUI(componentName, user);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShortcutIconFinish(ComponentName componentName) {
        if (componentName != null) {
            for (int i = 0; i < this.mAdapter.mListAppItem.size(); i++) {
                AppItem item = (AppItem) this.mAdapter.mListAppItem.get(i);
                if (item != null && componentName.equals(item.componentName)) {
                    this.mAdapter.mListAppItem.set(i, item);
                    this.mAdapter.getViewForItem(this.mFlowLayout.getChildAt(i), item);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ShelfShortcutInfo extends ShortcutInfo {
        boolean isIconReady;

        private ShelfShortcutInfo() {
            this.isIconReady = false;
        }
    }
}
