package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import net.oneplus.h2launcher.inputmethod.T9.HanziToPinyin;

/* loaded from: classes.dex */
public class FirstFrameAnimatorHelper extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
    private static final boolean DEBUG = false;
    private static final int IDEAL_FRAME_DURATION = 16;
    private static final int MAX_DELAY = 1000;
    private static final String TAG = FirstFrameAnimatorHelper.class.getSimpleName();
    private static ViewTreeObserver.OnDrawListener sGlobalDrawListener;
    static long sGlobalFrameCounter;
    private static boolean sVisible;
    private boolean mAdjustedSecondFrameTime;
    private boolean mHandlingOnAnimationUpdate;
    private long mStartFrame;
    private long mStartTime = -1;
    private View mTarget;

    public FirstFrameAnimatorHelper(ValueAnimator animator, View target) {
        this.mTarget = target;
        animator.addUpdateListener(this);
    }

    public FirstFrameAnimatorHelper(ViewPropertyAnimator vpa, View target) {
        this.mTarget = target;
        vpa.setListener(this);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animation) {
        ValueAnimator va = (ValueAnimator) animation;
        va.addUpdateListener(this);
        onAnimationUpdate(va);
    }

    public static void setIsVisible(boolean visible) {
        sVisible = visible;
    }

    public static void initializeDrawListener(View view) {
        if (sGlobalDrawListener != null) {
            view.getViewTreeObserver().removeOnDrawListener(sGlobalDrawListener);
        }
        sGlobalDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: net.oneplus.h2launcher.FirstFrameAnimatorHelper.1
            private long mTime = System.currentTimeMillis();

            @Override // android.view.ViewTreeObserver.OnDrawListener
            public void onDraw() {
                FirstFrameAnimatorHelper.sGlobalFrameCounter++;
            }
        };
        view.getViewTreeObserver().addOnDrawListener(sGlobalDrawListener);
        sVisible = true;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(final ValueAnimator animation) {
        long currentTime = System.currentTimeMillis();
        if (this.mStartTime == -1) {
            this.mStartFrame = sGlobalFrameCounter;
            this.mStartTime = currentTime;
        }
        long currentPlayTime = animation.getCurrentPlayTime();
        boolean isFinalFrame = Float.compare(1.0f, animation.getAnimatedFraction()) == 0;
        if (!this.mHandlingOnAnimationUpdate && sVisible && currentPlayTime < animation.getDuration() && !isFinalFrame) {
            this.mHandlingOnAnimationUpdate = true;
            long frameNum = sGlobalFrameCounter - this.mStartFrame;
            if (frameNum == 0 && currentTime < this.mStartTime + 1000 && currentPlayTime > 0) {
                this.mTarget.getRootView().invalidate();
                animation.setCurrentPlayTime(0L);
            } else if (frameNum == 1 && currentTime < this.mStartTime + 1000 && !this.mAdjustedSecondFrameTime && currentTime > this.mStartTime + 16 && currentPlayTime > 16) {
                animation.setCurrentPlayTime(16L);
                this.mAdjustedSecondFrameTime = true;
            } else if (frameNum > 1) {
                this.mTarget.post(new Runnable() { // from class: net.oneplus.h2launcher.FirstFrameAnimatorHelper.2
                    @Override // java.lang.Runnable
                    public void run() {
                        animation.removeUpdateListener(FirstFrameAnimatorHelper.this);
                    }
                });
            }
            this.mHandlingOnAnimationUpdate = false;
        }
    }

    public void print(ValueAnimator animation) {
        float flatFraction = ((float) animation.getCurrentPlayTime()) / ((float) animation.getDuration());
        Log.d(TAG, sGlobalFrameCounter + "(" + (sGlobalFrameCounter - this.mStartFrame) + ") " + this.mTarget + " dirty? " + this.mTarget.isDirty() + HanziToPinyin.Token.SEPARATOR + flatFraction + HanziToPinyin.Token.SEPARATOR + this + HanziToPinyin.Token.SEPARATOR + animation);
    }
}
