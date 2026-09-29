package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
import net.oneplus.h2launcher.util.UiThreadCircularReveal;

/* loaded from: classes.dex */
public class LauncherAnimUtils {
    static WeakHashMap<Animator, Object> sAnimators = new WeakHashMap<>();
    static Animator.AnimatorListener sEndAnimListener = new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.LauncherAnimUtils.1
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            LauncherAnimUtils.sAnimators.put(animation, null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            LauncherAnimUtils.sAnimators.remove(animation);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            LauncherAnimUtils.sAnimators.remove(animation);
        }
    };

    public static void cancelOnDestroyActivity(Animator a) {
        a.addListener(sEndAnimListener);
    }

    public static void startAnimationAfterNextDraw(final Animator animator, final View view) {
        view.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: net.oneplus.h2launcher.LauncherAnimUtils.2
            private boolean mStarted = false;

            @Override // android.view.ViewTreeObserver.OnDrawListener
            public void onDraw() {
                if (!this.mStarted) {
                    this.mStarted = true;
                    if (animator.getDuration() != 0) {
                        animator.start();
                        view.post(new Runnable() { // from class: net.oneplus.h2launcher.LauncherAnimUtils.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                view.getViewTreeObserver().removeOnDrawListener(this);
                            }
                        });
                    }
                }
            }
        });
    }

    public static void onDestroyActivity() {
        HashSet<Animator> animators = new HashSet<>(sAnimators.keySet());
        Iterator<Animator> it = animators.iterator();
        while (it.hasNext()) {
            Animator a = it.next();
            if (a.isRunning()) {
                a.cancel();
            }
            sAnimators.remove(a);
        }
    }

    public static AnimatorSet createAnimatorSet() {
        AnimatorSet anim = new AnimatorSet();
        cancelOnDestroyActivity(anim);
        return anim;
    }

    public static ValueAnimator ofFloat(View target, float... values) {
        ValueAnimator anim = new ValueAnimator();
        anim.setFloatValues(values);
        cancelOnDestroyActivity(anim);
        return anim;
    }

    public static ObjectAnimator ofFloat(View target, String propertyName, float... values) {
        ObjectAnimator anim = new ObjectAnimator();
        anim.setTarget(target);
        anim.setPropertyName(propertyName);
        anim.setFloatValues(values);
        cancelOnDestroyActivity(anim);
        new FirstFrameAnimatorHelper(anim, target);
        return anim;
    }

    public static ObjectAnimator ofPropertyValuesHolder(View target, PropertyValuesHolder... values) {
        ObjectAnimator anim = new ObjectAnimator();
        anim.setTarget(target);
        anim.setValues(values);
        cancelOnDestroyActivity(anim);
        new FirstFrameAnimatorHelper(anim, target);
        return anim;
    }

    public static ObjectAnimator ofPropertyValuesHolder(Object target, View view, PropertyValuesHolder... values) {
        ObjectAnimator anim = new ObjectAnimator();
        anim.setTarget(target);
        anim.setValues(values);
        cancelOnDestroyActivity(anim);
        new FirstFrameAnimatorHelper(anim, view);
        return anim;
    }

    @TargetApi(21)
    public static ValueAnimator createCircularReveal(View view, int centerX, int centerY, float startRadius, float endRadius) {
        ValueAnimator anim = UiThreadCircularReveal.createCircularReveal(view, centerX, centerY, startRadius, endRadius);
        new FirstFrameAnimatorHelper(anim, view);
        return anim;
    }
}
