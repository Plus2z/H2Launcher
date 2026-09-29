package net.oneplus.h2launcher.allapps;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import java.util.HashMap;
import java.util.List;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.allapps.AlphabeticalAppsList;

/* loaded from: classes.dex */
public class AllAppsGridAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final boolean DEBUG = false;
    public static final int EMPTY_SEARCH_VIEW_TYPE = 3;
    public static final int ICON_VIEW_TYPE = 1;
    public static final int PREDICTION_ICON_VIEW_TYPE = 2;
    public static final int SEARCH_MARKET_DIVIDER_VIEW_TYPE = 4;
    public static final int SEARCH_MARKET_VIEW_TYPE = 5;
    public static final int SECTION_BREAK_VIEW_TYPE = 0;
    public static final String TAG = "AppsGridAdapter";
    AlphabeticalAppsList mApps;
    int mAppsPerRow;
    private String mEmptySearchMessage;
    private GridLayoutManager mGridLayoutMgr;
    private GridSpanSizer mGridSizer;
    private View.OnClickListener mIconClickListener;
    private View.OnLongClickListener mIconLongClickListener;
    float mIconSizeScale;
    boolean mIsRtl;
    private GridItemDecoration mItemDecoration;
    private String mLastSearchQuery;
    private Launcher mLauncher;
    private LayoutInflater mLayoutInflater;
    private String mMarketAppName;
    private Intent mMarketSearchIntent;
    private String mMarketSearchMessage;
    Paint mPredictedAppsDividerPaint;
    int mPredictionBarDividerOffset;
    int mSectionHeaderOffset;
    int mSectionNamesMargin;
    Paint mSectionTextPaint;
    private View.OnTouchListener mTouchListener;
    private boolean mUpdateIconsInBackground = false;
    final Rect mBackgroundPadding = new Rect();

    /* loaded from: classes.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public View mContent;

        public ViewHolder(View v) {
            super(v);
            this.mContent = v;
        }
    }

    /* loaded from: classes.dex */
    public class AppsGridLayoutManager extends GridLayoutManager {
        public AppsGridLayoutManager(Context context) {
            super(context, 1, 1, false);
        }

        @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
            super.onInitializeAccessibilityEvent(event);
            AccessibilityRecordCompat record = AccessibilityEventCompat.asRecord(event);
            record.setItemCount(AllAppsGridAdapter.this.mApps.getNumFilteredApps());
        }

        @Override // android.support.v7.widget.GridLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
        public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
            if (AllAppsGridAdapter.this.mApps.hasNoFilteredResults()) {
                return 0;
            }
            return super.getRowCountForAccessibility(recycler, state);
        }
    }

    /* loaded from: classes.dex */
    public class GridSpanSizer extends GridLayoutManager.SpanSizeLookup {
        public GridSpanSizer() {
            setSpanIndexCacheEnabled(true);
        }

        @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            if (position >= 0 && position < AllAppsGridAdapter.this.mApps.getAdapterItems().size()) {
                switch (AllAppsGridAdapter.this.mApps.getAdapterItems().get(position).viewType) {
                    case 1:
                    case 2:
                        return 1;
                    default:
                        return AllAppsGridAdapter.this.mAppsPerRow;
                }
            }
            Log.w(AllAppsGridAdapter.TAG, "Current size is : " + AllAppsGridAdapter.this.mApps.getAdapterItems().size() + ", position " + position + " is out of range");
            return 0;
        }
    }

    /* loaded from: classes.dex */
    public class GridItemDecoration extends RecyclerView.ItemDecoration {
        private static final boolean DEBUG_SECTION_MARGIN = false;
        private static final boolean FADE_OUT_SECTIONS = false;
        private HashMap<String, PointF> mCachedSectionBounds = new HashMap<>();
        private Rect mTmpBounds = new Rect();

        public GridItemDecoration() {
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
            if (!AllAppsGridAdapter.this.mApps.hasFilter() && AllAppsGridAdapter.this.mAppsPerRow != 0) {
                List<AlphabeticalAppsList.AdapterItem> items = AllAppsGridAdapter.this.mApps.getAdapterItems();
                boolean hasDrawnPredictedAppsDivider = false;
                boolean showSectionNames = AllAppsGridAdapter.this.mSectionNamesMargin > 0;
                int childCount = parent.getChildCount();
                int lastSectionTop = 0;
                int lastSectionHeight = 0;
                int i = 0;
                while (i < childCount) {
                    View child = parent.getChildAt(i);
                    ViewHolder holder = (ViewHolder) parent.getChildViewHolder(child);
                    if (isValidHolderAndChild(holder, child, items)) {
                        if (shouldDrawItemDivider(holder, items) && !hasDrawnPredictedAppsDivider) {
                            int top = child.getTop() + child.getHeight() + AllAppsGridAdapter.this.mPredictionBarDividerOffset;
                            c.drawLine(AllAppsGridAdapter.this.mBackgroundPadding.left, top, parent.getWidth() - AllAppsGridAdapter.this.mBackgroundPadding.right, top, AllAppsGridAdapter.this.mPredictedAppsDividerPaint);
                            hasDrawnPredictedAppsDivider = true;
                        } else if (showSectionNames && shouldDrawItemSection(holder, i, items)) {
                            int viewTopOffset = child.getPaddingTop() * 2;
                            int pos = holder.getPosition();
                            AlphabeticalAppsList.AdapterItem item = items.get(pos);
                            AlphabeticalAppsList.SectionInfo sectionInfo = item.sectionInfo;
                            String lastSectionName = item.sectionName;
                            int j = item.sectionAppIndex;
                            while (j < sectionInfo.numApps) {
                                AlphabeticalAppsList.AdapterItem nextItem = items.get(pos);
                                String sectionName = nextItem.sectionName;
                                if (nextItem.sectionInfo != sectionInfo) {
                                    break;
                                }
                                if (j <= item.sectionAppIndex || !sectionName.equals(lastSectionName)) {
                                    PointF sectionBounds = getAndCacheSectionBounds(sectionName);
                                    int sectionBaseline = (int) (viewTopOffset + sectionBounds.y);
                                    int x = AllAppsGridAdapter.this.mIsRtl ? (parent.getWidth() - AllAppsGridAdapter.this.mBackgroundPadding.left) - AllAppsGridAdapter.this.mSectionNamesMargin : AllAppsGridAdapter.this.mBackgroundPadding.left;
                                    int x2 = x + ((int) ((AllAppsGridAdapter.this.mSectionNamesMargin - sectionBounds.x) / 2.0f));
                                    int y = child.getTop() + sectionBaseline;
                                    int appIndexInSection = items.get(pos).sectionAppIndex;
                                    int nextRowPos = Math.min(items.size() - 1, (AllAppsGridAdapter.this.mAppsPerRow + pos) - (appIndexInSection % AllAppsGridAdapter.this.mAppsPerRow));
                                    AlphabeticalAppsList.AdapterItem nextRowItem = items.get(nextRowPos);
                                    boolean fixedToRow = !sectionName.equals(nextRowItem.sectionName);
                                    if (!fixedToRow) {
                                        y = Math.max(sectionBaseline, y);
                                    }
                                    if (lastSectionHeight > 0 && y <= lastSectionTop + lastSectionHeight) {
                                        y += (lastSectionTop - y) + lastSectionHeight;
                                    }
                                    c.drawText(sectionName, x2, y, AllAppsGridAdapter.this.mSectionTextPaint);
                                    lastSectionTop = y;
                                    lastSectionHeight = (int) (sectionBounds.y + AllAppsGridAdapter.this.mSectionHeaderOffset);
                                    lastSectionName = sectionName;
                                }
                                j++;
                                pos++;
                            }
                            i += sectionInfo.numApps - item.sectionAppIndex;
                        }
                    }
                    i++;
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        }

        private PointF getAndCacheSectionBounds(String sectionName) {
            PointF bounds = this.mCachedSectionBounds.get(sectionName);
            if (bounds == null) {
                AllAppsGridAdapter.this.mSectionTextPaint.getTextBounds(sectionName, 0, sectionName.length(), this.mTmpBounds);
                PointF bounds2 = new PointF(AllAppsGridAdapter.this.mSectionTextPaint.measureText(sectionName), this.mTmpBounds.height());
                this.mCachedSectionBounds.put(sectionName, bounds2);
                return bounds2;
            }
            return bounds;
        }

        private boolean isValidHolderAndChild(ViewHolder holder, View child, List<AlphabeticalAppsList.AdapterItem> items) {
            int pos;
            GridLayoutManager.LayoutParams lp = (GridLayoutManager.LayoutParams) child.getLayoutParams();
            return !lp.isItemRemoved() && holder != null && (pos = holder.getPosition()) >= 0 && pos < items.size();
        }

        private boolean shouldDrawItemDivider(ViewHolder holder, List<AlphabeticalAppsList.AdapterItem> items) {
            int pos = holder.getPosition();
            return items.get(pos).viewType == 2;
        }

        private boolean shouldDrawItemSection(ViewHolder holder, int childIndex, List<AlphabeticalAppsList.AdapterItem> items) {
            int pos = holder.getPosition();
            AlphabeticalAppsList.AdapterItem item = items.get(pos);
            if (item.viewType != 1) {
                return false;
            }
            return childIndex == 0 || items.get(pos + (-1)).viewType == 0;
        }
    }

    public AllAppsGridAdapter(Launcher launcher, AlphabeticalAppsList apps, View.OnTouchListener touchListener, View.OnClickListener iconClickListener, View.OnLongClickListener iconLongClickListener) {
        Resources res = launcher.getResources();
        this.mLauncher = launcher;
        this.mApps = apps;
        this.mEmptySearchMessage = res.getString(R.string.all_apps_loading_message);
        this.mGridSizer = new GridSpanSizer();
        this.mGridLayoutMgr = new AppsGridLayoutManager(launcher);
        this.mGridLayoutMgr.setSpanSizeLookup(this.mGridSizer);
        this.mItemDecoration = new GridItemDecoration();
        this.mLayoutInflater = LayoutInflater.from(launcher);
        this.mTouchListener = touchListener;
        this.mIconClickListener = iconClickListener;
        this.mIconLongClickListener = iconLongClickListener;
        this.mSectionNamesMargin = res.getDimensionPixelSize(R.dimen.all_apps_grid_view_start_margin);
        this.mSectionHeaderOffset = res.getDimensionPixelSize(R.dimen.all_apps_grid_section_y_offset);
        this.mSectionTextPaint = new Paint();
        this.mSectionTextPaint.setTextSize(res.getDimensionPixelSize(R.dimen.all_apps_grid_section_text_size));
        this.mSectionTextPaint.setColor(res.getColor(R.color.all_apps_grid_section_text_color));
        this.mSectionTextPaint.setAntiAlias(true);
        this.mPredictedAppsDividerPaint = new Paint();
        this.mPredictedAppsDividerPaint.setStrokeWidth(Utilities.pxFromDp(1.0f, res.getDisplayMetrics()));
        this.mPredictedAppsDividerPaint.setColor(503316480);
        this.mPredictedAppsDividerPaint.setAntiAlias(true);
        this.mPredictionBarDividerOffset = ((-res.getDimensionPixelSize(R.dimen.all_apps_prediction_icon_bottom_padding)) + res.getDimensionPixelSize(R.dimen.all_apps_icon_top_bottom_padding)) / 2;
        PackageManager pm = launcher.getPackageManager();
        ResolveInfo marketInfo = pm.resolveActivity(createMarketSearchIntent(""), 65536);
        if (marketInfo != null) {
            this.mMarketAppName = marketInfo.loadLabel(pm).toString();
        }
        this.mIconSizeScale = Utilities.getIconScaleValue(launcher);
    }

    public void setNumAppsPerRow(int appsPerRow) {
        this.mAppsPerRow = appsPerRow;
        this.mGridLayoutMgr.setSpanCount(appsPerRow);
    }

    public void setRtl(boolean rtl) {
        this.mIsRtl = rtl;
    }

    public void setIconSizeScale(float iconSizeScale) {
        this.mIconSizeScale = iconSizeScale;
    }

    public void setLastSearchQuery(String query) {
        Resources res = this.mLauncher.getResources();
        String formatStr = res.getString(R.string.all_apps_no_search_results);
        this.mLastSearchQuery = query;
        this.mEmptySearchMessage = String.format(formatStr, query);
        if (this.mMarketAppName != null) {
            this.mMarketSearchMessage = String.format(res.getString(R.string.all_apps_search_market_message), this.mMarketAppName);
            this.mMarketSearchIntent = createMarketSearchIntent(query);
        }
    }

    public void updateBackgroundPadding(Rect padding) {
        this.mBackgroundPadding.set(padding);
    }

    public GridLayoutManager getLayoutManager() {
        return this.mGridLayoutMgr;
    }

    public RecyclerView.ItemDecoration getItemDecoration() {
        return this.mItemDecoration;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case 0:
                return new ViewHolder(new View(parent.getContext()));
            case 1:
                BubbleTextView icon = (BubbleTextView) this.mLayoutInflater.inflate(R.layout.all_apps_icon, parent, false);
                icon.setOnTouchListener(this.mTouchListener);
                icon.setOnClickListener(this.mIconClickListener);
                icon.setOnLongClickListener(this.mIconLongClickListener);
                ViewConfiguration.get(parent.getContext());
                icon.setLongPressTimeout(ViewConfiguration.getLongPressTimeout());
                icon.setFocusable(true);
                return new ViewHolder(icon);
            case 2:
                BubbleTextView icon2 = (BubbleTextView) this.mLayoutInflater.inflate(R.layout.all_apps_prediction_bar_icon, parent, false);
                icon2.setOnTouchListener(this.mTouchListener);
                icon2.setOnClickListener(this.mIconClickListener);
                icon2.setOnLongClickListener(this.mIconLongClickListener);
                ViewConfiguration.get(parent.getContext());
                icon2.setLongPressTimeout(ViewConfiguration.getLongPressTimeout());
                icon2.setFocusable(true);
                icon2.setIconSizeScale(this.mIconSizeScale);
                return new ViewHolder(icon2);
            case 3:
                return new ViewHolder(this.mLayoutInflater.inflate(R.layout.all_apps_empty_search, parent, false));
            case 4:
                return new ViewHolder(this.mLayoutInflater.inflate(R.layout.all_apps_search_market_divider, parent, false));
            case 5:
                View searchMarketView = this.mLayoutInflater.inflate(R.layout.all_apps_search_market, parent, false);
                searchMarketView.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.allapps.AllAppsGridAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        AllAppsGridAdapter.this.mLauncher.startSearchFromAllApps(v, AllAppsGridAdapter.this.mMarketSearchIntent, AllAppsGridAdapter.this.mLastSearchQuery);
                    }
                });
                return new ViewHolder(searchMarketView);
            default:
                throw new RuntimeException("Unexpected view type");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        TypedValue out = new TypedValue();
        this.mLauncher.getTheme().resolveAttribute(android.R.attr.colorAccent, out, true);
        int color = this.mLauncher.getColor(out.resourceId);
        switch (holder.getItemViewType()) {
            case 1:
                AppInfo info = this.mApps.getAdapterItems().get(position).appInfo;
                BubbleTextView icon = (BubbleTextView) holder.mContent;
                icon.setIconSizeScale(this.mIconSizeScale);
                icon.applyFromApplicationInfo(info, false, this.mUpdateIconsInBackground);
                icon.setTextColor(this.mLauncher.getColor(R.color.quantum_panel_text_color));
                return;
            case 2:
                AppInfo info2 = this.mApps.getAdapterItems().get(position).appInfo;
                BubbleTextView icon2 = (BubbleTextView) holder.mContent;
                icon2.applyFromApplicationInfo(info2);
                icon2.setTextColor(this.mLauncher.getColor(R.color.quantum_panel_text_color));
                return;
            case 3:
                TextView emptyViewText = (TextView) holder.mContent;
                emptyViewText.setText(this.mEmptySearchMessage);
                emptyViewText.setGravity(this.mApps.hasNoFilteredResults() ? 17 : 8388627);
                emptyViewText.setTextColor(this.mLauncher.getColor(R.color.all_apps_empty_search_message_color));
                return;
            case 4:
            default:
                return;
            case 5:
                TextView searchView = (TextView) holder.mContent;
                if (this.mMarketSearchIntent != null) {
                    searchView.setVisibility(0);
                    searchView.setContentDescription(this.mMarketSearchMessage);
                    searchView.setGravity(this.mApps.hasNoFilteredResults() ? 17 : 8388627);
                    searchView.setText(this.mMarketSearchMessage);
                    searchView.setTextColor(color);
                    return;
                }
                searchView.setVisibility(8);
                return;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mApps.getAdapterItems().size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        AlphabeticalAppsList.AdapterItem item = this.mApps.getAdapterItems().get(position);
        return item.viewType;
    }

    public boolean isUpdateIconsInBackground() {
        return this.mUpdateIconsInBackground;
    }

    public void setUpdateIconsInBackground(boolean updateIconsInBackground) {
        this.mUpdateIconsInBackground = updateIconsInBackground;
    }

    private Intent createMarketSearchIntent(String query) {
        Uri marketSearchUri = Uri.parse("market://search").buildUpon().appendQueryParameter("q", query).build();
        Intent marketSearchIntent = new Intent("android.intent.action.VIEW");
        marketSearchIntent.setData(marketSearchUri);
        return marketSearchIntent;
    }
}
