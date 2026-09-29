package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import net.oneplus.h2launcher.oos.StyleManager;

/* loaded from: classes.dex */
public class DeviceProfile {
    public int allAppsButtonVisualSize;
    public final int allAppsIconSizePx;
    public final float allAppsIconTextSizeSp;
    public int allAppsNumCols;
    public int allAppsNumPredictiveCols;
    public final int availableHeightPx;
    public final int availableWidthPx;
    public int cellHeightPx;
    public int cellWidthPx;
    private final int defaultPageSpacingPx;
    public final Rect defaultWidgetPadding;
    private int desiredWorkspaceLeftRightMarginPx;
    private float dragViewScale;
    public final int edgeMarginPx;
    public int folderBackgroundOffset;
    public int folderCellHeightPx;
    public int folderCellWidthPx;
    public int folderIconSizePx;
    public final int heightPx;
    private int hotseatBarHeightPx;
    public int hotseatCellHeightPx;
    public int hotseatCellWidthPx;
    public int hotseatIconSizePx;
    public int iconDrawablePaddingOriginalPx;
    public int iconDrawablePaddingPx;
    public int iconSizePx;
    public int iconTextSizePx;
    public final InvariantDeviceProfile inv;
    public final boolean isLandscape;
    public final boolean isLargeTablet;
    public final boolean isPhone;
    public final boolean isTablet;
    private Context mContext;
    private Rect mInsets = new Rect();
    private boolean mIsDefault420Dpi;
    private boolean mIsLargestDpi;
    private final int overviewModeBarItemWidthPx;
    private final int overviewModeBarSpacerWidthPx;
    private final float overviewModeIconZoneRatio;
    private final int overviewModeMaxIconZoneHeightPx;
    private final int overviewModeMinIconZoneHeightPx;
    private int pageIndicatorBottomMargin;
    private final int pageIndicatorHeightPx;
    private int searchBarSpaceHeightPx;
    private int searchBarSpaceWidthPx;
    public final boolean transposeLayoutWithOrientation;
    public final int widthPx;

    public DeviceProfile(Context context, InvariantDeviceProfile inv, Point minSize, Point maxSize, int width, int height, boolean isLandscape) {
        boolean z = false;
        this.mIsLargestDpi = false;
        this.mIsDefault420Dpi = false;
        this.mContext = null;
        this.mContext = context;
        this.inv = inv;
        this.isLandscape = isLandscape;
        Resources res = context.getResources();
        DisplayMetrics dm = res.getDisplayMetrics();
        this.isTablet = res.getBoolean(R.bool.is_tablet);
        this.isLargeTablet = res.getBoolean(R.bool.is_large_tablet);
        if (!this.isTablet && !this.isLargeTablet) {
            z = true;
        }
        this.isPhone = z;
        this.transposeLayoutWithOrientation = res.getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        ComponentName cn = new ComponentName(context.getPackageName(), getClass().getName());
        this.defaultWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(context, cn, null);
        this.edgeMarginPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
        this.desiredWorkspaceLeftRightMarginPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_workspace_horizontal_padding);
        int pageIndicatorHeight = res.getDimensionPixelSize(R.dimen.dynamic_grid_page_indicator_height);
        this.pageIndicatorHeightPx = StyleManager.isStandardLayout() ? pageIndicatorHeight : (int) (pageIndicatorHeight * 1.67f);
        this.defaultPageSpacingPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_workspace_page_spacing);
        this.overviewModeMinIconZoneHeightPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_overview_min_icon_zone_height);
        this.overviewModeMaxIconZoneHeightPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_overview_max_icon_zone_height);
        this.overviewModeBarItemWidthPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_overview_bar_item_width);
        this.overviewModeBarSpacerWidthPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_overview_bar_spacer_width);
        this.overviewModeIconZoneRatio = res.getInteger(R.integer.config_dynamic_grid_overview_icon_zone_percentage) / 100.0f;
        if (Utilities.isBangsScreen(this.mContext)) {
            this.iconDrawablePaddingOriginalPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_icon_drawable_padding_17819);
        } else {
            this.iconDrawablePaddingOriginalPx = res.getDimensionPixelSize(R.dimen.dynamic_grid_icon_drawable_padding);
        }
        this.pageIndicatorBottomMargin = res.getDimensionPixelOffset(R.dimen.page_indicator_bottom_margin);
        this.allAppsIconTextSizeSp = inv.iconTextSize;
        this.allAppsIconSizePx = Utilities.pxFromDp(inv.iconSize, dm);
        this.widthPx = width;
        this.heightPx = height;
        if (isLandscape) {
            this.availableWidthPx = maxSize.x;
            this.availableHeightPx = minSize.y;
        } else {
            this.availableWidthPx = minSize.x;
            this.availableHeightPx = maxSize.y;
        }
        this.mIsLargestDpi = Utilities.isLargestDensity(context);
        this.mIsDefault420Dpi = Utilities.isDefaultDensity(context);
        updateAvailableDimensions(dm, res);
        computeAllAppsButtonSize(context);
    }

    public void updateInsets(Rect insets) {
        this.mInsets.set(insets);
    }

    private void computeAllAppsButtonSize(Context context) {
        Resources res = context.getResources();
        float padding = res.getInteger(R.integer.config_allAppsButtonPaddingPercent) / 100.0f;
        this.allAppsButtonVisualSize = (int) (this.hotseatIconSizePx * (1.0f - padding));
    }

    private void updateAvailableDimensions(DisplayMetrics dm, Resources res) {
        float scale = 1.0f;
        int drawablePadding = this.iconDrawablePaddingOriginalPx;
        updateIconSize(1.0f, drawablePadding, res, dm);
        float usedHeight = this.cellHeightPx * this.inv.numRows;
        Rect workspacePadding = getWorkspacePadding(false);
        int maxHeight = (this.availableHeightPx - workspacePadding.top) - workspacePadding.bottom;
        if (usedHeight > maxHeight) {
            scale = maxHeight / usedHeight;
            drawablePadding = 0;
        }
        updateIconSize(scale, drawablePadding, res, dm);
    }

    private void updateIconSize(float scale, int drawablePadding, Resources res, DisplayMetrics dm) {
        float largestDpiScale = this.mIsLargestDpi ? 0.8889f : 1.0f;
        this.iconSizePx = (int) (Utilities.pxFromDp(this.inv.iconSize, dm) * scale * largestDpiScale);
        this.iconTextSizePx = (int) (Utilities.pxFromDp(this.inv.iconTextSize, dm) * scale * largestDpiScale);
        this.iconDrawablePaddingPx = drawablePadding;
        this.hotseatIconSizePx = (int) (Utilities.pxFromDp(this.inv.hotseatIconSize, dm) * scale * largestDpiScale);
        this.searchBarSpaceWidthPx = Math.min(this.widthPx, res.getDimensionPixelSize(R.dimen.dynamic_grid_search_bar_max_width));
        this.searchBarSpaceHeightPx = getSearchBarTopOffset() + res.getDimensionPixelSize(R.dimen.dynamic_grid_search_bar_height);
        Paint textPaint = new Paint();
        textPaint.setTextSize(this.iconTextSizePx);
        Paint.FontMetrics fm = textPaint.getFontMetrics();
        this.cellWidthPx = this.iconSizePx;
        this.cellHeightPx = this.iconSizePx + this.iconDrawablePaddingPx + ((int) Math.ceil(fm.bottom - fm.top));
        float scaleDps = res.getDimensionPixelSize(R.dimen.dragViewScale);
        this.dragViewScale = (this.iconSizePx + scaleDps) / this.iconSizePx;
        this.hotseatBarHeightPx = ((this.mIsLargestDpi ? 2 : 4) * this.edgeMarginPx) + this.iconSizePx;
        this.hotseatCellWidthPx = this.iconSizePx;
        this.hotseatCellHeightPx = this.iconSizePx;
        this.folderCellWidthPx = this.cellWidthPx + (this.edgeMarginPx * 3);
        this.folderCellHeightPx = this.cellHeightPx + ((this.mIsLargestDpi ? 3 : 2) * this.edgeMarginPx);
        this.folderBackgroundOffset = -this.edgeMarginPx;
        int offset = this.mIsDefault420Dpi ? (int) (2.5f * (-this.folderBackgroundOffset)) : (-this.folderBackgroundOffset) * 2;
        this.folderIconSizePx = this.iconSizePx + offset;
    }

    public void updateAppsViewNumCols(Resources res, int recyclerViewWidth) {
        int appsViewLeftMarginPx = res.getDimensionPixelSize(R.dimen.all_apps_grid_view_start_margin);
        int allAppsCellWidthGap = res.getDimensionPixelSize(R.dimen.all_apps_icon_width_gap);
        int availableAppsWidthPx = recyclerViewWidth > 0 ? recyclerViewWidth : this.availableWidthPx;
        int numAppsCols = ((availableAppsWidthPx + allAppsCellWidthGap) - appsViewLeftMarginPx) / (this.allAppsIconSizePx + allAppsCellWidthGap);
        int numPredictiveAppCols = Math.max(this.inv.minAllAppsPredictionColumns, numAppsCols);
        this.allAppsNumCols = numAppsCols;
        this.allAppsNumPredictiveCols = numPredictiveAppCols;
    }

    public void updateAppsViewNumCols(int numAppsCols) {
        this.allAppsNumCols = numAppsCols;
        this.allAppsNumPredictiveCols = numAppsCols;
    }

    private int getSearchBarTopOffset() {
        return (!this.isTablet || isVerticalBarLayout()) ? this.edgeMarginPx * 2 : this.edgeMarginPx * 4;
    }

    public Rect getSearchBarBounds(boolean isLayoutRtl) {
        Rect bounds = new Rect();
        if (this.isLandscape && this.transposeLayoutWithOrientation) {
            if (isLayoutRtl) {
                bounds.set(this.availableWidthPx - this.searchBarSpaceHeightPx, this.edgeMarginPx, this.availableWidthPx, this.availableHeightPx - this.edgeMarginPx);
            } else {
                bounds.set(0, this.edgeMarginPx, this.searchBarSpaceHeightPx, this.availableHeightPx - this.edgeMarginPx);
            }
        } else if (this.isTablet) {
            int width = getCurrentWidth();
            int gap = ((width - (this.edgeMarginPx * 2)) - (this.inv.numColumns * this.cellWidthPx)) / ((this.inv.numColumns + 1) * 2);
            bounds.set(this.edgeMarginPx + gap, getSearchBarTopOffset(), this.availableWidthPx - (this.edgeMarginPx + gap), this.searchBarSpaceHeightPx);
        } else {
            bounds.set(this.desiredWorkspaceLeftRightMarginPx - this.defaultWidgetPadding.left, getSearchBarTopOffset(), this.availableWidthPx - (this.desiredWorkspaceLeftRightMarginPx - this.defaultWidgetPadding.right), this.searchBarSpaceHeightPx);
        }
        return bounds;
    }

    public Rect getWorkspacePadding(boolean isLayoutRtl) {
        Rect searchBarBounds = getSearchBarBounds(isLayoutRtl);
        Rect padding = new Rect();
        if (this.isLandscape && this.transposeLayoutWithOrientation) {
            if (isLayoutRtl) {
                padding.set(this.hotseatBarHeightPx, this.edgeMarginPx, searchBarBounds.width(), this.edgeMarginPx);
            } else {
                padding.set(searchBarBounds.width(), this.edgeMarginPx, this.hotseatBarHeightPx, this.edgeMarginPx);
            }
        } else if (this.isTablet) {
            float gapScale = 1.0f + ((this.dragViewScale - 1.0f) / 2.0f);
            int width = getCurrentWidth();
            int height = getCurrentHeight();
            int paddingTop = searchBarBounds.bottom;
            int paddingBottom = this.hotseatBarHeightPx + this.pageIndicatorHeightPx;
            int availableWidth = Math.max(0, width - ((int) ((this.inv.numColumns * this.cellWidthPx) + ((this.inv.numColumns * gapScale) * this.cellWidthPx))));
            int availableHeight = Math.max(0, ((height - paddingTop) - paddingBottom) - ((this.inv.numRows * 2) * this.cellHeightPx));
            padding.set(availableWidth / 2, (availableHeight / 2) + paddingTop, availableWidth / 2, (availableHeight / 2) + paddingBottom);
        } else {
            boolean showHotSeat = StyleManager.getInstance().showHotSeat();
            boolean showSearchBar = StyleManager.getInstance().showSearchBar();
            int paddingBottom2 = (showHotSeat ? this.hotseatBarHeightPx : 0) + this.pageIndicatorHeightPx + getBangsBottomPadding();
            int left = this.desiredWorkspaceLeftRightMarginPx;
            int right = this.desiredWorkspaceLeftRightMarginPx;
            if (!Utilities.isBangsScreen(this.mContext)) {
                left = this.desiredWorkspaceLeftRightMarginPx - this.defaultWidgetPadding.left;
                right = this.desiredWorkspaceLeftRightMarginPx - this.defaultWidgetPadding.right;
            }
            padding.set(left, showSearchBar ? searchBarBounds.bottom : 0, right, paddingBottom2);
        }
        return padding;
    }

    private int getBangsBottomPadding() {
        int workspaceBottomPadding;
        if (!Utilities.isBangsScreen(this.mContext)) {
            return 0;
        }
        if (getVirtualKeyHeight() != 0) {
            workspaceBottomPadding = (int) this.mContext.getResources().getDimension(R.dimen.dynamic_grid_workspace_bottom_padding);
        } else {
            workspaceBottomPadding = (int) this.mContext.getResources().getDimension(R.dimen.dynamic_grid_workspace_bottom_padding_fullscreen);
        }
        return workspaceBottomPadding + getIndicatorMarginBottom();
    }

    private int getIndicatorMarginBottom() {
        if (!Utilities.isBangsScreen(this.mContext)) {
            return 0;
        }
        int indicatorBottomMarginPx = this.mContext.getResources().getDimensionPixelSize(R.dimen.dynamic_grid_indicator_bottom_margin);
        return indicatorBottomMarginPx;
    }

    private int getWorkspacePageSpacing(boolean isLayoutRtl) {
        return ((this.isLandscape && this.transposeLayoutWithOrientation) || this.isLargeTablet) ? this.defaultPageSpacingPx : Math.max(this.defaultPageSpacingPx, getWorkspacePadding(isLayoutRtl).left * 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOverviewModeButtonBarHeight() {
        int zoneHeight = (int) (this.overviewModeIconZoneRatio * this.availableHeightPx);
        return Math.min(this.overviewModeMaxIconZoneHeightPx, Math.max(this.overviewModeMinIconZoneHeightPx, zoneHeight));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect getHotseatRect() {
        return isVerticalBarLayout() ? new Rect(this.availableWidthPx - this.hotseatBarHeightPx, 0, Integer.MAX_VALUE, this.availableHeightPx) : new Rect(0, this.availableHeightPx - this.hotseatBarHeightPx, this.availableWidthPx, Integer.MAX_VALUE);
    }

    public static int calculateCellWidth(int width, int countX) {
        return width / countX;
    }

    public static int calculateCellHeight(int height, int countY) {
        return height / countY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVerticalBarLayout() {
        return this.isLandscape && this.transposeLayoutWithOrientation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldFadeAdjacentWorkspaceScreens() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldFadeAdjacentWorkspaceScreensWhileTransitionAnimation() {
        return false;
    }

    private int getVisibleChildCount(ViewGroup parent) {
        int visibleChildren = 0;
        for (int i = 0; i < parent.getChildCount(); i++) {
            if (parent.getChildAt(i).getVisibility() != 8) {
                visibleChildren++;
            }
        }
        return visibleChildren;
    }

    public void layout(Launcher launcher) {
        boolean hasVerticalBarLayout = isVerticalBarLayout();
        boolean isLayoutRtl = Utilities.isRtl(launcher.getResources());
        View searchBar = launcher.getSearchDropTargetBar();
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) searchBar.getLayoutParams();
        if (hasVerticalBarLayout) {
            lp.gravity = 3;
            lp.width = this.searchBarSpaceHeightPx;
            LinearLayout targets = (LinearLayout) searchBar.findViewById(R.id.drag_target_bar);
            targets.setOrientation(1);
            FrameLayout.LayoutParams targetsLp = (FrameLayout.LayoutParams) targets.getLayoutParams();
            targetsLp.gravity = 48;
            targetsLp.height = -2;
        } else {
            lp.gravity = 48;
            lp.height = this.searchBarSpaceHeightPx;
            ((LinearLayout) searchBar.findViewById(R.id.drag_target_bar)).getLayoutParams().width = this.searchBarSpaceWidthPx;
        }
        searchBar.setLayoutParams(lp);
        PagedView workspace = (PagedView) launcher.findViewById(R.id.workspace);
        FrameLayout.LayoutParams lp2 = (FrameLayout.LayoutParams) workspace.getLayoutParams();
        lp2.gravity = 17;
        Rect padding = getWorkspacePadding(isLayoutRtl);
        workspace.setLayoutParams(lp2);
        workspace.setPadding(padding.left, padding.top, padding.right, padding.bottom);
        workspace.setPageSpacing(getWorkspacePageSpacing(isLayoutRtl));
        View hotseat = launcher.findViewById(R.id.hotseat);
        if (hotseat != null) {
            FrameLayout.LayoutParams lp3 = (FrameLayout.LayoutParams) hotseat.getLayoutParams();
            if (hasVerticalBarLayout) {
                lp3.gravity = 5;
                lp3.width = this.hotseatBarHeightPx;
                lp3.height = -1;
                hotseat.findViewById(R.id.layout).setPadding(0, this.edgeMarginPx * 2, 0, this.edgeMarginPx * 2);
            } else if (this.isTablet) {
                lp3.gravity = 80;
                lp3.width = -1;
                lp3.height = this.hotseatBarHeightPx;
                hotseat.setPadding(this.edgeMarginPx + padding.left, 0, this.edgeMarginPx + padding.right, this.edgeMarginPx * 2);
            } else {
                lp3.gravity = 80;
                lp3.width = -1;
                lp3.height = this.hotseatBarHeightPx;
                hotseat.findViewById(R.id.layout).setPadding(this.edgeMarginPx * 2, 0, this.edgeMarginPx * 2, 0);
            }
            hotseat.setLayoutParams(lp3);
        }
        View pageIndicator = launcher.findViewById(R.id.page_indicator);
        if (pageIndicator != null) {
            if (hasVerticalBarLayout) {
                pageIndicator.setVisibility(8);
                return;
            }
            FrameLayout.LayoutParams lp4 = (FrameLayout.LayoutParams) pageIndicator.getLayoutParams();
            lp4.gravity = 81;
            lp4.width = -2;
            lp4.height = -2;
            lp4.bottomMargin = (StyleManager.getInstance().showHotSeat() ? this.hotseatBarHeightPx : this.pageIndicatorBottomMargin) + getVirtualKeyHeight() + getIndicatorMarginBottom();
            pageIndicator.setLayoutParams(lp4);
        }
    }

    private int getCurrentWidth() {
        if (this.isLandscape) {
            return Math.max(this.widthPx, this.heightPx);
        }
        return Math.min(this.widthPx, this.heightPx);
    }

    private int getCurrentHeight() {
        if (this.isLandscape) {
            return Math.min(this.widthPx, this.heightPx);
        }
        return Math.max(this.widthPx, this.heightPx);
    }

    public int getVirtualKeyHeight() {
        return this.mInsets.bottom;
    }
}
