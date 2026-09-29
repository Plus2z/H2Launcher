package net.oneplus.h2launcher.allapps;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.support.v7.widget.RecyclerView;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.BaseContainerView;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DeleteDropTarget;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.DragSource;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.Folder;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherTransitionable;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.allapps.AllAppsSearchBarController;
import net.oneplus.h2launcher.allapps.AlphabeticalAppsList;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class AllAppsContainerView extends BaseContainerView implements DragSource, LauncherTransitionable, View.OnTouchListener, View.OnLongClickListener, AllAppsSearchBarController.Callbacks {
    private static final int MAX_NUM_MERGES_PHONE = 2;
    private static final int MIN_ROWS_IN_MERGED_SECTION_PHONE = 3;
    private AllAppsGridAdapter mAdapter;
    AlphabeticalAppsList mApps;
    AllAppsRecyclerView mAppsRecyclerView;
    private final Point mBoundsCheckLastTouchDownPos;
    View mContainerView;
    View mContent;
    private final Rect mContentBounds;
    private boolean mFirstInitialized;
    private final Point mIconLastTouchPos;
    private RecyclerView.ItemDecoration mItemDecoration;
    Launcher mLauncher;
    private RecyclerView.LayoutManager mLayoutManager;
    private int mNumAppsPerRow;
    private int mNumPredictedAppsPerRow;
    private int mRecyclerViewTopBottomPadding;
    View mRevealView;
    private ViewGroup mSearchBarContainerView;
    AllAppsSearchBarController mSearchBarController;
    private View mSearchBarView;
    private View.OnClickListener mSearchClickListener;
    private SpannableStringBuilder mSearchQueryBuilder;
    private int mSectionNamesMargin;

    public AllAppsContainerView(Context context) {
        this(context, null);
    }

    public AllAppsContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AllAppsContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSearchQueryBuilder = null;
        this.mContentBounds = new Rect();
        this.mBoundsCheckLastTouchDownPos = new Point(-1, -1);
        this.mIconLastTouchPos = new Point();
        this.mFirstInitialized = true;
        this.mSearchClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.allapps.AllAppsContainerView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Intent searchIntent = (Intent) v.getTag();
                AllAppsContainerView.this.mLauncher.startActivitySafely(v, searchIntent, null);
            }
        };
        Resources res = context.getResources();
        this.mLauncher = (Launcher) context;
        this.mSectionNamesMargin = res.getDimensionPixelSize(R.dimen.all_apps_grid_view_start_margin);
        this.mApps = new AlphabeticalAppsList(context);
        this.mAdapter = new AllAppsGridAdapter(this.mLauncher, this.mApps, this, this.mLauncher, this);
        this.mApps.setAdapter(this.mAdapter);
        this.mLayoutManager = this.mAdapter.getLayoutManager();
        this.mItemDecoration = this.mAdapter.getItemDecoration();
        this.mRecyclerViewTopBottomPadding = res.getDimensionPixelSize(R.dimen.all_apps_list_top_bottom_padding);
        this.mSearchQueryBuilder = new SpannableStringBuilder();
        Selection.setSelection(this.mSearchQueryBuilder, 0);
    }

    public void setPredictedApps(List<ComponentKey> apps) {
        this.mApps.setPredictedApps(apps);
    }

    public void setApps(List<AppInfo> apps) {
        this.mApps.setApps(apps);
    }

    public void addApps(List<AppInfo> apps) {
        this.mApps.addApps(apps);
    }

    public void updateApps(List<AppInfo> apps) {
        this.mApps.updateApps(apps);
    }

    public void removeApps(List<AppInfo> apps) {
        this.mApps.removeApps(apps);
    }

    public void setSearchBarController(AllAppsSearchBarController searchController) {
        if (this.mSearchBarController != null) {
            throw new RuntimeException("Expected search bar controller to only be set once");
        }
        this.mSearchBarController = searchController;
        this.mSearchBarController.initialize(this.mApps, this);
        View searchBarView = searchController.getView(this.mSearchBarContainerView);
        this.mSearchBarContainerView.addView(searchBarView);
        this.mSearchBarContainerView.setVisibility(0);
        this.mSearchBarView = searchBarView;
        setHasSearchBar();
        updateBackgroundAndPaddings();
    }

    public void scrollToTop() {
        this.mAppsRecyclerView.scrollToTop();
    }

    public View getContentView() {
        return this.mContainerView;
    }

    public View getSearchBarView() {
        return this.mSearchBarView;
    }

    public View getRevealView() {
        return this.mRevealView;
    }

    public AllAppsRecyclerView getAppsRecyclerView() {
        return this.mAppsRecyclerView;
    }

    public AllAppsGridAdapter getAdapter() {
        return this.mAdapter;
    }

    public AllAppsSearchBarController newDefaultAppSearchController() {
        return new DefaultAppSearchController(getContext(), this, this.mAppsRecyclerView);
    }

    public void startAppsSearch() {
        if (this.mSearchBarController != null) {
            this.mSearchBarController.focusSearchField();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        boolean isRtl = Utilities.isRtl(getResources());
        this.mAdapter.setRtl(isRtl);
        this.mContent = findViewById(R.id.content);
        View.OnFocusChangeListener focusProxyListener = new View.OnFocusChangeListener() { // from class: net.oneplus.h2launcher.allapps.AllAppsContainerView.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    AllAppsContainerView.this.mAppsRecyclerView.requestFocus();
                }
            }
        };
        this.mSearchBarContainerView = (ViewGroup) findViewById(R.id.search_box_container);
        this.mSearchBarContainerView.setOnFocusChangeListener(focusProxyListener);
        this.mContainerView = findViewById(R.id.all_apps_container);
        this.mContainerView.setOnFocusChangeListener(focusProxyListener);
        this.mRevealView = findViewById(R.id.all_apps_reveal);
        this.mAppsRecyclerView = (AllAppsRecyclerView) findViewById(R.id.apps_list_view);
        this.mAppsRecyclerView.setApps(this.mApps);
        this.mAppsRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mAppsRecyclerView.setAdapter(this.mAdapter);
        this.mAppsRecyclerView.setHasFixedSize(true);
        if (this.mItemDecoration != null) {
            this.mAppsRecyclerView.addItemDecoration(this.mItemDecoration);
        }
        updateBackgroundAndPaddings();
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController.Callbacks
    public void onBoundsChanged(Rect newBounds) {
        this.mLauncher.updateOverlayBounds(newBounds);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.mContentBounds.set(this.mContentPadding.left, this.mContentPadding.top, View.MeasureSpec.getSize(widthMeasureSpec) - this.mContentPadding.right, View.MeasureSpec.getSize(heightMeasureSpec) - this.mContentPadding.bottom);
        if (this.mContentBounds.isEmpty()) {
            View.MeasureSpec.getSize(widthMeasureSpec);
        } else {
            this.mContentBounds.width();
        }
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        updateNumAppsPerRow(grid);
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public void updateAllAppsEntries(AssetCache assetCache, String filter, boolean updateLabels) {
        List<AlphabeticalAppsList.AdapterItem> applications = this.mApps.getAdapterItems();
        for (AlphabeticalAppsList.AdapterItem adapterItem : applications) {
            AppInfo info = adapterItem.appInfo;
            if (info != null && (filter == null || info.componentName.flattenToString().equals(filter))) {
                info.updateIcon(assetCache);
                if (updateLabels) {
                    info.updateLabel(assetCache);
                }
            }
        }
    }

    public void updateAllAppsFromCustomizations() {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        updateNumAppsPerRow(grid);
    }

    private void updateNumAppsPerRow(DeviceProfile grid) {
        if (this.mNumAppsPerRow != grid.allAppsNumCols || this.mNumPredictedAppsPerRow != grid.allAppsNumPredictiveCols) {
            this.mNumAppsPerRow = grid.allAppsNumCols;
            this.mNumPredictedAppsPerRow = grid.allAppsNumPredictiveCols;
            boolean mergeSectionsFully = this.mSectionNamesMargin == 0 || !grid.isPhone;
            AlphabeticalAppsList.MergeAlgorithm mergeAlgorithm = mergeSectionsFully ? new FullMergeAlgorithm() : new SimpleSectionMergeAlgorithm((int) Math.ceil(this.mNumAppsPerRow / 2.0f), 3, 2);
            this.mAppsRecyclerView.setNumAppsPerRow(grid, this.mNumAppsPerRow);
            this.mAdapter.setNumAppsPerRow(this.mNumAppsPerRow);
            this.mApps.setNumAppsPerRow(this.mNumAppsPerRow, this.mNumPredictedAppsPerRow, mergeAlgorithm);
        }
    }

    @Override // net.oneplus.h2launcher.BaseContainerView
    protected void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        boolean isRtl = Utilities.isRtl(getResources());
        int backgroundColor = this.mLauncher.getColor(R.color.quantum_panel_bg_color);
        InsetDrawable background = new InsetDrawable(this.mLauncher.getDrawable(R.drawable.quantum_panel_shape), padding.left, 0, padding.right, 0);
        Rect bgPadding = new Rect();
        background.getPadding(bgPadding);
        background.setColorFilter(backgroundColor, PorterDuff.Mode.SRC_ATOP);
        this.mContainerView.setBackground(background);
        if (background.getConstantState() != null) {
            Drawable drawable = background.getConstantState().newDrawable();
            drawable.setColorFilter(backgroundColor, PorterDuff.Mode.SRC_ATOP);
            this.mRevealView.setBackground(drawable);
        }
        this.mAppsRecyclerView.updateBackgroundPadding(bgPadding);
        this.mAdapter.updateBackgroundPadding(bgPadding);
        this.mContent.setPadding(0, padding.top, 0, padding.bottom);
        this.mContainerView.setPadding(0, 0, 0, 0);
        int startInset = Math.max(this.mSectionNamesMargin, this.mAppsRecyclerView.getMaxScrollbarWidth());
        int topBottomPadding = this.mRecyclerViewTopBottomPadding;
        if (isRtl) {
            this.mAppsRecyclerView.setPadding(padding.left + this.mAppsRecyclerView.getMaxScrollbarWidth(), topBottomPadding, padding.right + startInset, topBottomPadding);
        } else {
            this.mAppsRecyclerView.setPadding(padding.left + startInset, topBottomPadding, padding.right + this.mAppsRecyclerView.getMaxScrollbarWidth(), topBottomPadding);
        }
        if (this.mSearchBarView != null) {
            Rect backgroundPadding = new Rect();
            if (this.mSearchBarView.getBackground() != null) {
                Drawable searchBackground = this.mSearchBarView.getBackground();
                searchBackground.getPadding(backgroundPadding);
                searchBackground.setColorFilter(backgroundColor, PorterDuff.Mode.SRC_ATOP);
            }
            LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) this.mSearchBarContainerView.getLayoutParams();
            lp.leftMargin = searchBarBounds.left - backgroundPadding.left;
            lp.topMargin = searchBarBounds.top - backgroundPadding.top;
            lp.rightMargin = (getMeasuredWidth() - searchBarBounds.right) - backgroundPadding.right;
            this.mSearchBarContainerView.requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (!this.mSearchBarController.isSearchFieldFocused() && event.getAction() == 0) {
            int unicodeChar = event.getUnicodeChar();
            boolean isKeyNotWhitespace = (unicodeChar <= 0 || Character.isWhitespace(unicodeChar) || Character.isSpaceChar(unicodeChar)) ? false : true;
            if (isKeyNotWhitespace) {
                boolean gotKey = TextKeyListener.getInstance().onKeyDown(this, this.mSearchQueryBuilder, event.getKeyCode(), event);
                if (gotKey && this.mSearchQueryBuilder.length() > 0) {
                    this.mSearchBarController.focusSearchField();
                }
            }
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return handleTouchEvent(ev);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent ev) {
        return handleTouchEvent(ev);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View v, MotionEvent ev) {
        switch (ev.getAction()) {
            case 0:
            case 2:
                this.mIconLastTouchPos.set((int) ev.getX(), (int) ev.getY());
                return false;
            case 1:
            default:
                return false;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        if (v.isInTouchMode() && this.mLauncher.isAppsViewVisible() && !this.mLauncher.getWorkspace().isSwitchingState() && this.mLauncher.isDraggingEnabled()) {
            this.mLauncher.getWorkspace().beginDragShared(v, this.mIconLastTouchPos, this, false);
            this.mLauncher.enterSpringLoadedDragMode();
        }
        return false;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsFlingToDelete() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsAppInfoDropTarget() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsDeleteDropTarget() {
        return false;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsEditDropTarget() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public float getIntrinsicIconScaleFactor() {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        return grid.allAppsIconSizePx / grid.iconSizePx;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public void onFlingToDeleteCompleted() {
        this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
        this.mLauncher.unlockScreenOrientation(false);
    }

    @Override // net.oneplus.h2launcher.DragSource
    public void onDropCompleted(View target, DropTarget.DragObject d, boolean isFlingToDelete, boolean success) {
        if (isFlingToDelete || !success || (target != this.mLauncher.getWorkspace() && !(target instanceof DeleteDropTarget) && !(target instanceof Folder))) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
        }
        this.mLauncher.unlockScreenOrientation(false);
        if (!success) {
            boolean showOutOfSpaceMessage = false;
            if (target instanceof Workspace) {
                int currentScreen = this.mLauncher.getCurrentWorkspaceScreen();
                Workspace workspace = (Workspace) target;
                CellLayout layout = (CellLayout) workspace.getChildAt(currentScreen);
                ItemInfo itemInfo = (ItemInfo) d.dragInfo;
                if (layout != null) {
                    showOutOfSpaceMessage = !layout.findCellForSpan(null, itemInfo.spanX, itemInfo.spanY);
                }
            }
            if (showOutOfSpaceMessage) {
                this.mLauncher.showOutOfSpaceMessage(false);
            }
            d.deferDragViewCleanupPostAnimation = false;
        }
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionPrepare(Launcher l, boolean animated, boolean toWorkspace) {
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionStart(Launcher l, boolean animated, boolean toWorkspace) {
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionStep(Launcher l, float t) {
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionEnd(Launcher l, boolean animated, boolean toWorkspace) {
        if (toWorkspace) {
            this.mSearchBarController.reset();
            this.mAppsRecyclerView.reset();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0014. Please report as an issue. */
    private boolean handleTouchEvent(MotionEvent ev) {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        int x = (int) ev.getX();
        int y = (int) ev.getY();
        switch (ev.getAction()) {
            case 0:
                if (!this.mContentBounds.isEmpty()) {
                    Rect tmpRect = new Rect(this.mContentBounds);
                    tmpRect.inset((-grid.allAppsIconSizePx) / 2, 0);
                    if (ev.getX() < tmpRect.left || ev.getX() > tmpRect.right) {
                        this.mBoundsCheckLastTouchDownPos.set(x, y);
                        return true;
                    }
                } else if (ev.getX() < getPaddingLeft() || ev.getX() > getWidth() - getPaddingRight()) {
                    this.mBoundsCheckLastTouchDownPos.set(x, y);
                    return true;
                }
                return false;
            case 1:
                if (this.mBoundsCheckLastTouchDownPos.x > -1) {
                    ViewConfiguration viewConfig = ViewConfiguration.get(getContext());
                    float dx = ev.getX() - this.mBoundsCheckLastTouchDownPos.x;
                    float dy = ev.getY() - this.mBoundsCheckLastTouchDownPos.y;
                    float distance = (float) Math.hypot(dx, dy);
                    if (distance < viewConfig.getScaledTouchSlop()) {
                        Launcher launcher = (Launcher) getContext();
                        launcher.showWorkspace(true);
                        return true;
                    }
                }
                this.mBoundsCheckLastTouchDownPos.set(-1, -1);
                return false;
            case 2:
            default:
                return false;
            case 3:
                this.mBoundsCheckLastTouchDownPos.set(-1, -1);
                return false;
        }
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController.Callbacks
    public void onSearchResult(String query, ArrayList<ComponentKey> apps) {
        if (apps != null) {
            this.mApps.setOrderedFilter(apps);
            this.mAdapter.setLastSearchQuery(query);
            this.mAppsRecyclerView.onSearchResultsChanged();
        }
    }

    @Override // net.oneplus.h2launcher.allapps.AllAppsSearchBarController.Callbacks
    public void clearSearchResult() {
        this.mApps.setOrderedFilter(null);
        this.mAppsRecyclerView.onSearchResultsChanged();
        this.mSearchQueryBuilder.clear();
        this.mSearchQueryBuilder.clearSpans();
        Selection.setSelection(this.mSearchQueryBuilder, 0);
    }

    public AlphabeticalAppsList getApps() {
        return this.mApps;
    }

    public boolean isFirstInitialized() {
        return this.mFirstInitialized;
    }

    public void setFirstInitialized(boolean firstInitialized) {
        this.mFirstInitialized = firstInitialized;
    }

    public void enableScrollBar(boolean enable) {
        this.mAppsRecyclerView.enableScrollBar(enable);
    }
}
