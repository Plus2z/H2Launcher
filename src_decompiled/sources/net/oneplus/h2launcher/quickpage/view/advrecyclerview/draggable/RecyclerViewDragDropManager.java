package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.quickpage.QuickPageAdapter;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.CustomRecyclerViewUtils;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.WrapperAdapterUtils;

/* loaded from: classes.dex */
public class RecyclerViewDragDropManager implements DraggableItemConstants {
    private static final int DRAG_THRESHOLD = 10;
    private static final boolean LOCAL_LOGD = false;
    private static final boolean LOCAL_LOGV = false;
    private static final float SCROLL_AMOUNT_COEFF = 25.0f;
    private static final int SCROLL_DIR_DOWN = 2;
    private static final int SCROLL_DIR_LEFT = 4;
    private static final int SCROLL_DIR_NONE = 0;
    private static final int SCROLL_DIR_RIGHT = 8;
    private static final int SCROLL_DIR_UP = 1;
    private static final float SCROLL_THRESHOLD = 0.3f;
    private static final float SCROLL_TOUCH_SLOP_MULTIPLY = 1.5f;
    private static final String TAG = "ARVDragDropManager";
    private int mActualScrollByXAmount;
    private int mActualScrollByYAmount;
    private DraggableItemWrapperAdapter mAdapter;
    private boolean mCanDragH;
    private boolean mCanDragV;
    private Runnable mDeferredCancelProcess;
    private float mDisplayDensity;
    private int mDragMaxTouchX;
    private int mDragMaxTouchY;
    private int mDragMinTouchX;
    private int mDragMinTouchY;
    private int mDragStartTouchX;
    private int mDragStartTouchY;
    private ItemDraggableRange mDraggableRange;
    private DraggingItemDecorator mDraggingItemDecorator;
    private DraggingItemInfo mDraggingItemInfo;
    private RecyclerView.ViewHolder mDraggingItemViewHolder;
    private BaseEdgeEffectDecorator mEdgeEffectDecorator;
    private InternalHandler mHandler;
    private boolean mInScrollByMethod;
    private int mIndexOfFrontChild;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private boolean mInitiateOnLongPress;
    private OnItemDragEventListener mItemDragEventListener;
    private int mLastTouchX;
    private int mLastTouchY;
    private MotionEvent mLongPressEvent;
    private float mLongPressInitialTouchY;
    private int mOrigOverScrollMode;
    private QuickPageAdapter mQuickPageAdapter;
    private RecyclerView mRecyclerView;
    private boolean mScrollEventRegisteredToDistributor;
    private int mScrollTouchSlop;
    private NinePatchDrawable mShadowDrawable;
    private boolean mShouldDragOnNextEvent;
    private SwapTargetItemOperator mSwapTargetItemOperator;
    private int mTouchSlop;
    public static final Interpolator DEFAULT_SWAP_TARGET_TRANSITION_INTERPOLATOR = new BasicSwapTargetTranslationInterpolator();
    public static final Interpolator DEFAULT_ITEM_SETTLE_BACK_INTO_PLACE_ANIMATION_INTERPOLATOR = new DecelerateInterpolator();
    private Interpolator mSwapTargetTranslationInterpolator = DEFAULT_SWAP_TARGET_TRANSITION_INTERPOLATOR;
    private long mInitialTouchItemId = -1;
    private boolean mInitiateOnMove = true;
    private Rect mTmpRect1 = new Rect();
    private int mItemSettleBackIntoPlaceAnimationDuration = 200;
    private Interpolator mItemSettleBackIntoPlaceAnimationInterpolator = DEFAULT_ITEM_SETTLE_BACK_INTO_PLACE_ANIMATION_INTERPOLATOR;
    private int mScrollDirMask = 0;
    private float mDragEdgeScrollSpeed = 1.0f;
    private boolean mEnableScrolling = true;

    @Deprecated
    private long mDraggingItemId = -1;
    private Runnable mCheckItemSwappingRunnable = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.5
        @Override // java.lang.Runnable
        public void run() {
            if (RecyclerViewDragDropManager.this.mDraggingItemViewHolder != null) {
                RecyclerViewDragDropManager.this.checkItemSwapping(RecyclerViewDragDropManager.this.mRecyclerView);
            }
        }
    };
    private RecyclerView.OnItemTouchListener mInternalUseOnItemTouchListener = new RecyclerView.OnItemTouchListener() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.1
        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
            return RecyclerViewDragDropManager.this.onInterceptTouchEvent(rv, e);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView rv, MotionEvent e) {
            RecyclerViewDragDropManager.this.onTouchEvent(rv, e);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean disallow) {
        }
    };
    private RecyclerView.OnScrollListener mInternalUseOnScrollListener = new RecyclerView.OnScrollListener() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.2
        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            RecyclerViewDragDropManager.this.onScrollStateChanged(recyclerView, newState);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            RecyclerViewDragDropManager.this.onScrolled(recyclerView, dx, dy);
        }
    };
    private ScrollOnDraggingProcessRunnable mScrollOnDraggingProcess = new ScrollOnDraggingProcessRunnable(this);
    private int mLongPressTimeout = ViewConfiguration.getLongPressTimeout();

    /* loaded from: classes.dex */
    public interface OnItemDragEventListener {
        void onDragProgress(int i);

        void onItemDragFinished(int i, int i2, boolean z);

        void onItemDragPositionChanged(int i, int i2);

        void onItemLongPress(View view, int i);

        boolean onItemRelease();
    }

    public RecyclerView.Adapter createWrappedAdapter(@NonNull QuickPageAdapter adapter) {
        this.mQuickPageAdapter = adapter;
        if (this.mAdapter != null) {
            throw new IllegalStateException("already have a wrapped adapter");
        }
        this.mAdapter = new DraggableItemWrapperAdapter(this, adapter);
        return this.mAdapter;
    }

    public boolean isReleased() {
        return this.mInternalUseOnItemTouchListener == null;
    }

    public void attachRecyclerView(@NonNull RecyclerView rv) {
        if (rv == null) {
            throw new IllegalArgumentException("RecyclerView cannot be null");
        }
        if (isReleased()) {
            throw new IllegalStateException("Accessing released object");
        }
        if (this.mRecyclerView != null) {
            throw new IllegalStateException("RecyclerView instance has already been set");
        }
        if (this.mAdapter == null || getDraggableItemWrapperAdapter(rv) != this.mAdapter) {
            throw new IllegalStateException("adapter is not set properly");
        }
        this.mRecyclerView = rv;
        this.mRecyclerView.setOnScrollListener(this.mInternalUseOnScrollListener);
        this.mScrollEventRegisteredToDistributor = false;
        this.mRecyclerView.addOnItemTouchListener(this.mInternalUseOnItemTouchListener);
        this.mDisplayDensity = this.mRecyclerView.getResources().getDisplayMetrics().density;
        this.mTouchSlop = ViewConfiguration.get(this.mRecyclerView.getContext().getApplicationContext()).getScaledTouchSlop();
        this.mScrollTouchSlop = (int) ((this.mTouchSlop * SCROLL_TOUCH_SLOP_MULTIPLY) + 0.5f);
        this.mHandler = new InternalHandler(this);
        if (supportsEdgeEffect()) {
            switch (CustomRecyclerViewUtils.getOrientation(this.mRecyclerView)) {
                case 0:
                    this.mEdgeEffectDecorator = new LeftRightEdgeEffectDecorator(this.mRecyclerView);
                    break;
                case 1:
                    this.mEdgeEffectDecorator = new TopBottomEdgeEffectDecorator(this.mRecyclerView);
                    break;
            }
            if (this.mEdgeEffectDecorator != null) {
                this.mEdgeEffectDecorator.start();
            }
        }
        this.mRecyclerView.setChildDrawingOrderCallback(new RecyclerView.ChildDrawingOrderCallback() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.3
            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ChildDrawingOrderCallback
            public int onGetChildDrawingOrder(int childCount, int iteration) {
                if (RecyclerViewDragDropManager.this.mIndexOfFrontChild == -1) {
                    return (childCount - iteration) - 1;
                }
                if (iteration == childCount - 1) {
                    return RecyclerViewDragDropManager.this.mIndexOfFrontChild;
                }
                if (iteration == RecyclerViewDragDropManager.this.mIndexOfFrontChild) {
                    return childCount - 1;
                }
                return iteration;
            }
        });
    }

    public void release() {
        cancelDrag();
        if (this.mHandler != null) {
            this.mHandler.release();
            this.mHandler = null;
        }
        if (this.mEdgeEffectDecorator != null) {
            this.mEdgeEffectDecorator.finish();
            this.mEdgeEffectDecorator = null;
        }
        if (this.mRecyclerView != null && this.mInternalUseOnItemTouchListener != null) {
            this.mRecyclerView.removeOnItemTouchListener(this.mInternalUseOnItemTouchListener);
        }
        this.mInternalUseOnItemTouchListener = null;
        if (this.mRecyclerView != null && this.mInternalUseOnScrollListener != null && this.mScrollEventRegisteredToDistributor) {
            this.mRecyclerView.setOnScrollListener(null);
        }
        this.mInternalUseOnScrollListener = null;
        if (this.mScrollOnDraggingProcess != null) {
            this.mScrollOnDraggingProcess.release();
            this.mScrollOnDraggingProcess = null;
        }
        this.mAdapter = null;
        this.mRecyclerView = null;
        this.mSwapTargetTranslationInterpolator = null;
        this.mScrollEventRegisteredToDistributor = false;
    }

    public boolean isDragging() {
        return this.mDraggingItemInfo != null && this.mDeferredCancelProcess == null;
    }

    public void setDraggingItemShadowDrawable(@Nullable NinePatchDrawable drawable) {
        this.mShadowDrawable = drawable;
    }

    public void setSwapTargetTranslationInterpolator(@Nullable Interpolator interpolator) {
        this.mSwapTargetTranslationInterpolator = interpolator;
    }

    public boolean isInitiateOnLongPressEnabled() {
        return this.mInitiateOnLongPress;
    }

    public void setInitiateOnLongPress(boolean initiateOnLongPress) {
        this.mInitiateOnLongPress = initiateOnLongPress;
    }

    public boolean isInitiateOnMoveEnabled() {
        return this.mInitiateOnMove;
    }

    public void setInitiateOnMove(boolean initiateOnMove) {
        this.mInitiateOnMove = initiateOnMove;
    }

    public void setLongPressTimeout(int longPressTimeout) {
        this.mLongPressTimeout = longPressTimeout;
    }

    public Interpolator setSwapTargetTranslationInterpolator() {
        return this.mSwapTargetTranslationInterpolator;
    }

    @Nullable
    public OnItemDragEventListener getOnItemDragEventListener() {
        return this.mItemDragEventListener;
    }

    public void setOnItemDragEventListener(@Nullable OnItemDragEventListener listener) {
        this.mItemDragEventListener = listener;
    }

    public void setDragEdgeScrollSpeed(float speed) {
        this.mDragEdgeScrollSpeed = Math.min(Math.max(speed, 0.0f), 2.0f);
    }

    public float getDragEdgeScrollSpeed() {
        return this.mDragEdgeScrollSpeed;
    }

    boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
        if (!this.mEnableScrolling) {
            return false;
        }
        int action = MotionEventCompat.getActionMasked(e);
        switch (action) {
            case 0:
                this.mLongPressInitialTouchY = e.getY();
                if (!isDragging() && !this.mQuickPageAdapter.isLongPressing()) {
                    handleActionDown(rv, e);
                }
                this.mIndexOfFrontChild = -1;
                return false;
            case 1:
            case 3:
                handleActionUpOrCancel(action, true);
                return this.mItemDragEventListener != null && this.mItemDragEventListener.onItemRelease();
            case 2:
                if (Math.abs(this.mLongPressInitialTouchY - e.getY()) < 10.0f) {
                    return false;
                }
                if (this.mShouldDragOnNextEvent) {
                    checkConditionAndStartDragging(this.mRecyclerView, this.mLongPressEvent, false);
                    this.mShouldDragOnNextEvent = false;
                }
                if (isDragging()) {
                    handleActionMoveWhileDragging(rv, e);
                    return true;
                }
                if (this.mInitiateOnLongPress) {
                    cancelLongPressDetection();
                }
                return handleActionMoveWhileNotDragging(rv, e);
            default:
                return false;
        }
    }

    void onTouchEvent(RecyclerView rv, MotionEvent e) {
        int action = MotionEventCompat.getActionMasked(e);
        if (isDragging()) {
            switch (action) {
                case 1:
                case 3:
                    handleActionUpOrCancel(action, true);
                    if (this.mItemDragEventListener != null) {
                        this.mItemDragEventListener.onItemRelease();
                        return;
                    }
                    return;
                case 2:
                    handleActionMoveWhileDragging(rv, e);
                    return;
                default:
                    return;
            }
        }
    }

    void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        if (disallowIntercept) {
            cancelDrag(true);
        }
    }

    void onScrolled(RecyclerView recyclerView, int dx, int dy) {
        if (this.mInScrollByMethod) {
            this.mActualScrollByXAmount = dx;
            this.mActualScrollByYAmount = dy;
        }
    }

    void onScrollStateChanged(RecyclerView recyclerView, int newState) {
        if (newState == 1) {
            cancelDrag(true);
        }
    }

    private boolean handleActionDown(RecyclerView rv, MotionEvent e) {
        boolean z = false;
        RecyclerView.ViewHolder holder = CustomRecyclerViewUtils.findChildViewHolderUnderWithoutTranslation(rv, e.getX(), e.getY());
        if (!checkTouchedItemState(rv, holder)) {
            return false;
        }
        int orientation = CustomRecyclerViewUtils.getOrientation(this.mRecyclerView);
        int spanCount = CustomRecyclerViewUtils.getSpanCount(this.mRecyclerView);
        int x = (int) (e.getX() + 0.5f);
        this.mLastTouchX = x;
        this.mInitialTouchX = x;
        int y = (int) (e.getY() + 0.5f);
        this.mLastTouchY = y;
        this.mInitialTouchY = y;
        this.mInitialTouchItemId = holder.getItemId();
        this.mCanDragH = orientation == 0 || (orientation == 1 && spanCount > 1);
        if (orientation == 1 || (orientation == 0 && spanCount > 1)) {
            z = true;
        }
        this.mCanDragV = z;
        if (this.mInitiateOnLongPress) {
            this.mHandler.startLongPressDetection(e, this.mLongPressTimeout);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnLongPress(MotionEvent e) {
        if (this.mInitiateOnLongPress) {
            RecyclerView.ViewHolder holder = CustomRecyclerViewUtils.findChildViewHolderUnderWithoutTranslation(this.mRecyclerView, this.mInitialTouchX, this.mInitialTouchY);
            if (this.mItemDragEventListener != null && holder != null) {
                this.mItemDragEventListener.onItemLongPress(holder.itemView, holder.getLayoutPosition());
            }
            this.mShouldDragOnNextEvent = true;
            this.mLongPressEvent = e;
        }
    }

    private void startDragging(RecyclerView rv, MotionEvent e, RecyclerView.ViewHolder holder, ItemDraggableRange range) {
        safeEndAnimation(rv, holder);
        this.mHandler.cancelLongPressDetection();
        this.mDraggingItemInfo = new DraggingItemInfo(holder, this.mLastTouchX, this.mLastTouchY);
        this.mDraggingItemViewHolder = holder;
        this.mDraggableRange = range;
        this.mOrigOverScrollMode = ViewCompat.getOverScrollMode(rv);
        rv.setOverScrollMode(2);
        this.mLastTouchX = (int) (e.getX() + 0.5f);
        this.mLastTouchY = (int) (e.getY() + 0.5f);
        int i = this.mLastTouchY;
        this.mDragMaxTouchY = i;
        this.mDragMinTouchY = i;
        this.mDragStartTouchY = i;
        int i2 = this.mLastTouchX;
        this.mDragMaxTouchX = i2;
        this.mDragMinTouchX = i2;
        this.mDragStartTouchX = i2;
        this.mScrollDirMask = 0;
        this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(true);
        startScrollOnDraggingProcess();
        this.mAdapter.onDragItemStarted(this.mDraggingItemInfo, holder, this.mDraggableRange);
        this.mAdapter.onBindViewHolder(holder, holder.getLayoutPosition());
        this.mDraggingItemDecorator = new DraggingItemDecorator(this.mRecyclerView, holder, this.mDraggableRange);
        this.mDraggingItemDecorator.setShadowDrawable(this.mShadowDrawable);
        this.mDraggingItemDecorator.start(e, this.mDraggingItemInfo);
        int layoutType = CustomRecyclerViewUtils.getLayoutType(this.mRecyclerView);
        if (supportsViewTranslation() && (layoutType == 1 || layoutType == 0)) {
            this.mSwapTargetItemOperator = new SwapTargetItemOperator(this.mRecyclerView, holder, this.mDraggableRange, this.mDraggingItemInfo);
            this.mSwapTargetItemOperator.setSwapTargetTranslationInterpolator(this.mSwapTargetTranslationInterpolator);
            this.mSwapTargetItemOperator.start();
            this.mSwapTargetItemOperator.update(this.mDraggingItemDecorator.getDraggingItemTranslationX(), this.mDraggingItemDecorator.getDraggingItemTranslationY());
        }
        if (this.mEdgeEffectDecorator != null) {
            this.mEdgeEffectDecorator.reorderToTop();
        }
        if (this.mItemDragEventListener != null && !this.mInitiateOnLongPress) {
            this.mItemDragEventListener.onItemLongPress(holder.itemView, this.mAdapter.getDraggingItemInitialPosition());
        }
    }

    public void cancelDrag() {
        cancelDrag(false);
    }

    private void cancelDrag(boolean immediately) {
        handleActionUpOrCancel(3, false);
        if (immediately) {
            finishDragging(false);
        } else if (isDragging() && this.mDeferredCancelProcess == null) {
            this.mDeferredCancelProcess = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.4
                @Override // java.lang.Runnable
                public void run() {
                    if (RecyclerViewDragDropManager.this.mDeferredCancelProcess == this) {
                        RecyclerViewDragDropManager.this.mDeferredCancelProcess = null;
                        RecyclerViewDragDropManager.this.finishDragging(false);
                    }
                }
            };
            this.mRecyclerView.post(this.mDeferredCancelProcess);
        }
    }

    public void cancelLongPressDetection() {
        this.mHandler.cancelLongPressDetection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishDragging(boolean result) {
        if (isDragging()) {
            if (this.mDeferredCancelProcess != null) {
                this.mRecyclerView.removeCallbacks(this.mDeferredCancelProcess);
                this.mDeferredCancelProcess = null;
            }
            if (this.mRecyclerView != null && this.mDraggingItemViewHolder != null) {
                ViewCompat.setOverScrollMode(this.mRecyclerView, this.mOrigOverScrollMode);
                this.mIndexOfFrontChild = this.mRecyclerView.indexOfChild(this.mDraggingItemViewHolder.itemView);
            }
            if (this.mDraggingItemDecorator != null) {
                this.mDraggingItemDecorator.setReturnToDefaultPositionAnimationDuration(this.mItemSettleBackIntoPlaceAnimationDuration);
                this.mDraggingItemDecorator.setReturnToDefaultPositionAnimationInterpolator(this.mItemSettleBackIntoPlaceAnimationInterpolator);
                this.mDraggingItemDecorator.finish(true);
            }
            if (this.mSwapTargetItemOperator != null) {
                this.mSwapTargetItemOperator.setReturnToDefaultPositionAnimationDuration(this.mItemSettleBackIntoPlaceAnimationDuration);
                this.mSwapTargetItemOperator.setReturnToDefaultPositionAnimationInterpolator(this.mItemSettleBackIntoPlaceAnimationInterpolator);
                this.mSwapTargetItemOperator.finish(true);
            }
            if (this.mEdgeEffectDecorator != null) {
                this.mEdgeEffectDecorator.releaseBothGlows();
            }
            stopScrollOnDraggingProcess();
            if (this.mRecyclerView != null && this.mRecyclerView.getParent() != null) {
                this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(false);
            }
            if (this.mRecyclerView != null) {
                this.mRecyclerView.invalidate();
            }
            int draggingItemInitialPosition = -1;
            int draggingItemCurrentPosition = -1;
            if (this.mAdapter != null) {
                draggingItemInitialPosition = this.mAdapter.getDraggingItemInitialPosition();
                draggingItemCurrentPosition = this.mAdapter.getDraggingItemCurrentPosition();
                this.mAdapter.onDragItemFinished(result);
            }
            if (this.mItemDragEventListener != null) {
                this.mItemDragEventListener.onItemDragFinished(draggingItemInitialPosition, draggingItemCurrentPosition, result);
            }
            this.mDraggableRange = null;
            this.mDraggingItemDecorator = null;
            this.mSwapTargetItemOperator = null;
            this.mDraggingItemViewHolder = null;
            this.mDraggingItemInfo = null;
            this.mLastTouchX = 0;
            this.mLastTouchY = 0;
            this.mDragStartTouchX = 0;
            this.mDragStartTouchY = 0;
            this.mDragMinTouchX = 0;
            this.mDragMinTouchY = 0;
            this.mDragMaxTouchX = 0;
            this.mDragMaxTouchY = 0;
            this.mCanDragH = false;
            this.mCanDragV = false;
            this.mShouldDragOnNextEvent = false;
        }
    }

    private boolean handleActionUpOrCancel(int action, boolean invokeFinish) {
        boolean result = action == 1;
        this.mHandler.cancelLongPressDetection();
        this.mInitialTouchX = 0;
        this.mInitialTouchY = 0;
        this.mLastTouchX = 0;
        this.mLastTouchY = 0;
        this.mDragStartTouchX = 0;
        this.mDragStartTouchY = 0;
        this.mDragMinTouchX = 0;
        this.mDragMinTouchY = 0;
        this.mDragMaxTouchX = 0;
        this.mDragMaxTouchY = 0;
        this.mLongPressInitialTouchY = 0.0f;
        this.mShouldDragOnNextEvent = false;
        this.mLongPressEvent = null;
        this.mInitialTouchItemId = -1L;
        this.mCanDragH = false;
        this.mCanDragV = false;
        if (invokeFinish && isDragging()) {
            finishDragging(result);
        }
        return true;
    }

    private boolean handleActionMoveWhileNotDragging(RecyclerView rv, MotionEvent e) {
        if (this.mInitiateOnMove) {
            return checkConditionAndStartDragging(rv, e, true);
        }
        return false;
    }

    private boolean checkConditionAndStartDragging(RecyclerView rv, MotionEvent e, boolean checkTouchSlop) {
        RecyclerView.ViewHolder holder;
        int position;
        if (this.mDraggingItemInfo != null) {
            return false;
        }
        int touchX = (int) (e.getX() + 0.5f);
        int touchY = (int) (e.getY() + 0.5f);
        this.mLastTouchX = touchX;
        this.mLastTouchY = touchY;
        if (this.mInitialTouchItemId == -1) {
            return false;
        }
        if ((checkTouchSlop && ((!this.mCanDragH || Math.abs(touchX - this.mInitialTouchX) <= this.mTouchSlop) && (!this.mCanDragV || Math.abs(touchY - this.mInitialTouchY) <= this.mTouchSlop))) || (holder = CustomRecyclerViewUtils.findChildViewHolderUnderWithoutTranslation(rv, this.mInitialTouchX, this.mInitialTouchY)) == null || (position = CustomRecyclerViewUtils.getSynchronizedPosition(holder)) == -1) {
            return false;
        }
        View view = holder.itemView;
        int translateX = (int) (ViewCompat.getTranslationX(view) + 0.5f);
        int translateY = (int) (ViewCompat.getTranslationY(view) + 0.5f);
        int viewX = touchX - (view.getLeft() + translateX);
        int viewY = touchY - (view.getTop() + translateY);
        if (!this.mAdapter.canStartDrag(holder, position, viewX, viewY)) {
            return false;
        }
        ItemDraggableRange range = this.mAdapter.getItemDraggableRange(holder, position);
        if (range == null) {
            range = new ItemDraggableRange(0, Math.max(0, this.mAdapter.getItemCount() - 1));
        }
        verifyItemDraggableRange(range, holder);
        startDragging(rv, e, holder, range);
        return true;
    }

    private void verifyItemDraggableRange(ItemDraggableRange range, RecyclerView.ViewHolder holder) {
        int end = Math.max(0, this.mAdapter.getItemCount() - 1);
        if (range.getStart() > range.getEnd()) {
            throw new IllegalStateException("Invalid range specified --- start > range (range = " + range + ")");
        }
        if (range.getStart() < 0) {
            throw new IllegalStateException("Invalid range specified --- start < 0 (range = " + range + ")");
        }
        if (range.getEnd() > end) {
            throw new IllegalStateException("Invalid range specified --- end >= count (range = " + range + ")");
        }
        if (!range.checkInRange(holder.getAdapterPosition())) {
            throw new IllegalStateException("Invalid range specified --- does not contain drag target item (range = " + range + ", position = " + holder.getAdapterPosition() + ")");
        }
    }

    private void handleActionMoveWhileDragging(RecyclerView rv, MotionEvent e) {
        this.mLastTouchX = (int) (e.getX() + 0.5f);
        this.mLastTouchY = (int) (e.getY() + 0.5f);
        this.mDragMinTouchX = Math.min(this.mDragMinTouchX, this.mLastTouchX);
        this.mDragMinTouchY = Math.min(this.mDragMinTouchY, this.mLastTouchY);
        this.mDragMaxTouchX = Math.max(this.mDragMaxTouchX, this.mLastTouchX);
        this.mDragMaxTouchY = Math.max(this.mDragMaxTouchY, this.mLastTouchY);
        updateDragDirectionMask();
        this.mDraggingItemDecorator.update(e);
        if (this.mSwapTargetItemOperator != null) {
            this.mSwapTargetItemOperator.update(this.mDraggingItemDecorator.getDraggingItemTranslationX(), this.mDraggingItemDecorator.getDraggingItemTranslationY());
        }
        if (this.mItemDragEventListener != null) {
            this.mItemDragEventListener.onDragProgress(this.mDraggingItemDecorator.getDraggingItemTranslationY());
        }
        checkItemSwapping(rv);
    }

    private void updateDragDirectionMask() {
        if (CustomRecyclerViewUtils.getOrientation(this.mRecyclerView) == 1) {
            if (this.mDragStartTouchY - this.mDragMinTouchY > this.mScrollTouchSlop || this.mDragMaxTouchY - this.mLastTouchY > this.mScrollTouchSlop) {
                this.mScrollDirMask |= 1;
            }
            if (this.mDragMaxTouchY - this.mDragStartTouchY > this.mScrollTouchSlop || this.mLastTouchY - this.mDragMinTouchY > this.mScrollTouchSlop) {
                this.mScrollDirMask |= 2;
                return;
            }
            return;
        }
        if (CustomRecyclerViewUtils.getOrientation(this.mRecyclerView) == 0) {
            if (this.mDragStartTouchX - this.mDragMinTouchX > this.mScrollTouchSlop || this.mDragMaxTouchX - this.mLastTouchX > this.mScrollTouchSlop) {
                this.mScrollDirMask |= 4;
            }
            if (this.mDragMaxTouchX - this.mDragStartTouchX > this.mScrollTouchSlop || this.mLastTouchX - this.mDragMinTouchX > this.mScrollTouchSlop) {
                this.mScrollDirMask |= 8;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkItemSwapping(RecyclerView rv) {
        RecyclerView.ViewHolder draggingItem = this.mDraggingItemViewHolder;
        int overlayItemLeft = this.mLastTouchX - this.mDraggingItemInfo.grabbedPositionX;
        int overlayItemTop = this.mLastTouchY - this.mDraggingItemInfo.grabbedPositionY;
        RecyclerView.ViewHolder swapTargetHolder = findSwapTargetItem(rv, draggingItem, this.mDraggingItemInfo, overlayItemLeft, overlayItemTop, this.mDraggableRange);
        if (swapTargetHolder != null && swapTargetHolder != this.mDraggingItemViewHolder) {
            int draggingItemCurrentPosition = this.mAdapter.getDraggingItemCurrentPosition();
            swapItems(rv, draggingItemCurrentPosition, draggingItem, swapTargetHolder);
        }
    }

    void handleScrollOnDragging() {
        RecyclerView rv = this.mRecyclerView;
        switch (CustomRecyclerViewUtils.getOrientation(rv)) {
            case 0:
                handleScrollOnDraggingInternal(rv, true);
                return;
            case 1:
                handleScrollOnDraggingInternal(rv, false);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0170, code lost:
    
        r13 = (-r33.mDisplayDensity) * 0.005f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0208, code lost:
    
        r13 = r33.mDisplayDensity * 0.005f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleScrollOnDraggingInternal(com.oneplus.lib.widget.recyclerview.RecyclerView r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager.handleScrollOnDraggingInternal(com.oneplus.lib.widget.recyclerview.RecyclerView, boolean):void");
    }

    private void updateEdgeEffect(float distance) {
        if (distance == 0.0f) {
            this.mEdgeEffectDecorator.releaseBothGlows();
        } else if (distance < 0.0f) {
            this.mEdgeEffectDecorator.pullFirstEdge(distance);
        } else {
            this.mEdgeEffectDecorator.pullSecondEdge(distance);
        }
    }

    private int scrollByYAndGetScrolledAmount(int ry) {
        this.mActualScrollByYAmount = 0;
        this.mInScrollByMethod = true;
        this.mRecyclerView.scrollBy(0, ry);
        this.mInScrollByMethod = false;
        return this.mActualScrollByYAmount;
    }

    private int scrollByXAndGetScrolledAmount(int rx) {
        this.mActualScrollByXAmount = 0;
        this.mInScrollByMethod = true;
        this.mRecyclerView.scrollBy(rx, 0);
        this.mInScrollByMethod = false;
        return this.mActualScrollByXAmount;
    }

    RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    private void startScrollOnDraggingProcess() {
        this.mScrollOnDraggingProcess.start();
    }

    private void stopScrollOnDraggingProcess() {
        if (this.mScrollOnDraggingProcess != null) {
            this.mScrollOnDraggingProcess.stop();
        }
    }

    private void swapItems(RecyclerView rv, int draggingItemAdapterPosition, @Nullable RecyclerView.ViewHolder draggingItem, @NonNull RecyclerView.ViewHolder swapTargetHolder) {
        Rect swapTargetMargins = CustomRecyclerViewUtils.getLayoutMargins(swapTargetHolder.itemView, this.mTmpRect1);
        int toPosition = swapTargetHolder.getAdapterPosition();
        int diffPosition = Math.abs(draggingItemAdapterPosition - toPosition);
        boolean performSwapping = false;
        if (draggingItemAdapterPosition != -1 && toPosition != -1) {
            long actualDraggingItemId = rv.getAdapter().getItemId(draggingItemAdapterPosition);
            if (actualDraggingItemId == this.mDraggingItemInfo.id) {
                if (diffPosition != 0) {
                    if (diffPosition == 1 && draggingItem != null) {
                        View v1 = draggingItem.itemView;
                        View v2 = swapTargetHolder.itemView;
                        Rect m1 = this.mDraggingItemInfo.margins;
                        if (this.mCanDragH) {
                            int left = Math.min(v1.getLeft() - m1.left, v2.getLeft() - swapTargetMargins.left);
                            int right = Math.max(v1.getRight() + m1.right, v2.getRight() + swapTargetMargins.right);
                            float midPointOfTheItems = left + ((right - left) * 0.5f);
                            float midPointOfTheOverlaidItem = (this.mLastTouchX - this.mDraggingItemInfo.grabbedPositionX) + (this.mDraggingItemInfo.width * 0.5f);
                            if (toPosition < draggingItemAdapterPosition) {
                                if (midPointOfTheOverlaidItem < midPointOfTheItems) {
                                    performSwapping = true;
                                }
                            } else if (midPointOfTheOverlaidItem > midPointOfTheItems) {
                                performSwapping = true;
                            }
                        }
                        if (!performSwapping && this.mCanDragV) {
                            int top = Math.min(v1.getTop() - m1.top, v2.getTop() - swapTargetMargins.top);
                            int bottom = Math.max(v1.getBottom() + m1.bottom, v2.getBottom() + swapTargetMargins.bottom);
                            float midPointOfTheItems2 = top + ((bottom - top) * 0.5f);
                            float midPointOfTheOverlaidItem2 = (this.mLastTouchY - this.mDraggingItemInfo.grabbedPositionY) + (this.mDraggingItemInfo.height * 0.5f);
                            if (toPosition < draggingItemAdapterPosition) {
                                if (midPointOfTheOverlaidItem2 < midPointOfTheItems2) {
                                    performSwapping = true;
                                }
                            } else if (midPointOfTheOverlaidItem2 > midPointOfTheItems2) {
                                performSwapping = true;
                            }
                        }
                    } else {
                        performSwapping = true;
                    }
                }
                if (performSwapping) {
                    performSwapItems(rv, swapTargetHolder, swapTargetMargins, draggingItemAdapterPosition, toPosition);
                }
            }
        }
    }

    private void performSwapItems(RecyclerView rv, @NonNull RecyclerView.ViewHolder swapTargetHolder, Rect swapTargetMargins, int fromPosition, int toPosition) {
        View child;
        if (this.mItemDragEventListener != null) {
            this.mItemDragEventListener.onItemDragPositionChanged(fromPosition, toPosition);
        }
        RecyclerView.ViewHolder firstVisibleItem = null;
        if (rv.getChildCount() > 0 && (child = rv.getChildAt(0)) != null) {
            firstVisibleItem = rv.getChildViewHolder(child);
        }
        int prevFirstItemPosition = firstVisibleItem != null ? firstVisibleItem.getAdapterPosition() : -1;
        if (toPosition != prevFirstItemPosition) {
            this.mAdapter.moveItem(fromPosition, toPosition);
        }
        safeEndAnimations(rv);
        switch (CustomRecyclerViewUtils.getOrientation(rv)) {
            case 0:
                if (fromPosition == prevFirstItemPosition) {
                    int curLeftItemHeight = swapTargetHolder.itemView.getWidth() + swapTargetMargins.left + swapTargetMargins.right;
                    scrollByXAndGetScrolledAmount(-curLeftItemHeight);
                    break;
                } else if (toPosition == prevFirstItemPosition) {
                    Rect margins = this.mDraggingItemInfo.margins;
                    int curLeftItemHeight2 = this.mDraggingItemInfo.width + margins.left + margins.right;
                    scrollByXAndGetScrolledAmount(-curLeftItemHeight2);
                    break;
                }
                break;
            case 1:
                if (fromPosition == prevFirstItemPosition) {
                    int curTopItemHeight = swapTargetHolder.itemView.getHeight() + swapTargetMargins.top + swapTargetMargins.bottom;
                    scrollByYAndGetScrolledAmount(-curTopItemHeight);
                    break;
                }
                break;
        }
        safeEndAnimations(rv);
    }

    private static DraggableItemWrapperAdapter getDraggableItemWrapperAdapter(RecyclerView rv) {
        return (DraggableItemWrapperAdapter) WrapperAdapterUtils.findWrappedAdapter(rv.getAdapter(), DraggableItemWrapperAdapter.class);
    }

    private boolean checkTouchedItemState(RecyclerView rv, RecyclerView.ViewHolder holder) {
        if (!(holder instanceof DraggableItemViewHolder)) {
            return false;
        }
        int itemPosition = holder.getAdapterPosition();
        RecyclerView.Adapter adapter = rv.getAdapter();
        return itemPosition >= 0 && itemPosition < adapter.getItemCount() && holder.getItemId() == adapter.getItemId(itemPosition);
    }

    private static boolean supportsEdgeEffect() {
        return Build.VERSION.SDK_INT >= 14;
    }

    private static boolean supportsViewTranslation() {
        return Build.VERSION.SDK_INT >= 11;
    }

    private static void safeEndAnimation(RecyclerView rv, RecyclerView.ViewHolder holder) {
        RecyclerView.ItemAnimator itemAnimator = rv != null ? rv.getItemAnimator() : null;
        if (itemAnimator != null) {
            itemAnimator.endAnimation(holder);
        }
    }

    private static void safeEndAnimations(RecyclerView rv) {
        RecyclerView.ItemAnimator itemAnimator = rv != null ? rv.getItemAnimator() : null;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RecyclerView.ViewHolder findSwapTargetItem(RecyclerView rv, RecyclerView.ViewHolder draggingItem, DraggingItemInfo draggingItemInfo, int overlayItemLeft, int overlayItemTop, ItemDraggableRange range) {
        RecyclerView.ViewHolder swapTargetHolder = null;
        int overlayItemLeft2 = Math.min(Math.max(overlayItemLeft, rv.getPaddingLeft()), Math.max(0, (rv.getWidth() - rv.getPaddingRight()) - draggingItemInfo.width));
        int overlayItemTop2 = Math.min(Math.max(overlayItemTop, rv.getPaddingTop()), Math.max(0, (rv.getHeight() - rv.getPaddingBottom()) - draggingItemInfo.height));
        if (draggingItem == null || (draggingItem.getAdapterPosition() != -1 && draggingItem.getItemId() == draggingItemInfo.id)) {
            int layoutType = CustomRecyclerViewUtils.getLayoutType(rv);
            switch (layoutType) {
                case 0:
                    swapTargetHolder = findSwapTargetItemForLinearLayoutManagerHorizontal(rv, draggingItem, draggingItemInfo, overlayItemLeft2, overlayItemTop2, range);
                    break;
                case 1:
                    swapTargetHolder = findSwapTargetItemForLinearLayoutManagerVertical(rv, draggingItem, draggingItemInfo, overlayItemLeft2, overlayItemTop2, range);
                    break;
                case 2:
                case 3:
                    swapTargetHolder = findSwapTargetItemForGridLayoutManager(rv, draggingItem, draggingItemInfo, overlayItemLeft2, overlayItemTop2, range, layoutType == 3);
                    break;
            }
        }
        if (swapTargetHolder != null && range != null && !range.checkInRange(swapTargetHolder.getAdapterPosition())) {
            return null;
        }
        return swapTargetHolder;
    }

    private static RecyclerView.ViewHolder findSwapTargetItemForGridLayoutManager(RecyclerView rv, @Nullable RecyclerView.ViewHolder draggingItem, DraggingItemInfo draggingItemInfo, int overlayItemLeft, int overlayItemTop, ItemDraggableRange range, boolean vertical) {
        int cx = overlayItemLeft + (draggingItemInfo.width / 2);
        int cy = overlayItemTop + (draggingItemInfo.height / 2);
        RecyclerView.ViewHolder vh = CustomRecyclerViewUtils.findChildViewHolderUnderWithoutTranslation(rv, cx, cy);
        if (vh != null) {
            if (vh == draggingItem) {
                return null;
            }
            return vh;
        }
        int spanCount = CustomRecyclerViewUtils.getSpanCount(rv);
        int height = rv.getHeight();
        int width = rv.getWidth();
        int paddingLeft = rv.getPaddingLeft();
        int paddingTop = rv.getPaddingTop();
        int paddingRight = rv.getPaddingRight();
        int paddingBottom = rv.getPaddingBottom();
        int columnWidth = ((width - paddingLeft) - paddingRight) / spanCount;
        int rowHeight = ((height - paddingTop) - paddingBottom) / spanCount;
        for (int i = spanCount - 1; i >= 0; i--) {
            int cx2 = vertical ? (columnWidth * i) + paddingLeft + (columnWidth / 2) : cx;
            int cy2 = !vertical ? (rowHeight * i) + paddingTop + (rowHeight / 2) : cy;
            RecyclerView.ViewHolder vh2 = CustomRecyclerViewUtils.findChildViewHolderUnderWithoutTranslation(rv, cx2, cy2);
            if (vh2 != null) {
                int itemCount = rv.getLayoutManager().getItemCount();
                int pos = vh2.getAdapterPosition();
                if (pos == -1 || pos != itemCount - 1 || vh == draggingItem) {
                    return null;
                }
                return vh2;
            }
        }
        return null;
    }

    private static RecyclerView.ViewHolder findSwapTargetItemForLinearLayoutManagerVertical(RecyclerView rv, RecyclerView.ViewHolder draggingItem, DraggingItemInfo draggingItemInfo, int overlayItemLeft, int overlayItemTop, ItemDraggableRange range) {
        if (draggingItem == null) {
            return null;
        }
        int draggingItemPosition = draggingItem.getAdapterPosition();
        int draggingViewTop = draggingItem.itemView.getTop();
        if (overlayItemTop < draggingViewTop) {
            if (draggingItemPosition <= 0) {
                return null;
            }
            RecyclerView.ViewHolder swapTargetHolder = rv.findViewHolderForAdapterPosition(draggingItemPosition - 1);
            return swapTargetHolder;
        }
        if (overlayItemTop <= draggingViewTop || draggingItemPosition >= rv.getAdapter().getItemCount() - 1) {
            return null;
        }
        RecyclerView.ViewHolder swapTargetHolder2 = rv.findViewHolderForAdapterPosition(draggingItemPosition + 1);
        return swapTargetHolder2;
    }

    private static RecyclerView.ViewHolder findSwapTargetItemForLinearLayoutManagerHorizontal(RecyclerView rv, @Nullable RecyclerView.ViewHolder draggingItem, DraggingItemInfo draggingItemInfo, int overlayItemLeft, int overlayItemTop, ItemDraggableRange range) {
        if (draggingItem == null) {
            return null;
        }
        int draggingItemPosition = draggingItem.getAdapterPosition();
        int draggingViewLeft = draggingItem.itemView.getLeft();
        if (overlayItemLeft < draggingViewLeft) {
            if (draggingItemPosition <= 0) {
                return null;
            }
            RecyclerView.ViewHolder swapTargetHolder = rv.findViewHolderForAdapterPosition(draggingItemPosition - 1);
            return swapTargetHolder;
        }
        if (overlayItemLeft <= draggingViewLeft || draggingItemPosition >= rv.getAdapter().getItemCount() - 1) {
            return null;
        }
        RecyclerView.ViewHolder swapTargetHolder2 = rv.findViewHolderForAdapterPosition(draggingItemPosition + 1);
        return swapTargetHolder2;
    }

    public void setScrollingEnabled(boolean scrollingEnabled) {
        this.mEnableScrolling = scrollingEnabled;
        cancelDrag(true);
    }

    public void setItemSettleBackIntoPlaceAnimationDuration(int duration) {
        this.mItemSettleBackIntoPlaceAnimationDuration = duration;
    }

    public int getItemSettleBackIntoPlaceAnimationDuration() {
        return this.mItemSettleBackIntoPlaceAnimationDuration;
    }

    public void setItemSettleBackIntoPlaceAnimationInterpolator(@Nullable Interpolator interpolator) {
        this.mItemSettleBackIntoPlaceAnimationInterpolator = interpolator;
    }

    @Nullable
    public Interpolator getItemSettleBackIntoPlaceAnimationInterpolator() {
        return this.mItemSettleBackIntoPlaceAnimationInterpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDraggingItemViewRecycled() {
        this.mDraggingItemViewHolder = null;
        this.mDraggingItemDecorator.invalidateDraggingItem();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNewDraggingItemViewBound(RecyclerView.ViewHolder holder) {
        this.mDraggingItemViewHolder = holder;
        this.mDraggingItemDecorator.setDraggingItemViewHolder(holder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ScrollOnDraggingProcessRunnable implements Runnable {
        private final WeakReference<RecyclerViewDragDropManager> mHolderRef;
        private boolean mStarted;

        public ScrollOnDraggingProcessRunnable(RecyclerViewDragDropManager holder) {
            this.mHolderRef = new WeakReference<>(holder);
        }

        public void start() {
            RecyclerViewDragDropManager holder;
            RecyclerView rv;
            if (!this.mStarted && (holder = this.mHolderRef.get()) != null && (rv = holder.getRecyclerView()) != null) {
                ViewCompat.postOnAnimation(rv, this);
                this.mStarted = true;
            }
        }

        public void stop() {
            if (this.mStarted) {
                this.mStarted = false;
            }
        }

        public void release() {
            this.mHolderRef.clear();
            this.mStarted = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerViewDragDropManager holder = this.mHolderRef.get();
            if (holder != null && this.mStarted) {
                holder.handleScrollOnDragging();
                RecyclerView rv = holder.getRecyclerView();
                if (rv != null && this.mStarted) {
                    ViewCompat.postOnAnimation(rv, this);
                } else {
                    this.mStarted = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class InternalHandler extends Handler {
        private static final int MSG_LONGPRESS = 1;
        private MotionEvent mDownMotionEvent;
        private RecyclerViewDragDropManager mHolder;

        public InternalHandler(RecyclerViewDragDropManager holder) {
            this.mHolder = holder;
        }

        public void release() {
            removeCallbacks(null);
            this.mHolder = null;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    this.mHolder.handleOnLongPress(this.mDownMotionEvent);
                    return;
                default:
                    return;
            }
        }

        public void startLongPressDetection(MotionEvent e, int timeout) {
            cancelLongPressDetection();
            this.mDownMotionEvent = MotionEvent.obtain(e);
            sendEmptyMessageAtTime(1, e.getDownTime() + timeout);
        }

        public void cancelLongPressDetection() {
            removeMessages(1);
            if (this.mDownMotionEvent != null) {
                this.mDownMotionEvent.recycle();
                this.mDownMotionEvent = null;
            }
        }
    }
}
