package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import android.view.View;
import android.view.animation.Interpolator;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
class SwipingItemOperator {
    private static final int MIN_GRABBING_AREA_SIZE = 48;
    private static final int REACTION_CAN_NOT_SWIPE = 0;
    private static final int REACTION_CAN_NOT_SWIPE_WITH_RUBBER_BAND_EFFECT = 1;
    private static final int REACTION_CAN_SWIPE = 2;
    private static final String TAG = "SwipingItemOperator";
    private int mDownSwipeReactionType;
    private int mInitialTranslateAmountX;
    private int mInitialTranslateAmountY;
    private float mInvSwipingItemHeight;
    private float mInvSwipingItemWidth;
    private int mLeftSwipeReactionType;
    private float mPrevTranslateAmount;
    private int mRightSwipeReactionType;
    private int mSwipeDistanceX;
    private int mSwipeDistanceY;
    private final boolean mSwipeHorizontal;
    private RecyclerViewSwipeManager mSwipeManager;
    private RecyclerView.ViewHolder mSwipingItem;
    private View mSwipingItemContainerView;
    private final int mSwipingItemHeight;
    private int mSwipingItemWidth;
    private int mUpSwipeReactionType;
    private static final float RUBBER_BAND_LIMIT = 0.15f;
    private static final Interpolator RUBBER_BAND_INTERPOLATOR = new RubberBandInterpolator(RUBBER_BAND_LIMIT);

    /* JADX WARN: Multi-variable type inference failed */
    public SwipingItemOperator(RecyclerViewSwipeManager manager, RecyclerView.ViewHolder viewHolder, int swipeReactionType, boolean swipeHorizontal) {
        this.mSwipeManager = manager;
        this.mSwipingItem = viewHolder;
        this.mLeftSwipeReactionType = SwipeReactionUtils.extractLeftReaction(swipeReactionType);
        this.mUpSwipeReactionType = SwipeReactionUtils.extractUpReaction(swipeReactionType);
        this.mRightSwipeReactionType = SwipeReactionUtils.extractRightReaction(swipeReactionType);
        this.mDownSwipeReactionType = SwipeReactionUtils.extractDownReaction(swipeReactionType);
        this.mSwipeHorizontal = swipeHorizontal;
        this.mSwipingItemContainerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        this.mSwipingItemWidth = this.mSwipingItemContainerView.getWidth();
        this.mSwipingItemHeight = this.mSwipingItemContainerView.getHeight();
        this.mInvSwipingItemWidth = calcInv(this.mSwipingItemWidth);
        this.mInvSwipingItemHeight = calcInv(this.mSwipingItemHeight);
    }

    public void start() {
        float density = this.mSwipingItem.itemView.getResources().getDisplayMetrics().density;
        int maxAmountH = Math.max(0, this.mSwipingItemWidth - ((int) (density * 48.0f)));
        int maxAmountV = Math.max(0, this.mSwipingItemHeight - ((int) (density * 48.0f)));
        this.mInitialTranslateAmountX = clip(this.mSwipeManager.getSwipeContainerViewTranslationX(this.mSwipingItem), -maxAmountH, maxAmountH);
        this.mInitialTranslateAmountY = clip(this.mSwipeManager.getSwipeContainerViewTranslationY(this.mSwipingItem), -maxAmountV, maxAmountV);
    }

    public void finish() {
        this.mSwipeManager = null;
        this.mSwipingItem = null;
        this.mSwipeDistanceX = 0;
        this.mSwipeDistanceY = 0;
        this.mSwipingItemWidth = 0;
        this.mInvSwipingItemWidth = 0.0f;
        this.mInvSwipingItemHeight = 0.0f;
        this.mLeftSwipeReactionType = 0;
        this.mUpSwipeReactionType = 0;
        this.mRightSwipeReactionType = 0;
        this.mDownSwipeReactionType = 0;
        this.mPrevTranslateAmount = 0.0f;
        this.mInitialTranslateAmountX = 0;
        this.mInitialTranslateAmountY = 0;
        this.mSwipingItemContainerView = null;
    }

    public void update(int itemPosition, int swipeDistanceX, int swipeDistanceY) {
        int reactionType;
        if (this.mSwipeDistanceX != swipeDistanceX || this.mSwipeDistanceY != swipeDistanceY) {
            this.mSwipeDistanceX = swipeDistanceX;
            this.mSwipeDistanceY = swipeDistanceY;
            int distance = this.mSwipeHorizontal ? this.mSwipeDistanceX + this.mInitialTranslateAmountX : this.mSwipeDistanceY + this.mInitialTranslateAmountY;
            int itemSize = this.mSwipeHorizontal ? this.mSwipingItemWidth : this.mSwipingItemHeight;
            float invItemSize = this.mSwipeHorizontal ? this.mInvSwipingItemWidth : this.mInvSwipingItemHeight;
            if (this.mSwipeHorizontal) {
                reactionType = distance > 0 ? this.mRightSwipeReactionType : this.mLeftSwipeReactionType;
            } else {
                reactionType = distance > 0 ? this.mDownSwipeReactionType : this.mUpSwipeReactionType;
            }
            float translateAmount = 0.0f;
            switch (reactionType) {
                case 1:
                    float proportion = Math.min(Math.abs(distance), itemSize) * invItemSize;
                    translateAmount = Math.signum(distance) * RUBBER_BAND_INTERPOLATOR.getInterpolation(proportion);
                    break;
                case 2:
                    translateAmount = Math.min(Math.max(distance * invItemSize, -1.0f), 1.0f);
                    break;
            }
            this.mSwipeManager.applySlideItem(this.mSwipingItem, itemPosition, this.mPrevTranslateAmount, translateAmount, this.mSwipeHorizontal, false, true);
            this.mPrevTranslateAmount = translateAmount;
        }
    }

    private static float calcInv(int value) {
        if (value != 0) {
            return 1.0f / value;
        }
        return 0.0f;
    }

    private static int clip(int v, int min, int max) {
        return Math.min(Math.max(v, min), max);
    }
}
