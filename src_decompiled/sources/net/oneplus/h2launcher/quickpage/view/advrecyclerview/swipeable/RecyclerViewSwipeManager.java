package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.SwipeDismissItemAnimator;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.CustomRecyclerViewUtils;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.WrapperAdapterUtils;

/* loaded from: classes.dex */
public class RecyclerViewSwipeManager implements SwipeableItemConstants {
    private static final boolean LOCAL_LOGD = false;
    private static final boolean LOCAL_LOGV = false;
    private static final int MIN_DISTANCE_TOUCH_SLOP_MUL = 10;
    private static final int SLIDE_ITEM_IMMEDIATELY_SET_TRANSLATION_THRESHOLD_DP = 8;
    private static final int SWIPE_THRESHOLD = 80;
    private static final String TAG = "ARVSwipeManager";
    private SwipeableItemWrapperAdapter<RecyclerView.ViewHolder> mAdapter;
    private InternalHandler mHandler;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private ItemSlidingAnimator mItemSlideAnimator;
    private OnItemSwipeEventListener mItemSwipeEventListener;
    private int mLastTouchX;
    private int mLastTouchY;
    private MotionEvent mLongPressEvent;
    private float mLongPressInitialTouchX;
    private int mMaxFlingVelocity;
    private int mMinFlingVelocity;
    private RecyclerView mRecyclerView;
    private boolean mShouldSwipeOnNextEvent;
    private boolean mSwipeHorizontal;
    private RecyclerView.ViewHolder mSwipingItem;
    private SwipingItemOperator mSwipingItemOperator;
    private int mSwipingItemReactionType;
    private int mTouchSlop;
    private int mTouchedItemOffsetX;
    private int mTouchedItemOffsetY;
    private long mReturnToDefaultPositionAnimationDuration = 300;
    private long mMoveToOutsideWindowAnimationDuration = 200;
    private int mItemPosition = -1;
    private int mSwipingItemPosition = -1;
    private long mSwipingItemId = -1;
    private Rect mSwipingItemMargins = new Rect();
    private boolean mEnableScrolling = true;
    private RecyclerView.OnItemTouchListener mInternalUseOnItemTouchListener = new RecyclerView.OnItemTouchListener() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.RecyclerViewSwipeManager.1
        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
            return RecyclerViewSwipeManager.this.onInterceptTouchEvent(rv, e);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView rv, MotionEvent e) {
            RecyclerViewSwipeManager.this.onTouchEvent(rv, e);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean disallow) {
        }
    };
    private VelocityTracker mVelocityTracker = VelocityTracker.obtain();
    private int mLongPressTimeout = ViewConfiguration.getLongPressTimeout();

    /* loaded from: classes.dex */
    public interface OnItemSwipeEventListener {
        void onItemSwipeFinished(int i, int i2, int i3);

        void onItemSwipeStarted(int i);
    }

    public SwipeableItemWrapperAdapter createWrappedAdapter(@NonNull RecyclerView.Adapter adapter) {
        if (this.mAdapter != null) {
            throw new IllegalStateException("already have a wrapped adapter");
        }
        this.mAdapter = new SwipeableItemWrapperAdapter<>(this, adapter);
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
        if (this.mAdapter == null || getSwipeableItemWrapperAdapter(rv) != this.mAdapter) {
            throw new IllegalStateException("adapter is not set properly");
        }
        int layoutOrientation = CustomRecyclerViewUtils.getOrientation(rv);
        if (layoutOrientation == -1) {
            throw new IllegalStateException("failed to determine layout orientation");
        }
        this.mRecyclerView = rv;
        this.mRecyclerView.addOnItemTouchListener(this.mInternalUseOnItemTouchListener);
        ViewConfiguration vc = ViewConfiguration.get(rv.getContext().getApplicationContext());
        this.mTouchSlop = vc.getScaledTouchSlop();
        this.mMinFlingVelocity = vc.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = vc.getScaledMaximumFlingVelocity();
        this.mItemSlideAnimator = new ItemSlidingAnimator(this.mAdapter);
        this.mItemSlideAnimator.setImmediatelySetTranslationThreshold((int) ((rv.getResources().getDisplayMetrics().density * 8.0f) + 0.5f));
        this.mSwipeHorizontal = layoutOrientation == 1;
        this.mHandler = new InternalHandler(this);
    }

    public void release() {
        if (this.mHandler != null) {
            this.mHandler.release();
            this.mHandler = null;
        }
        if (this.mRecyclerView != null && this.mInternalUseOnItemTouchListener != null) {
            this.mRecyclerView.removeOnItemTouchListener(this.mInternalUseOnItemTouchListener);
        }
        this.mInternalUseOnItemTouchListener = null;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        if (this.mItemSlideAnimator != null) {
            this.mItemSlideAnimator.endAnimations();
            this.mItemSlideAnimator = null;
        }
        this.mAdapter = null;
        this.mRecyclerView = null;
    }

    public boolean isSwiping() {
        return this.mSwipingItem != null;
    }

    public void setLongPressTimeout(int longPressTimeout) {
        this.mLongPressTimeout = longPressTimeout;
    }

    boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
        RecyclerView.ViewHolder holder;
        if (!this.mEnableScrolling) {
            return false;
        }
        int action = MotionEventCompat.getActionMasked(e);
        switch (action) {
            case 0:
                this.mLongPressInitialTouchX = e.getX();
                if (isSwiping()) {
                    return false;
                }
                handleActionDown(rv, e);
                return false;
            case 1:
            case 3:
                return handleActionUpOrCancel(e);
            case 2:
                if (Math.abs(this.mLongPressInitialTouchX - e.getX()) <= 80.0f) {
                    return false;
                }
                if (this.mShouldSwipeOnNextEvent && (holder = this.mRecyclerView.findViewHolderForAdapterPosition(this.mItemPosition)) != null) {
                    checkConditionAndStartSwiping(this.mLongPressEvent, holder);
                    this.mShouldSwipeOnNextEvent = false;
                }
                if (!isSwiping()) {
                    return handleActionMoveWhileNotSwiping(rv, e);
                }
                handleActionMoveWhileSwiping(e);
                return true;
            default:
                return false;
        }
    }

    void onTouchEvent(RecyclerView rv, MotionEvent e) {
        int action = MotionEventCompat.getActionMasked(e);
        if (isSwiping()) {
            switch (action) {
                case 1:
                case 3:
                    handleActionUpOrCancel(e);
                    return;
                case 2:
                    handleActionMoveWhileSwiping(e);
                    return;
                default:
                    return;
            }
        }
    }

    void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        if (disallowIntercept) {
            cancelSwipe();
        }
    }

    private boolean handleActionDown(RecyclerView rv, MotionEvent e) {
        int itemPosition;
        RecyclerView.Adapter adapter = rv.getAdapter();
        RecyclerView.ViewHolder holder = CustomRecyclerViewUtils.findChildViewHolderUnderWithTranslation(rv, e.getX(), e.getY());
        if (!(holder instanceof SwipeableItemViewHolder) || (itemPosition = CustomRecyclerViewUtils.getSynchronizedPosition(holder)) < 0 || itemPosition >= adapter.getItemCount() || holder.getItemId() != adapter.getItemId(itemPosition)) {
            return false;
        }
        int touchX = (int) (e.getX() + 0.5f);
        int touchY = (int) (e.getY() + 0.5f);
        View view = holder.itemView;
        int translateX = (int) (ViewCompat.getTranslationX(view) + 0.5f);
        int translateY = (int) (ViewCompat.getTranslationY(view) + 0.5f);
        int viewX = touchX - (view.getLeft() + translateX);
        int viewY = touchY - (view.getTop() + translateY);
        int reactionType = this.mAdapter.getSwipeReactionType(holder, itemPosition, viewX, viewY);
        if (reactionType == 0) {
            return false;
        }
        this.mInitialTouchX = touchX;
        this.mInitialTouchY = touchY;
        this.mItemPosition = itemPosition;
        this.mSwipingItemReactionType = reactionType;
        if ((16777216 & reactionType) != 0) {
            this.mHandler.startLongPressDetection(e, this.mLongPressTimeout);
        }
        return true;
    }

    private static SwipeableItemWrapperAdapter getSwipeableItemWrapperAdapter(RecyclerView rv) {
        return (SwipeableItemWrapperAdapter) WrapperAdapterUtils.findWrappedAdapter(rv.getAdapter(), SwipeableItemWrapperAdapter.class);
    }

    private boolean handleActionUpOrCancel(MotionEvent e) {
        int action = 3;
        if (e != null) {
            action = MotionEventCompat.getActionMasked(e);
            this.mLastTouchX = (int) (e.getX() + 0.5f);
            this.mLastTouchY = (int) (e.getY() + 0.5f);
        }
        this.mLongPressInitialTouchX = 0.0f;
        this.mShouldSwipeOnNextEvent = false;
        this.mLongPressEvent = null;
        this.mHandler.removeCallbacksAndMessages(null);
        if (isSwiping()) {
            handleActionUpOrCancelWhileSwiping(action);
            return true;
        }
        handleActionUpOrCancelWhileNotSwiping();
        return false;
    }

    private void handleActionUpOrCancelWhileNotSwiping() {
        this.mHandler.cancelLongPressDetection();
        this.mItemPosition = -1;
        this.mSwipingItemReactionType = 0;
    }

    private void handleActionUpOrCancelWhileSwiping(int action) {
        int result = 1;
        if (action == 1) {
            boolean horizontal = this.mSwipeHorizontal;
            View itemView = this.mSwipingItem.itemView;
            int viewSize = horizontal ? itemView.getWidth() : itemView.getHeight();
            float distance = horizontal ? this.mLastTouchX - this.mInitialTouchX : this.mLastTouchY - this.mInitialTouchY;
            float absDistance = Math.abs(distance);
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
            float velocity = horizontal ? this.mVelocityTracker.getXVelocity() : this.mVelocityTracker.getYVelocity();
            float absVelocity = Math.abs(velocity);
            if (absDistance > this.mTouchSlop * 10 && distance * velocity > 0.0f && absVelocity <= this.mMaxFlingVelocity && (absDistance > viewSize / 2 || absVelocity >= this.mMinFlingVelocity)) {
                if (horizontal && distance < 0.0f && SwipeReactionUtils.canSwipeLeft(this.mSwipingItemReactionType)) {
                    result = 2;
                } else if (!horizontal && distance < 0.0f && SwipeReactionUtils.canSwipeUp(this.mSwipingItemReactionType)) {
                    result = 3;
                } else if (horizontal && distance > 0.0f && SwipeReactionUtils.canSwipeRight(this.mSwipingItemReactionType)) {
                    result = 4;
                } else if (!horizontal && distance > 0.0f && SwipeReactionUtils.canSwipeDown(this.mSwipingItemReactionType)) {
                    result = 5;
                }
            }
        }
        finishSwiping(result);
    }

    private boolean handleActionMoveWhileNotSwiping(RecyclerView rv, MotionEvent e) {
        int scrollAxisDelta;
        int swipeAxisDelta;
        boolean dirMasked = true;
        if (this.mItemPosition == -1) {
            return false;
        }
        int dx = ((int) (e.getX() + 0.5f)) - this.mInitialTouchX;
        int dy = ((int) (e.getY() + 0.5f)) - this.mInitialTouchY;
        if (this.mSwipeHorizontal) {
            scrollAxisDelta = dy;
            swipeAxisDelta = dx;
        } else {
            scrollAxisDelta = dx;
            swipeAxisDelta = dy;
        }
        if (Math.abs(scrollAxisDelta) > this.mTouchSlop) {
            this.mItemPosition = -1;
            return false;
        }
        if (Math.abs(swipeAxisDelta) <= this.mTouchSlop) {
            return false;
        }
        if (this.mSwipeHorizontal) {
            if (swipeAxisDelta < 0) {
                if ((this.mSwipingItemReactionType & 8) == 0) {
                    dirMasked = false;
                }
            } else if ((this.mSwipingItemReactionType & 32768) == 0) {
                dirMasked = false;
            }
        } else if (swipeAxisDelta < 0) {
            if ((this.mSwipingItemReactionType & 512) == 0) {
                dirMasked = false;
            }
        } else if ((this.mSwipingItemReactionType & 2097152) == 0) {
            dirMasked = false;
        }
        if (dirMasked) {
            this.mItemPosition = -1;
            return false;
        }
        RecyclerView.ViewHolder holder = CustomRecyclerViewUtils.findChildViewHolderUnderWithTranslation(rv, e.getX(), e.getY());
        if (holder == null || CustomRecyclerViewUtils.getSynchronizedPosition(holder) != this.mItemPosition) {
            this.mItemPosition = -1;
            return false;
        }
        return checkConditionAndStartSwiping(e, holder);
    }

    private void handleActionMoveWhileSwiping(MotionEvent e) {
        this.mLastTouchX = (int) (e.getX() + 0.5f);
        this.mLastTouchY = (int) (e.getY() + 0.5f);
        this.mVelocityTracker.addMovement(e);
        int swipeDistanceX = this.mLastTouchX - this.mTouchedItemOffsetX;
        int swipeDistanceY = this.mLastTouchY - this.mTouchedItemOffsetY;
        int swipingItemPosition = getSwipingItemPosition();
        this.mSwipingItemOperator.update(swipingItemPosition, swipeDistanceX, swipeDistanceY);
    }

    private boolean checkConditionAndStartSwiping(MotionEvent e, RecyclerView.ViewHolder holder) {
        int itemPosition = CustomRecyclerViewUtils.getSynchronizedPosition(holder);
        if (itemPosition == -1) {
            return false;
        }
        startSwiping(e, holder, itemPosition);
        return true;
    }

    private void startSwiping(MotionEvent e, RecyclerView.ViewHolder holder, int itemPosition) {
        this.mHandler.cancelLongPressDetection();
        this.mSwipingItem = holder;
        this.mSwipingItemPosition = itemPosition;
        this.mSwipingItemId = this.mAdapter.getItemId(itemPosition);
        if (e != null) {
            this.mLastTouchX = (int) (e.getX() + 0.5f);
            this.mLastTouchY = (int) (e.getY() + 0.5f);
        }
        this.mTouchedItemOffsetX = this.mLastTouchX;
        this.mTouchedItemOffsetY = this.mLastTouchY;
        this.mItemPosition = -1;
        CustomRecyclerViewUtils.getLayoutMargins(holder.itemView, this.mSwipingItemMargins);
        this.mSwipingItemOperator = new SwipingItemOperator(this, this.mSwipingItem, this.mSwipingItemReactionType, this.mSwipeHorizontal);
        this.mSwipingItemOperator.start();
        this.mVelocityTracker.clear();
        if (e != null) {
            this.mVelocityTracker.addMovement(e);
        }
        this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(true);
        if (this.mItemSwipeEventListener != null) {
            this.mItemSwipeEventListener.onItemSwipeStarted(itemPosition);
        }
        this.mAdapter.onSwipeItemStarted(this, holder, this.mSwipingItemId);
    }

    public void swipeItem(RecyclerView.ViewHolder holder, int result) {
        startSwiping(null, holder, holder.getAdapterPosition());
        this.mSwipingItem = holder;
        finishSwiping(result);
    }

    private void finishSwiping(int result) {
        boolean slideAnimated;
        RecyclerView.ViewHolder swipingItem = this.mSwipingItem;
        if (swipingItem != null) {
            this.mHandler.cancelLongPressDetection();
            if (this.mRecyclerView != null && this.mRecyclerView.getParent() != null) {
                this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(false);
            }
            int itemPosition = this.mSwipingItemPosition;
            this.mVelocityTracker.clear();
            this.mSwipingItem = null;
            this.mSwipingItemPosition = -1;
            this.mSwipingItemId = -1L;
            this.mLastTouchX = 0;
            this.mLastTouchY = 0;
            this.mInitialTouchX = 0;
            this.mTouchedItemOffsetX = 0;
            this.mTouchedItemOffsetY = 0;
            this.mItemPosition = -1;
            this.mSwipingItemReactionType = 0;
            this.mShouldSwipeOnNextEvent = false;
            if (this.mSwipingItemOperator != null) {
                this.mSwipingItemOperator.finish();
                this.mSwipingItemOperator = null;
            }
            int slideDir = resultCodeToSlideDirection(result);
            SwipeResultAction resultAction = null;
            if (this.mAdapter != null) {
                resultAction = this.mAdapter.onSwipeItemFinished(swipingItem, itemPosition, result);
            }
            int afterReaction = 0;
            if (resultAction != null) {
                afterReaction = resultAction.getResultActionType();
            }
            verifyAfterReaction(result, afterReaction);
            switch (afterReaction) {
                case 0:
                    slideAnimated = this.mItemSlideAnimator.finishSwipeSlideToDefaultPosition(swipingItem, this.mSwipeHorizontal, true, this.mReturnToDefaultPositionAnimationDuration, itemPosition, resultAction);
                    break;
                case 1:
                    RecyclerView.ItemAnimator itemAnimator = this.mRecyclerView.getItemAnimator();
                    long removeAnimationDuration = itemAnimator != null ? itemAnimator.getRemoveDuration() : 0L;
                    if (supportsViewPropertyAnimator()) {
                        long moveAnimationDuration = itemAnimator != null ? itemAnimator.getMoveDuration() : 0L;
                        RemovingItemDecorator decorator = new RemovingItemDecorator(this.mRecyclerView, swipingItem, result, removeAnimationDuration, moveAnimationDuration);
                        decorator.setMoveAnimationInterpolator(SwipeDismissItemAnimator.MOVE_INTERPOLATOR);
                        try {
                            decorator.start();
                        } catch (IllegalStateException e) {
                        }
                    }
                    slideAnimated = this.mItemSlideAnimator.finishSwipeSlideToOutsideOfWindow(swipingItem, slideDir, true, removeAnimationDuration, itemPosition, resultAction);
                    break;
                case 2:
                    slideAnimated = this.mItemSlideAnimator.finishSwipeSlideToOutsideOfWindow(swipingItem, slideDir, true, this.mMoveToOutsideWindowAnimationDuration, itemPosition, resultAction);
                    break;
                default:
                    throw new IllegalStateException("Unknown after reaction type: " + afterReaction);
            }
            if (this.mAdapter != null && resultAction != null) {
                this.mAdapter.onSwipeItemFinished2(swipingItem, itemPosition, result, afterReaction, resultAction);
            }
            if (this.mItemSwipeEventListener != null) {
                this.mItemSwipeEventListener.onItemSwipeFinished(itemPosition, result, afterReaction);
            }
            if (!slideAnimated && resultAction != null) {
                resultAction.slideAnimationEnd();
            }
        }
    }

    private static void verifyAfterReaction(int result, int afterReaction) {
        if (afterReaction == 2 || afterReaction == 1) {
            switch (result) {
                case 2:
                case 3:
                case 4:
                case 5:
                    return;
                default:
                    throw new IllegalStateException("Unexpected after reaction has been requested: result = " + result + ", afterReaction = " + afterReaction);
            }
        }
    }

    private static int resultCodeToSlideDirection(int result) {
        switch (result) {
            case 2:
            default:
                return 0;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
                return 3;
        }
    }

    static int getItemPosition(@Nullable RecyclerView.Adapter adapter, long itemId, int itemPositionGuess) {
        if (adapter == null) {
            return -1;
        }
        int itemCount = adapter.getItemCount();
        if (itemPositionGuess < 0 || itemPositionGuess >= itemCount || adapter.getItemId(itemPositionGuess) != itemId) {
            for (int i = 0; i < itemCount; i++) {
                if (adapter.getItemId(i) == itemId) {
                    return i;
                }
            }
            return -1;
        }
        return itemPositionGuess;
    }

    public void cancelSwipe() {
        handleActionUpOrCancel(null);
        finishSwiping(1);
    }

    public void cancelLongPressDetection() {
        this.mHandler.cancelLongPressDetection();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAnimationRunning(RecyclerView.ViewHolder item) {
        return this.mItemSlideAnimator != null && this.mItemSlideAnimator.isRunning(item);
    }

    private void slideItem(RecyclerView.ViewHolder holder, float amount, boolean horizontal, boolean shouldAnimate) {
        if (amount == -65536.0f) {
            this.mItemSlideAnimator.slideToOutsideOfWindow(holder, 0, shouldAnimate, this.mMoveToOutsideWindowAnimationDuration);
            return;
        }
        if (amount == -65537.0f) {
            this.mItemSlideAnimator.slideToOutsideOfWindow(holder, 1, shouldAnimate, this.mMoveToOutsideWindowAnimationDuration);
            return;
        }
        if (amount == 65536.0f) {
            this.mItemSlideAnimator.slideToOutsideOfWindow(holder, 2, shouldAnimate, this.mMoveToOutsideWindowAnimationDuration);
            return;
        }
        if (amount == 65537.0f) {
            this.mItemSlideAnimator.slideToOutsideOfWindow(holder, 3, shouldAnimate, this.mMoveToOutsideWindowAnimationDuration);
        } else if (amount == 0.0f) {
            this.mItemSlideAnimator.slideToDefaultPosition(holder, horizontal, shouldAnimate, this.mReturnToDefaultPositionAnimationDuration);
        } else {
            this.mItemSlideAnimator.slideToSpecifiedPosition(holder, amount, horizontal);
        }
    }

    public void setScrollingEnabled(boolean scrollingEnabled) {
        this.mEnableScrolling = scrollingEnabled;
    }

    public long getReturnToDefaultPositionAnimationDuration() {
        return this.mReturnToDefaultPositionAnimationDuration;
    }

    public void setReturnToDefaultPositionAnimationDuration(long duration) {
        this.mReturnToDefaultPositionAnimationDuration = duration;
    }

    public long getMoveToOutsideWindowAnimationDuration() {
        return this.mMoveToOutsideWindowAnimationDuration;
    }

    public void setMoveToOutsideWindowAnimationDuration(long duration) {
        this.mMoveToOutsideWindowAnimationDuration = duration;
    }

    @Nullable
    public OnItemSwipeEventListener getOnItemSwipeEventListener() {
        return this.mItemSwipeEventListener;
    }

    public void setOnItemSwipeEventListener(@Nullable OnItemSwipeEventListener listener) {
        this.mItemSwipeEventListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean swipeHorizontal() {
        return this.mSwipeHorizontal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void applySlideItem(RecyclerView.ViewHolder viewHolder, int itemPosition, float prevAmount, float amount, boolean horizontal, boolean shouldAnimate, boolean isSwiping) {
        int reqBackgroundType;
        SwipeableItemViewHolder holder2 = (SwipeableItemViewHolder) viewHolder;
        View containerView = holder2.getSwipeableContainerView();
        if (containerView == null) {
            return;
        }
        if (amount != 0.0f) {
            reqBackgroundType = determineBackgroundType(amount, horizontal);
        } else if (prevAmount == 0.0f) {
            reqBackgroundType = 0;
        } else {
            reqBackgroundType = determineBackgroundType(prevAmount, horizontal);
        }
        if (amount == 0.0f) {
            slideItem(viewHolder, amount, horizontal, shouldAnimate);
            this.mAdapter.onUpdateSlideAmount(viewHolder, itemPosition, horizontal, amount, isSwiping, reqBackgroundType);
            return;
        }
        float minLimit = horizontal ? holder2.getMaxLeftSwipeAmount() : holder2.getMaxUpSwipeAmount();
        float maxLimit = horizontal ? holder2.getMaxRightSwipeAmount() : holder2.getMaxDownSwipeAmount();
        float adjustedAmount = Math.max(amount, minLimit);
        float adjustedAmount2 = Math.min(adjustedAmount, maxLimit);
        this.mAdapter.onUpdateSlideAmount(viewHolder, itemPosition, horizontal, amount, isSwiping, reqBackgroundType);
        slideItem(viewHolder, adjustedAmount2, horizontal, shouldAnimate);
    }

    private static int determineBackgroundType(float amount, boolean horizontal) {
        return horizontal ? amount < 0.0f ? 1 : 3 : amount < 0.0f ? 2 : 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancelPendingAnimations(RecyclerView.ViewHolder holder) {
        if (this.mItemSlideAnimator != null) {
            this.mItemSlideAnimator.endAnimation(holder);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSwipeContainerViewTranslationX(RecyclerView.ViewHolder holder) {
        return this.mItemSlideAnimator.getSwipeContainerViewTranslationX(holder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSwipeContainerViewTranslationY(RecyclerView.ViewHolder holder) {
        return this.mItemSlideAnimator.getSwipeContainerViewTranslationY(holder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnLongPress(MotionEvent e) {
        this.mShouldSwipeOnNextEvent = true;
        this.mLongPressEvent = e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSwipingItemPosition() {
        return this.mSwipingItemPosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int syncSwipingItemPosition() {
        return syncSwipingItemPosition(this.mSwipingItemPosition);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int syncSwipingItemPosition(int positionGuess) {
        this.mSwipingItemPosition = getItemPosition(this.mAdapter, this.mSwipingItemId, positionGuess);
        return this.mSwipingItemPosition;
    }

    private static boolean supportsViewPropertyAnimator() {
        return Build.VERSION.SDK_INT >= 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InternalHandler extends Handler {
        private static final int MSG_LONGPRESS = 1;
        private MotionEvent mDownMotionEvent;
        private RecyclerViewSwipeManager mHolder;

        public InternalHandler(RecyclerViewSwipeManager holder) {
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
