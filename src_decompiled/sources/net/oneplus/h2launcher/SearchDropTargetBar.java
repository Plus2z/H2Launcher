package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.DragController;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.oos.StyleManager;

/* loaded from: classes.dex */
public class SearchDropTargetBar extends FrameLayout implements DragController.DragListener {
    private static int DEFAULT_DRAG_FADE_DURATION = 175;
    private static final AccelerateInterpolator sAccelerateInterpolator = new AccelerateInterpolator();
    boolean mAccessibilityEnabled;
    private boolean mDeferOnDragEnd;
    private ButtonDropTarget mDeleteDropTarget;
    View mDropTargetBar;
    private LauncherViewPropertyAnimator mDropTargetBarAnimator;
    private ButtonDropTarget mEditDropTarget;
    private ButtonDropTarget mInfoDropTarget;
    View mQSB;
    View mQSBOverlay;
    private LauncherViewPropertyAnimator mQSBSearchBarAnimator;
    private LauncherViewPropertyAnimator mQSBSearchBarOverlayAnimator;
    private State mState;
    private ButtonDropTarget mUninstallDropTarget;

    /* loaded from: classes.dex */
    public enum State {
        INVISIBLE(0.0f, 0.0f),
        SEARCH_BAR(1.0f, 0.0f),
        DROP_TARGET(0.0f, 1.0f);

        private final float mDropTargetBarAlpha;
        private final float mSearchBarAlpha;

        State(float sbAlpha, float dtbAlpha) {
            this.mSearchBarAlpha = sbAlpha;
            this.mDropTargetBarAlpha = dtbAlpha;
        }

        float getSearchBarAlpha() {
            return this.mSearchBarAlpha;
        }

        float getDropTargetBarAlpha() {
            return this.mDropTargetBarAlpha;
        }
    }

    public SearchDropTargetBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SearchDropTargetBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mState = State.SEARCH_BAR;
        this.mDeferOnDragEnd = false;
        this.mAccessibilityEnabled = false;
    }

    public void setup(Launcher launcher, DragController dragController) {
        dragController.addDragListener(this);
        dragController.setFlingToDeleteDropTarget(this.mDeleteDropTarget);
        dragController.addDragListener(this.mInfoDropTarget);
        dragController.addDragListener(this.mEditDropTarget);
        dragController.addDragListener(this.mDeleteDropTarget);
        dragController.addDragListener(this.mUninstallDropTarget);
        dragController.addDropTarget(this.mInfoDropTarget);
        dragController.addDropTarget(this.mEditDropTarget);
        dragController.addDropTarget(this.mDeleteDropTarget);
        dragController.addDropTarget(this.mUninstallDropTarget);
        this.mInfoDropTarget.setLauncher(launcher);
        this.mEditDropTarget.setLauncher(launcher);
        this.mDeleteDropTarget.setLauncher(launcher);
        this.mUninstallDropTarget.setLauncher(launcher);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDropTargetBar = findViewById(R.id.drag_target_bar);
        this.mInfoDropTarget = (ButtonDropTarget) this.mDropTargetBar.findViewById(R.id.info_target_text);
        this.mEditDropTarget = (ButtonDropTarget) this.mDropTargetBar.findViewById(R.id.edit_target_text);
        this.mDeleteDropTarget = (ButtonDropTarget) this.mDropTargetBar.findViewById(R.id.delete_target_text);
        this.mUninstallDropTarget = (ButtonDropTarget) this.mDropTargetBar.findViewById(R.id.uninstall_target_text);
        this.mInfoDropTarget.setSearchDropTargetBar(this);
        this.mEditDropTarget.setSearchDropTargetBar(this);
        this.mDeleteDropTarget.setSearchDropTargetBar(this);
        this.mUninstallDropTarget.setSearchDropTargetBar(this);
        this.mDropTargetBar.setAlpha(0.0f);
        this.mDropTargetBarAnimator = new LauncherViewPropertyAnimator(this.mDropTargetBar);
        this.mDropTargetBarAnimator.setInterpolator(sAccelerateInterpolator);
        this.mDropTargetBarAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.SearchDropTargetBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                SearchDropTargetBar.this.mDropTargetBar.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (SearchDropTargetBar.this.mDropTargetBar != null) {
                    AlphaUpdateListener.updateVisibility(SearchDropTargetBar.this.mDropTargetBar, SearchDropTargetBar.this.mAccessibilityEnabled);
                }
            }
        });
    }

    public void setQsbSearchBar(View qsb) {
        this.mQSB = qsb;
        if (this.mQSB != null) {
            this.mQSBSearchBarAnimator = new LauncherViewPropertyAnimator(this.mQSB);
            this.mQSBSearchBarAnimator.setInterpolator(sAccelerateInterpolator);
            this.mQSBSearchBarAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.SearchDropTargetBar.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (SearchDropTargetBar.this.mQSB != null) {
                        SearchDropTargetBar.this.mQSB.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (SearchDropTargetBar.this.mQSB != null) {
                        AlphaUpdateListener.updateVisibility(SearchDropTargetBar.this.mQSB, SearchDropTargetBar.this.mAccessibilityEnabled);
                    }
                }
            });
            return;
        }
        this.mQSBSearchBarAnimator = null;
    }

    public void setQsbSearchBarOverlay(View qsbOverlay) {
        this.mQSBOverlay = qsbOverlay;
        if (this.mQSBOverlay != null) {
            this.mQSBSearchBarOverlayAnimator = new LauncherViewPropertyAnimator(this.mQSBOverlay);
            this.mQSBSearchBarOverlayAnimator.setInterpolator(sAccelerateInterpolator);
            this.mQSBSearchBarOverlayAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.SearchDropTargetBar.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (SearchDropTargetBar.this.mQSBOverlay != null) {
                        SearchDropTargetBar.this.mQSBOverlay.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (SearchDropTargetBar.this.mQSBOverlay != null) {
                        AlphaUpdateListener.updateVisibility(SearchDropTargetBar.this.mQSBOverlay, SearchDropTargetBar.this.mAccessibilityEnabled);
                    }
                }
            });
            return;
        }
        this.mQSBSearchBarOverlayAnimator = null;
    }

    public void animateToState(State newState, int duration) {
        if (this.mState != newState || (newState == State.INVISIBLE && duration == 0)) {
            this.mState = newState;
            AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
            this.mAccessibilityEnabled = am.isEnabled();
            Context context = getContext().getApplicationContext();
            if (PreferencesHelper.isSearchBarStyleTransparent(context)) {
                animateViewAlpha(this.mQSBSearchBarOverlayAnimator, this.mQSBOverlay, newState.getSearchBarAlpha(), duration);
                if (this.mQSB != null) {
                    this.mQSB.setVisibility(newState == State.SEARCH_BAR ? 0 : 4);
                }
            } else {
                animateViewAlpha(this.mQSBSearchBarAnimator, this.mQSB, newState.getSearchBarAlpha(), duration);
            }
            animateViewAlpha(this.mDropTargetBarAnimator, this.mDropTargetBar, newState.getDropTargetBarAlpha(), duration);
        }
    }

    private void animateViewAlpha(LauncherViewPropertyAnimator animator, View v, float alpha, int duration) {
        if (v != null && animator != null) {
            animator.cancel();
            if (Float.compare(v.getAlpha(), alpha) != 0) {
                if (duration > 0) {
                    animator.alpha(alpha).withLayer().setDuration(duration).start();
                } else {
                    v.setAlpha(alpha);
                    AlphaUpdateListener.updateVisibility(v, this.mAccessibilityEnabled);
                }
            }
        }
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragStart(DragSource source, Object info, int dragAction) {
        animateToState(State.DROP_TARGET, DEFAULT_DRAG_FADE_DURATION);
    }

    public void deferOnDragEnd() {
        this.mDeferOnDragEnd = true;
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragEnd() {
        if (!this.mDeferOnDragEnd) {
            if (StyleManager.getInstance().showSearchBar()) {
                animateToState(State.SEARCH_BAR, DEFAULT_DRAG_FADE_DURATION);
                return;
            } else {
                animateToState(State.INVISIBLE, DEFAULT_DRAG_FADE_DURATION);
                return;
            }
        }
        this.mDeferOnDragEnd = false;
    }

    public Rect getSearchBarBounds() {
        if (this.mQSB == null) {
            return null;
        }
        int[] pos = new int[2];
        this.mQSB.getLocationOnScreen(pos);
        Rect rect = new Rect();
        rect.left = pos[0];
        rect.top = pos[1];
        rect.right = pos[0] + this.mQSB.getWidth();
        rect.bottom = pos[1] + this.mQSB.getHeight();
        return rect;
    }

    public void enableAccessibleDrag(boolean enable) {
        if (this.mQSB != null) {
            this.mQSB.setVisibility(enable ? 8 : 0);
        }
        this.mInfoDropTarget.enableAccessibleDrag(enable);
        this.mDeleteDropTarget.enableAccessibleDrag(enable);
        this.mEditDropTarget.enableAccessibleDrag(enable);
        this.mUninstallDropTarget.enableAccessibleDrag(enable);
    }
}
