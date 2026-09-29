package net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils;

import android.view.View;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder;

/* loaded from: classes.dex */
public abstract class AbstractSwipeableItemViewHolder extends RecyclerView.ViewHolder implements SwipeableItemViewHolder {
    private int mAfterSwipeReaction;
    private float mHorizontalSwipeAmount;
    private float mMaxDownSwipeAmount;
    private float mMaxLeftSwipeAmount;
    private float mMaxRightSwipeAmount;
    private float mMaxUpSwipeAmount;
    private int mSwipeResult;
    private int mSwipeStateFlags;
    private float mVerticalSwipeAmount;

    public AbstractSwipeableItemViewHolder(View itemView) {
        super(itemView);
        this.mSwipeResult = 0;
        this.mAfterSwipeReaction = 0;
        this.mMaxLeftSwipeAmount = -65536.0f;
        this.mMaxUpSwipeAmount = -65537.0f;
        this.mMaxRightSwipeAmount = 65536.0f;
        this.mMaxDownSwipeAmount = 65537.0f;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setSwipeStateFlags(int flags) {
        this.mSwipeStateFlags = flags;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public int getSwipeStateFlags() {
        return this.mSwipeStateFlags;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setSwipeResult(int result) {
        this.mSwipeResult = result;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public int getSwipeResult() {
        return this.mSwipeResult;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public int getAfterSwipeReaction() {
        return this.mAfterSwipeReaction;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setAfterSwipeReaction(int reaction) {
        this.mAfterSwipeReaction = reaction;
    }

    @Deprecated
    public float getSwipeItemSlideAmount() {
        return getSwipeItemHorizontalSlideAmount();
    }

    @Deprecated
    public void setSwipeItemSlideAmount(float amount) {
        setSwipeItemHorizontalSlideAmount(amount);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setSwipeItemVerticalSlideAmount(float amount) {
        this.mVerticalSwipeAmount = amount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public float getSwipeItemVerticalSlideAmount() {
        return this.mVerticalSwipeAmount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setSwipeItemHorizontalSlideAmount(float amount) {
        this.mHorizontalSwipeAmount = amount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public float getSwipeItemHorizontalSlideAmount() {
        return this.mHorizontalSwipeAmount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public View getSwipeableContainerView() {
        return null;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setMaxLeftSwipeAmount(float amount) {
        this.mMaxLeftSwipeAmount = amount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public float getMaxLeftSwipeAmount() {
        return this.mMaxLeftSwipeAmount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setMaxUpSwipeAmount(float amount) {
        this.mMaxUpSwipeAmount = amount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public float getMaxUpSwipeAmount() {
        return this.mMaxUpSwipeAmount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setMaxRightSwipeAmount(float amount) {
        this.mMaxRightSwipeAmount = amount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public float getMaxRightSwipeAmount() {
        return this.mMaxRightSwipeAmount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void setMaxDownSwipeAmount(float amount) {
        this.mMaxDownSwipeAmount = amount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public float getMaxDownSwipeAmount() {
        return this.mMaxDownSwipeAmount;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder
    public void onSlideAmountUpdated(float horizontalAmount, float verticalAmount, boolean isSwiping) {
    }
}
