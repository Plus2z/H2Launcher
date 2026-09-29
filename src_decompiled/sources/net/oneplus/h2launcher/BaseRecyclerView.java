package net.oneplus.h2launcher;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public abstract class BaseRecyclerView extends RecyclerView implements RecyclerView.OnItemTouchListener {
    private static final int SCROLL_DELTA_THRESHOLD_DP = 4;
    protected Rect mBackgroundPadding;
    private float mDeltaThreshold;
    private int mDownX;
    private int mDownY;
    protected boolean mDrawFastScrollBar;
    int mDy;
    private int mLastY;
    protected BaseRecyclerViewFastScrollBar mScrollbar;

    /* loaded from: classes.dex */
    public static class ScrollPositionState {
        public int rowHeight;
        public int rowIndex;
        public int rowTopOffset;
    }

    protected abstract void getCurScrollState(ScrollPositionState scrollPositionState);

    public abstract void onUpdateScrollbar(int i);

    public abstract String scrollToPositionAtProgress(float f);

    public BaseRecyclerView(Context context) {
        this(context, null);
    }

    public BaseRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BaseRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDy = 0;
        this.mDrawFastScrollBar = true;
        this.mBackgroundPadding = new Rect();
        this.mDeltaThreshold = getResources().getDisplayMetrics().density * 4.0f;
        this.mScrollbar = new BaseRecyclerViewFastScrollBar(this, context);
        ScrollListener listener = new ScrollListener();
        setOnScrollListener(listener);
    }

    /* loaded from: classes.dex */
    private class ScrollListener extends RecyclerView.OnScrollListener {
        public ScrollListener() {
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            BaseRecyclerView.this.mDy = dy;
            BaseRecyclerView.this.onUpdateScrollbar(dy);
        }
    }

    public void reset() {
        this.mScrollbar.reattachThumbToScroll();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        addOnItemTouchListener(this);
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent ev) {
        return handleTouchEvent(ev);
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView rv, MotionEvent ev) {
        handleTouchEvent(ev);
    }

    private boolean handleTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        int x = (int) ev.getX();
        int y = (int) ev.getY();
        switch (action) {
            case 0:
                this.mDownX = x;
                this.mLastY = y;
                this.mDownY = y;
                if (shouldStopScroll(ev)) {
                    stopScroll();
                }
                this.mScrollbar.handleTouchEvent(ev, this.mDownX, this.mDownY, this.mLastY);
                break;
            case 1:
            case 3:
                onFastScrollCompleted();
                this.mScrollbar.handleTouchEvent(ev, this.mDownX, this.mDownY, this.mLastY);
                break;
            case 2:
                this.mLastY = y;
                this.mScrollbar.handleTouchEvent(ev, this.mDownX, this.mDownY, this.mLastY);
                break;
        }
        return this.mScrollbar.isDraggingThumb();
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    protected boolean shouldStopScroll(MotionEvent ev) {
        return ev.getAction() == 0 && ((float) Math.abs(this.mDy)) < this.mDeltaThreshold && getScrollState() != 0;
    }

    public void updateBackgroundPadding(Rect padding) {
        this.mBackgroundPadding.set(padding);
        this.mScrollbar.updateColors();
    }

    public Rect getBackgroundPadding() {
        return this.mBackgroundPadding;
    }

    public int getMaxScrollbarWidth() {
        return this.mScrollbar.getThumbMaxWidth();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getAvailableScrollHeight(int rowCount, int rowHeight) {
        int visibleHeight = (getHeight() - this.mBackgroundPadding.top) - this.mBackgroundPadding.bottom;
        int scrollHeight = getPaddingTop() + (rowCount * rowHeight) + getPaddingBottom();
        int availableScrollHeight = scrollHeight - visibleHeight;
        return availableScrollHeight;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getAvailableScrollBarHeight() {
        int visibleHeight = (getHeight() - this.mBackgroundPadding.top) - this.mBackgroundPadding.bottom;
        int availableScrollBarHeight = visibleHeight - this.mScrollbar.getThumbHeight();
        return availableScrollBarHeight;
    }

    public int getFastScrollerTrackColor(int defaultTrackColor) {
        return defaultTrackColor;
    }

    public int getFastScrollerThumbInactiveColor(int defaultInactiveThumbColor) {
        return defaultInactiveThumbColor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mDrawFastScrollBar) {
            onUpdateScrollbar(0);
            this.mScrollbar.draw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void synchronizeScrollBarThumbOffsetToViewScroll(ScrollPositionState scrollPosState, int rowCount) {
        int scrollBarX;
        int availableScrollBarHeight = getAvailableScrollBarHeight();
        int availableScrollHeight = getAvailableScrollHeight(rowCount, scrollPosState.rowHeight);
        if (availableScrollHeight <= 0) {
            this.mScrollbar.setThumbOffset(-1, -1);
            return;
        }
        int scrollY = (getPaddingTop() + (scrollPosState.rowIndex * scrollPosState.rowHeight)) - scrollPosState.rowTopOffset;
        int scrollBarY = this.mBackgroundPadding.top + ((int) ((scrollY / availableScrollHeight) * availableScrollBarHeight));
        if (Utilities.isRtl(getResources())) {
            scrollBarX = this.mBackgroundPadding.left;
        } else {
            scrollBarX = (getWidth() - this.mBackgroundPadding.right) - this.mScrollbar.getThumbWidth();
        }
        this.mScrollbar.setThumbOffset(scrollBarX, scrollBarY);
    }

    public void onFastScrollCompleted() {
    }
}
