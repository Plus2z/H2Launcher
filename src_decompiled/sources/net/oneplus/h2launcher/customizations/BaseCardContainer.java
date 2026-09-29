package net.oneplus.h2launcher.customizations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.AlphaUpdateListener;
import net.oneplus.h2launcher.BaseContainerView;
import net.oneplus.h2launcher.Insettable;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public abstract class BaseCardContainer extends BaseContainerView implements Insettable {
    protected static final float CUSTOMIZATION_CARD_SLIDE_SHRINK_FACTOR = 0.25f;
    private static final String TAG = CustomizationsContainerView.class.getSimpleName();
    boolean mAccessibilityEnabled;
    View mActionBar;
    private LauncherViewPropertyAnimator mActionBarAnimator;
    private ValueAnimator mCardAnimator;
    View mContainerView;
    View mContent;
    Launcher mLauncher;
    private int mNavigationBarDimColor;
    protected int mNavigationBarHeight;
    private Rect mNonClickableRegion;
    BaseViewPager mPager;
    private LauncherViewPropertyAnimator mPagerAnimator;
    CustomizationPagerIndicator mPagerIndicator;
    private LauncherViewPropertyAnimator mPagerIndicatorAnimator;
    View mRevealView;
    private BaseCustomizationAsyncTask mSaveCustomizationTasks;
    FrameLayout mSearchBarPreviewContainer;
    View mSearchBarPreviewDefault;
    View mSearchBarPreviewTransparent;
    protected State mState;

    /* loaded from: classes.dex */
    public enum State {
        VISIBLE,
        INVISIBLE
    }

    abstract int getActionBarId();

    abstract int getActionBarTitleId();

    abstract int getContainerViewId();

    abstract int getPagerId();

    abstract int getPagerIndicatorId();

    abstract int getRevealViewId();

    abstract BaseCustomizationAsyncTask getSaveCustomizations();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onCardSlided(float f);

    public BaseCardContainer(Context context) {
        this(context, null);
    }

    public BaseCardContainer(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BaseCardContainer(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mState = State.INVISIBLE;
        this.mNavigationBarHeight = 0;
        this.mAccessibilityEnabled = false;
        this.mLauncher = (Launcher) context;
        this.mNavigationBarDimColor = getResources().getColor(R.color.wallpaper_picker_translucent_gray, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.BaseContainerView
    public void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        this.mNavigationBarHeight = padding.bottom - this.mContainerBoundsInset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        TextView title;
        super.onFinishInflate();
        this.mContent = findViewById(R.id.content);
        this.mContainerView = findViewById(getContainerViewId());
        this.mRevealView = findViewById(getRevealViewId());
        int actionBarId = getActionBarId();
        this.mActionBar = findViewById(actionBarId);
        if (this.mActionBar != null && (title = (TextView) this.mActionBar.findViewById(R.id.title)) != null) {
            title.setText(getActionBarTitleId());
        }
        this.mActionBarAnimator = new LauncherViewPropertyAnimator(this.mActionBar);
        this.mActionBarAnimator.setInterpolator(new DecelerateInterpolator(2.0f));
        this.mActionBarAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.BaseCardContainer.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                if (BaseCardContainer.this.mActionBar != null) {
                    BaseCardContainer.this.mActionBar.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (BaseCardContainer.this.mActionBar != null) {
                    AlphaUpdateListener.updateVisibility(BaseCardContainer.this.mActionBar, BaseCardContainer.this.mAccessibilityEnabled);
                }
            }
        });
        this.mPager = (BaseViewPager) findViewById(getPagerId());
        this.mPagerAnimator = new LauncherViewPropertyAnimator(this.mPager);
        this.mPagerAnimator.setInterpolator(new PathInterpolator(0.215f, 0.61f, 0.355f, 1.0f));
        int screenHeight = Utilities.getScreenDimensions(getContext(), true).y;
        RelativeLayout.LayoutParams lp = (RelativeLayout.LayoutParams) this.mPager.getLayoutParams();
        lp.height = (int) (screenHeight * 0.4859375f);
        this.mPagerIndicator = (CustomizationPagerIndicator) findViewById(getPagerIndicatorId());
        if (this.mPagerIndicator != null) {
            this.mPagerIndicator.setViewPager(this.mPager);
            this.mPagerIndicatorAnimator = new LauncherViewPropertyAnimator(this.mPagerIndicator);
            this.mPagerIndicatorAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.BaseCardContainer.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (BaseCardContainer.this.mPagerIndicator != null) {
                        BaseCardContainer.this.mPagerIndicator.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (BaseCardContainer.this.mPagerIndicator != null) {
                        AlphaUpdateListener.updateVisibility(BaseCardContainer.this.mPagerIndicator, BaseCardContainer.this.mAccessibilityEnabled);
                    }
                }
            });
        }
    }

    public View getContentView() {
        return this.mContainerView;
    }

    public View getRevealView() {
        return this.mRevealView;
    }

    public BaseViewPager getPager() {
        return this.mPager;
    }

    public void resetPageToZero() {
        if (this.mPager != null) {
            this.mPager.setCurrentItem(0, false);
        }
    }

    public void reloadCustomizations() {
        if (this.mPager != null) {
            this.mPager.reloadCustomizations();
        }
    }

    public boolean isShowing() {
        return this.mState.equals(State.VISIBLE);
    }

    public boolean animateToState(State newState, int duration) {
        if (this.mState == newState) {
            Log.d(TAG, "Skip animation since new state (" + newState + ") is the same as current state (" + this.mState + ")");
            return false;
        }
        this.mState = newState;
        if (this.mState == State.INVISIBLE) {
            onLeavingCardContainer();
        } else if (this.mState == State.VISIBLE) {
            onShowingCardContainer();
        }
        AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.mAccessibilityEnabled = am.isEnabled();
        this.mActionBarAnimator.cancel();
        if (this.mActionBar != null) {
            float startAlpha = this.mState == State.VISIBLE ? 0.0f : 1.0f;
            float endAlpha = this.mState == State.VISIBLE ? 1.0f : 0.0f;
            if (Float.compare(startAlpha, endAlpha) != 0) {
                if (duration > 0) {
                    this.mActionBar.setAlpha(startAlpha);
                    this.mActionBarAnimator.alpha(endAlpha).withLayer().setDuration(duration).start();
                } else {
                    this.mActionBar.setAlpha(endAlpha);
                    AlphaUpdateListener.updateVisibility(this.mActionBar, this.mAccessibilityEnabled);
                }
            }
        }
        this.mPagerAnimator.cancel();
        if (this.mPager != null) {
            int pagerHeight = this.mPager.getHeight();
            int startTranslationY = this.mState == State.VISIBLE ? pagerHeight : 0;
            int endTranslationY = this.mState == State.VISIBLE ? 0 : pagerHeight;
            if (Float.compare(startTranslationY, endTranslationY) != 0) {
                if (duration > 0) {
                    this.mPager.setTranslationY(startTranslationY);
                    this.mPagerAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.BaseCardContainer.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animation) {
                            if (BaseCardContainer.this.mState == State.VISIBLE && BaseCardContainer.this.mPager.getChildCount() > 1) {
                                BaseCardContainer.this.mLauncher.showCustomizationsClingIfNecessary();
                            }
                        }
                    });
                    this.mPagerAnimator.translationY(endTranslationY).withLayer().setDuration(duration).start();
                } else {
                    this.mPager.setTranslationY(endTranslationY);
                }
            }
        }
        if (this.mPagerIndicator != null && this.mPager != null && this.mPager.getChildCount() > 1) {
            this.mPagerIndicatorAnimator.cancel();
            float startAlpha2 = this.mState == State.VISIBLE ? 0.0f : 1.0f;
            float endAlpha2 = this.mState == State.VISIBLE ? 1.0f : 0.0f;
            if (Float.compare(startAlpha2, endAlpha2) != 0) {
                if (duration > 0) {
                    this.mPagerIndicator.setAlpha(startAlpha2);
                    this.mPagerIndicatorAnimator.alpha(endAlpha2).withLayer().setDuration(duration).start();
                } else {
                    this.mPagerIndicator.setAlpha(endAlpha2);
                    AlphaUpdateListener.updateVisibility(this.mPagerIndicator, this.mAccessibilityEnabled);
                }
            }
        }
        if (this.mState == State.INVISIBLE && this.mPager != null) {
            if (this.mCardAnimator != null) {
                this.mCardAnimator.cancel();
            }
            final BaseCustomizationCard card = this.mPager.getCurrentCustomizationCard();
            float initialSlideOffset = card.getSlideOffset();
            if (initialSlideOffset != 0.0f) {
                if (duration > 0) {
                    this.mCardAnimator = ValueAnimator.ofFloat(initialSlideOffset, 0.0f);
                    this.mCardAnimator.setDuration(duration);
                    this.mCardAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.customizations.BaseCardContainer.4
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator animation) {
                            card.slideTo(((Float) animation.getAnimatedValue()).floatValue());
                        }
                    });
                    this.mCardAnimator.start();
                } else {
                    card.slideTo(0.0f);
                }
            }
        }
        return true;
    }

    public BaseViewPager getCustomizationPager() {
        return this.mPager;
    }

    public Rect getPreviewRegion() {
        if (this.mNonClickableRegion == null) {
            this.mNonClickableRegion = new Rect();
        }
        if (this.mActionBar != null && this.mPager != null) {
            this.mNonClickableRegion.top = this.mActionBar.getBottom();
            this.mNonClickableRegion.bottom = this.mPager.getTop() + this.mPager.getMinCardTop();
        }
        return this.mNonClickableRegion;
    }

    public void onShowingCardContainer() {
        this.mPager.notifyShowCustomizations();
    }

    public void onLeavingCardContainer() {
        this.mPager.notifyLeavingCustomizations();
    }

    public void saveCustomizations() {
        if (Utilities.isTaskUnfinished(this.mSaveCustomizationTasks)) {
            Logger.d(TAG, "saveCustomizations# tasks are still running so skip this call.");
        } else {
            this.mSaveCustomizationTasks = getSaveCustomizations();
            this.mSaveCustomizationTasks.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public void onLeftCardContainer() {
        this.mPager.notifyLeftCustomizations();
    }

    public void onSystemLowMemory(int level) {
        this.mPager.notifySystemOnLowMemory(level);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class BaseCustomizationAsyncTask extends AsyncTask<Void, Void, Void> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public BaseCustomizationAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void aVoid) {
            BaseCardContainer.this.mSaveCustomizationTasks = null;
        }
    }
}
