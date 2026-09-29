package net.oneplus.h2launcher.quickpage.view;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class DimmerBackground extends View {
    public static final int TYPE_INPUT = 2;
    public static final int TYPE_LONG_PRESS = 1;
    public static final int TYPE_MENU = 0;
    private int mAnimDuration;
    private TransitionDrawable mBackground;
    private Callback mCallback;
    private RectF mInnerPath;
    private boolean mShouldReverseAnimation;
    private boolean mShowing;
    private int mType;

    /* loaded from: classes.dex */
    public interface Callback {
        void onTouch(int i);
    }

    public DimmerBackground(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mType = -1;
        init();
    }

    public DimmerBackground(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mType = -1;
        init();
    }

    public DimmerBackground(Context context) {
        super(context);
        this.mType = -1;
        init();
    }

    private void init() {
        setLayerType(2, null);
        this.mInnerPath = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        setOnTouchListener(new View.OnTouchListener() { // from class: net.oneplus.h2launcher.quickpage.view.DimmerBackground.1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case 0:
                        DimmerBackground.this.setClickable(false);
                        if ((DimmerBackground.this.mType != 1 || !DimmerBackground.this.mInnerPath.contains(event.getRawX(), event.getRawY())) && DimmerBackground.this.mCallback != null) {
                            DimmerBackground.this.mCallback.onTouch(DimmerBackground.this.mType);
                            return true;
                        }
                        return false;
                    case 1:
                        DimmerBackground.this.setClickable(true);
                        return false;
                    default:
                        return false;
                }
            }
        });
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mBackground = (TransitionDrawable) getBackground();
        this.mBackground.setCrossFadeEnabled(true);
        this.mAnimDuration = getContext().getApplicationContext().getResources().getInteger(R.integer.config_shortAnimTime);
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void setType(int type) {
        if (this.mType != type) {
            switch (type) {
                case 0:
                    setBackground(this.mBackground);
                    if (this.mShouldReverseAnimation) {
                        this.mBackground.reverseTransition(this.mAnimDuration);
                        this.mShouldReverseAnimation = false;
                    }
                    setElevation(0.0f);
                    break;
                case 1:
                    setBackgroundColor(0);
                    this.mShouldReverseAnimation = false;
                    setElevation(Float.MAX_VALUE);
                    break;
            }
            this.mType = type;
        }
    }

    public void setInnerPath(int left, int top, int right, int bottom) {
        this.mInnerPath.set(left, top, right, bottom);
        invalidate();
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    public void show() {
        this.mShowing = true;
        setVisibility(0);
        animate().alpha(1.0f).setListener(null);
    }

    public void showNoAnimation() {
        this.mShowing = true;
        setVisibility(0);
        setAlpha(1.0f);
    }

    public void hide() {
        this.mShowing = false;
        animate().alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.quickpage.view.DimmerBackground.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (!DimmerBackground.this.mShowing) {
                    DimmerBackground.this.setVisibility(8);
                }
            }
        });
    }
}
