package net.oneplus.h2launcher.quickpage.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.ColorInt;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class RecyclerFastScroller extends FrameLayout {
    private static final int DEFAULT_AUTO_HIDE_DELAY = 1500;
    boolean mAnimatingIn;
    AnimatorSet mAnimator;
    AppBarLayout mAppBarLayout;
    int mAppBarLayoutOffset;
    protected final View mBar;
    private int mBarColor;
    private int mBarInset;
    CoordinatorLayout mCoordinatorLayout;
    protected final View mHandle;
    private int mHandleNormalColor;
    private int mHandlePressedColor;
    final int mHiddenTranslationX;
    private final Runnable mHide;
    private int mHideDelay;
    private boolean mHideOverride;
    private boolean mHidingEnabled;
    private final int mMinScrollHandleHeight;
    protected View.OnTouchListener mOnTouchListener;
    RecyclerView mRecyclerView;
    private int mTouchTargetWidth;

    public RecyclerFastScroller(Context context) {
        this(context, null, 0);
    }

    public RecyclerFastScroller(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RecyclerFastScroller(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public RecyclerFastScroller(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.RecyclerFastScroller, defStyleAttr, defStyleRes);
        this.mBarColor = a.getColor(0, RecyclerFastScrollerUtils.resolveColor(context, R.attr.colorControlNormal));
        this.mHandleNormalColor = a.getColor(1, RecyclerFastScrollerUtils.resolveColor(context, R.attr.colorAccent));
        this.mHandlePressedColor = a.getColor(2, RecyclerFastScrollerUtils.resolveColor(context, R.attr.colorAccent));
        this.mTouchTargetWidth = a.getDimensionPixelSize(3, RecyclerFastScrollerUtils.convertDpToPx(context, 24.0f));
        this.mHideDelay = a.getInt(4, DEFAULT_AUTO_HIDE_DELAY);
        this.mHidingEnabled = a.getBoolean(5, true);
        a.recycle();
        int fortyEightDp = RecyclerFastScrollerUtils.convertDpToPx(context, 48.0f);
        setLayoutParams(new ViewGroup.LayoutParams(fortyEightDp, -1));
        this.mBar = new View(context);
        this.mHandle = new View(context);
        addView(this.mBar);
        addView(this.mHandle);
        setTouchTargetWidth(this.mTouchTargetWidth);
        this.mMinScrollHandleHeight = fortyEightDp;
        int eightDp = RecyclerFastScrollerUtils.convertDpToPx(getContext(), 8.0f);
        this.mHiddenTranslationX = (Utilities.isRtl(this.mBar.getResources()) ? -1 : 1) * eightDp;
        this.mHide = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                if (!RecyclerFastScroller.this.mHandle.isPressed()) {
                    if (RecyclerFastScroller.this.mAnimator != null && RecyclerFastScroller.this.mAnimator.isStarted()) {
                        RecyclerFastScroller.this.mAnimator.cancel();
                    }
                    RecyclerFastScroller.this.mAnimator = new AnimatorSet();
                    ObjectAnimator animator2 = ObjectAnimator.ofFloat(RecyclerFastScroller.this, (Property<RecyclerFastScroller, Float>) View.TRANSLATION_X, RecyclerFastScroller.this.mHiddenTranslationX);
                    animator2.setInterpolator(new FastOutLinearInInterpolator());
                    animator2.setDuration(150L);
                    RecyclerFastScroller.this.mHandle.setEnabled(false);
                    RecyclerFastScroller.this.mAnimator.play(animator2);
                    RecyclerFastScroller.this.mAnimator.start();
                }
            }
        };
        this.mHandle.setOnTouchListener(new View.OnTouchListener() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.2
            private float mInitialBarHeight;
            private int mLastAppBarLayoutOffset;
            private float mLastPressedYAdjustedToInitial;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (RecyclerFastScroller.this.mOnTouchListener != null) {
                    RecyclerFastScroller.this.mOnTouchListener.onTouch(v, event);
                }
                if (event.getActionMasked() == 0) {
                    RecyclerFastScroller.this.mHandle.setPressed(true);
                    RecyclerFastScroller.this.mRecyclerView.stopScroll();
                    int nestedScrollAxis = 0 | 2;
                    RecyclerFastScroller.this.mRecyclerView.startNestedScroll(nestedScrollAxis);
                    this.mInitialBarHeight = RecyclerFastScroller.this.mBar.getHeight();
                    this.mLastPressedYAdjustedToInitial = event.getY() + RecyclerFastScroller.this.mHandle.getY() + RecyclerFastScroller.this.mBar.getY();
                    this.mLastAppBarLayoutOffset = RecyclerFastScroller.this.mAppBarLayoutOffset;
                    return true;
                }
                if (event.getActionMasked() == 2) {
                    float newHandlePressedY = event.getY() + RecyclerFastScroller.this.mHandle.getY() + RecyclerFastScroller.this.mBar.getY();
                    int barHeight = RecyclerFastScroller.this.mBar.getHeight();
                    float newHandlePressedYAdjustedToInitial = newHandlePressedY + (this.mInitialBarHeight - barHeight);
                    float deltaPressedYFromLastAdjustedToInitial = newHandlePressedYAdjustedToInitial - this.mLastPressedYAdjustedToInitial;
                    int dY = (int) (((RecyclerFastScroller.this.mAppBarLayout == null ? 0 : RecyclerFastScroller.this.mAppBarLayout.getTotalScrollRange()) + RecyclerFastScroller.this.mRecyclerView.computeVerticalScrollRange()) * (deltaPressedYFromLastAdjustedToInitial / this.mInitialBarHeight));
                    if (RecyclerFastScroller.this.mCoordinatorLayout != null && RecyclerFastScroller.this.mAppBarLayout != null) {
                        CoordinatorLayout.LayoutParams params = (CoordinatorLayout.LayoutParams) RecyclerFastScroller.this.mAppBarLayout.getLayoutParams();
                        AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) params.getBehavior();
                        if (behavior != null) {
                            behavior.onNestedPreScroll(RecyclerFastScroller.this.mCoordinatorLayout, RecyclerFastScroller.this.mAppBarLayout, (View) RecyclerFastScroller.this, 0, dY, new int[2]);
                        }
                    }
                    RecyclerFastScroller.this.updateRvScroll((this.mLastAppBarLayoutOffset + dY) - RecyclerFastScroller.this.mAppBarLayoutOffset);
                    this.mLastPressedYAdjustedToInitial = newHandlePressedYAdjustedToInitial;
                    this.mLastAppBarLayoutOffset = RecyclerFastScroller.this.mAppBarLayoutOffset;
                    return true;
                }
                if (event.getActionMasked() == 1) {
                    this.mLastPressedYAdjustedToInitial = -1.0f;
                    RecyclerFastScroller.this.mRecyclerView.stopNestedScroll();
                    RecyclerFastScroller.this.mHandle.setPressed(false);
                    RecyclerFastScroller.this.postAutoHide();
                    return true;
                }
                return true;
            }
        });
        setTranslationX(this.mHiddenTranslationX);
    }

    @ColorInt
    public int getHandlePressedColor() {
        return this.mHandlePressedColor;
    }

    public void setHandlePressedColor(@ColorInt int colorPressed) {
        this.mHandlePressedColor = colorPressed;
        updateHandleColorsAndInset();
    }

    @ColorInt
    public int getHandleNormalColor() {
        return this.mHandleNormalColor;
    }

    public void setHandleNormalColor(@ColorInt int colorNormal) {
        this.mHandleNormalColor = colorNormal;
        updateHandleColorsAndInset();
    }

    @ColorInt
    public int getBarColor() {
        return this.mBarColor;
    }

    public void setBarColor(@ColorInt int scrollBarColor) {
        this.mBarColor = scrollBarColor;
        updateBarColorAndInset();
    }

    public int getHideDelay() {
        return this.mHideDelay;
    }

    public void setHideDelay(int hideDelay) {
        this.mHideDelay = hideDelay;
    }

    public int getTouchTargetWidth() {
        return this.mTouchTargetWidth;
    }

    public void setTouchTargetWidth(int touchTargetWidth) {
        this.mTouchTargetWidth = touchTargetWidth;
        int eightDp = RecyclerFastScrollerUtils.convertDpToPx(getContext(), 8.0f);
        this.mBarInset = this.mTouchTargetWidth - eightDp;
        int fortyEightDp = RecyclerFastScrollerUtils.convertDpToPx(getContext(), 48.0f);
        if (this.mTouchTargetWidth > fortyEightDp) {
            throw new RuntimeException("Touch target width cannot be larger than 48dp!");
        }
        this.mBar.setLayoutParams(new FrameLayout.LayoutParams(touchTargetWidth, -1, GravityCompat.END));
        this.mHandle.setLayoutParams(new FrameLayout.LayoutParams(touchTargetWidth, -1, GravityCompat.END));
        updateHandleColorsAndInset();
        updateBarColorAndInset();
    }

    public boolean isHidingEnabled() {
        return this.mHidingEnabled;
    }

    public void setHidingEnabled(boolean hidingEnabled) {
        this.mHidingEnabled = hidingEnabled;
        if (hidingEnabled) {
            postAutoHide();
        }
    }

    private void updateHandleColorsAndInset() {
        StateListDrawable drawable = new StateListDrawable();
        if (!Utilities.isRtl(this.mHandle.getResources())) {
            drawable.addState(View.PRESSED_ENABLED_STATE_SET, new InsetDrawable((Drawable) new ColorDrawable(this.mHandlePressedColor), this.mBarInset, 0, 0, 0));
            drawable.addState(View.EMPTY_STATE_SET, new InsetDrawable((Drawable) new ColorDrawable(this.mHandleNormalColor), this.mBarInset, 0, 0, 0));
        } else {
            drawable.addState(View.PRESSED_ENABLED_STATE_SET, new InsetDrawable((Drawable) new ColorDrawable(this.mHandlePressedColor), 0, 0, this.mBarInset, 0));
            drawable.addState(View.EMPTY_STATE_SET, new InsetDrawable((Drawable) new ColorDrawable(this.mHandleNormalColor), 0, 0, this.mBarInset, 0));
        }
        this.mHandle.setBackground(drawable);
    }

    private void updateBarColorAndInset() {
        Drawable drawable;
        if (!Utilities.isRtl(this.mBar.getResources())) {
            drawable = new InsetDrawable((Drawable) new ColorDrawable(this.mBarColor), this.mBarInset, 0, 0, 0);
        } else {
            drawable = new InsetDrawable((Drawable) new ColorDrawable(this.mBarColor), 0, 0, this.mBarInset, 0);
        }
        drawable.setAlpha(57);
        this.mBar.setBackground(drawable);
    }

    public void attachRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        initRecyclerViewOnScrollListener();
    }

    public void attachAppBarLayout(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.mCoordinatorLayout = coordinatorLayout;
        this.mAppBarLayout = appBarLayout;
        this.mAppBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.3
            @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener
            public void onOffsetChanged(AppBarLayout appBarLayout2, int verticalOffset) {
                RecyclerFastScroller.this.show(true);
                ViewGroup.MarginLayoutParams layoutParams = (ViewGroup.MarginLayoutParams) RecyclerFastScroller.this.getLayoutParams();
                layoutParams.topMargin = RecyclerFastScroller.this.mAppBarLayout.getHeight() + verticalOffset;
                RecyclerFastScroller.this.mAppBarLayoutOffset = -verticalOffset;
                RecyclerFastScroller.this.setLayoutParams(layoutParams);
            }
        });
    }

    public void setOnHandleTouchListener(View.OnTouchListener listener) {
        this.mOnTouchListener = listener;
    }

    private void initRecyclerViewOnScrollListener() {
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.4
            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                RecyclerFastScroller.this.show(true);
            }
        });
        this.mRecyclerView.getAdapter().registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.5
            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                RecyclerFastScroller.this.requestLayout();
            }
        });
    }

    public void show(final boolean animate) {
        requestLayout();
        post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.6
            @Override // java.lang.Runnable
            public void run() {
                if (!RecyclerFastScroller.this.mHideOverride) {
                    RecyclerFastScroller.this.mHandle.setEnabled(true);
                    if (animate) {
                        if (!RecyclerFastScroller.this.mAnimatingIn && RecyclerFastScroller.this.getTranslationX() != 0.0f) {
                            if (RecyclerFastScroller.this.mAnimator != null && RecyclerFastScroller.this.mAnimator.isStarted()) {
                                RecyclerFastScroller.this.mAnimator.cancel();
                            }
                            RecyclerFastScroller.this.mAnimator = new AnimatorSet();
                            ObjectAnimator animator = ObjectAnimator.ofFloat(RecyclerFastScroller.this, (Property<RecyclerFastScroller, Float>) View.TRANSLATION_X, 0.0f);
                            animator.setInterpolator(new LinearOutSlowInInterpolator());
                            animator.setDuration(100L);
                            animator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerFastScroller.6.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animation) {
                                    super.onAnimationEnd(animation);
                                    RecyclerFastScroller.this.mAnimatingIn = false;
                                }
                            });
                            RecyclerFastScroller.this.mAnimatingIn = true;
                            RecyclerFastScroller.this.mAnimator.play(animator);
                            RecyclerFastScroller.this.mAnimator.start();
                        }
                    } else {
                        RecyclerFastScroller.this.setTranslationX(0.0f);
                    }
                    RecyclerFastScroller.this.postAutoHide();
                }
            }
        });
    }

    void postAutoHide() {
        if (this.mRecyclerView != null && this.mHidingEnabled) {
            this.mRecyclerView.removeCallbacks(this.mHide);
            this.mRecyclerView.postDelayed(this.mHide, this.mHideDelay);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        int scrollOffset = this.mRecyclerView.computeVerticalScrollOffset() + this.mAppBarLayoutOffset;
        int verticalScrollRange = (this.mAppBarLayout == null ? 0 : this.mAppBarLayout.getTotalScrollRange()) + this.mRecyclerView.computeVerticalScrollRange() + this.mRecyclerView.getPaddingBottom();
        int barHeight = this.mBar.getHeight();
        float ratio = scrollOffset / (verticalScrollRange - barHeight);
        int calculatedHandleHeight = (int) ((barHeight / verticalScrollRange) * barHeight);
        if (calculatedHandleHeight < this.mMinScrollHandleHeight) {
            calculatedHandleHeight = this.mMinScrollHandleHeight;
        }
        if (calculatedHandleHeight >= barHeight) {
            setTranslationX(this.mHiddenTranslationX);
            this.mHideOverride = true;
        } else {
            this.mHideOverride = false;
            float y = ratio * (barHeight - calculatedHandleHeight);
            this.mHandle.layout(this.mHandle.getLeft(), (int) y, this.mHandle.getRight(), ((int) y) + calculatedHandleHeight);
        }
    }

    void updateRvScroll(int dY) {
        if (this.mRecyclerView != null && this.mHandle != null) {
            try {
                this.mRecyclerView.scrollBy(0, dY);
            } catch (Throwable t) {
                t.printStackTrace();
            }
        }
    }
}
