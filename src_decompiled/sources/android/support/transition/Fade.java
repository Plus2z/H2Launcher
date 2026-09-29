package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.annotation.NonNull;
import android.support.transition.Transition;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class Fade extends Visibility {
    public static final int IN = 1;
    private static final String LOG_TAG = "Fade";
    public static final int OUT = 2;
    private static final String PROPNAME_SCREEN_X = "android:fade:screenX";
    private static final String PROPNAME_SCREEN_Y = "android:fade:screenY";
    private int mFadingMode;

    public Fade(int fadingMode) {
        this.mFadingMode = fadingMode;
    }

    public Fade() {
        this(3);
    }

    private Animator createAnimation(View view, float startAlpha, float endAlpha, AnimatorListenerAdapter listener) {
        ObjectAnimator anim = null;
        if (startAlpha == endAlpha) {
            if (listener != null) {
                listener.onAnimationEnd(null);
            }
        } else {
            anim = ObjectAnimator.ofFloat(view, "alpha", startAlpha, endAlpha);
            if (listener != null) {
                anim.addListener(listener);
            }
        }
        return anim;
    }

    private void captureValues(TransitionValues transitionValues) {
        int[] loc = new int[2];
        transitionValues.view.getLocationOnScreen(loc);
        transitionValues.values.put(PROPNAME_SCREEN_X, Integer.valueOf(loc[0]));
        transitionValues.values.put(PROPNAME_SCREEN_Y, Integer.valueOf(loc[1]));
    }

    @Override // android.support.transition.Visibility, android.support.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // android.support.transition.Visibility
    public Animator onAppear(ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, TransitionValues endValues, int endVisibility) {
        if ((this.mFadingMode & 1) != 1 || endValues == null) {
            return null;
        }
        final View endView = endValues.view;
        endView.setAlpha(0.0f);
        Transition.TransitionListener transitionListener = new Transition.TransitionListenerAdapter() { // from class: android.support.transition.Fade.1
            boolean mCanceled = false;
            float mPausedAlpha;

            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
            public void onTransitionCancel(@NonNull Transition transition) {
                endView.setAlpha(1.0f);
                this.mCanceled = true;
            }

            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                if (!this.mCanceled) {
                    endView.setAlpha(1.0f);
                }
            }

            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
            public void onTransitionPause(@NonNull Transition transition) {
                this.mPausedAlpha = endView.getAlpha();
                endView.setAlpha(1.0f);
            }

            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
            public void onTransitionResume(@NonNull Transition transition) {
                endView.setAlpha(this.mPausedAlpha);
            }
        };
        addListener(transitionListener);
        return createAnimation(endView, 0.0f, 1.0f, null);
    }

    @Override // android.support.transition.Visibility
    public Animator onDisappear(final ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, TransitionValues endValues, final int endVisibility) {
        if ((this.mFadingMode & 2) != 2) {
            return null;
        }
        View view = null;
        View startView = startValues != null ? startValues.view : null;
        View endView = endValues != null ? endValues.view : null;
        View overlayView = null;
        View viewToKeep = null;
        if (endView == null || endView.getParent() == null) {
            if (endView != null) {
                overlayView = endView;
                view = endView;
            } else if (startView != null) {
                if (startView.getParent() == null) {
                    overlayView = startView;
                    view = startView;
                } else if ((startView.getParent() instanceof View) && startView.getParent().getParent() == null) {
                    View startParent = (View) startView.getParent();
                    int id = startParent.getId();
                    if (id != -1 && sceneRoot.findViewById(id) != null && this.mCanRemoveViews) {
                        overlayView = startView;
                        view = startView;
                    }
                }
            }
        } else if (endVisibility == 4) {
            view = endView;
            viewToKeep = view;
        } else if (startView == endView) {
            view = endView;
            viewToKeep = view;
        } else {
            view = startView;
            overlayView = view;
        }
        if (overlayView != null) {
            int screenX = ((Integer) startValues.values.get(PROPNAME_SCREEN_X)).intValue();
            int screenY = ((Integer) startValues.values.get(PROPNAME_SCREEN_Y)).intValue();
            int[] loc = new int[2];
            sceneRoot.getLocationOnScreen(loc);
            ViewCompat.offsetLeftAndRight(overlayView, (screenX - loc[0]) - overlayView.getLeft());
            ViewCompat.offsetTopAndBottom(overlayView, (screenY - loc[1]) - overlayView.getTop());
            ViewGroupUtils.getOverlay(sceneRoot).add(overlayView);
            final View finalView = view;
            final View finalOverlayView = overlayView;
            final View finalViewToKeep = viewToKeep;
            AnimatorListenerAdapter endListener = new AnimatorListenerAdapter() { // from class: android.support.transition.Fade.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    finalView.setAlpha(1.0f);
                    if (finalViewToKeep != null) {
                        finalViewToKeep.setVisibility(endVisibility);
                    }
                    if (finalOverlayView != null) {
                        ViewGroupUtils.getOverlay(sceneRoot).remove(finalOverlayView);
                    }
                }
            };
            return createAnimation(view, 1.0f, 0.0f, endListener);
        }
        if (viewToKeep != null) {
            viewToKeep.setVisibility(0);
            final View finalView2 = view;
            final View finalOverlayView2 = overlayView;
            final View finalViewToKeep2 = viewToKeep;
            AnimatorListenerAdapter endListener2 = new AnimatorListenerAdapter() { // from class: android.support.transition.Fade.3
                boolean mCanceled = false;
                float mPausedAlpha = -1.0f;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                    this.mCanceled = true;
                    if (this.mPausedAlpha >= 0.0f) {
                        finalView2.setAlpha(this.mPausedAlpha);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (!this.mCanceled) {
                        finalView2.setAlpha(1.0f);
                    }
                    if (finalViewToKeep2 != null && !this.mCanceled) {
                        finalViewToKeep2.setVisibility(endVisibility);
                    }
                    if (finalOverlayView2 != null) {
                        ViewGroupUtils.getOverlay(sceneRoot).remove(finalOverlayView2);
                    }
                }
            };
            return createAnimation(view, 1.0f, 0.0f, endListener2);
        }
        return null;
    }
}
