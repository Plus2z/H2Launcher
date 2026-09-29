package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction;

/* loaded from: classes.dex */
public class ItemSlidingAnimator {
    public static final int DIR_DOWN = 3;
    public static final int DIR_LEFT = 0;
    public static final int DIR_RIGHT = 2;
    public static final int DIR_UP = 1;
    private static final String TAG = "ItemSlidingAnimator";
    private final SwipeableItemWrapperAdapter<RecyclerView.ViewHolder> mAdapter;
    private int mImmediatelySetTranslationThreshold;
    private final Interpolator mSlideToDefaultPositionAnimationInterpolator = new AccelerateDecelerateInterpolator();
    private final Interpolator mSlideToOutsideOfWindowAnimationInterpolator = new AccelerateInterpolator(0.8f);
    private final int[] mTmpLocation = new int[2];
    private final Rect mTmpRect = new Rect();
    private final List<RecyclerView.ViewHolder> mActive = new ArrayList();
    private final List<WeakReference<ViewHolderDeferredProcess>> mDeferredProcesses = new ArrayList();

    public ItemSlidingAnimator(SwipeableItemWrapperAdapter<RecyclerView.ViewHolder> adapter) {
        this.mAdapter = adapter;
    }

    public void slideToDefaultPosition(RecyclerView.ViewHolder holder, boolean horizontal, boolean shouldAnimate, long duration) {
        cancelDeferredProcess(holder);
        slideToSpecifiedPositionInternal(holder, 0.0f, horizontal, shouldAnimate, duration, null);
    }

    public void slideToOutsideOfWindow(RecyclerView.ViewHolder holder, int dir, boolean shouldAnimate, long duration) {
        cancelDeferredProcess(holder);
        slideToOutsideOfWindowInternal(holder, dir, shouldAnimate, duration, null);
    }

    public void slideToSpecifiedPosition(RecyclerView.ViewHolder holder, float position, boolean horizontal) {
        cancelDeferredProcess(holder);
        slideToSpecifiedPositionInternal(holder, position, horizontal, false, 0L, null);
    }

    public boolean finishSwipeSlideToDefaultPosition(RecyclerView.ViewHolder holder, boolean horizontal, boolean shouldAnimate, long duration, int itemPosition, SwipeResultAction resultAction) {
        cancelDeferredProcess(holder);
        return slideToSpecifiedPositionInternal(holder, 0.0f, horizontal, shouldAnimate, duration, new SwipeFinishInfo(itemPosition, resultAction));
    }

    public boolean finishSwipeSlideToOutsideOfWindow(RecyclerView.ViewHolder holder, int dir, boolean shouldAnimate, long duration, int itemPosition, SwipeResultAction resultAction) {
        cancelDeferredProcess(holder);
        return slideToOutsideOfWindowInternal(holder, dir, shouldAnimate, duration, new SwipeFinishInfo(itemPosition, resultAction));
    }

    private void cancelDeferredProcess(RecyclerView.ViewHolder holder) {
        int n = this.mDeferredProcesses.size();
        for (int i = n - 1; i >= 0; i--) {
            ViewHolderDeferredProcess dp = this.mDeferredProcesses.get(i).get();
            if (dp != null && dp.hasTargetViewHolder(holder)) {
                holder.itemView.removeCallbacks(dp);
                this.mDeferredProcesses.remove(i);
            } else if (dp == null || dp.lostReference(holder)) {
                this.mDeferredProcesses.remove(i);
            }
        }
    }

    private void scheduleViewHolderDeferredSlideProcess(RecyclerView.ViewHolder holder, ViewHolderDeferredProcess deferredProcess) {
        this.mDeferredProcesses.add(new WeakReference<>(deferredProcess));
        holder.itemView.post(deferredProcess);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean slideToSpecifiedPositionInternal(RecyclerView.ViewHolder viewHolder, float position, boolean horizontal, boolean shouldAnimate, long duration, SwipeFinishInfo swipeFinish) {
        Interpolator defaultInterpolator = this.mSlideToDefaultPositionAnimationInterpolator;
        if (!shouldAnimate) {
            duration = 0;
        }
        if (position != 0.0f) {
            View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
            int width = containerView.getWidth();
            int height = containerView.getHeight();
            if (horizontal && width != 0) {
                int translationX = (int) ((width * position) + 0.5f);
                return animateSlideInternalCompat(viewHolder, horizontal, translationX, 0, duration, defaultInterpolator, swipeFinish);
            }
            if (!horizontal && height != 0) {
                int translationY = (int) ((height * position) + 0.5f);
                return animateSlideInternalCompat(viewHolder, horizontal, 0, translationY, duration, defaultInterpolator, swipeFinish);
            }
            if (swipeFinish != null) {
                throw new IllegalStateException("Unexpected state in slideToSpecifiedPositionInternal (swipeFinish == null)");
            }
            scheduleViewHolderDeferredSlideProcess(viewHolder, new DeferredSlideProcess(viewHolder, position, horizontal));
            return false;
        }
        return animateSlideInternalCompat(viewHolder, horizontal, 0, 0, duration, defaultInterpolator, swipeFinish);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean slideToOutsideOfWindowInternal(RecyclerView.ViewHolder viewHolder, int dir, boolean shouldAnimate, long duration, SwipeFinishInfo swipeFinish) {
        if (!(viewHolder instanceof SwipeableItemViewHolder)) {
            return false;
        }
        View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        ViewGroup parent = (ViewGroup) containerView.getParent();
        if (parent == null) {
            return false;
        }
        int left = containerView.getLeft();
        int right = containerView.getRight();
        int top = containerView.getTop();
        int bottom = containerView.getBottom();
        int width = right - left;
        int height = bottom - top;
        boolean parentIsShown = parent.isShown();
        parent.getWindowVisibleDisplayFrame(this.mTmpRect);
        int windowWidth = this.mTmpRect.width();
        int windowHeight = this.mTmpRect.height();
        int translateX = 0;
        int translateY = 0;
        if (width == 0 || height == 0 || !parentIsShown) {
            switch (dir) {
                case 0:
                    translateX = -windowWidth;
                    break;
                case 1:
                    translateY = -windowHeight;
                    break;
                case 2:
                    translateX = windowWidth;
                    break;
                case 3:
                    translateY = windowHeight;
                    break;
            }
            shouldAnimate = false;
        } else {
            parent.getLocationInWindow(this.mTmpLocation);
            int x = this.mTmpLocation[0];
            int y = this.mTmpLocation[1];
            switch (dir) {
                case 0:
                    translateX = -(x + width);
                    break;
                case 1:
                    translateY = -(y + height);
                    break;
                case 2:
                    translateX = windowWidth - (x - left);
                    break;
                case 3:
                    translateY = windowHeight - (y - top);
                    break;
            }
        }
        if (shouldAnimate) {
            shouldAnimate = containerView.isShown();
        }
        if (!shouldAnimate) {
            duration = 0;
        }
        boolean horizontal = dir == 0 || dir == 2;
        return animateSlideInternalCompat(viewHolder, horizontal, translateX, translateY, duration, this.mSlideToOutsideOfWindowAnimationInterpolator, swipeFinish);
    }

    private boolean animateSlideInternalCompat(RecyclerView.ViewHolder holder, boolean horizontal, int translationX, int translationY, long duration, Interpolator interpolator, SwipeFinishInfo swipeFinish) {
        if (supportsViewPropertyAnimator()) {
            boolean result = animateSlideInternal(holder, horizontal, translationX, translationY, duration, interpolator, swipeFinish);
            return result;
        }
        boolean result2 = slideInternalPreHoneycomb(holder, horizontal, translationX, translationY);
        return result2;
    }

    static void slideInternalCompat(RecyclerView.ViewHolder holder, boolean horizontal, int translationX, int translationY) {
        if (supportsViewPropertyAnimator()) {
            slideInternal(holder, horizontal, translationX, translationY);
        } else {
            slideInternalPreHoneycomb(holder, horizontal, translationX, translationY);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"RtlHardcoded"})
    private static boolean slideInternalPreHoneycomb(RecyclerView.ViewHolder viewHolder, boolean horizontal, int translationX, int translationY) {
        if (viewHolder instanceof SwipeableItemViewHolder) {
            View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
            ViewGroup.LayoutParams lp = containerView.getLayoutParams();
            if (lp instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) lp;
                mlp.leftMargin = translationX;
                mlp.rightMargin = -translationX;
                mlp.topMargin = translationY;
                mlp.bottomMargin = -translationY;
                if (lp instanceof FrameLayout.LayoutParams) {
                    ((FrameLayout.LayoutParams) lp).gravity = 51;
                }
                containerView.setLayoutParams(mlp);
            } else {
                Log.w(TAG, "should use MarginLayoutParams supported view for compatibility on Android 2.3");
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int getTranslationXPreHoneycomb(RecyclerView.ViewHolder viewHolder) {
        View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        ViewGroup.LayoutParams lp = containerView.getLayoutParams();
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) lp;
            return mlp.leftMargin;
        }
        Log.w(TAG, "should use MarginLayoutParams supported view for compatibility on Android 2.3");
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int getTranslationYPreHoneycomb(RecyclerView.ViewHolder viewHolder) {
        View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        ViewGroup.LayoutParams lp = containerView.getLayoutParams();
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) lp;
            return mlp.topMargin;
        }
        Log.w(TAG, "should use MarginLayoutParams supported view for compatibility on Android 2.3");
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void slideInternal(RecyclerView.ViewHolder viewHolder, boolean horizontal, int translationX, int translationY) {
        if (viewHolder instanceof SwipeableItemViewHolder) {
            View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
            ViewCompat.animate(containerView).cancel();
            ViewCompat.setTranslationX(containerView, translationX);
            ViewCompat.setTranslationY(containerView, translationY);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean animateSlideInternal(RecyclerView.ViewHolder viewHolder, boolean horizontal, int translationX, int translationY, long duration, Interpolator interpolator, SwipeFinishInfo swipeFinish) {
        if (!(viewHolder instanceof SwipeableItemViewHolder)) {
            return false;
        }
        View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        int prevTranslationX = (int) (ViewCompat.getTranslationX(containerView) + 0.5f);
        int prevTranslationY = (int) (ViewCompat.getTranslationY(containerView) + 0.5f);
        endAnimation(viewHolder);
        int curTranslationX = (int) (ViewCompat.getTranslationX(containerView) + 0.5f);
        int curTranslationY = (int) (ViewCompat.getTranslationY(containerView) + 0.5f);
        if (duration == 0 || ((curTranslationX == translationX && curTranslationY == translationY) || Math.max(Math.abs(translationX - prevTranslationX), Math.abs(translationY - prevTranslationY)) <= this.mImmediatelySetTranslationThreshold)) {
            int current = translationX - (containerView.getWidth() / 2);
            ViewCompat.setAlpha(containerView, current > 0 ? 1.0f - ((current * 1.0f) / (containerView.getWidth() / 2)) : 1.0f);
            ViewCompat.setTranslationX(containerView, prevTranslationX);
            ViewCompat.setTranslationY(containerView, prevTranslationY);
            ViewCompat.setTranslationX(containerView, translationX);
            ViewCompat.setTranslationY(containerView, translationY);
            return false;
        }
        SlidingAnimatorListenerObject listener = new SlidingAnimatorListenerObject(this.mAdapter, this.mActive, viewHolder, translationX, translationY, duration, horizontal, interpolator, swipeFinish);
        listener.start();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof SwipeableItemViewHolder) {
            cancelDeferredProcess(viewHolder);
            View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
            ViewCompat.animate(containerView).cancel();
            if (this.mActive.remove(viewHolder)) {
                throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [slide]");
            }
        }
    }

    public void endAnimations() {
        for (int i = this.mActive.size() - 1; i >= 0; i--) {
            RecyclerView.ViewHolder holder = this.mActive.get(i);
            endAnimation(holder);
        }
    }

    public boolean isRunning(RecyclerView.ViewHolder holder) {
        return this.mActive.contains(holder);
    }

    public boolean isRunning() {
        return !this.mActive.isEmpty();
    }

    public int getImmediatelySetTranslationThreshold() {
        return this.mImmediatelySetTranslationThreshold;
    }

    public void setImmediatelySetTranslationThreshold(int threshold) {
        this.mImmediatelySetTranslationThreshold = threshold;
    }

    private static boolean supportsViewPropertyAnimator() {
        return Build.VERSION.SDK_INT >= 11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getSwipeContainerViewTranslationX(RecyclerView.ViewHolder viewHolder) {
        if (!supportsViewPropertyAnimator()) {
            return getTranslationXPreHoneycomb(viewHolder);
        }
        View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        return (int) (ViewCompat.getTranslationX(containerView) + 0.5f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getSwipeContainerViewTranslationY(RecyclerView.ViewHolder viewHolder) {
        if (!supportsViewPropertyAnimator()) {
            return getTranslationYPreHoneycomb(viewHolder);
        }
        View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
        return (int) (ViewCompat.getTranslationY(containerView) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class ViewHolderDeferredProcess implements Runnable {
        final WeakReference<RecyclerView.ViewHolder> mRefHolder;

        protected abstract void onProcess(RecyclerView.ViewHolder viewHolder);

        public ViewHolderDeferredProcess(RecyclerView.ViewHolder holder) {
            this.mRefHolder = new WeakReference<>(holder);
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView.ViewHolder holder = this.mRefHolder.get();
            if (holder != null) {
                onProcess(holder);
            }
        }

        public boolean lostReference(RecyclerView.ViewHolder holder) {
            RecyclerView.ViewHolder holder2 = this.mRefHolder.get();
            return holder2 == null;
        }

        public boolean hasTargetViewHolder(RecyclerView.ViewHolder holder) {
            RecyclerView.ViewHolder holder2 = this.mRefHolder.get();
            return holder2 == holder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DeferredSlideProcess extends ViewHolderDeferredProcess {
        final boolean mHorizontal;
        final float mPosition;

        public DeferredSlideProcess(RecyclerView.ViewHolder holder, float position, boolean horizontal) {
            super(holder);
            this.mPosition = position;
            this.mHorizontal = horizontal;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.ItemSlidingAnimator.ViewHolderDeferredProcess
        protected void onProcess(RecyclerView.ViewHolder viewHolder) {
            View containerView = ((SwipeableItemViewHolder) viewHolder).getSwipeableContainerView();
            if (this.mHorizontal) {
                int width = containerView.getWidth();
                int translationX = (int) ((width * this.mPosition) + 0.5f);
                ItemSlidingAnimator.slideInternalCompat(viewHolder, this.mHorizontal, translationX, 0);
            } else {
                int height = containerView.getHeight();
                int translationY = (int) ((height * this.mPosition) + 0.5f);
                ItemSlidingAnimator.slideInternalCompat(viewHolder, this.mHorizontal, 0, translationY);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SlidingAnimatorListenerObject implements ViewPropertyAnimatorListener, ViewPropertyAnimatorUpdateListener {
        private List<RecyclerView.ViewHolder> mActive;
        private SwipeableItemWrapperAdapter<RecyclerView.ViewHolder> mAdapter;
        private ViewPropertyAnimatorCompat mAnimator;
        private final long mDuration;
        private final boolean mHorizontal;
        private final Interpolator mInterpolator;
        private float mInvSize;
        private final SwipeFinishInfo mSwipeFinish;
        private final int mToX;
        private final int mToY;
        private RecyclerView.ViewHolder mViewHolder;

        SlidingAnimatorListenerObject(SwipeableItemWrapperAdapter<RecyclerView.ViewHolder> adapter, List<RecyclerView.ViewHolder> activeViewHolders, RecyclerView.ViewHolder holder, int toX, int toY, long duration, boolean horizontal, Interpolator interpolator, SwipeFinishInfo swipeFinish) {
            this.mAdapter = adapter;
            this.mActive = activeViewHolders;
            this.mViewHolder = holder;
            this.mToX = toX;
            this.mToY = toY;
            this.mHorizontal = horizontal;
            this.mSwipeFinish = swipeFinish;
            this.mDuration = duration;
            this.mInterpolator = interpolator;
        }

        void start() {
            View containerView = ((SwipeableItemViewHolder) this.mViewHolder).getSwipeableContainerView();
            this.mInvSize = 1.0f / Math.max(1.0f, this.mHorizontal ? containerView.getWidth() : containerView.getHeight());
            this.mAnimator = ViewCompat.animate(containerView);
            this.mAnimator.setDuration(this.mDuration);
            this.mAnimator.translationX(this.mToX);
            this.mAnimator.translationY(this.mToY);
            if (this.mInterpolator != null) {
                this.mAnimator.setInterpolator(this.mInterpolator);
            }
            this.mAnimator.setListener(this);
            this.mAnimator.setUpdateListener(this);
            this.mActive.add(this.mViewHolder);
            this.mAnimator.start();
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            float translation = this.mHorizontal ? ViewCompat.getTranslationX(view) : ViewCompat.getTranslationY(view);
            float amount = translation * this.mInvSize;
            this.mAdapter.onUpdateSlideAmount(this.mViewHolder, this.mViewHolder.getLayoutPosition(), this.mHorizontal, amount, false);
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            this.mAnimator.setListener(null);
            if (Build.VERSION.SDK_INT >= 19) {
                view.animate().setUpdateListener(null);
            } else {
                this.mAnimator.setUpdateListener(null);
            }
            ViewCompat.setTranslationX(view, this.mToX);
            ViewCompat.setTranslationY(view, this.mToY);
            this.mActive.remove(this.mViewHolder);
            Object parent = this.mViewHolder.itemView.getParent();
            if (parent != null) {
                ViewCompat.postInvalidateOnAnimation((View) parent);
            }
            if (this.mSwipeFinish != null) {
                this.mSwipeFinish.resultAction.slideAnimationEnd();
            }
            this.mActive = null;
            this.mAnimator = null;
            this.mViewHolder = null;
            this.mAdapter = null;
        }

        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SwipeFinishInfo {
        final int itemPosition;
        SwipeResultAction resultAction;

        public SwipeFinishInfo(int itemPosition, SwipeResultAction resultAction) {
            this.itemPosition = itemPosition;
            this.resultAction = resultAction;
        }

        public void clear() {
            this.resultAction = null;
        }
    }
}
