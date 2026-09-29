package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Interpolator;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.CustomRecyclerViewUtils;

/* loaded from: classes.dex */
class RemovingItemDecorator extends RecyclerView.ItemDecoration {
    private static final long ADDITIONAL_REMOVE_DURATION = 0;
    private static final int NOTIFY_REMOVAL_EFFECT_END = 1;
    private static final int NOTIFY_REMOVAL_EFFECT_PHASE_1 = 0;
    private static final String TAG = "RemovingItemDecorator";
    private boolean mHorizontal;
    private long mMoveAnimationDuration;
    private Interpolator mMoveAnimationInterpolator;
    private RecyclerView mRecyclerView;
    private long mRemoveAnimationDuration;
    private long mStartTime;
    private Drawable mSwipeBackgroundDrawable;
    private RecyclerView.ViewHolder mSwipingItem;
    private long mSwipingItemId;
    private int mTranslationX;
    private int mTranslationY;
    private Rect mSwipingItemBounds = new Rect();
    private int mPendingNotificationMask = 0;

    public RemovingItemDecorator(RecyclerView rv, RecyclerView.ViewHolder swipingItem, int result, long removeAnimationDuration, long moveAnimationDuration) {
        this.mRecyclerView = rv;
        this.mSwipingItem = swipingItem;
        this.mSwipingItemId = swipingItem.getItemId();
        this.mHorizontal = result == 2 || result == 4;
        this.mRemoveAnimationDuration = 0 + removeAnimationDuration;
        this.mMoveAnimationDuration = moveAnimationDuration;
        this.mTranslationX = (int) (ViewCompat.getTranslationX(swipingItem.itemView) + 0.5f);
        this.mTranslationY = (int) (ViewCompat.getTranslationY(swipingItem.itemView) + 0.5f);
        CustomRecyclerViewUtils.getViewBounds(this.mSwipingItem.itemView, this.mSwipingItemBounds);
    }

    public void setMoveAnimationInterpolator(Interpolator interpolator) {
        this.mMoveAnimationInterpolator = interpolator;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        long elapsedTime = getElapsedTime(this.mStartTime);
        float scale = determineBackgroundScaleSwipeCompletedSuccessfully(elapsedTime);
        fillSwipingItemBackground(c, this.mSwipeBackgroundDrawable, scale);
        if (this.mSwipingItemId == this.mSwipingItem.getItemId()) {
            this.mTranslationX = (int) (ViewCompat.getTranslationX(this.mSwipingItem.itemView) + 0.5f);
            this.mTranslationY = (int) (ViewCompat.getTranslationY(this.mSwipingItem.itemView) + 0.5f);
        }
        if (requiresContinuousAnimationAfterSwipeCompletedSuccessfully(elapsedTime)) {
            postInvalidateOnAnimation();
        }
    }

    private boolean requiresContinuousAnimationAfterSwipeCompletedSuccessfully(long elapsedTime) {
        return elapsedTime >= this.mRemoveAnimationDuration && elapsedTime < this.mRemoveAnimationDuration + this.mMoveAnimationDuration;
    }

    private float determineBackgroundScaleSwipeCompletedSuccessfully(long elapsedTime) {
        if (elapsedTime < this.mRemoveAnimationDuration) {
            return 1.0f;
        }
        if (elapsedTime >= this.mRemoveAnimationDuration + this.mMoveAnimationDuration || this.mMoveAnimationDuration == 0) {
            return 0.0f;
        }
        float heightScale = 1.0f - (((float) (elapsedTime - this.mRemoveAnimationDuration)) / ((float) this.mMoveAnimationDuration));
        if (this.mMoveAnimationInterpolator != null) {
            return this.mMoveAnimationInterpolator.getInterpolation(heightScale);
        }
        return heightScale;
    }

    private void fillSwipingItemBackground(Canvas c, Drawable drawable, float scale) {
        Rect bounds = this.mSwipingItemBounds;
        int translationX = this.mTranslationX;
        int translationY = this.mTranslationY;
        float hScale = this.mHorizontal ? 1.0f : scale;
        float vScale = this.mHorizontal ? scale : 1.0f;
        int width = (int) ((bounds.width() * hScale) + 0.5f);
        int height = (int) ((bounds.height() * vScale) + 0.5f);
        if (height != 0 && width != 0 && drawable != null) {
            int savedCount = c.save();
            c.clipRect(bounds.left + translationX, bounds.top + translationY, bounds.left + translationX + width, bounds.top + translationY + height);
            c.translate((bounds.left + translationX) - ((bounds.width() - width) / 2), (bounds.top + translationY) - ((bounds.height() - height) / 2));
            drawable.setBounds(0, 0, bounds.width(), bounds.height());
            drawable.draw(c);
            c.restoreToCount(savedCount);
        }
    }

    private void postInvalidateOnAnimation() {
        ViewCompat.postInvalidateOnAnimation(this.mRecyclerView);
    }

    public void start() {
        View containerView = ((SwipeableItemViewHolder) this.mSwipingItem).getSwipeableContainerView();
        ViewCompat.animate(containerView).cancel();
        this.mRecyclerView.addItemDecoration(this);
        this.mStartTime = System.currentTimeMillis();
        this.mTranslationY = (int) (ViewCompat.getTranslationY(this.mSwipingItem.itemView) + 0.5f);
        this.mSwipeBackgroundDrawable = this.mSwipingItem.itemView.getBackground();
        postInvalidateOnAnimation();
        notifyDelayed(0, this.mRemoveAnimationDuration);
    }

    private void notifyDelayed(int code, long delay) {
        int mask = 1 << code;
        if ((this.mPendingNotificationMask & mask) == 0) {
            this.mPendingNotificationMask |= mask;
            DelayedNotificationRunner notification = new DelayedNotificationRunner(this, code);
            ViewCompat.postOnAnimationDelayed(this.mRecyclerView, notification, delay);
        }
    }

    void onDelayedNotification(int code) {
        int mask = 1 << code;
        long elapsedTime = getElapsedTime(this.mStartTime);
        this.mPendingNotificationMask &= mask ^ (-1);
        switch (code) {
            case 0:
                if (elapsedTime < this.mRemoveAnimationDuration) {
                    notifyDelayed(0, this.mRemoveAnimationDuration - elapsedTime);
                    return;
                } else {
                    postInvalidateOnAnimation();
                    notifyDelayed(1, this.mMoveAnimationDuration);
                    return;
                }
            case 1:
                finish();
                return;
            default:
                return;
        }
    }

    private void finish() {
        this.mRecyclerView.removeItemDecoration(this);
        postInvalidateOnAnimation();
        this.mRecyclerView = null;
        this.mSwipingItem = null;
        this.mTranslationY = 0;
        this.mMoveAnimationInterpolator = null;
    }

    protected static long getElapsedTime(long initialTime) {
        long curTime = System.currentTimeMillis();
        if (curTime >= initialTime) {
            return curTime - initialTime;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DelayedNotificationRunner implements Runnable {
        private final int mCode;
        private WeakReference<RemovingItemDecorator> mRefDecorator;

        public DelayedNotificationRunner(RemovingItemDecorator decorator, int code) {
            this.mRefDecorator = new WeakReference<>(decorator);
            this.mCode = code;
        }

        @Override // java.lang.Runnable
        public void run() {
            RemovingItemDecorator decorator = this.mRefDecorator.get();
            this.mRefDecorator.clear();
            this.mRefDecorator = null;
            if (decorator != null) {
                decorator.onDelayedNotification(this.mCode);
            }
        }
    }
}
