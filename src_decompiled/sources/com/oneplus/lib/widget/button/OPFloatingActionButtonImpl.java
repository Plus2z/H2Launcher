package com.oneplus.lib.widget.button;

import android.R;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
class OPFloatingActionButtonImpl {
    static final int SHOW_HIDE_ANIM_DURATION = 200;
    private Drawable mBorderDrawable;
    private Interpolator mInterpolator;
    private boolean mIsHiding;
    private RippleDrawable mRippleDrawable;
    final OPShadowViewDelegate mShadowViewDelegate;
    private Drawable mShapeDrawable;
    final OPFloatingActionButton mView;
    static final int[] PRESSED_ENABLED_STATE_SET = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] FOCUSED_ENABLED_STATE_SET = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] EMPTY_STATE_SET = new int[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public OPFloatingActionButtonImpl(OPFloatingActionButton view, OPShadowViewDelegate shadowViewDelegate) {
        this.mView = view;
        this.mShadowViewDelegate = shadowViewDelegate;
        if (!view.isInEditMode()) {
            this.mInterpolator = AnimationUtils.loadInterpolator(this.mView.getContext(), R.interpolator.fast_out_slow_in);
        }
    }

    Drawable createBorderDrawable(int op_borderWidth, ColorStateList op_backgroundTint) {
        Resources resources = this.mView.getResources();
        OPCircularBorderDrawable borderDrawable = new OPCircularBorderDrawable();
        borderDrawable.setGradientColors(resources.getColor(com.oneplus.commonctrl.R.color.design_fab_stroke_top_outer_color), resources.getColor(com.oneplus.commonctrl.R.color.design_fab_stroke_top_inner_color), resources.getColor(com.oneplus.commonctrl.R.color.design_fab_stroke_end_inner_color), resources.getColor(com.oneplus.commonctrl.R.color.design_fab_stroke_end_outer_color));
        borderDrawable.setBorderWidth(op_borderWidth);
        borderDrawable.setTintColor(op_backgroundTint.getDefaultColor());
        return borderDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackground(Drawable originalBackground, ColorStateList op_backgroundTint, PorterDuff.Mode op_backgroundTintMode, int op_rippleColor, int op_borderWidth) {
        Drawable rippleContent;
        this.mShapeDrawable = originalBackground.mutate();
        this.mShapeDrawable.setTintList(op_backgroundTint);
        if (op_backgroundTintMode != null) {
            this.mShapeDrawable.setTintMode(op_backgroundTintMode);
        }
        if (op_borderWidth > 0) {
            this.mBorderDrawable = createBorderDrawable(op_borderWidth, op_backgroundTint);
            rippleContent = new LayerDrawable(new Drawable[]{this.mBorderDrawable, this.mShapeDrawable});
        } else {
            this.mBorderDrawable = null;
            rippleContent = this.mShapeDrawable;
        }
        this.mRippleDrawable = new RippleDrawable(ColorStateList.valueOf(op_rippleColor), rippleContent, null);
        this.mShadowViewDelegate.setBackground(this.mRippleDrawable);
        this.mShadowViewDelegate.setShadowPadding(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundTintList(ColorStateList tint) {
        this.mShapeDrawable.setTintList(tint);
        if (this.mBorderDrawable != null) {
            this.mBorderDrawable.setTintList(tint);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundTintMode(PorterDuff.Mode tintMode) {
        this.mShapeDrawable.setTintMode(tintMode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRippleColor(int op_rippleColor) {
        this.mRippleDrawable.setColor(ColorStateList.valueOf(op_rippleColor));
    }

    public void setElevation(float op_elevation) {
        this.mView.setElevation(op_elevation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPressedTranslationZ(float translationZ) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(PRESSED_ENABLED_STATE_SET, setupAnimator(ObjectAnimator.ofFloat(this.mView, "translationZ", translationZ)));
        stateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, setupAnimator(ObjectAnimator.ofFloat(this.mView, "translationZ", translationZ)));
        stateListAnimator.addState(EMPTY_STATE_SET, setupAnimator(ObjectAnimator.ofFloat(this.mView, "translationZ", 0.0f)));
        this.mView.setStateListAnimator(stateListAnimator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDrawableStateChanged(int[] state) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void jumpDrawableToCurrentState() {
    }

    private Animator setupAnimator(Animator animator) {
        animator.setInterpolator(this.mInterpolator);
        return animator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide(final boolean fromUser) {
        if (!this.mIsHiding && this.mView.getVisibility() == 0) {
            if (!this.mView.isLaidOut() || this.mView.isInEditMode()) {
                this.mView.internalSetVisibility(8, fromUser);
            } else {
                this.mView.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setDuration(200L).setInterpolator(new FastOutSlowInInterpolator()).setListener(new Animator.AnimatorListener() { // from class: com.oneplus.lib.widget.button.OPFloatingActionButtonImpl.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                        OPFloatingActionButtonImpl.this.mIsHiding = true;
                        OPFloatingActionButtonImpl.this.mView.internalSetVisibility(0, fromUser);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        OPFloatingActionButtonImpl.this.mIsHiding = false;
                        OPFloatingActionButtonImpl.this.mView.internalSetVisibility(8, fromUser);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                        OPFloatingActionButtonImpl.this.mIsHiding = false;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void show(final boolean fromUser) {
        if (this.mView.getVisibility() != 0) {
            if (this.mView.isLaidOut() && !this.mView.isInEditMode()) {
                this.mView.setAlpha(0.0f);
                this.mView.setScaleY(0.0f);
                this.mView.setScaleX(0.0f);
                this.mView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200L).setInterpolator(new FastOutSlowInInterpolator()).setListener(new Animator.AnimatorListener() { // from class: com.oneplus.lib.widget.button.OPFloatingActionButtonImpl.2
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                        OPFloatingActionButtonImpl.this.mView.internalSetVisibility(0, fromUser);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                    }
                });
                return;
            }
            this.mView.internalSetVisibility(0, fromUser);
            this.mView.setAlpha(1.0f);
            this.mView.setScaleY(1.0f);
            this.mView.setScaleX(1.0f);
        }
    }
}
