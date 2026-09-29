package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;
import net.oneplus.h2launcher.dynamicicon.DynamicIconTextConfig;

/* loaded from: classes.dex */
public class ChangeBounds extends Transition {
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static RectEvaluator sRectEvaluator = new RectEvaluator();
    int[] mTempLocation = new int[2];
    boolean mResizeClip = false;
    boolean mReparent = false;

    @Override // android.support.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setResizeClip(boolean resizeClip) {
        this.mResizeClip = resizeClip;
    }

    private void captureValues(TransitionValues values) {
        View view = values.view;
        values.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        values.values.put(PROPNAME_PARENT, values.view.getParent());
        values.view.getLocationInWindow(this.mTempLocation);
        values.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.mTempLocation[0]));
        values.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.mTempLocation[1]));
    }

    @Override // android.support.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.support.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.support.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull final ViewGroup sceneRoot, @Nullable TransitionValues startValues, @Nullable TransitionValues endValues) {
        int pvhIndex;
        int pvhIndex2;
        if (startValues == null || endValues == null) {
            return null;
        }
        Map<String, Object> startParentVals = startValues.values;
        Map<String, Object> endParentVals = endValues.values;
        ViewGroup startParent = (ViewGroup) startParentVals.get(PROPNAME_PARENT);
        ViewGroup endParent = (ViewGroup) endParentVals.get(PROPNAME_PARENT);
        if (startParent == null || endParent == null) {
            return null;
        }
        final View view = endValues.view;
        boolean parentsEqual = startParent == endParent || startParent.getId() == endParent.getId();
        if (!this.mReparent || parentsEqual) {
            Rect startBounds = (Rect) startValues.values.get(PROPNAME_BOUNDS);
            Rect endBounds = (Rect) endValues.values.get(PROPNAME_BOUNDS);
            int startLeft = startBounds.left;
            int endLeft = endBounds.left;
            int startTop = startBounds.top;
            int endTop = endBounds.top;
            int startRight = startBounds.right;
            int endRight = endBounds.right;
            int startBottom = startBounds.bottom;
            int endBottom = endBounds.bottom;
            int startWidth = startRight - startLeft;
            int startHeight = startBottom - startTop;
            int endWidth = endRight - endLeft;
            int endHeight = endBottom - endTop;
            int numChanges = 0;
            if (startWidth != 0 && startHeight != 0 && endWidth != 0 && endHeight != 0) {
                if (startLeft != endLeft) {
                    numChanges = 0 + 1;
                }
                if (startTop != endTop) {
                    numChanges++;
                }
                if (startRight != endRight) {
                    numChanges++;
                }
                if (startBottom != endBottom) {
                    numChanges++;
                }
            }
            if (numChanges > 0) {
                if (!this.mResizeClip) {
                    PropertyValuesHolder[] pvh = new PropertyValuesHolder[numChanges];
                    if (startLeft != endLeft) {
                        view.setLeft(startLeft);
                    }
                    if (startTop != endTop) {
                        view.setTop(startTop);
                    }
                    if (startRight != endRight) {
                        view.setRight(startRight);
                    }
                    if (startBottom != endBottom) {
                        view.setBottom(startBottom);
                    }
                    if (startLeft == endLeft) {
                        pvhIndex2 = 0;
                    } else {
                        pvhIndex2 = 0 + 1;
                        pvh[0] = PropertyValuesHolder.ofInt(DynamicIconTextConfig.KEY_ALIGN_LEFT, startLeft, endLeft);
                    }
                    if (startTop != endTop) {
                        pvh[pvhIndex2] = PropertyValuesHolder.ofInt(DynamicIconTextConfig.KEY_ALIGN_TOP, startTop, endTop);
                        pvhIndex2++;
                    }
                    if (startRight != endRight) {
                        pvh[pvhIndex2] = PropertyValuesHolder.ofInt(DynamicIconTextConfig.KEY_ALIGN_RIGHT, startRight, endRight);
                        pvhIndex2++;
                    }
                    if (startBottom != endBottom) {
                        int i = pvhIndex2 + 1;
                        pvh[pvhIndex2] = PropertyValuesHolder.ofInt(DynamicIconTextConfig.KEY_ALIGN_BOTTOM, startBottom, endBottom);
                    }
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, pvh);
                    if (view.getParent() instanceof ViewGroup) {
                        final ViewGroup parent = (ViewGroup) view.getParent();
                        ViewGroupUtils.suppressLayout(parent, true);
                        Transition.TransitionListener transitionListener = new Transition.TransitionListenerAdapter() { // from class: android.support.transition.ChangeBounds.1
                            boolean mCanceled = false;

                            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                            public void onTransitionCancel(@NonNull Transition transition) {
                                ViewGroupUtils.suppressLayout(parent, false);
                                this.mCanceled = true;
                            }

                            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                            public void onTransitionEnd(@NonNull Transition transition) {
                                if (!this.mCanceled) {
                                    ViewGroupUtils.suppressLayout(parent, false);
                                }
                            }

                            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                            public void onTransitionPause(@NonNull Transition transition) {
                                ViewGroupUtils.suppressLayout(parent, false);
                            }

                            @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                            public void onTransitionResume(@NonNull Transition transition) {
                                ViewGroupUtils.suppressLayout(parent, true);
                            }
                        };
                        addListener(transitionListener);
                        return ofPropertyValuesHolder;
                    }
                    return ofPropertyValuesHolder;
                }
                if (startWidth != endWidth) {
                    view.setRight(Math.max(startWidth, endWidth) + endLeft);
                }
                if (startHeight != endHeight) {
                    view.setBottom(Math.max(startHeight, endHeight) + endTop);
                }
                if (startLeft != endLeft) {
                    view.setTranslationX(startLeft - endLeft);
                }
                if (startTop != endTop) {
                    view.setTranslationY(startTop - endTop);
                }
                float transXDelta = endLeft - startLeft;
                float transYDelta = endTop - startTop;
                int widthDelta = endWidth - startWidth;
                int heightDelta = endHeight - startHeight;
                int numChanges2 = 0;
                if (transXDelta != 0.0f) {
                    numChanges2 = 0 + 1;
                }
                if (transYDelta != 0.0f) {
                    numChanges2++;
                }
                if (widthDelta != 0 || heightDelta != 0) {
                    numChanges2++;
                }
                PropertyValuesHolder[] pvh2 = new PropertyValuesHolder[numChanges2];
                if (transXDelta == 0.0f) {
                    pvhIndex = 0;
                } else {
                    pvhIndex = 0 + 1;
                    pvh2[0] = PropertyValuesHolder.ofFloat("translationX", view.getTranslationX(), 0.0f);
                }
                if (transYDelta != 0.0f) {
                    int i2 = pvhIndex + 1;
                    pvh2[pvhIndex] = PropertyValuesHolder.ofFloat("translationY", view.getTranslationY(), 0.0f);
                }
                if (widthDelta != 0 || heightDelta != 0) {
                    new Rect(0, 0, startWidth, startHeight);
                    new Rect(0, 0, endWidth, endHeight);
                }
                ObjectAnimator anim = ObjectAnimator.ofPropertyValuesHolder(view, pvh2);
                if (view.getParent() instanceof ViewGroup) {
                    final ViewGroup parent2 = (ViewGroup) view.getParent();
                    ViewGroupUtils.suppressLayout(parent2, true);
                    Transition.TransitionListener transitionListener2 = new Transition.TransitionListenerAdapter() { // from class: android.support.transition.ChangeBounds.2
                        boolean mCanceled = false;

                        @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                        public void onTransitionCancel(@NonNull Transition transition) {
                            ViewGroupUtils.suppressLayout(parent2, false);
                            this.mCanceled = true;
                        }

                        @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                        public void onTransitionEnd(@NonNull Transition transition) {
                            if (!this.mCanceled) {
                                ViewGroupUtils.suppressLayout(parent2, false);
                            }
                        }

                        @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                        public void onTransitionPause(@NonNull Transition transition) {
                            ViewGroupUtils.suppressLayout(parent2, false);
                        }

                        @Override // android.support.transition.Transition.TransitionListenerAdapter, android.support.transition.Transition.TransitionListener
                        public void onTransitionResume(@NonNull Transition transition) {
                            ViewGroupUtils.suppressLayout(parent2, true);
                        }
                    };
                    addListener(transitionListener2);
                }
                anim.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.ChangeBounds.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                    }
                });
                return anim;
            }
        } else {
            int startX = ((Integer) startValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int startY = ((Integer) startValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            int endX = ((Integer) endValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int endY = ((Integer) endValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            if (startX != endX || startY != endY) {
                sceneRoot.getLocationInWindow(this.mTempLocation);
                Bitmap bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                view.draw(canvas);
                final BitmapDrawable drawable = new BitmapDrawable(bitmap);
                view.setVisibility(4);
                ViewUtils.getOverlay(sceneRoot).add(drawable);
                Rect startBounds1 = new Rect(startX - this.mTempLocation[0], startY - this.mTempLocation[1], (startX - this.mTempLocation[0]) + view.getWidth(), (startY - this.mTempLocation[1]) + view.getHeight());
                Rect endBounds1 = new Rect(endX - this.mTempLocation[0], endY - this.mTempLocation[1], (endX - this.mTempLocation[0]) + view.getWidth(), (endY - this.mTempLocation[1]) + view.getHeight());
                ObjectAnimator anim2 = ObjectAnimator.ofObject(drawable, "bounds", sRectEvaluator, startBounds1, endBounds1);
                anim2.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.ChangeBounds.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        ViewUtils.getOverlay(sceneRoot).remove(drawable);
                        view.setVisibility(0);
                    }
                });
                return anim2;
            }
        }
        return null;
    }
}
