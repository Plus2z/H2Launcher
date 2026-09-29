package net.oneplus.h2launcher.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.SystemClock;
import net.oneplus.h2launcher.FastBitmapDrawable;

/* loaded from: classes.dex */
public class OneplusTransitionDrawable extends LayerDrawable implements Drawable.Callback {
    private static final int TRANSITION_NONE = 2;
    private static final int TRANSITION_RUNNING = 1;
    private static final int TRANSITION_STARTING = 0;
    private int mAlpha;
    private AnimationDoneCallback mAnimationDoneCallback;
    private Drawable mBaseDrawable;
    private boolean mCrossFade;
    private int mDuration;
    private int mFrom;
    private boolean mHideFirstLayer;
    private int mOriginalDuration;
    private boolean mReverse;
    private long mStartTimeMillis;
    private int mTo;
    private int mTransitionState;

    /* loaded from: classes.dex */
    public interface AnimationDoneCallback {
        void onAnimationCancel(Drawable drawable, Drawable drawable2);

        void onAnimationDone(Drawable drawable, Drawable drawable2);
    }

    public OneplusTransitionDrawable(Drawable[] layers) {
        super(layers);
        this.mTransitionState = 2;
        this.mAlpha = 0;
    }

    public void startTransition(int durationMillis) {
        this.mFrom = 0;
        this.mTo = 255;
        this.mAlpha = 0;
        this.mOriginalDuration = durationMillis;
        this.mDuration = durationMillis;
        this.mReverse = false;
        this.mTransitionState = 0;
        invalidateSelf();
    }

    public void resetTransition() {
        this.mAlpha = 0;
        this.mTransitionState = 2;
        invalidateSelf();
    }

    public void reverseTransition(int duration) {
        long time = SystemClock.uptimeMillis();
        if (time - this.mStartTimeMillis > this.mDuration) {
            if (this.mTo == 0) {
                this.mFrom = 0;
                this.mTo = 255;
                this.mAlpha = 0;
                this.mReverse = false;
            } else {
                this.mFrom = 255;
                this.mTo = 0;
                this.mAlpha = 255;
                this.mReverse = true;
            }
            this.mOriginalDuration = duration;
            this.mDuration = duration;
            this.mTransitionState = 0;
            invalidateSelf();
            return;
        }
        this.mReverse = this.mReverse ? false : true;
        this.mFrom = this.mAlpha;
        this.mTo = this.mReverse ? 0 : 255;
        this.mDuration = (int) (this.mReverse ? time - this.mStartTimeMillis : this.mOriginalDuration - (time - this.mStartTimeMillis));
        this.mTransitionState = 0;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean done = true;
        switch (this.mTransitionState) {
            case 0:
                this.mStartTimeMillis = SystemClock.uptimeMillis();
                done = false;
                this.mTransitionState = 1;
                break;
            case 1:
                if (this.mStartTimeMillis >= 0) {
                    float normalized = ((float) (SystemClock.uptimeMillis() - this.mStartTimeMillis)) / this.mDuration;
                    done = normalized >= 1.0f;
                    this.mAlpha = (int) (this.mFrom + ((this.mTo - this.mFrom) * Math.min(normalized, 1.0f)));
                    break;
                }
                break;
        }
        int alpha = this.mAlpha;
        boolean crossFade = this.mCrossFade;
        if (done) {
            if (this.mHideFirstLayer) {
                getDrawable(0).setAlpha(0);
            } else if (!crossFade || alpha == 0) {
                getDrawable(0).draw(canvas);
            }
            if (alpha == 255) {
                getDrawable(1).draw(canvas);
            }
            if (this.mAnimationDoneCallback != null) {
                this.mAnimationDoneCallback.onAnimationDone(getDrawable(0), getDrawable(1));
                return;
            }
            return;
        }
        if (this.mBaseDrawable != null) {
            this.mBaseDrawable.draw(canvas);
        }
        Drawable d = getDrawable(0);
        if (crossFade) {
            d.setAlpha(255 - alpha);
        }
        d.draw(canvas);
        if (crossFade) {
            d.setAlpha(255);
        }
        if (alpha > 0) {
            Drawable d2 = getDrawable(1);
            d2.setAlpha(alpha);
            d2.draw(canvas);
            d2.setAlpha(255);
        }
        if (!done) {
            invalidateSelf();
        }
    }

    public void setCrossFadeEnabled(boolean enabled) {
        this.mCrossFade = enabled;
    }

    public boolean isCrossFadeEnabled() {
        return this.mCrossFade;
    }

    public void setFirstLayerHidden(boolean enabled) {
        this.mHideFirstLayer = enabled;
    }

    public boolean isFirstLayerHidden() {
        return this.mHideFirstLayer;
    }

    public boolean isRunning() {
        return this.mTransitionState == 1;
    }

    public void setAnimationDoneCallback(AnimationDoneCallback callback) {
        this.mAnimationDoneCallback = callback;
    }

    public int getTransitionAlpha() {
        return this.mAlpha;
    }

    public void setBaseDrawable(Drawable baseDrawable) {
        this.mBaseDrawable = baseDrawable;
    }

    public void cancelTransition() {
        if (this.mTransitionState != 2) {
            this.mTransitionState = 2;
            if (this.mAnimationDoneCallback != null) {
                this.mAnimationDoneCallback.onAnimationCancel(getDrawable(0), getDrawable(1));
            }
        }
    }

    public void setPressed(boolean pressed) {
        setDrawablePressed(this.mBaseDrawable, pressed);
        setDrawablePressed(getDrawable(0), pressed);
        setDrawablePressed(getDrawable(1), pressed);
    }

    private void setDrawablePressed(Drawable d, boolean pressed) {
        if (d != null && (d instanceof FastBitmapDrawable)) {
            ((FastBitmapDrawable) d).setPressed(pressed);
        }
    }

    public boolean isPressed() {
        Drawable d = getDrawable(1);
        if (d != null && (d instanceof FastBitmapDrawable)) {
            ((FastBitmapDrawable) d).isPressed();
            return false;
        }
        return false;
    }

    public int getBrightness() {
        Drawable d = getDrawable(1);
        if (d != null && (d instanceof FastBitmapDrawable)) {
            ((FastBitmapDrawable) d).getBrightness();
            return 0;
        }
        return 0;
    }

    public void setBrightness(int brightness) {
        setDrawableBrightness(this.mBaseDrawable, brightness);
        setDrawableBrightness(getDrawable(0), brightness);
        setDrawableBrightness(getDrawable(1), brightness);
    }

    private void setDrawableBrightness(Drawable d, int brightness) {
        if (d != null && (d instanceof FastBitmapDrawable)) {
            ((FastBitmapDrawable) d).setBrightness(brightness);
        }
    }
}
