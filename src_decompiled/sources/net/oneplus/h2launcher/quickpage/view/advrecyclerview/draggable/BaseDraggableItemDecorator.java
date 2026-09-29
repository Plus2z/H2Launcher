package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class BaseDraggableItemDecorator extends RecyclerView.ItemDecoration {
    private static final int RETURN_TO_DEFAULT_POS_ANIMATE_THRESHOLD_DP = 2;
    private static final int RETURN_TO_DEFAULT_POS_ANIMATE_THRESHOLD_MSEC = 20;
    protected RecyclerView.ViewHolder mDraggingItemViewHolder;
    protected RecyclerView mRecyclerView;
    private int mReturnToDefaultPositionAnimateThreshold;
    private int mReturnToDefaultPositionDuration = 200;
    private Interpolator mReturnToDefaultPositionInterpolator;

    public BaseDraggableItemDecorator(RecyclerView recyclerView, RecyclerView.ViewHolder draggingItemViewHolder) {
        this.mRecyclerView = recyclerView;
        this.mDraggingItemViewHolder = draggingItemViewHolder;
        float displayDensity = recyclerView.getResources().getDisplayMetrics().density;
        this.mReturnToDefaultPositionAnimateThreshold = (int) ((2.0f * displayDensity) + 0.5f);
    }

    public void setReturnToDefaultPositionAnimationDuration(int duration) {
        this.mReturnToDefaultPositionDuration = duration;
    }

    public void setReturnToDefaultPositionAnimationInterpolator(Interpolator interpolator) {
        this.mReturnToDefaultPositionInterpolator = interpolator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void moveToDefaultPosition(final View targetView, boolean animate) {
        int curTranslationX = (int) targetView.getTranslationX();
        int curTranslationY = (int) targetView.getTranslationY();
        int halfItemWidth = targetView.getWidth() / 2;
        int halfItemHeight = targetView.getHeight() / 2;
        float translationProportionX = halfItemWidth > 0 ? Math.abs(curTranslationX / halfItemWidth) : 0.0f;
        float translationProportionY = halfItemHeight > 0 ? Math.abs(curTranslationY / halfItemHeight) : 0.0f;
        float tx = 1.0f - Math.min(translationProportionX, 1.0f);
        float ty = 1.0f - Math.min(translationProportionY, 1.0f);
        int animDurationX = (int) ((this.mReturnToDefaultPositionDuration * (1.0f - (tx * tx))) + 0.5f);
        int animDurationY = (int) ((this.mReturnToDefaultPositionDuration * (1.0f - (ty * ty))) + 0.5f);
        int animDuration = Math.max(animDurationX, animDurationY);
        int maxAbsTranslation = Math.max(Math.abs(curTranslationX), Math.abs(curTranslationY));
        if (supportsViewPropertyAnimation() && animate && animDuration > 20 && maxAbsTranslation > this.mReturnToDefaultPositionAnimateThreshold) {
            final TranslateAnimation translate = new TranslateAnimation(0.0f, 0.0f, curTranslationY, 0.0f);
            translate.cancel();
            translate.setDuration(animDuration);
            translate.setInterpolator(this.mReturnToDefaultPositionInterpolator);
            translate.setFillAfter(true);
            translate.setFillEnabled(true);
            translate.setAnimationListener(new Animation.AnimationListener() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.BaseDraggableItemDecorator.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    translate.setAnimationListener(null);
                    targetView.setTranslationX(0.0f);
                    targetView.setTranslationY(0.0f);
                    if (targetView.getParent() instanceof RecyclerView) {
                        ((RecyclerView) targetView.getParent()).postInvalidateOnAnimation();
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            targetView.startAnimation(translate);
            return;
        }
        targetView.setTranslationX(0.0f);
        targetView.setTranslationY(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void setItemTranslation(RecyclerView rv, RecyclerView.ViewHolder holder, float x, float y) {
        RecyclerView.ItemAnimator itemAnimator = rv.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.endAnimation(holder);
        }
        holder.itemView.setTranslationX(x);
        holder.itemView.setTranslationY(y);
    }

    private static boolean supportsViewPropertyAnimation() {
        return Build.VERSION.SDK_INT >= 11;
    }
}
