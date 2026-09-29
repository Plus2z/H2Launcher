package net.oneplus.h2launcher.iconrearrangement;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import net.oneplus.h2launcher.AlphaUpdateListener;
import net.oneplus.h2launcher.BaseContainerView;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.BaseCardContainer;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class IconRearrangementContainerView extends BaseContainerView implements View.OnClickListener {
    private static final boolean DEBUG = false;
    private static final float MILLISECONDS_PER_INCH = 125.0f;
    private static final String TAG = IconRearrangementContainerView.class.getSimpleName();
    boolean mAccessibilityEnabled;
    private View mContent;
    private IconRearrangementPanel mIconRearrangementPanel;
    private LauncherViewPropertyAnimator mIconRearrangementPanelAnimator;
    Launcher mLauncher;
    protected BaseCardContainer.State mState;

    public IconRearrangementContainerView(Context context) {
        this(context, null);
    }

    public IconRearrangementContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IconRearrangementContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mState = BaseCardContainer.State.INVISIBLE;
        this.mAccessibilityEnabled = false;
        this.mLauncher = (Launcher) context;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = findViewById(R.id.content);
        this.mIconRearrangementPanel = (IconRearrangementPanel) findViewById(R.id.icon_rearrangement_content_layout);
        if (this.mIconRearrangementPanel != null) {
            this.mIconRearrangementPanelAnimator = new LauncherViewPropertyAnimator(this.mIconRearrangementPanel);
            this.mIconRearrangementPanelAnimator.setInterpolator(new DecelerateInterpolator(2.0f));
            this.mIconRearrangementPanelAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementContainerView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (IconRearrangementContainerView.this.mIconRearrangementPanel != null) {
                        IconRearrangementContainerView.this.mIconRearrangementPanel.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (IconRearrangementContainerView.this.mIconRearrangementPanel != null) {
                        AlphaUpdateListener.updateVisibility(IconRearrangementContainerView.this.mIconRearrangementPanel, IconRearrangementContainerView.this.mAccessibilityEnabled);
                    }
                }
            });
        }
    }

    public View getContentView() {
        return this.mContent;
    }

    public View getRevealView() {
        return findViewById(R.id.icon_rearrangement_reveal_view);
    }

    public void scrollToTop() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
    }

    @Override // net.oneplus.h2launcher.BaseContainerView
    protected void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) this.mIconRearrangementPanel.getLayoutParams();
        params.bottomMargin = padding.bottom - this.mContainerBoundsInset;
    }

    public boolean animateToState(BaseCardContainer.State newState, int duration) {
        if (this.mState == newState) {
            Logger.d(TAG, "Skip animation since new state (" + newState + ") is the same as current state (" + this.mState + ")");
            return false;
        }
        this.mState = newState;
        if (this.mState == BaseCardContainer.State.INVISIBLE) {
            this.mLauncher.getIconRearrangementHelper().exitIconRearrangement();
        } else {
            this.mLauncher.getIconRearrangementHelper().enterIconRearrangement();
        }
        AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.mAccessibilityEnabled = am.isEnabled();
        this.mIconRearrangementPanelAnimator.cancel();
        if (this.mIconRearrangementPanel != null) {
            float startAlpha = this.mState == BaseCardContainer.State.VISIBLE ? 0.0f : 1.0f;
            float endAlpha = this.mState == BaseCardContainer.State.VISIBLE ? 1.0f : 0.0f;
            if (Float.compare(startAlpha, endAlpha) != 0) {
                if (duration > 0) {
                    this.mIconRearrangementPanel.setAlpha(startAlpha);
                    this.mIconRearrangementPanelAnimator.alpha(endAlpha).withLayer().setDuration(duration).start();
                } else {
                    this.mIconRearrangementPanel.setAlpha(endAlpha);
                    AlphaUpdateListener.updateVisibility(this.mIconRearrangementPanel, this.mAccessibilityEnabled);
                }
            }
        }
        return true;
    }

    public IconRearrangementPanel getIconRearrangementPanel() {
        return this.mIconRearrangementPanel;
    }
}
