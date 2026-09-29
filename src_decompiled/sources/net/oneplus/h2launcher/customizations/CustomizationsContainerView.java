package net.oneplus.h2launcher.customizations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Size;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.AlphaUpdateListener;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.BaseCardContainer;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class CustomizationsContainerView extends BaseCardContainer {
    private static final String TAG = CustomizationsContainerView.class.getSimpleName();
    private CellLayout mCustomizationCellLayout;
    private ValueAnimator mCustomizationCellLayoutAnimator;
    private float mCustomizationCellLayoutPivotY;
    private float mCustomizationCellLayoutScale;
    private Size mCustomizationCellLayoutSize;
    private Size mNormalCellLayoutSize;
    private ViewPropertyAnimator mSearchBarPreviewAnimator;
    private LauncherViewPropertyAnimator mSearchBarPreviewContainerAnimator;
    private final int mSearchBarPreviewMarginTopFix;
    private float mShrinkScale;

    public CustomizationsContainerView(Context context) {
        this(context, null);
    }

    public CustomizationsContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CustomizationsContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCustomizationCellLayoutPivotY = Float.MAX_VALUE;
        this.mLauncher = (Launcher) context;
        this.mSearchBarPreviewMarginTopFix = getResources().getDimensionPixelSize(R.dimen.customization_quick_search_bar_margin_top_fix);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getContainerViewId() {
        return R.id.customizations_content_container;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getRevealViewId() {
        return R.id.customizations_reveal_view;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getActionBarId() {
        return R.id.customizations_action_bar;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getActionBarTitleId() {
        return R.string.customizations_button_text;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getPagerId() {
        return R.id.customization_pager;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getPagerIndicatorId() {
        return R.id.customization_pager_indicator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    public void onCardSlided(float slideOffset) {
        float scale = (1.0f - (0.25f * slideOffset)) * this.mCustomizationCellLayoutScale;
        if (this.mCustomizationCellLayout != null) {
            this.mCustomizationCellLayout.setPivotY(0.0f);
            this.mCustomizationCellLayout.setScaleX(scale);
            this.mCustomizationCellLayout.setScaleY(scale);
        }
        if (this.mSearchBarPreviewContainer != null) {
            float offsetY = ((this.mSearchBarPreviewContainer.getHeight() * this.mShrinkScale) * 0.25f) / 2.0f;
            this.mSearchBarPreviewContainer.setScaleX(this.mShrinkScale * scale);
            this.mSearchBarPreviewContainer.setScaleY(this.mShrinkScale * scale);
            this.mSearchBarPreviewContainer.setTranslationY((-offsetY) * slideOffset);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    BaseCardContainer.BaseCustomizationAsyncTask getSaveCustomizations() {
        return new BaseCardContainer.BaseCustomizationAsyncTask() { // from class: net.oneplus.h2launcher.customizations.CustomizationsContainerView.1
            private List<BaseCustomizationCard.SaveCustomizationTask> mTasks;

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                this.mTasks = new ArrayList();
                this.mTasks.addAll(CustomizationsContainerView.this.mPager.gatherSaveCustomizationTasks());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... params) {
                for (BaseCustomizationCard.SaveCustomizationTask task : this.mTasks) {
                    task.run();
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // net.oneplus.h2launcher.customizations.BaseCardContainer.BaseCustomizationAsyncTask, android.os.AsyncTask
            public void onPostExecute(Void aVoid) {
                super.onPostExecute(aVoid);
                CustomizationsContainerView.this.reloadCustomizations();
                CustomizationsContainerView.this.mLauncher.onCustomizationsDone();
            }
        };
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    public void onLeavingCardContainer() {
        super.onLeavingCardContainer();
        if (this.mCustomizationCellLayoutPivotY != Float.MIN_VALUE) {
            this.mCustomizationCellLayout.setPivotY(this.mCustomizationCellLayoutPivotY);
            this.mCustomizationCellLayoutPivotY = Float.MIN_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer, net.oneplus.h2launcher.BaseContainerView
    public void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        super.onUpdateBackgroundAndPaddings(searchBarBounds, padding);
        if (this.mSearchBarPreviewContainer != null) {
            ViewGroup.MarginLayoutParams searchBarParams = (ViewGroup.MarginLayoutParams) this.mSearchBarPreviewContainer.getLayoutParams();
            if (this.mNavigationBarHeight != 0) {
                searchBarParams.topMargin = (int) ((-this.mNavigationBarHeight) * this.mShrinkScale);
                searchBarParams.topMargin += this.mSearchBarPreviewMarginTopFix;
            } else {
                searchBarParams.topMargin = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer, android.view.View
    public void onFinishInflate() {
        ViewStub stub;
        super.onFinishInflate();
        if (StyleManager.getInstance().showSearchBarInOptions() && (stub = (ViewStub) findViewById(R.id.search_bar_preview_container_stub)) != null) {
            stub.setOnInflateListener(new ViewStub.OnInflateListener() { // from class: net.oneplus.h2launcher.customizations.CustomizationsContainerView.2
                @Override // android.view.ViewStub.OnInflateListener
                public void onInflate(ViewStub stub2, View inflated) {
                    CustomizationsContainerView.this.setupSearchBarPreviewContainer((FrameLayout) inflated);
                    stub2.setOnInflateListener(null);
                }
            });
            stub.inflate();
        }
        ImageView backButton = (ImageView) findViewById(R.id.up);
        if (backButton != null) {
            backButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.CustomizationsContainerView.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    CustomizationsContainerView.this.mLauncher.onBackPressed();
                }
            });
        }
        TextView saveButton = (TextView) findViewById(R.id.menu_save);
        if (saveButton != null) {
            saveButton.setVisibility(8);
        }
        this.mLauncher.setupCustomizationsButton();
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    public boolean animateToState(BaseCardContainer.State newState, int duration) {
        if (!super.animateToState(newState, duration)) {
            return false;
        }
        if (this.mSearchBarPreviewContainerAnimator != null) {
            this.mSearchBarPreviewContainerAnimator.cancel();
        }
        if (this.mSearchBarPreviewContainer != null) {
            float startAlpha = this.mState == BaseCardContainer.State.VISIBLE ? 0.0f : 1.0f;
            float endAlpha = this.mState == BaseCardContainer.State.VISIBLE ? 1.0f : 0.0f;
            if (Float.compare(startAlpha, endAlpha) != 0) {
                if (duration > 0) {
                    this.mSearchBarPreviewContainer.setAlpha(startAlpha);
                    this.mSearchBarPreviewContainerAnimator.alpha(endAlpha).withLayer().setDuration(duration).start();
                } else {
                    this.mSearchBarPreviewContainer.setAlpha(endAlpha);
                    AlphaUpdateListener.updateVisibility(this.mSearchBarPreviewContainer, this.mAccessibilityEnabled);
                }
            }
        }
        Workspace workspace = this.mLauncher.getWorkspace();
        this.mCustomizationCellLayout = (CellLayout) workspace.getChildAt(workspace.getCurrentPage());
        long screenId = workspace.getIdForScreen(this.mCustomizationCellLayout);
        if (screenId == Workspace.getCustomContentScreenId()) {
            Logger.d(TAG, "animateToState current page : " + workspace.getCurrentPage() + ", has custom content : " + workspace.hasCustomContent() + ", screen id : " + screenId);
            return false;
        }
        if (this.mCustomizationCellLayoutAnimator != null) {
            this.mCustomizationCellLayoutAnimator.cancel();
        }
        Size normalSize = getNormalCellLayoutSize();
        Size customizationSize = getCustomizationCellLayoutSize();
        Size startSize = this.mState == BaseCardContainer.State.VISIBLE ? normalSize : customizationSize;
        Size endSize = this.mState == BaseCardContainer.State.VISIBLE ? customizationSize : normalSize;
        if (startSize != null && endSize != null && !startSize.equals(endSize)) {
            int startHeight = startSize.getHeight();
            final int endWidth = endSize.getWidth();
            int endHeight = endSize.getHeight();
            this.mCustomizationCellLayoutPivotY = this.mCustomizationCellLayout.getPivotY();
            if (duration > 0) {
                final int heightOffset = Math.abs(endHeight - startHeight);
                this.mCustomizationCellLayoutAnimator = ValueAnimator.ofInt(startHeight, endHeight);
                this.mCustomizationCellLayoutAnimator.setDuration(duration);
                this.mCustomizationCellLayoutAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.customizations.CustomizationsContainerView.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        int newHeight = ((Integer) animation.getAnimatedValue()).intValue();
                        float fraction = animation.getAnimatedFraction();
                        float percentage = CustomizationsContainerView.this.mState == BaseCardContainer.State.VISIBLE ? fraction : 1.0f - fraction;
                        float translationY = ((-heightOffset) / 2.0f) * percentage;
                        int padding = (int) (heightOffset * percentage);
                        Rect paddings = new Rect(0, padding, 0, -padding);
                        CustomizationsContainerView.this.updateCustomizationCellLayout(endWidth, newHeight, translationY, paddings);
                    }
                });
                this.mCustomizationCellLayoutAnimator.start();
            } else {
                updateCustomizationCellLayout(endWidth, endHeight, 0.0f, new Rect(0, 0, 0, 0));
            }
        }
        this.mCustomizationCellLayoutScale = StyleManager.getInstance().getWorkspaceScreenScaleInOptions();
        float startScale = this.mState == BaseCardContainer.State.VISIBLE ? 1.0f : this.mCustomizationCellLayoutScale;
        float endScale = this.mState == BaseCardContainer.State.VISIBLE ? this.mCustomizationCellLayoutScale : 1.0f;
        int translationYDimenResId = StyleManager.getInstance().getResourceId(StyleConstant.WORKSPACE_SCREEN_OPTIONS_TRANSLATION_Y);
        int endTranslationY = this.mState == BaseCardContainer.State.VISIBLE ? getResources().getDimensionPixelSize(translationYDimenResId) : 0;
        if (startScale != endScale) {
            if (duration > 0) {
                this.mCustomizationCellLayout.setPivotY(0.0f);
                this.mCustomizationCellLayout.animate().scaleX(endScale).scaleY(endScale).translationY(endTranslationY).setDuration(duration).withLayer().start();
            } else {
                this.mCustomizationCellLayout.setPivotY(0.0f);
                this.mCustomizationCellLayout.setScaleX(endScale);
                this.mCustomizationCellLayout.setScaleY(endScale);
                this.mCustomizationCellLayout.setTranslationY(endTranslationY);
            }
        }
        return true;
    }

    public void animateToPreview(PreferencesHelper.SearchBarStyle searchBarStyle) {
        animateToPreview(searchBarStyle, 300);
    }

    public void animateToPreview(PreferencesHelper.SearchBarStyle searchBarStyle, int duration) {
        if (this.mSearchBarPreviewContainer == null) {
            Log.d(TAG, "Search bar preview container is null.");
            return;
        }
        int count = this.mSearchBarPreviewContainer.getChildCount();
        for (int index = 0; index < count; index++) {
            View child = this.mSearchBarPreviewContainer.getChildAt(index);
            if (child != null) {
                child.setVisibility(4);
            }
        }
        final View searchBarPreview = getSearchBarPreviewTarget(searchBarStyle);
        if (searchBarPreview != null) {
            searchBarPreview.setAlpha(0.0f);
            if (this.mSearchBarPreviewAnimator != null) {
                this.mSearchBarPreviewAnimator.cancel();
            }
            this.mSearchBarPreviewAnimator = searchBarPreview.animate();
            this.mSearchBarPreviewAnimator.alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.CustomizationsContainerView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    searchBarPreview.setVisibility(0);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    AlphaUpdateListener.updateVisibility(searchBarPreview, CustomizationsContainerView.this.mAccessibilityEnabled);
                }
            }).withLayer().setDuration(duration).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCustomizationCellLayout(int width, int height, float translationY, Rect paddings) {
        if (this.mCustomizationCellLayout != null) {
            this.mCustomizationCellLayout.setFixedSize(width, height);
            this.mCustomizationCellLayout.setTranslationY(translationY);
            this.mCustomizationCellLayout.setPadding(paddings.left, paddings.top, paddings.right, paddings.bottom);
            this.mCustomizationCellLayout.requestLayout();
        }
    }

    private Size getNormalCellLayoutSize() {
        Workspace workspace;
        if (this.mNormalCellLayoutSize == null && this.mLauncher != null && (workspace = this.mLauncher.getWorkspace()) != null) {
            int count = workspace.getChildCount();
            View child = workspace.getChildAt(count - 1);
            if (child instanceof CellLayout) {
                this.mNormalCellLayoutSize = new Size(child.getWidth(), child.getHeight());
            }
        }
        return this.mNormalCellLayoutSize;
    }

    private Size getCustomizationCellLayoutSize() {
        Size size;
        if (StyleManager.getInstance().showSearchBarInOptions() && (size = getNormalCellLayoutSize()) != null) {
            int quickSearchBarHeight = (int) ((getResources().getDimensionPixelSize(R.dimen.customization_quick_search_bar_height) * getResources().getInteger(R.integer.config_quickSearchBarHeightPercentage)) / 100.0f);
            int width = size.getWidth();
            int height = size.getHeight() + quickSearchBarHeight;
            this.mCustomizationCellLayoutSize = new Size(width, height);
        }
        return this.mCustomizationCellLayoutSize;
    }

    private View getSearchBarPreviewTarget(PreferencesHelper.SearchBarStyle searchBarStyle) {
        switch (searchBarStyle) {
            case DEFAULT:
                return this.mSearchBarPreviewDefault;
            case TRANSPARENT:
                return this.mSearchBarPreviewTransparent;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupSearchBarPreviewContainer(FrameLayout searchBarPreviewContainer) {
        this.mSearchBarPreviewContainer = searchBarPreviewContainer;
        this.mSearchBarPreviewContainerAnimator = new LauncherViewPropertyAnimator(this.mSearchBarPreviewContainer);
        this.mSearchBarPreviewContainerAnimator.setInterpolator(new DecelerateInterpolator(2.0f));
        this.mSearchBarPreviewContainerAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.CustomizationsContainerView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                if (CustomizationsContainerView.this.mSearchBarPreviewContainer != null) {
                    CustomizationsContainerView.this.mSearchBarPreviewContainer.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (CustomizationsContainerView.this.mSearchBarPreviewContainer != null) {
                    AlphaUpdateListener.updateVisibility(CustomizationsContainerView.this.mSearchBarPreviewContainer, CustomizationsContainerView.this.mAccessibilityEnabled);
                }
            }
        });
        if (this.mSearchBarPreviewContainer != null) {
            this.mSearchBarPreviewDefault = this.mSearchBarPreviewContainer.findViewById(R.id.search_bar_preview_default);
            this.mSearchBarPreviewTransparent = this.mSearchBarPreviewContainer.findViewById(R.id.search_bar_preview_transparent);
            Resources resources = getResources();
            boolean isRtl = Utilities.isRtl(resources);
            Rect padding = this.mLauncher.getDeviceProfile().getWorkspacePadding(isRtl);
            this.mSearchBarPreviewContainer.setPadding(padding.left, 0, padding.right, 0);
            int shrinkPercentage = resources.getInteger(R.integer.config_workspaceOverviewShrinkPercentage);
            this.mShrinkScale = shrinkPercentage / 100.0f;
            this.mSearchBarPreviewContainer.setScaleX(this.mShrinkScale);
            this.mSearchBarPreviewContainer.setScaleY(this.mShrinkScale);
        }
    }
}
