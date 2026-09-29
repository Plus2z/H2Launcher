package net.oneplus.h2launcher.stickygridheaders;

import android.R;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersBaseAdapterWrapper;

/* loaded from: classes.dex */
public class StickyGridHeadersGridView extends GridView implements AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener, AdapterView.OnItemLongClickListener {
    private static final int MATCHED_STICKIED_HEADER = -2;
    private static final int NO_MATCHED_HEADER = -1;
    protected static final int TOUCH_MODE_DONE_WAITING = 2;
    protected static final int TOUCH_MODE_DOWN = 0;
    protected static final int TOUCH_MODE_FINISHED_LONG_PRESS = -2;
    protected static final int TOUCH_MODE_REST = -1;
    protected static final int TOUCH_MODE_TAP = 1;
    protected StickyGridHeadersBaseAdapterWrapper mAdapter;
    private boolean mAreHeadersSticky;
    private boolean mClipToPaddingHasBeenSet;
    private final Rect mClippingRect;
    private boolean mClippingToPadding;
    private int mColumnWidth;
    private long mCurrentHeaderId;
    protected boolean mDataChanged;
    private DataSetObserver mDataSetObserver;
    private int mHeaderBottomPosition;
    boolean mHeaderChildBeingPressed;
    private boolean mHeadersIgnorePadding;
    private int mHorizontalSpacing;
    private boolean mMaskStickyHeaderRegion;
    protected int mMotionHeaderPosition;
    private float mMotionY;
    private int mNumColumns;
    private boolean mNumColumnsSet;
    private int mNumMeasuredColumns;
    private OnHeaderClickListener mOnHeaderClickListener;
    private OnHeaderLongClickListener mOnHeaderLongClickListener;
    private AdapterView.OnItemClickListener mOnItemClickListener;
    private AdapterView.OnItemLongClickListener mOnItemLongClickListener;
    private AdapterView.OnItemSelectedListener mOnItemSelectedListener;
    public CheckForHeaderLongPress mPendingCheckForLongPress;
    public CheckForHeaderTap mPendingCheckForTap;
    private PerformHeaderClick mPerformHeaderClick;
    private AbsListView.OnScrollListener mScrollListener;
    private int mScrollState;
    private View mStickiedHeader;
    protected int mTouchMode;
    private Runnable mTouchModeReset;
    private int mTouchSlop;
    private int mVerticalSpacing;
    private static final String ERROR_PLATFORM = "Error supporting platform " + Build.VERSION.SDK_INT + AssetCache.EMPTY_CLASS_NAME;
    static final String TAG = StickyGridHeadersGridView.class.getSimpleName();

    /* loaded from: classes.dex */
    public interface OnHeaderClickListener {
        void onHeaderClick(AdapterView<?> adapterView, View view, long j);
    }

    /* loaded from: classes.dex */
    public interface OnHeaderLongClickListener {
        boolean onHeaderLongClick(AdapterView<?> adapterView, View view, long j);
    }

    private static MotionEvent.PointerCoords[] getPointerCoords(MotionEvent e) {
        int n = e.getPointerCount();
        MotionEvent.PointerCoords[] r = new MotionEvent.PointerCoords[n];
        for (int i = 0; i < n; i++) {
            r[i] = new MotionEvent.PointerCoords();
            e.getPointerCoords(i, r[i]);
        }
        return r;
    }

    private static int[] getPointerIds(MotionEvent e) {
        int n = e.getPointerCount();
        int[] r = new int[n];
        for (int i = 0; i < n; i++) {
            r[i] = e.getPointerId(i);
        }
        return r;
    }

    public StickyGridHeadersGridView(Context context) {
        this(context, null);
    }

    public StickyGridHeadersGridView(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.gridViewStyle);
    }

    public StickyGridHeadersGridView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mAreHeadersSticky = true;
        this.mClippingRect = new Rect();
        this.mCurrentHeaderId = -1L;
        this.mDataSetObserver = new DataSetObserver() { // from class: net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersGridView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                StickyGridHeadersGridView.this.reset();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                StickyGridHeadersGridView.this.reset();
            }
        };
        this.mMaskStickyHeaderRegion = true;
        this.mNumMeasuredColumns = 1;
        this.mScrollState = 0;
        this.mHeaderChildBeingPressed = false;
        super.setOnScrollListener(this);
        setVerticalFadingEdgeEnabled(false);
        if (!this.mNumColumnsSet) {
            this.mNumColumns = -1;
        }
        ViewConfiguration vc = ViewConfiguration.get(context);
        this.mTouchSlop = vc.getScaledTouchSlop();
    }

    public boolean areHeadersSticky() {
        return this.mAreHeadersSticky;
    }

    public View getHeaderAt(int position) {
        if (position == -2) {
            return this.mStickiedHeader;
        }
        try {
            return (View) getChildAt(position).getTag();
        } catch (Exception e) {
            return null;
        }
    }

    public View getStickiedHeader() {
        return this.mStickiedHeader;
    }

    public boolean getStickyHeaderIsTranscluent() {
        return !this.mMaskStickyHeaderRegion;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        this.mOnItemClickListener.onItemClick(parent, view, this.mAdapter.translatePosition(position).mPosition, id);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
        return this.mOnItemLongClickListener.onItemLongClick(parent, view, this.mAdapter.translatePosition(position).mPosition, id);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        this.mOnItemSelectedListener.onItemSelected(parent, view, this.mAdapter.translatePosition(position).mPosition, id);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> parent) {
        this.mOnItemSelectedListener.onNothingSelected(parent);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        this.mAreHeadersSticky = ss.areHeadersSticky;
        requestLayout();
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable superState = super.onSaveInstanceState();
        SavedState ss = new SavedState(superState);
        ss.areHeadersSticky = this.mAreHeadersSticky;
        return ss;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (this.mScrollListener != null) {
            this.mScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
        if (Build.VERSION.SDK_INT >= 8) {
            scrollChanged(firstVisibleItem);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(view, scrollState);
        }
        this.mScrollState = scrollState;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0051. Please report as an issue. */
    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        boolean wasHeaderChildBeingPressed = this.mHeaderChildBeingPressed;
        if (this.mHeaderChildBeingPressed) {
            View tempHeader = getHeaderAt(this.mMotionHeaderPosition);
            final View headerHolder = this.mMotionHeaderPosition == -2 ? tempHeader : getChildAt(this.mMotionHeaderPosition);
            if (action == 1 || action == 3) {
                this.mHeaderChildBeingPressed = false;
            }
            if (tempHeader != null) {
                tempHeader.dispatchTouchEvent(transformEvent(ev, this.mMotionHeaderPosition));
                tempHeader.invalidate();
                tempHeader.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersGridView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        StickyGridHeadersGridView.this.invalidate(0, headerHolder.getTop(), StickyGridHeadersGridView.this.getWidth(), headerHolder.getTop() + headerHolder.getHeight());
                    }
                }, ViewConfiguration.getPressedStateDuration());
                invalidate(0, headerHolder.getTop(), getWidth(), headerHolder.getTop() + headerHolder.getHeight());
            }
        }
        switch (action & 255) {
            case 0:
                if (this.mPendingCheckForTap == null) {
                    this.mPendingCheckForTap = new CheckForHeaderTap();
                }
                postDelayed(this.mPendingCheckForTap, ViewConfiguration.getTapTimeout());
                int y = (int) ev.getY();
                this.mMotionY = y;
                this.mMotionHeaderPosition = findMotionHeader(y);
                if (this.mMotionHeaderPosition != -1 && this.mScrollState != 2) {
                    View tempHeader2 = getHeaderAt(this.mMotionHeaderPosition);
                    if (tempHeader2 != null) {
                        if (tempHeader2.dispatchTouchEvent(transformEvent(ev, this.mMotionHeaderPosition))) {
                            this.mHeaderChildBeingPressed = true;
                            tempHeader2.setPressed(true);
                        }
                        tempHeader2.invalidate();
                        if (this.mMotionHeaderPosition != -2) {
                            tempHeader2 = getChildAt(this.mMotionHeaderPosition);
                        }
                        invalidate(0, tempHeader2.getTop(), getWidth(), tempHeader2.getTop() + tempHeader2.getHeight());
                    }
                    this.mTouchMode = 0;
                    return true;
                }
                return super.onTouchEvent(ev);
            case 1:
                if (this.mTouchMode == -2) {
                    this.mTouchMode = -1;
                    return true;
                }
                if (this.mTouchMode != -1 && this.mMotionHeaderPosition != -1) {
                    final View header = getHeaderAt(this.mMotionHeaderPosition);
                    if (!wasHeaderChildBeingPressed && header != null) {
                        if (this.mTouchMode != 0) {
                            header.setPressed(false);
                        }
                        if (this.mPerformHeaderClick == null) {
                            this.mPerformHeaderClick = new PerformHeaderClick();
                        }
                        final PerformHeaderClick performHeaderClick = this.mPerformHeaderClick;
                        performHeaderClick.mClickMotionPosition = this.mMotionHeaderPosition;
                        performHeaderClick.rememberWindowAttachCount();
                        if (this.mTouchMode == 0 || this.mTouchMode == 1) {
                            Handler handler = getHandler();
                            if (handler != null) {
                                handler.removeCallbacks(this.mTouchMode == 0 ? this.mPendingCheckForTap : this.mPendingCheckForLongPress);
                            }
                            if (!this.mDataChanged) {
                                this.mTouchMode = 1;
                                header.setPressed(true);
                                setPressed(true);
                                if (this.mTouchModeReset != null) {
                                    removeCallbacks(this.mTouchModeReset);
                                }
                                this.mTouchModeReset = new Runnable() { // from class: net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersGridView.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        StickyGridHeadersGridView.this.mMotionHeaderPosition = -1;
                                        StickyGridHeadersGridView.this.mTouchModeReset = null;
                                        StickyGridHeadersGridView.this.mTouchMode = -1;
                                        header.setPressed(false);
                                        StickyGridHeadersGridView.this.setPressed(false);
                                        header.invalidate();
                                        StickyGridHeadersGridView.this.invalidate(0, header.getTop(), StickyGridHeadersGridView.this.getWidth(), header.getHeight());
                                        if (!StickyGridHeadersGridView.this.mDataChanged) {
                                            performHeaderClick.run();
                                        }
                                    }
                                };
                                postDelayed(this.mTouchModeReset, ViewConfiguration.getPressedStateDuration());
                            } else {
                                this.mTouchMode = -1;
                            }
                        } else if (!this.mDataChanged) {
                            performHeaderClick.run();
                        }
                    }
                    this.mTouchMode = -1;
                    return true;
                }
                return super.onTouchEvent(ev);
            case 2:
                if (this.mMotionHeaderPosition != -1 && Math.abs(ev.getY() - this.mMotionY) > this.mTouchSlop) {
                    this.mTouchMode = -1;
                    View header2 = getHeaderAt(this.mMotionHeaderPosition);
                    if (header2 != null) {
                        header2.setPressed(false);
                        header2.invalidate();
                    }
                    Handler handler2 = getHandler();
                    if (handler2 != null) {
                        handler2.removeCallbacks(this.mPendingCheckForLongPress);
                    }
                    this.mMotionHeaderPosition = -1;
                }
                return super.onTouchEvent(ev);
            default:
                return super.onTouchEvent(ev);
        }
    }

    public boolean performHeaderClick(View view, long id) {
        if (this.mOnHeaderClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        this.mOnHeaderClickListener.onHeaderClick(this, view, id);
        return true;
    }

    public boolean performHeaderLongPress(View view, long id) {
        boolean handled = false;
        if (this.mOnHeaderLongClickListener != null) {
            handled = this.mOnHeaderLongClickListener.onHeaderLongClick(this, view, id);
        }
        if (handled) {
            if (view != null) {
                view.sendAccessibilityEvent(2);
            }
            performHapticFeedback(0);
        }
        return handled;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        if (this.mAdapter != null && this.mDataSetObserver != null) {
            this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
        }
        if (!this.mClipToPaddingHasBeenSet) {
            this.mClippingToPadding = true;
        }
        if (adapter instanceof StickyGridHeadersBaseAdapter) {
            StickyGridHeadersBaseAdapter baseAdapter = (StickyGridHeadersBaseAdapter) adapter;
            this.mAdapter = new StickyGridHeadersBaseAdapterWrapper(getContext(), this, baseAdapter);
            this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
            reset();
            super.setAdapter((ListAdapter) this.mAdapter);
            return;
        }
        throw new IllegalStateException("Adapter must implement StickyGridHeadersBaseAdapter");
    }

    public void setAreHeadersSticky(boolean useStickyHeaders) {
        if (useStickyHeaders != this.mAreHeadersSticky) {
            this.mAreHeadersSticky = useStickyHeaders;
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean clipToPadding) {
        super.setClipToPadding(clipToPadding);
        this.mClippingToPadding = clipToPadding;
        this.mClipToPaddingHasBeenSet = true;
    }

    @Override // android.widget.GridView
    public void setColumnWidth(int columnWidth) {
        super.setColumnWidth(columnWidth);
        this.mColumnWidth = columnWidth;
    }

    public void setHeadersIgnorePadding(boolean b) {
        this.mHeadersIgnorePadding = b;
    }

    @Override // android.widget.GridView
    public void setHorizontalSpacing(int horizontalSpacing) {
        super.setHorizontalSpacing(horizontalSpacing);
        this.mHorizontalSpacing = horizontalSpacing;
    }

    @Override // android.widget.GridView
    public void setNumColumns(int numColumns) {
        super.setNumColumns(numColumns);
        this.mNumColumnsSet = true;
        this.mNumColumns = numColumns;
        if (numColumns != -1 && this.mAdapter != null) {
            this.mAdapter.setNumColumns(numColumns);
        }
    }

    public void setOnHeaderClickListener(OnHeaderClickListener listener) {
        this.mOnHeaderClickListener = listener;
    }

    public void setOnHeaderLongClickListener(OnHeaderLongClickListener listener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnHeaderLongClickListener = listener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener listener) {
        this.mOnItemClickListener = listener;
        super.setOnItemClickListener(this);
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener listener) {
        this.mOnItemLongClickListener = listener;
        super.setOnItemLongClickListener(this);
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener listener) {
        this.mOnItemSelectedListener = listener;
        super.setOnItemSelectedListener(this);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener listener) {
        this.mScrollListener = listener;
    }

    public void setStickyHeaderIsTranscluent(boolean isTranscluent) {
        this.mMaskStickyHeaderRegion = !isTranscluent;
    }

    @Override // android.widget.GridView
    public void setVerticalSpacing(int verticalSpacing) {
        super.setVerticalSpacing(verticalSpacing);
        this.mVerticalSpacing = verticalSpacing;
    }

    private int findMotionHeader(float y) {
        if (this.mStickiedHeader != null && y <= this.mHeaderBottomPosition) {
            return -2;
        }
        int vi = 0;
        int i = getFirstVisiblePosition();
        while (i <= getLastVisiblePosition()) {
            long id = getItemIdAtPosition(i);
            if (id == -1) {
                View headerWrapper = getChildAt(vi);
                int bottom = headerWrapper.getBottom();
                int top = headerWrapper.getTop();
                if (y <= bottom && y >= top) {
                    return vi;
                }
            }
            i += this.mNumMeasuredColumns;
            vi += this.mNumMeasuredColumns;
        }
        return -1;
    }

    private int getHeaderHeight() {
        if (this.mStickiedHeader != null) {
            return this.mStickiedHeader.getMeasuredHeight();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long headerViewPositionToId(int pos) {
        return pos == -2 ? this.mCurrentHeaderId : this.mAdapter.getHeaderId(getFirstVisiblePosition() + pos);
    }

    private void measureHeader() {
        int widthMeasureSpec;
        int heightMeasureSpec;
        if (this.mStickiedHeader != null) {
            if (this.mHeadersIgnorePadding) {
                widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
            } else {
                widthMeasureSpec = View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
            }
            ViewGroup.LayoutParams params = this.mStickiedHeader.getLayoutParams();
            if (params != null && params.height > 0) {
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(params.height, LauncherActivityInfoCompat.FLAG_SUSPENDED);
            } else {
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            this.mStickiedHeader.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mStickiedHeader.measure(widthMeasureSpec, heightMeasureSpec);
            if (this.mHeadersIgnorePadding) {
                this.mStickiedHeader.layout(getLeft(), 0, getRight(), this.mStickiedHeader.getMeasuredHeight());
            } else {
                this.mStickiedHeader.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.mStickiedHeader.getMeasuredHeight());
            }
        }
    }

    public void reset() {
        this.mHeaderBottomPosition = 0;
        swapStickiedHeader(null);
        this.mCurrentHeaderId = Long.MIN_VALUE;
    }

    private void scrollChanged(int firstVisibleItem) {
        long newHeaderId;
        int childDistance;
        if (this.mAdapter != null && this.mAdapter.getCount() != 0 && this.mAreHeadersSticky) {
            View firstItem = getChildAt(0);
            if (firstItem != null) {
                int selectedHeaderPosition = firstVisibleItem;
                int beforeRowPosition = firstVisibleItem - this.mNumMeasuredColumns;
                if (beforeRowPosition < 0) {
                    beforeRowPosition = firstVisibleItem;
                }
                int secondRowPosition = firstVisibleItem + this.mNumMeasuredColumns;
                if (secondRowPosition >= this.mAdapter.getCount()) {
                    secondRowPosition = firstVisibleItem;
                }
                if (this.mVerticalSpacing == 0) {
                    newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
                } else if (this.mVerticalSpacing < 0) {
                    this.mAdapter.getHeaderId(firstVisibleItem);
                    View firstSecondRowView = getChildAt(this.mNumMeasuredColumns);
                    if (firstSecondRowView.getTop() <= 0) {
                        newHeaderId = this.mAdapter.getHeaderId(secondRowPosition);
                        selectedHeaderPosition = secondRowPosition;
                    } else {
                        newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
                    }
                } else {
                    int margin = getChildAt(0).getTop();
                    if (margin > 0 && margin < this.mVerticalSpacing) {
                        newHeaderId = this.mAdapter.getHeaderId(beforeRowPosition);
                        selectedHeaderPosition = beforeRowPosition;
                    } else {
                        newHeaderId = this.mAdapter.getHeaderId(firstVisibleItem);
                    }
                }
                if (this.mCurrentHeaderId != newHeaderId) {
                    swapStickiedHeader(this.mAdapter.getHeaderView(selectedHeaderPosition, this.mStickiedHeader, this));
                    measureHeader();
                    this.mCurrentHeaderId = newHeaderId;
                }
                int childCount = getChildCount();
                if (childCount != 0) {
                    View viewToWatch = null;
                    int watchingChildDistance = Integer.MAX_VALUE;
                    int i = 0;
                    while (i < childCount) {
                        View child = super.getChildAt(i);
                        if (this.mClippingToPadding) {
                            childDistance = child.getTop() - getPaddingTop();
                        } else {
                            childDistance = child.getTop();
                        }
                        if (childDistance >= 0 && this.mAdapter.getItemId(getPositionForView(child)) == -1 && childDistance < watchingChildDistance) {
                            viewToWatch = child;
                            watchingChildDistance = childDistance;
                        }
                        i += this.mNumMeasuredColumns;
                    }
                    int headerHeight = getHeaderHeight();
                    if (viewToWatch != null) {
                        if (firstVisibleItem == 0 && super.getChildAt(0).getTop() > 0 && !this.mClippingToPadding) {
                            this.mHeaderBottomPosition = 0;
                            return;
                        }
                        if (this.mClippingToPadding) {
                            this.mHeaderBottomPosition = Math.min(viewToWatch.getTop(), getPaddingTop() + headerHeight);
                            this.mHeaderBottomPosition = this.mHeaderBottomPosition < getPaddingTop() ? getPaddingTop() + headerHeight : this.mHeaderBottomPosition;
                            return;
                        } else {
                            this.mHeaderBottomPosition = Math.min(viewToWatch.getTop(), headerHeight);
                            if (this.mHeaderBottomPosition >= 0) {
                                headerHeight = this.mHeaderBottomPosition;
                            }
                            this.mHeaderBottomPosition = headerHeight;
                            return;
                        }
                    }
                    this.mHeaderBottomPosition = headerHeight;
                    if (this.mClippingToPadding) {
                        this.mHeaderBottomPosition += getPaddingTop();
                    }
                }
            }
        }
    }

    private void swapStickiedHeader(View newStickiedHeader) {
        detachHeader(this.mStickiedHeader);
        attachHeader(newStickiedHeader);
        this.mStickiedHeader = newStickiedHeader;
    }

    private MotionEvent transformEvent(MotionEvent e, int headerPosition) {
        if (headerPosition != -2) {
            long downTime = e.getDownTime();
            long eventTime = e.getEventTime();
            int action = e.getAction();
            int pointerCount = e.getPointerCount();
            int[] pointerIds = getPointerIds(e);
            MotionEvent.PointerCoords[] pointerCoords = getPointerCoords(e);
            int metaState = e.getMetaState();
            float xPrecision = e.getXPrecision();
            float yPrecision = e.getYPrecision();
            int deviceId = e.getDeviceId();
            int edgeFlags = e.getEdgeFlags();
            int source = e.getSource();
            int flags = e.getFlags();
            View headerHolder = getChildAt(headerPosition);
            for (int i = 0; i < pointerCount; i++) {
                pointerCoords[i].y -= headerHolder.getTop();
            }
            MotionEvent n = MotionEvent.obtain(downTime, eventTime, action, pointerCount, pointerIds, pointerCoords, metaState, xPrecision, yPrecision, deviceId, edgeFlags, source, flags);
            return n;
        }
        return e;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int wantedWidth;
        int widthMeasureSpec;
        int widthMeasureSpec2;
        if (Build.VERSION.SDK_INT < 8) {
            scrollChanged(getFirstVisiblePosition());
        }
        boolean drawStickiedHeader = this.mStickiedHeader != null && this.mAreHeadersSticky && this.mStickiedHeader.getVisibility() == 0;
        int headerHeight = getHeaderHeight();
        int top = this.mHeaderBottomPosition - headerHeight;
        if (drawStickiedHeader && this.mMaskStickyHeaderRegion) {
            if (this.mHeadersIgnorePadding) {
                this.mClippingRect.left = 0;
                this.mClippingRect.right = getWidth();
            } else {
                this.mClippingRect.left = getPaddingLeft();
                this.mClippingRect.right = getWidth() - getPaddingRight();
            }
            this.mClippingRect.top = this.mHeaderBottomPosition;
            this.mClippingRect.bottom = getHeight();
            canvas.save();
            canvas.clipRect(this.mClippingRect);
        }
        super.dispatchDraw(canvas);
        List<Integer> headerPositions = new ArrayList<>();
        int vi = 0;
        int i = getFirstVisiblePosition();
        while (i <= getLastVisiblePosition()) {
            long id = getItemIdAtPosition(i);
            if (id == -1) {
                headerPositions.add(Integer.valueOf(vi));
            }
            i += this.mNumMeasuredColumns;
            vi += this.mNumMeasuredColumns;
        }
        for (int i2 = 0; i2 < headerPositions.size(); i2++) {
            View frame = getChildAt(headerPositions.get(i2).intValue());
            try {
                View header = (View) frame.getTag();
                boolean headerIsStickied = ((long) ((StickyGridHeadersBaseAdapterWrapper.HeaderFillerView) frame).getHeaderId()) == this.mCurrentHeaderId && frame.getTop() < 0 && this.mAreHeadersSticky;
                if (header.getVisibility() == 0 && !headerIsStickied) {
                    if (this.mHeadersIgnorePadding) {
                        widthMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getWidth(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
                    } else {
                        widthMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
                    }
                    int heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                    header.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    header.measure(widthMeasureSpec2, heightMeasureSpec);
                    if (this.mHeadersIgnorePadding) {
                        header.layout(getLeft(), 0, getRight(), frame.getHeight());
                    } else {
                        header.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), frame.getHeight());
                    }
                    if (this.mHeadersIgnorePadding) {
                        this.mClippingRect.left = 0;
                        this.mClippingRect.right = getWidth();
                    } else {
                        this.mClippingRect.left = getPaddingLeft();
                        this.mClippingRect.right = getWidth() - getPaddingRight();
                    }
                    this.mClippingRect.bottom = frame.getBottom();
                    this.mClippingRect.top = frame.getTop();
                    canvas.save();
                    canvas.clipRect(this.mClippingRect);
                    if (this.mHeadersIgnorePadding) {
                        canvas.translate(0.0f, frame.getTop());
                    } else {
                        canvas.translate(getPaddingLeft(), frame.getTop());
                    }
                    header.draw(canvas);
                    canvas.restore();
                }
            } catch (Exception e) {
                return;
            }
        }
        if (drawStickiedHeader && this.mMaskStickyHeaderRegion) {
            canvas.restore();
        } else if (!drawStickiedHeader) {
            return;
        }
        if (this.mHeadersIgnorePadding) {
            wantedWidth = getWidth();
        } else {
            wantedWidth = (getWidth() - getPaddingLeft()) - getPaddingRight();
        }
        if (this.mStickiedHeader.getWidth() != wantedWidth) {
            if (this.mHeadersIgnorePadding) {
                widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
            } else {
                widthMeasureSpec = View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
            }
            int heightMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.mStickiedHeader.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mStickiedHeader.measure(widthMeasureSpec, heightMeasureSpec2);
            if (this.mHeadersIgnorePadding) {
                this.mStickiedHeader.layout(getLeft(), 0, getRight(), this.mStickiedHeader.getHeight());
            } else {
                this.mStickiedHeader.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.mStickiedHeader.getHeight());
            }
        }
        if (this.mHeadersIgnorePadding) {
            this.mClippingRect.left = 0;
            this.mClippingRect.right = getWidth();
        } else {
            this.mClippingRect.left = getPaddingLeft();
            this.mClippingRect.right = getWidth() - getPaddingRight();
        }
        this.mClippingRect.bottom = top + headerHeight;
        if (this.mClippingToPadding) {
            this.mClippingRect.top = getPaddingTop();
        } else {
            this.mClippingRect.top = 0;
        }
        canvas.save();
        canvas.clipRect(this.mClippingRect);
        if (this.mHeadersIgnorePadding) {
            canvas.translate(0.0f, top);
        } else {
            canvas.translate(getPaddingLeft(), top);
        }
        if (this.mHeaderBottomPosition != headerHeight) {
            canvas.saveLayerAlpha(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), (this.mHeaderBottomPosition * 255) / headerHeight, 31);
        }
        this.mStickiedHeader.draw(canvas);
        if (this.mHeaderBottomPosition != headerHeight) {
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int numFittedColumns;
        if (this.mNumColumns == -1) {
            if (this.mColumnWidth > 0) {
                int gridWidth = Math.max((View.MeasureSpec.getSize(widthMeasureSpec) - getPaddingLeft()) - getPaddingRight(), 0);
                numFittedColumns = gridWidth / this.mColumnWidth;
                if (numFittedColumns > 0) {
                    while (numFittedColumns != 1 && (this.mColumnWidth * numFittedColumns) + ((numFittedColumns - 1) * this.mHorizontalSpacing) > gridWidth) {
                        numFittedColumns--;
                    }
                } else {
                    numFittedColumns = 1;
                }
            } else {
                numFittedColumns = 2;
            }
            this.mNumMeasuredColumns = numFittedColumns;
        } else {
            this.mNumMeasuredColumns = this.mNumColumns;
        }
        if (this.mAdapter != null) {
            this.mAdapter.setNumColumns(this.mNumMeasuredColumns);
        }
        measureHeader();
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachHeader(View header) {
        if (header != null) {
            try {
                Field attachInfoField = View.class.getDeclaredField("mAttachInfo");
                attachInfoField.setAccessible(true);
                Method method = View.class.getDeclaredMethod("dispatchAttachedToWindow", Class.forName("android.view.View$AttachInfo"), Integer.TYPE);
                method.setAccessible(true);
                method.invoke(header, attachInfoField.get(this), 8);
            } catch (ClassNotFoundException e) {
                throw new RuntimePlatformSupportException(e);
            } catch (IllegalAccessException e2) {
                throw new RuntimePlatformSupportException(e2);
            } catch (IllegalArgumentException e3) {
                throw new RuntimePlatformSupportException(e3);
            } catch (NoSuchFieldException e4) {
                throw new RuntimePlatformSupportException(e4);
            } catch (NoSuchMethodException e5) {
                throw new RuntimePlatformSupportException(e5);
            } catch (InvocationTargetException e6) {
                throw new RuntimePlatformSupportException(e6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachHeader(View header) {
        if (header != null) {
            try {
                Method method = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
                method.setAccessible(true);
                method.invoke(header, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimePlatformSupportException(e);
            } catch (IllegalArgumentException e2) {
                throw new RuntimePlatformSupportException(e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimePlatformSupportException(e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimePlatformSupportException(e4);
            }
        }
    }

    /* loaded from: classes.dex */
    private class CheckForHeaderLongPress extends WindowRunnable implements Runnable {
        private CheckForHeaderLongPress() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            View child = StickyGridHeadersGridView.this.getHeaderAt(StickyGridHeadersGridView.this.mMotionHeaderPosition);
            if (child != null) {
                long longPressId = StickyGridHeadersGridView.this.headerViewPositionToId(StickyGridHeadersGridView.this.mMotionHeaderPosition);
                boolean handled = false;
                if (sameWindow() && !StickyGridHeadersGridView.this.mDataChanged) {
                    handled = StickyGridHeadersGridView.this.performHeaderLongPress(child, longPressId);
                }
                if (handled) {
                    StickyGridHeadersGridView.this.mTouchMode = -2;
                    StickyGridHeadersGridView.this.setPressed(false);
                    child.setPressed(false);
                    return;
                }
                StickyGridHeadersGridView.this.mTouchMode = 2;
            }
        }
    }

    /* loaded from: classes.dex */
    private class PerformHeaderClick extends WindowRunnable implements Runnable {
        int mClickMotionPosition;

        private PerformHeaderClick() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (!StickyGridHeadersGridView.this.mDataChanged && StickyGridHeadersGridView.this.mAdapter != null && StickyGridHeadersGridView.this.mAdapter.getCount() > 0 && this.mClickMotionPosition != -1 && this.mClickMotionPosition < StickyGridHeadersGridView.this.mAdapter.getCount() && sameWindow() && (view = StickyGridHeadersGridView.this.getHeaderAt(this.mClickMotionPosition)) != null) {
                StickyGridHeadersGridView.this.performHeaderClick(view, StickyGridHeadersGridView.this.headerViewPositionToId(this.mClickMotionPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WindowRunnable {
        private int mOriginalAttachCount;

        private WindowRunnable() {
        }

        public void rememberWindowAttachCount() {
            this.mOriginalAttachCount = StickyGridHeadersGridView.this.getWindowAttachCount();
        }

        public boolean sameWindow() {
            return StickyGridHeadersGridView.this.hasWindowFocus() && StickyGridHeadersGridView.this.getWindowAttachCount() == this.mOriginalAttachCount;
        }
    }

    /* loaded from: classes.dex */
    final class CheckForHeaderTap implements Runnable {
        CheckForHeaderTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StickyGridHeadersGridView.this.mTouchMode == 0) {
                StickyGridHeadersGridView.this.mTouchMode = 1;
                View header = StickyGridHeadersGridView.this.getHeaderAt(StickyGridHeadersGridView.this.mMotionHeaderPosition);
                if (header != null && !StickyGridHeadersGridView.this.mHeaderChildBeingPressed) {
                    if (!StickyGridHeadersGridView.this.mDataChanged) {
                        header.setPressed(true);
                        StickyGridHeadersGridView.this.setPressed(true);
                        StickyGridHeadersGridView.this.refreshDrawableState();
                        int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                        boolean longClickable = StickyGridHeadersGridView.this.isLongClickable();
                        if (longClickable) {
                            if (StickyGridHeadersGridView.this.mPendingCheckForLongPress == null) {
                                StickyGridHeadersGridView.this.mPendingCheckForLongPress = new CheckForHeaderLongPress();
                            }
                            StickyGridHeadersGridView.this.mPendingCheckForLongPress.rememberWindowAttachCount();
                            StickyGridHeadersGridView.this.postDelayed(StickyGridHeadersGridView.this.mPendingCheckForLongPress, longPressTimeout);
                            return;
                        }
                        StickyGridHeadersGridView.this.mTouchMode = 2;
                        return;
                    }
                    StickyGridHeadersGridView.this.mTouchMode = 2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class RuntimePlatformSupportException extends RuntimeException {
        private static final long serialVersionUID = -6512098808936536538L;

        public RuntimePlatformSupportException(Exception e) {
            super(StickyGridHeadersGridView.ERROR_PLATFORM, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersGridView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        boolean areHeadersSticky;

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in) {
            super(in);
            this.areHeadersSticky = in.readByte() != 0;
        }

        public String toString() {
            return "StickyGridHeadersGridView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " areHeadersSticky=" + this.areHeadersSticky + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeByte((byte) (this.areHeadersSticky ? 1 : 0));
        }
    }
}
