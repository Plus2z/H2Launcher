package net.oneplus.h2launcher.allapps;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;
import net.oneplus.h2launcher.BaseRecyclerView;
import net.oneplus.h2launcher.BaseRecyclerViewFastScrollBar;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.allapps.AlphabeticalAppsList;

/* loaded from: classes.dex */
public class AllAppsRecyclerView extends BaseRecyclerView implements Stats.LaunchSourceProvider {
    private static final int FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_ROW = 0;
    private static final int FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_SECTIONS = 1;
    private static final int FAST_SCROLL_MODE_FREE_SCROLL = 1;
    private static final int FAST_SCROLL_MODE_JUMP_TO_FIRST_ICON = 0;
    private AlphabeticalAppsList mApps;
    private AllAppsBackgroundDrawable mEmptySearchBackground;
    private int mEmptySearchBackgroundTopOffset;
    int mFastScrollFrameIndex;
    final int[] mFastScrollFrames;
    private final int mFastScrollMode;
    BaseRecyclerViewFastScrollBar.FastScrollFocusableView mLastFastScrollFocusedView;
    private int mNumAppsPerRow;
    int mPrevFastScrollFocusedPosition;
    private final int mScrollBarMode;
    private BaseRecyclerView.ScrollPositionState mScrollPosState;
    Runnable mSmoothSnapNextFrameRunnable;

    public AllAppsRecyclerView(Context context) {
        this(context, null);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.mFastScrollFrames = new int[10];
        this.mFastScrollMode = 0;
        this.mScrollBarMode = 0;
        this.mScrollPosState = new BaseRecyclerView.ScrollPositionState();
        this.mSmoothSnapNextFrameRunnable = new Runnable() { // from class: net.oneplus.h2launcher.allapps.AllAppsRecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (AllAppsRecyclerView.this.mFastScrollFrameIndex < AllAppsRecyclerView.this.mFastScrollFrames.length) {
                    AllAppsRecyclerView.this.scrollBy(0, AllAppsRecyclerView.this.mFastScrollFrames[AllAppsRecyclerView.this.mFastScrollFrameIndex]);
                    AllAppsRecyclerView.this.mFastScrollFrameIndex++;
                    AllAppsRecyclerView.this.postOnAnimation(AllAppsRecyclerView.this.mSmoothSnapNextFrameRunnable);
                    return;
                }
                RecyclerView.ViewHolder vh = AllAppsRecyclerView.this.findViewHolderForPosition(AllAppsRecyclerView.this.mPrevFastScrollFocusedPosition);
                if (vh != null && (vh.itemView instanceof BaseRecyclerViewFastScrollBar.FastScrollFocusableView) && AllAppsRecyclerView.this.mLastFastScrollFocusedView != vh.itemView) {
                    AllAppsRecyclerView.this.mLastFastScrollFocusedView = (BaseRecyclerViewFastScrollBar.FastScrollFocusableView) vh.itemView;
                    AllAppsRecyclerView.this.mLastFastScrollFocusedView.setFastScrollFocused(true, true);
                }
            }
        };
        Resources res = getResources();
        this.mScrollbar.setDetachThumbOnFastScroll();
        this.mEmptySearchBackgroundTopOffset = res.getDimensionPixelSize(R.dimen.all_apps_empty_search_bg_top_offset);
    }

    public void setApps(AlphabeticalAppsList apps) {
        this.mApps = apps;
    }

    public void setDarkMode(boolean darkMode) {
        this.mScrollbar.setDarkMode(darkMode);
    }

    public void setNumAppsPerRow(DeviceProfile grid, int numAppsPerRow) {
        this.mNumAppsPerRow = numAppsPerRow;
        RecyclerView.RecycledViewPool pool = getRecycledViewPool();
        int approxRows = (int) Math.ceil(grid.availableHeightPx / grid.allAppsIconSizePx);
        pool.setMaxRecycledViews(3, 1);
        pool.setMaxRecycledViews(4, 1);
        pool.setMaxRecycledViews(5, 1);
        pool.setMaxRecycledViews(1, this.mNumAppsPerRow * approxRows);
        pool.setMaxRecycledViews(2, this.mNumAppsPerRow);
        pool.setMaxRecycledViews(0, approxRows);
    }

    public void scrollToTop() {
        if (this.mScrollbar.isThumbDetached()) {
            this.mScrollbar.reattachThumbToScroll();
        }
        scrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.BaseRecyclerView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.clipRect(this.mBackgroundPadding.left, this.mBackgroundPadding.top, getWidth() - this.mBackgroundPadding.right, getHeight() - this.mBackgroundPadding.bottom);
        super.dispatchDraw(canvas);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    public void onDraw(Canvas c) {
        if (this.mEmptySearchBackground != null && this.mEmptySearchBackground.getAlpha() > 0) {
            c.clipRect(this.mBackgroundPadding.left, this.mBackgroundPadding.top, getWidth() - this.mBackgroundPadding.right, getHeight() - this.mBackgroundPadding.bottom);
            this.mEmptySearchBackground.draw(c);
        }
        super.onDraw(c);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return who == this.mEmptySearchBackground || super.verifyDrawable(who);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        updateEmptySearchBackgroundBounds();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.BaseRecyclerView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        addOnItemTouchListener(this);
    }

    @Override // net.oneplus.h2launcher.Stats.LaunchSourceProvider
    public void fillInLaunchSourceData(Bundle sourceData) {
        sourceData.putString("container", Stats.CONTAINER_ALL_APPS);
        if (this.mApps.hasFilter()) {
            sourceData.putString(Stats.SOURCE_EXTRA_SUB_CONTAINER, Stats.SUB_CONTAINER_ALL_APPS_SEARCH);
        } else {
            sourceData.putString(Stats.SOURCE_EXTRA_SUB_CONTAINER, Stats.SUB_CONTAINER_ALL_APPS_A_Z);
        }
    }

    public void onSearchResultsChanged() {
        scrollToTop();
        if (this.mApps.hasNoFilteredResults()) {
            if (this.mEmptySearchBackground == null) {
                this.mEmptySearchBackground = new AllAppsBackgroundDrawable(getContext());
                this.mEmptySearchBackground.setAlpha(0);
                this.mEmptySearchBackground.setCallback(this);
                updateEmptySearchBackgroundBounds();
            }
            this.mEmptySearchBackground.animateBgAlpha(1.0f, 150);
            return;
        }
        if (this.mEmptySearchBackground != null) {
            this.mEmptySearchBackground.setBgAlpha(0.0f);
        }
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    public String scrollToPositionAtProgress(float touchFraction) {
        int rowCount = this.mApps.getNumAppRows();
        if (rowCount == 0) {
            return "";
        }
        stopScroll();
        List<AlphabeticalAppsList.FastScrollSectionInfo> fastScrollSections = this.mApps.getFastScrollerSections();
        AlphabeticalAppsList.FastScrollSectionInfo lastInfo = fastScrollSections.get(0);
        for (int i = 1; i < fastScrollSections.size(); i++) {
            AlphabeticalAppsList.FastScrollSectionInfo info = fastScrollSections.get(i);
            if (info.touchFraction > touchFraction) {
                break;
            }
            lastInfo = info;
        }
        getCurScrollState(this.mScrollPosState);
        getAvailableScrollHeight(rowCount, this.mScrollPosState.rowHeight);
        if (this.mPrevFastScrollFocusedPosition != lastInfo.fastScrollToItem.position) {
            this.mPrevFastScrollFocusedPosition = lastInfo.fastScrollToItem.position;
            if (this.mLastFastScrollFocusedView != null) {
                this.mLastFastScrollFocusedView.setFastScrollFocused(false, true);
                this.mLastFastScrollFocusedView = null;
            }
            smoothSnapToPosition(this.mPrevFastScrollFocusedPosition, this.mScrollPosState);
        }
        return lastInfo.sectionName;
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    public void onFastScrollCompleted() {
        super.onFastScrollCompleted();
        if (this.mLastFastScrollFocusedView != null) {
            this.mLastFastScrollFocusedView.setFastScrollFocused(false, true);
            this.mLastFastScrollFocusedView = null;
        }
        this.mPrevFastScrollFocusedPosition = -1;
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    public void onUpdateScrollbar(int dy) {
        int scrollBarX;
        int thumbScrollY;
        List<AlphabeticalAppsList.AdapterItem> items = this.mApps.getAdapterItems();
        if (items.isEmpty() || this.mNumAppsPerRow == 0) {
            this.mScrollbar.setThumbOffset(-1, -1);
            return;
        }
        int rowCount = this.mApps.getNumAppRows();
        getCurScrollState(this.mScrollPosState);
        if (this.mScrollPosState.rowIndex < 0) {
            this.mScrollbar.setThumbOffset(-1, -1);
            return;
        }
        int availableScrollBarHeight = getAvailableScrollBarHeight();
        int availableScrollHeight = getAvailableScrollHeight(this.mApps.getNumAppRows(), this.mScrollPosState.rowHeight);
        if (availableScrollHeight <= 0) {
            this.mScrollbar.setThumbOffset(-1, -1);
            return;
        }
        int scrollY = (getPaddingTop() + (this.mScrollPosState.rowIndex * this.mScrollPosState.rowHeight)) - this.mScrollPosState.rowTopOffset;
        int scrollBarY = this.mBackgroundPadding.top + ((int) ((scrollY / availableScrollHeight) * availableScrollBarHeight));
        if (this.mScrollbar.isThumbDetached()) {
            if (Utilities.isRtl(getResources())) {
                scrollBarX = this.mBackgroundPadding.left;
            } else {
                scrollBarX = (getWidth() - this.mBackgroundPadding.right) - this.mScrollbar.getThumbWidth();
            }
            if (this.mScrollbar.isDraggingThumb()) {
                this.mScrollbar.setThumbOffset(scrollBarX, (int) this.mScrollbar.getLastTouchY());
                return;
            }
            int thumbScrollY2 = this.mScrollbar.getThumbOffset().y;
            int diffScrollY = scrollBarY - thumbScrollY2;
            if (diffScrollY * dy > 0.0f) {
                if (dy < 0) {
                    int offset = (int) ((dy * thumbScrollY2) / scrollBarY);
                    thumbScrollY = thumbScrollY2 + Math.max(offset, diffScrollY);
                } else {
                    int offset2 = (int) (((availableScrollBarHeight - thumbScrollY2) * dy) / (availableScrollBarHeight - scrollBarY));
                    thumbScrollY = thumbScrollY2 + Math.min(offset2, diffScrollY);
                }
                int thumbScrollY3 = Math.max(0, Math.min(availableScrollBarHeight, thumbScrollY));
                this.mScrollbar.setThumbOffset(scrollBarX, thumbScrollY3);
                if (scrollBarY == thumbScrollY3) {
                    this.mScrollbar.reattachThumbToScroll();
                    return;
                }
                return;
            }
            this.mScrollbar.setThumbOffset(scrollBarX, thumbScrollY2);
            return;
        }
        synchronizeScrollBarThumbOffsetToViewScroll(this.mScrollPosState, rowCount);
    }

    private void smoothSnapToPosition(int position, BaseRecyclerView.ScrollPositionState scrollPosState) {
        removeCallbacks(this.mSmoothSnapNextFrameRunnable);
        int curScrollY = (getPaddingTop() + (scrollPosState.rowIndex * scrollPosState.rowHeight)) - scrollPosState.rowTopOffset;
        int newScrollY = getScrollAtPosition(position, scrollPosState.rowHeight);
        int numFrames = this.mFastScrollFrames.length;
        for (int i = 0; i < numFrames; i++) {
            this.mFastScrollFrames[i] = (newScrollY - curScrollY) / numFrames;
        }
        this.mFastScrollFrameIndex = 0;
        postOnAnimation(this.mSmoothSnapNextFrameRunnable);
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    protected void getCurScrollState(BaseRecyclerView.ScrollPositionState stateOut) {
        stateOut.rowIndex = -1;
        stateOut.rowTopOffset = -1;
        stateOut.rowHeight = -1;
        List<AlphabeticalAppsList.AdapterItem> items = this.mApps.getAdapterItems();
        if (!items.isEmpty() && this.mNumAppsPerRow != 0) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = getChildAt(i);
                int position = getChildPosition(child);
                if (position != -1) {
                    AlphabeticalAppsList.AdapterItem item = items.get(position);
                    if (item.viewType == 1 || item.viewType == 2) {
                        stateOut.rowIndex = item.rowIndex;
                        stateOut.rowTopOffset = getLayoutManager().getDecoratedTop(child);
                        stateOut.rowHeight = child.getHeight();
                        return;
                    }
                }
            }
        }
    }

    private int getScrollAtPosition(int position, int rowHeight) {
        AlphabeticalAppsList.AdapterItem item = this.mApps.getAdapterItems().get(position);
        if (item.viewType != 1 && item.viewType != 2) {
            return 0;
        }
        int offset = item.rowIndex > 0 ? getPaddingTop() : 0;
        return offset + (item.rowIndex * rowHeight);
    }

    private void updateEmptySearchBackgroundBounds() {
        if (this.mEmptySearchBackground != null) {
            int x = (getMeasuredWidth() - this.mEmptySearchBackground.getIntrinsicWidth()) / 2;
            int y = this.mEmptySearchBackgroundTopOffset;
            this.mEmptySearchBackground.setBounds(x, y, this.mEmptySearchBackground.getIntrinsicWidth() + x, this.mEmptySearchBackground.getIntrinsicHeight() + y);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void enableScrollBar(boolean enable) {
        this.mDrawFastScrollBar = enable;
        invalidate();
    }
}
