package net.oneplus.h2launcher.globalsearch;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.oneplus.lib.widget.recyclerview.LinearLayoutManager;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class GlobalSearchAnimationHelper {
    private static final long CARD_BACKGROUND_ENTER_ANIMATION_DURATION = 225;
    private static final long CONTAINER_ENTER_ANIMATION_DURATION = 275;
    private static final long ENTER_ANIMATION_DELAY_1 = 75;
    private static final long ENTER_ANIMATION_DELAY_2 = 65;
    private static final long EXIT_ANIMATION_DURATION = 300;
    private static final long ROTATE_ANIMATION_DURATION = 300;
    private static final float SEARCH_CONTAINER_MASK_ALPHA = 0.78f;
    private static final long SEARCH_INPUT_ENTER_ANIMATION_DURATION = 400;
    private static final long SEARCH_RESULT_ANIMATION_DURATION = 300;
    private static final long T9_KEYBOARD_ENTER_ANIMATION_DURATION = 300;
    private static final long Y_VELOCITY_THRESHOLD = 200;
    private SearchHistoryGridView mAppsSearchHistoryGridView;
    private TextView mAppsSearchHistoryTitleView;
    private SearchHistoryGridView mContactsSearchHistoryGridView;
    private TextView mContactsSearchHistoryTitleView;
    private GlobalSearchView mGlobalSearchView;
    private View mKeyboardContainer;
    private Launcher mLauncher;
    private int mResultHeight;
    private ScrollView mScrollView;
    private View mSearchContainer;
    private View mSearchContainerMask;
    private View mSearchHistoryAppBackground;
    private ValueAnimator mSearchHistoryAppBackgroundEnterAnimator;
    private View mSearchHistoryAppContainer;
    private ValueAnimator mSearchHistoryAppContentEnterAnimator;
    private ValueAnimator mSearchHistoryAppTitleEnterAnimator;
    private View mSearchHistoryContactBackground;
    private ValueAnimator mSearchHistoryContactBackgroundEnterAnimator;
    private View mSearchHistoryContactContainer;
    private ValueAnimator mSearchHistoryContactContentEnterAnimator;
    private ValueAnimator mSearchHistoryContactTitleEnterAnimator;
    private View mSearchHistoryContainer;
    private int mSearchHistoryContainerAnimationOffset;
    private int mSearchHistoryTranslationY;
    private int mSearchInputAreaHeight;
    private View mSearchInputContainer;
    private EditText mSearchInputTextField;
    private RecyclerView mSearchResultContainer;
    private int mSearchResultContainerMarginTop;
    private int mT9KeyboardHeight;
    private static final String TAG = GlobalSearchAnimationHelper.class.getSimpleName();
    private static Interpolator sKeyboardInterpolator = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    private int mSearchInputHeight = 0;
    private ObjectAnimator mSearchResultContainerAlphaAnimator = null;
    private ObjectAnimator mSearchHistoryContainerAlphaAnimator = null;
    private ObjectAnimator mSearchHistoryContainerYAnimator = null;
    private ObjectAnimator mSearchResultContainerExitAlphaAnimator = null;
    private ObjectAnimator mSearchResultContainerExitYAnimator = null;
    private ObjectAnimator mSearchHistoryContainerExitAlphaAnimator = null;
    private ObjectAnimator mSearchHistoryContainerExitYAnimator = null;
    private ObjectAnimator mRotateObjectAnimator = null;
    private AnimatorSet mKeyboardShowAnimatorSet = null;
    private AnimatorSet mKeyboardDismissAnimatorSet = null;
    private ValueAnimator mSearchInputContainerAnimator = null;
    private ValueAnimator mSearchContainerMaskAnimator = null;
    private AnimatorSet mSearchHistoryAppEnterAnimatorSet = null;
    private AnimatorSet mSearchHistoryContactEnterAnimatorSet = null;
    private AnimatorSet mSearchResultAnimatorSet = null;
    private AnimatorSet mSearchHistoryAnimatorSet = null;
    private AnimatorSet mSearchResultExitAnimatorSet = null;
    private AnimatorSet mSearchHistoryExitAnimatorSet = null;

    public GlobalSearchAnimationHelper(Context context) {
        this.mSearchInputAreaHeight = context.getResources().getDimensionPixelSize(R.dimen.result_margin_top);
        this.mSearchHistoryTranslationY = context.getResources().getDimensionPixelSize(R.dimen.search_history_translation);
        this.mSearchHistoryContainerAnimationOffset = context.getResources().getDimensionPixelSize(R.dimen.search_history_container_offset);
        this.mT9KeyboardHeight = context.getResources().getDimensionPixelSize(R.dimen.result_keyboard_height);
        this.mSearchResultContainerMarginTop = context.getResources().getDimensionPixelSize(R.dimen.search_result_container_margin_top);
    }

    public void setGlobalSearchView(View view) {
        this.mGlobalSearchView = (GlobalSearchView) view;
    }

    private boolean initGlobalSearchAnimation() {
        this.mLauncher = LauncherAppState.getInstance().getLauncher();
        if (this.mLauncher != null) {
            this.mSearchInputHeight = this.mLauncher.getResources().getDimensionPixelOffset(R.dimen.search_input_container_height);
            if (this.mGlobalSearchView != null) {
                this.mSearchContainer = this.mGlobalSearchView.getSearchContainer();
                this.mSearchContainerMask = this.mGlobalSearchView.getSearchContainerMask();
                this.mSearchInputContainer = this.mGlobalSearchView.getSearchInputContainer();
                this.mSearchInputTextField = this.mGlobalSearchView.getSearchInputTextField();
                this.mSearchResultContainer = this.mGlobalSearchView.getSearchResultContainer();
                this.mSearchHistoryContainer = this.mGlobalSearchView.getSearchHistoryContainer();
                this.mSearchHistoryAppBackground = this.mGlobalSearchView.getSearchHistoryAppBackground();
                this.mSearchHistoryAppContainer = this.mGlobalSearchView.getSearchHistoryAppContainer();
                this.mSearchHistoryContactBackground = this.mGlobalSearchView.getSearchHistoryContactBackground();
                this.mSearchHistoryContactContainer = this.mGlobalSearchView.getSearchHistoryContactContainer();
                this.mAppsSearchHistoryTitleView = this.mGlobalSearchView.getAppsSearchHistoryTitleView();
                this.mContactsSearchHistoryTitleView = this.mGlobalSearchView.getContactsSearchHistoryTitleView();
                this.mAppsSearchHistoryGridView = (SearchHistoryGridView) this.mGlobalSearchView.getAppsSearchHistoryGridView();
                this.mContactsSearchHistoryGridView = (SearchHistoryGridView) this.mGlobalSearchView.getContactsSearchHistoryGridView();
                this.mKeyboardContainer = this.mGlobalSearchView.getKeyboardContainer();
            }
        }
        boolean result = (this.mLauncher == null || this.mGlobalSearchView == null || this.mKeyboardContainer == null || this.mSearchInputContainer == null || this.mSearchContainer == null || this.mSearchContainerMask == null || this.mSearchResultContainer == null || this.mSearchInputTextField == null || this.mSearchHistoryContainer == null || this.mSearchHistoryAppBackground == null || this.mSearchHistoryContactBackground == null || this.mSearchHistoryAppContainer == null || this.mSearchHistoryContactContainer == null || this.mAppsSearchHistoryTitleView == null || this.mContactsSearchHistoryTitleView == null || this.mAppsSearchHistoryGridView == null || this.mContactsSearchHistoryGridView == null) ? false : true;
        if (!result) {
            dumpInitGlobalSearchAnimationError();
        }
        return result;
    }

    private void dumpInitGlobalSearchAnimationError() {
        Logger.w(TAG, "start dump initGlobalSearchAnimation error");
        if (this.mLauncher == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mLauncher = null");
        }
        if (this.mGlobalSearchView == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mGlobalSearchView = null");
        }
        if (this.mKeyboardContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mKeyboardContainer = null");
        }
        if (this.mSearchInputContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchInputContainer = null");
        }
        if (this.mSearchContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchContainer = null");
        }
        if (this.mSearchContainerMask == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchContainerMask = null");
        }
        if (this.mSearchResultContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchResultContainer = null");
        }
        if (this.mSearchHistoryContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchHistoryContainer = null");
        }
        if (this.mSearchHistoryAppBackground == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchHistoryAppBackground = null");
        }
        if (this.mSearchHistoryContactBackground == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchHistoryContactBackground = null");
        }
        if (this.mSearchHistoryAppContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchHistoryAppContainer = null");
        }
        if (this.mSearchHistoryContactContainer == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchHistoryContactContainer = null");
        }
        if (this.mAppsSearchHistoryTitleView == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mAppsSearchHistoryTitleView = null");
        }
        if (this.mContactsSearchHistoryTitleView == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mContactsSearchHistoryTitleView = null");
        }
        if (this.mAppsSearchHistoryGridView == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mAppsSearchHistoryGridView = null");
        }
        if (this.mContactsSearchHistoryGridView == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mContactsSearchHistoryGridView = null");
        }
        if (this.mSearchInputTextField == null) {
            Logger.w(TAG, "initGlobalSearchAnimation mSearchInputTextField = null");
        }
    }

    public void enterWithAnimation() {
        if (initGlobalSearchAnimation()) {
            this.mLauncher.setInSearchMode();
            this.mGlobalSearchView.setIsInAnimationFinish(true);
            ViewGroup keyboardContainer = (LinearLayout) this.mKeyboardContainer;
            runKeyboardAnimation(keyboardContainer);
            this.mSearchHistoryContainer.setTranslationY(0.0f);
            this.mSearchHistoryContainer.setAlpha(1.0f);
            final int searchHistoryAppContainerHeight = this.mGlobalSearchView.getSearchHistoryAppConrainerHeight();
            final int searchHistoryContactContainerHeight = this.mGlobalSearchView.getSearchHistoryContactConrainerHeight();
            this.mSearchHistoryAppBackground.setVisibility(8);
            this.mSearchHistoryContactBackground.setVisibility(8);
            if (searchHistoryAppContainerHeight > 0) {
                this.mSearchHistoryAppContainer.setVisibility(4);
            }
            if (searchHistoryContactContainerHeight > 0) {
                this.mSearchHistoryContactContainer.setVisibility(4);
            }
            this.mSearchInputContainerAnimator = ValueAnimator.ofFloat(-this.mSearchInputAreaHeight, 0.0f);
            this.mSearchInputContainerAnimator.setInterpolator(new PathInterpolator(0.1f, 0.0f, 0.1f, 1.0f));
            this.mSearchInputContainerAnimator.setDuration(SEARCH_INPUT_ENTER_ANIMATION_DURATION);
            this.mSearchInputContainerAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchInputContainer.setLayerType(2, null);
                    GlobalSearchAnimationHelper.this.mSearchContainerMask.setAlpha(0.0f);
                    if (searchHistoryAppContainerHeight > 0 && searchHistoryContactContainerHeight > 0 && GlobalSearchAnimationHelper.this.mSearchHistoryAppEnterAnimatorSet != null && !GlobalSearchAnimationHelper.this.mSearchHistoryAppEnterAnimatorSet.isRunning() && GlobalSearchAnimationHelper.this.mSearchHistoryContactEnterAnimatorSet != null && !GlobalSearchAnimationHelper.this.mSearchHistoryContactEnterAnimatorSet.isRunning()) {
                        GlobalSearchAnimationHelper.this.mSearchHistoryAppEnterAnimatorSet.start();
                        GlobalSearchAnimationHelper.this.mSearchHistoryContactEnterAnimatorSet.start();
                        return;
                    }
                    if (searchHistoryAppContainerHeight > 0 && searchHistoryContactContainerHeight <= 0 && GlobalSearchAnimationHelper.this.mSearchHistoryAppEnterAnimatorSet != null && !GlobalSearchAnimationHelper.this.mSearchHistoryAppEnterAnimatorSet.isRunning()) {
                        GlobalSearchAnimationHelper.this.mSearchHistoryAppEnterAnimatorSet.start();
                    } else if (searchHistoryAppContainerHeight <= 0 && searchHistoryContactContainerHeight > 0 && GlobalSearchAnimationHelper.this.mSearchHistoryContactEnterAnimatorSet != null && !GlobalSearchAnimationHelper.this.mSearchHistoryContactEnterAnimatorSet.isRunning()) {
                        GlobalSearchAnimationHelper.this.mSearchHistoryContactEnterAnimatorSet.start();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchInputContainer.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchContainerMask.setAlpha(GlobalSearchAnimationHelper.SEARCH_CONTAINER_MASK_ALPHA);
                    if (searchHistoryAppContainerHeight <= 0 && searchHistoryContactContainerHeight <= 0 && GlobalSearchAnimationHelper.this.mLauncher != null) {
                        GlobalSearchAnimationHelper.this.mLauncher.getWindow().setSoftInputMode(32);
                    }
                    GlobalSearchAnimationHelper.this.mSearchInputContainer.setLayerType(0, null);
                }
            });
            this.mSearchInputContainerAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float animatedFraction = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mSearchInputContainer.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mSearchContainerMask.setAlpha(GlobalSearchAnimationHelper.SEARCH_CONTAINER_MASK_ALPHA * animatedFraction);
                }
            });
            this.mSearchHistoryAppBackgroundEnterAnimator = ValueAnimator.ofFloat(this.mSearchHistoryContainerAnimationOffset, 0.0f);
            this.mSearchHistoryAppBackgroundEnterAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
            this.mSearchHistoryAppBackgroundEnterAnimator.setDuration(CARD_BACKGROUND_ENTER_ANIMATION_DURATION);
            this.mSearchHistoryAppBackgroundEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppBackground.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppBackground.setVisibility(0);
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppContainer.setVisibility(0);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setVisibility(4);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppBackground.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppBackground.setAlpha(1.0f);
                }
            });
            this.mSearchHistoryAppBackgroundEnterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float alpha = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppBackground.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mSearchHistoryAppBackground.setAlpha(alpha);
                }
            });
            this.mSearchHistoryAppTitleEnterAnimator = ValueAnimator.ofFloat(this.mSearchHistoryContainerAnimationOffset, 0.0f);
            this.mSearchHistoryAppTitleEnterAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
            this.mSearchHistoryAppTitleEnterAnimator.setDuration(CONTAINER_ENTER_ANIMATION_DURATION);
            this.mSearchHistoryAppTitleEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setAlpha(1.0f);
                }
            });
            this.mSearchHistoryAppTitleEnterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float alpha = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setAlpha(alpha);
                }
            });
            this.mSearchHistoryAppContentEnterAnimator = ValueAnimator.ofFloat(this.mSearchHistoryContainerAnimationOffset, 0.0f);
            this.mSearchHistoryAppContentEnterAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
            this.mSearchHistoryAppContentEnterAnimator.setStartDelay(ENTER_ANIMATION_DELAY_2);
            this.mSearchHistoryAppContentEnterAnimator.setDuration(CONTAINER_ENTER_ANIMATION_DURATION);
            this.mSearchHistoryAppContentEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setAlpha(1.0f);
                }
            });
            this.mSearchHistoryAppContentEnterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float alpha = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setAlpha(alpha);
                }
            });
            this.mSearchHistoryAppEnterAnimatorSet = new AnimatorSet();
            this.mSearchHistoryAppEnterAnimatorSet.playTogether(this.mSearchHistoryAppBackgroundEnterAnimator, this.mSearchHistoryAppTitleEnterAnimator, this.mSearchHistoryAppContentEnterAnimator);
            this.mSearchHistoryAppEnterAnimatorSet.setStartDelay(ENTER_ANIMATION_DELAY_1);
            this.mSearchHistoryAppEnterAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryTitleView.setAlpha(1.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setVisibility(0);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mAppsSearchHistoryGridView.setAlpha(1.0f);
                    if (searchHistoryContactContainerHeight <= 0 && GlobalSearchAnimationHelper.this.mLauncher != null) {
                        GlobalSearchAnimationHelper.this.mLauncher.getWindow().setSoftInputMode(32);
                    }
                }
            });
            this.mSearchHistoryContactBackgroundEnterAnimator = ValueAnimator.ofFloat(this.mSearchHistoryContainerAnimationOffset, 0.0f);
            this.mSearchHistoryContactBackgroundEnterAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
            this.mSearchHistoryContactBackgroundEnterAnimator.setDuration(CARD_BACKGROUND_ENTER_ANIMATION_DURATION);
            this.mSearchHistoryContactBackgroundEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactBackground.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactBackground.setVisibility(0);
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactContainer.setVisibility(0);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setVisibility(4);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactBackground.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactBackground.setAlpha(1.0f);
                }
            });
            this.mSearchHistoryContactBackgroundEnterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.11
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float alpha = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactBackground.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mSearchHistoryContactBackground.setAlpha(alpha);
                }
            });
            this.mSearchHistoryContactTitleEnterAnimator = ValueAnimator.ofFloat(this.mSearchHistoryContainerAnimationOffset, 0.0f);
            this.mSearchHistoryContactTitleEnterAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
            this.mSearchHistoryContactTitleEnterAnimator.setDuration(CONTAINER_ENTER_ANIMATION_DURATION);
            this.mSearchHistoryContactTitleEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.12
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setAlpha(1.0f);
                }
            });
            this.mSearchHistoryContactTitleEnterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.13
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float alpha = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setAlpha(alpha);
                }
            });
            this.mSearchHistoryContactContentEnterAnimator = ValueAnimator.ofFloat(this.mSearchHistoryContainerAnimationOffset, 0.0f);
            this.mSearchHistoryContactContentEnterAnimator.setInterpolator(new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f));
            this.mSearchHistoryContactContentEnterAnimator.setStartDelay(ENTER_ANIMATION_DELAY_2);
            this.mSearchHistoryContactContentEnterAnimator.setDuration(CONTAINER_ENTER_ANIMATION_DURATION);
            this.mSearchHistoryContactContentEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.14
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setAlpha(1.0f);
                }
            });
            this.mSearchHistoryContactContentEnterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.15
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float translationY = ((Float) animation.getAnimatedValue()).floatValue();
                    float alpha = animation.getAnimatedFraction();
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setTranslationY(translationY);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setAlpha(alpha);
                }
            });
            this.mSearchHistoryContactEnterAnimatorSet = new AnimatorSet();
            this.mSearchHistoryContactEnterAnimatorSet.playTogether(this.mSearchHistoryContactBackgroundEnterAnimator, this.mSearchHistoryContactTitleEnterAnimator, this.mSearchHistoryContactContentEnterAnimator);
            if (searchHistoryAppContainerHeight <= 0) {
                this.mSearchHistoryContactEnterAnimatorSet.setStartDelay(ENTER_ANIMATION_DELAY_1);
            } else {
                this.mSearchHistoryContactEnterAnimatorSet.setStartDelay(140L);
            }
            this.mSearchHistoryContactEnterAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.16
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryTitleView.setAlpha(1.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setVisibility(0);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mContactsSearchHistoryGridView.setAlpha(1.0f);
                    if (GlobalSearchAnimationHelper.this.mLauncher != null) {
                        GlobalSearchAnimationHelper.this.mLauncher.getWindow().setSoftInputMode(32);
                    }
                }
            });
            this.mSearchInputContainerAnimator.start();
        }
    }

    public void runSearchResultAnimation(boolean showSearchResult) {
        this.mResultHeight = this.mGlobalSearchView.getSearchResultConrainerHeight();
        if (this.mSearchHistoryAnimatorSet != null && this.mSearchHistoryAnimatorSet.isRunning()) {
            this.mSearchHistoryAnimatorSet.end();
        }
        if (this.mSearchResultAnimatorSet != null && this.mSearchResultAnimatorSet.isRunning()) {
            this.mSearchResultAnimatorSet.end();
        }
        if (showSearchResult) {
            this.mSearchHistoryContainerAlphaAnimator = ObjectAnimator.ofFloat(this.mSearchHistoryContainer, "alpha", 1.0f, 0.0f);
            this.mSearchHistoryAnimatorSet = new AnimatorSet();
            this.mSearchHistoryAnimatorSet.playTogether(this.mSearchHistoryContainerAlphaAnimator);
            this.mSearchHistoryAnimatorSet.setInterpolator(new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f));
            this.mSearchHistoryAnimatorSet.setDuration(300L);
            this.mSearchHistoryAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.17
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (GlobalSearchAnimationHelper.this.mSearchHistoryContainer != null) {
                        GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setLayerType(2, null);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getAppsSearchHistoryTitleView().setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getAppsSearchHistoryGridView().setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getContactsSearchHistoryTitleView().setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getContactsSearchHistoryGridView().setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getSearchHistoryScrollView().smoothScrollTo(0, 0);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getSearchHistoryScrollView().setVisibility(8);
                    if (GlobalSearchAnimationHelper.this.mSearchHistoryContainer != null) {
                        GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setLayerType(0, null);
                    }
                }
            });
            this.mSearchResultContainerAlphaAnimator = ObjectAnimator.ofFloat(this.mSearchResultContainer, "alpha", 0.0f, 1.0f);
            this.mSearchResultAnimatorSet = new AnimatorSet();
            this.mSearchResultAnimatorSet.playTogether(this.mSearchResultContainerAlphaAnimator);
            this.mSearchResultAnimatorSet.setInterpolator(new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f));
            this.mSearchResultAnimatorSet.setDuration(300L);
            this.mSearchResultAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.18
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    LinearLayoutManager layoutManager = (LinearLayoutManager) GlobalSearchAnimationHelper.this.mSearchResultContainer.getLayoutManager();
                    layoutManager.scrollToPositionWithOffset(0, 0);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setLayerType(2, null);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setAlpha(1.0f);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setLayerType(0, null);
                }
            });
        } else {
            this.mGlobalSearchView.getSearchHistoryScrollView().setVisibility(0);
            this.mSearchHistoryContainerAlphaAnimator = ObjectAnimator.ofFloat(this.mSearchHistoryContainer, "alpha", 0.0f, 1.0f);
            this.mSearchHistoryAnimatorSet = new AnimatorSet();
            this.mSearchHistoryAnimatorSet.playTogether(this.mSearchHistoryContainerAlphaAnimator);
            this.mSearchHistoryAnimatorSet.setInterpolator(new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f));
            this.mSearchHistoryAnimatorSet.setDuration(300L);
            this.mSearchHistoryAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.19
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.initAppsHistory();
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.initContactsHistory();
                    GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setLayerType(2, null);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getSearchHistoryScrollView().smoothScrollTo(0, 0);
                    GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setLayerType(0, null);
                }
            });
            this.mSearchResultContainerAlphaAnimator = ObjectAnimator.ofFloat(this.mSearchResultContainer, "alpha", 1.0f, 0.0f);
            this.mSearchResultAnimatorSet = new AnimatorSet();
            this.mSearchResultAnimatorSet.playTogether(this.mSearchResultContainerAlphaAnimator);
            this.mSearchResultAnimatorSet.setInterpolator(new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f));
            this.mSearchResultAnimatorSet.setDuration(300L);
            this.mSearchResultAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.20
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setLayerType(2, null);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setAlpha(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setTranslationY(0.0f);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getSearchHistoryScrollView().smoothScrollTo(0, 0);
                    GlobalSearchAnimationHelper.this.mSearchResultContainer.setLayerType(0, null);
                }
            });
        }
        this.mSearchHistoryAnimatorSet.start();
        this.mSearchResultAnimatorSet.start();
    }

    public void runKeyboardAnimation(final ViewGroup keyboardContainer) {
        List<Animator> keyboardAnimators = new ArrayList<>();
        final int softwareKeyboardHeight = this.mGlobalSearchView.getSoftwareKeyboardHeight();
        keyboardAnimators.add(ObjectAnimator.ofFloat(keyboardContainer, "translationY", this.mT9KeyboardHeight - softwareKeyboardHeight, -softwareKeyboardHeight));
        keyboardAnimators.add(ObjectAnimator.ofFloat(keyboardContainer, "alpha", 0.0f, 1.0f));
        this.mKeyboardShowAnimatorSet = new AnimatorSet();
        this.mKeyboardShowAnimatorSet.playTogether(keyboardAnimators);
        this.mKeyboardShowAnimatorSet.setInterpolator(sKeyboardInterpolator);
        this.mKeyboardShowAnimatorSet.setDuration(300L);
        this.mKeyboardShowAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.21
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                keyboardContainer.setLayerType(2, null);
                if (GlobalSearchAnimationHelper.this.mGlobalSearchView.isT9Search()) {
                    keyboardContainer.setVisibility(0);
                    keyboardContainer.setAlpha(0.0f);
                } else {
                    keyboardContainer.setVisibility(8);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                keyboardContainer.setLayerType(0, null);
                keyboardContainer.clearAnimation();
                if (GlobalSearchAnimationHelper.this.mGlobalSearchView.isT9Search()) {
                    keyboardContainer.setVisibility(0);
                    keyboardContainer.setTranslationY(-softwareKeyboardHeight);
                    keyboardContainer.setAlpha(1.0f);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.getSearchHistoryScrollView().smoothScrollTo(0, 0);
                    if (GlobalSearchAnimationHelper.this.mLauncher != null) {
                        GlobalSearchAnimationHelper.this.mLauncher.getWindow().setSoftInputMode(32);
                        return;
                    }
                    return;
                }
                keyboardContainer.setVisibility(8);
            }
        });
        if (this.mGlobalSearchView.isT9Search()) {
            this.mGlobalSearchView.setLayoutBottomMarginByKeyboardHeight(softwareKeyboardHeight);
            this.mKeyboardShowAnimatorSet.start();
        } else {
            this.mKeyboardShowAnimatorSet.cancel();
            keyboardContainer.setVisibility(8);
            this.mGlobalSearchView.setupIMEInputSearch();
        }
    }

    public void runRotateAnimation(final View view, float startAngle, final float endAngle) {
        this.mRotateObjectAnimator = ObjectAnimator.ofFloat(view, "rotation", startAngle, endAngle);
        TimeInterpolator easeInOutInterpolator = new AccelerateDecelerateInterpolator();
        this.mRotateObjectAnimator.setInterpolator(easeInOutInterpolator);
        this.mRotateObjectAnimator.setDuration(300L);
        this.mRotateObjectAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.22
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                view.setLayerType(2, null);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                view.setLayerType(0, null);
                view.setRotation(endAngle);
                GlobalSearchAnimationHelper.this.mGlobalSearchView.updateSearchResultAdapter();
            }
        });
        this.mRotateObjectAnimator.start();
    }

    public void exitWithAnimation() {
        if (!initGlobalSearchAnimation() || (!this.mLauncher.isInSearchMode() && this.mGlobalSearchView.getVisibility() != 0)) {
            if (this.mLauncher != null) {
                Logger.w(TAG, "Launcher state = " + this.mLauncher.getState());
                return;
            } else {
                Logger.d(TAG, "Launcher is null !");
                return;
            }
        }
        this.mLauncher.setOutSearchMode();
        this.mGlobalSearchView.getInputMethodManager().hideSoftInputFromWindow(this.mGlobalSearchView.getApplicationWindowToken(), 0);
        this.mGlobalSearchView.setIsInAnimationFinish(false);
        this.mSearchInputContainerAnimator = ObjectAnimator.ofFloat(this.mSearchInputContainer, "translationY", 0.0f, -this.mSearchInputAreaHeight);
        this.mSearchInputContainerAnimator.setInterpolator(new PathInterpolator(0.9f, 0.0f, 0.9f, 1.0f));
        this.mSearchInputContainerAnimator.setDuration(300L);
        this.mSearchInputContainerAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.23
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                GlobalSearchAnimationHelper.this.mSearchInputContainer.setLayerType(2, null);
                GlobalSearchAnimationHelper.this.mSearchContainerMask.setAlpha(GlobalSearchAnimationHelper.SEARCH_CONTAINER_MASK_ALPHA);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (GlobalSearchAnimationHelper.this.mLauncher != null) {
                    if (GlobalSearchAnimationHelper.this.mLauncher.isInSearchMode()) {
                        GlobalSearchAnimationHelper.this.mSearchInputContainer.setTranslationY(0.0f);
                        GlobalSearchAnimationHelper.this.mSearchContainerMask.setAlpha(GlobalSearchAnimationHelper.SEARCH_CONTAINER_MASK_ALPHA);
                        GlobalSearchAnimationHelper.this.mGlobalSearchView.getSearchHistoryScrollView().smoothScrollTo(0, 0);
                    } else {
                        GlobalSearchAnimationHelper.this.exitWithoutAnimation();
                    }
                }
                GlobalSearchAnimationHelper.this.mSearchInputContainer.setLayerType(0, null);
            }
        });
        this.mSearchInputContainerAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.24
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float animatedFraction = animation.getAnimatedFraction();
                GlobalSearchAnimationHelper.this.mSearchContainerMask.setAlpha(GlobalSearchAnimationHelper.SEARCH_CONTAINER_MASK_ALPHA * (1.0f - animatedFraction));
            }
        });
        this.mSearchInputContainerAnimator.start();
        this.mSearchResultContainerExitAlphaAnimator = ObjectAnimator.ofFloat(this.mSearchResultContainer, "alpha", 1.0f, 0.0f);
        this.mSearchResultContainerExitYAnimator = ObjectAnimator.ofFloat(this.mSearchResultContainer, "y", this.mSearchResultContainerMarginTop, this.mSearchResultContainerMarginTop - this.mSearchInputAreaHeight);
        this.mSearchResultExitAnimatorSet = new AnimatorSet();
        this.mSearchResultExitAnimatorSet.playTogether(this.mSearchResultContainerExitAlphaAnimator, this.mSearchResultContainerExitYAnimator);
        this.mSearchResultExitAnimatorSet.setInterpolator(new PathInterpolator(0.9f, 0.0f, 0.9f, 1.0f));
        this.mSearchResultExitAnimatorSet.setDuration(300L);
        this.mSearchResultExitAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.25
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                GlobalSearchAnimationHelper.this.mSearchResultContainer.setLayerType(2, null);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                GlobalSearchAnimationHelper.this.mSearchResultContainer.setVisibility(8);
                GlobalSearchAnimationHelper.this.mSearchResultContainer.setLayerType(0, null);
            }
        });
        this.mSearchResultExitAnimatorSet.start();
        this.mSearchHistoryContainerExitAlphaAnimator = ObjectAnimator.ofFloat(this.mSearchHistoryContainer, "alpha", 1.0f, 0.0f);
        this.mSearchHistoryContainerExitYAnimator = ObjectAnimator.ofFloat(this.mSearchHistoryContainer, "y", 0.0f, -this.mSearchInputAreaHeight);
        this.mSearchHistoryExitAnimatorSet = new AnimatorSet();
        this.mSearchHistoryExitAnimatorSet.playTogether(this.mSearchHistoryContainerExitAlphaAnimator, this.mSearchHistoryContainerExitYAnimator);
        this.mSearchHistoryExitAnimatorSet.setInterpolator(new PathInterpolator(0.9f, 0.0f, 0.9f, 1.0f));
        this.mSearchHistoryExitAnimatorSet.setDuration(300L);
        this.mSearchHistoryExitAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.26
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setLayerType(2, null);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                GlobalSearchAnimationHelper.this.mSearchHistoryContainer.setLayerType(0, null);
            }
        });
        this.mSearchHistoryExitAnimatorSet.start();
        runKeyboardDismissAnimation((ViewGroup) this.mKeyboardContainer);
    }

    public void runKeyboardDismissAnimation(ViewGroup keyboardContainer) {
        final ViewGroup keyboard = (LinearLayout) keyboardContainer;
        int softwareKeyboardHeight = this.mGlobalSearchView.getSoftwareKeyboardHeight();
        List<Animator> animators = new ArrayList<>();
        animators.add(ObjectAnimator.ofFloat(keyboard, "translationY", keyboard.getHeight() - softwareKeyboardHeight));
        animators.add(ObjectAnimator.ofFloat(keyboard, "alpha", 0.0f));
        this.mKeyboardDismissAnimatorSet = new AnimatorSet();
        this.mKeyboardDismissAnimatorSet.playTogether(animators);
        this.mKeyboardDismissAnimatorSet.setInterpolator(sKeyboardInterpolator);
        this.mKeyboardDismissAnimatorSet.setDuration(300L);
        this.mKeyboardDismissAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper.27
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                keyboard.setLayerType(0, null);
                keyboard.clearAnimation();
                keyboard.setVisibility(4);
                if (GlobalSearchAnimationHelper.this.mLauncher != null && !GlobalSearchAnimationHelper.this.mLauncher.isInSearchMode()) {
                    GlobalSearchAnimationHelper.this.mKeyboardContainer.setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.setLayoutBottomMarginByResource(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                keyboard.setLayerType(0, null);
                keyboard.clearAnimation();
                keyboard.setVisibility(4);
                if (GlobalSearchAnimationHelper.this.mLauncher != null && !GlobalSearchAnimationHelper.this.mLauncher.isInSearchMode()) {
                    GlobalSearchAnimationHelper.this.mKeyboardContainer.setVisibility(8);
                    GlobalSearchAnimationHelper.this.mGlobalSearchView.setLayoutBottomMarginByResource(0);
                }
            }
        });
        if (this.mGlobalSearchView.isT9Search()) {
            this.mKeyboardDismissAnimatorSet.start();
        } else {
            this.mKeyboardDismissAnimatorSet.cancel();
        }
    }

    public void exitWithoutAnimation() {
        if (initGlobalSearchAnimation()) {
            this.mLauncher.setOutSearchMode();
            this.mGlobalSearchView.setIsInAnimationFinish(false);
            this.mSearchResultContainer.clearAnimation();
            this.mSearchResultContainer.smoothScrollToPosition(0);
            this.mSearchResultContainer.setVisibility(8);
            this.mSearchContainer.clearAnimation();
            this.mSearchContainer.setTranslationY(0.0f);
            this.mSearchContainer.setAlpha(0.0f);
            this.mSearchInputContainer.setTranslationY(0.0f);
            this.mSearchInputTextField.clearAnimation();
            this.mSearchInputTextField.setText("");
            this.mGlobalSearchView.clearAnimation();
            this.mGlobalSearchView.setTranslationY(0.0f);
            this.mGlobalSearchView.setVisibility(4);
            this.mKeyboardContainer.clearAnimation();
            this.mKeyboardContainer.setVisibility(8);
            this.mSearchInputContainer.clearAnimation();
            this.mSearchInputContainer.setVisibility(4);
            this.mLauncher.getDragLayer().setVisibility(0);
            this.mLauncher.getDragLayer().setAlpha(1.0f);
            this.mLauncher.getWorkspace().setVisibility(0);
            this.mLauncher.getWorkspace().setAlpha(1.0f);
            this.mLauncher.setLauncherViewAlpha(1.0f);
            this.mLauncher.getPageIndicator().setVisibility(0);
            this.mGlobalSearchView.setLayoutBottomMarginByResource(0);
            this.mGlobalSearchView.getSearchHistoryScrollView().smoothScrollTo(0, 0);
            this.mGlobalSearchView.setShowAllAppSearchResult(false);
            this.mGlobalSearchView.setShowAllContactSearchResult(false);
            this.mGlobalSearchView.getInputMethodManager().hideSoftInputFromWindow(this.mGlobalSearchView.getApplicationWindowToken(), 0);
            this.mLauncher.getWindow().setSoftInputMode(32);
            if (this.mGlobalSearchView.getAlertDialog() != null) {
                this.mGlobalSearchView.getAlertDialog().dismiss();
            }
            if (this.mGlobalSearchView.getListPopupWindow() != null) {
                this.mGlobalSearchView.getListPopupWindow().dismiss();
            }
            if (this.mGlobalSearchView.getSearchInputTextField() != null) {
                this.mGlobalSearchView.getSearchInputTextField().setFocusableInTouchMode(false);
                this.mGlobalSearchView.getSearchInputTextField().setFocusable(false);
            }
            if (this.mGlobalSearchView.getOnGlobalLayoutListener() != null) {
                this.mGlobalSearchView.getViewTreeObserver().removeOnGlobalLayoutListener(this.mGlobalSearchView.getOnGlobalLayoutListener());
                this.mGlobalSearchView.setOnGlobalLayoutListener(null);
            }
        }
    }

    public void cancelAnimator() {
        if (this.mSearchInputContainerAnimator != null) {
            this.mSearchInputContainerAnimator.cancel();
        }
        if (this.mSearchHistoryAppEnterAnimatorSet != null && this.mSearchHistoryAppEnterAnimatorSet.isRunning()) {
            this.mSearchHistoryAppEnterAnimatorSet.end();
        }
        if (this.mSearchHistoryContactEnterAnimatorSet != null && this.mSearchHistoryContactEnterAnimatorSet.isRunning()) {
            this.mSearchHistoryContactEnterAnimatorSet.end();
        }
        if (this.mSearchResultAnimatorSet != null && this.mSearchResultAnimatorSet.isRunning()) {
            this.mSearchResultAnimatorSet.end();
        }
        if (this.mSearchHistoryAnimatorSet != null && this.mSearchHistoryAnimatorSet.isRunning()) {
            this.mSearchHistoryAnimatorSet.end();
        }
        if (this.mSearchResultExitAnimatorSet != null) {
            this.mSearchResultExitAnimatorSet.cancel();
        }
        if (this.mSearchHistoryExitAnimatorSet != null) {
            this.mSearchHistoryExitAnimatorSet.cancel();
        }
        if (this.mSearchHistoryContainerYAnimator != null) {
            this.mSearchHistoryContainerYAnimator.cancel();
        }
        if (this.mKeyboardShowAnimatorSet != null) {
            this.mKeyboardShowAnimatorSet.cancel();
        }
        if (this.mKeyboardDismissAnimatorSet != null) {
            this.mKeyboardDismissAnimatorSet.cancel();
        }
    }

    public boolean T9KeyboardIsAnimating() {
        return (this.mKeyboardShowAnimatorSet != null && this.mKeyboardShowAnimatorSet.isRunning()) || (this.mKeyboardDismissAnimatorSet != null && this.mKeyboardDismissAnimatorSet.isRunning());
    }

    public boolean isAnimating() {
        return (this.mSearchInputContainerAnimator != null && this.mSearchInputContainerAnimator.isRunning()) || (this.mSearchResultAnimatorSet != null && this.mSearchResultAnimatorSet.isRunning()) || ((this.mSearchHistoryAnimatorSet != null && this.mSearchHistoryAnimatorSet.isRunning()) || ((this.mSearchHistoryAppEnterAnimatorSet != null && this.mSearchHistoryAppEnterAnimatorSet.isRunning()) || ((this.mSearchHistoryContactEnterAnimatorSet != null && this.mSearchHistoryContactEnterAnimatorSet.isRunning()) || ((this.mSearchResultExitAnimatorSet != null && this.mSearchResultExitAnimatorSet.isRunning()) || ((this.mSearchHistoryExitAnimatorSet != null && this.mSearchHistoryExitAnimatorSet.isRunning()) || ((this.mRotateObjectAnimator != null && this.mRotateObjectAnimator.isRunning()) || ((this.mKeyboardShowAnimatorSet != null && this.mKeyboardShowAnimatorSet.isRunning()) || (this.mKeyboardDismissAnimatorSet != null && this.mKeyboardDismissAnimatorSet.isRunning()))))))));
    }
}
