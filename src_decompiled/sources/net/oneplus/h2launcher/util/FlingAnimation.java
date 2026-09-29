package net.oneplus.h2launcher.util;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.animation.DecelerateInterpolator;
import net.oneplus.h2launcher.DragLayer;
import net.oneplus.h2launcher.DragView;
import net.oneplus.h2launcher.DropTarget;

/* loaded from: classes.dex */
public class FlingAnimation implements ValueAnimator.AnimatorUpdateListener {
    private static final int DRAG_END_DELAY = 300;
    private static final float MAX_ACCELERATION = 0.5f;
    protected float mAX;
    protected float mAY;
    protected final float mAnimationTimeFraction;
    protected final DragLayer mDragLayer;
    protected final DropTarget.DragObject mDragObject;
    protected final int mDuration;
    protected final Rect mIconRect;
    protected final float mUX;
    protected final float mUY;
    protected final TimeInterpolator mAlphaInterpolator = new DecelerateInterpolator(0.75f);
    protected final Rect mFrom = new Rect();

    public FlingAnimation(DropTarget.DragObject d, PointF vel, Rect iconRect, DragLayer dragLayer) {
        this.mDragObject = d;
        this.mUX = vel.x / 1000.0f;
        this.mUY = vel.y / 1000.0f;
        this.mIconRect = iconRect;
        this.mDragLayer = dragLayer;
        dragLayer.getViewRectRelativeToSelf(d.dragView, this.mFrom);
        float scale = d.dragView.getScaleX();
        float xOffset = ((scale - 1.0f) * d.dragView.getMeasuredWidth()) / 2.0f;
        float yOffset = ((scale - 1.0f) * d.dragView.getMeasuredHeight()) / 2.0f;
        this.mFrom.left = (int) (r3.left + xOffset);
        this.mFrom.right = (int) (r3.right - xOffset);
        this.mFrom.top = (int) (r3.top + yOffset);
        this.mFrom.bottom = (int) (r3.bottom - yOffset);
        this.mDuration = initDuration();
        this.mAnimationTimeFraction = this.mDuration / (this.mDuration + 300);
    }

    protected int initDuration() {
        float sY = -this.mFrom.bottom;
        float d = (this.mUY * this.mUY) + (2.0f * sY * MAX_ACCELERATION);
        if (d >= 0.0f) {
            this.mAY = MAX_ACCELERATION;
        } else {
            d = 0.0f;
            this.mAY = (this.mUY * this.mUY) / ((-sY) * 2.0f);
        }
        double t = ((-this.mUY) - Math.sqrt(d)) / this.mAY;
        float sX = (-this.mFrom.exactCenterX()) + this.mIconRect.exactCenterX();
        this.mAX = (float) (((sX - (this.mUX * t)) * 2.0d) / (t * t));
        return (int) Math.round(t);
    }

    public final int getDuration() {
        return this.mDuration + 300;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator animation) {
        float t;
        float t2 = animation.getAnimatedFraction();
        if (t2 > this.mAnimationTimeFraction) {
            t = 1.0f;
        } else {
            t = t2 / this.mAnimationTimeFraction;
        }
        DragView dragView = (DragView) this.mDragLayer.getAnimatedView();
        float time = t * this.mDuration;
        dragView.setTranslationX((this.mUX * time) + this.mFrom.left + (((this.mAX * time) * time) / 2.0f));
        dragView.setTranslationY((this.mUY * time) + this.mFrom.top + (((this.mAY * time) * time) / 2.0f));
        dragView.setAlpha(1.0f - this.mAlphaInterpolator.getInterpolation(t));
    }
}
