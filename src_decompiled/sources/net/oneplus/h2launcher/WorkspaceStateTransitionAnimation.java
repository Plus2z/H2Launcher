package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import java.util.HashMap;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.allapps.AllAppsContainerView;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WorkspaceStateTransitionAnimation {
    static final int BACKGROUND_FADE_OUT_DURATION = 350;
    public static final int SCROLL_TO_CURRENT_PAGE = -1;
    public static final String TAG = "WorkspaceStateTransitionAnimation";
    int mAllAppsTransitionTime;
    float mCurrentScale;
    final Launcher mLauncher;
    float[] mNewAlphas;
    float[] mNewBackgroundAlphas;
    float mNewScale;
    float[] mOldAlphas;
    float[] mOldBackgroundAlphas;
    int mOverlayTransitionTime;
    float mOverviewModeShrinkFactor;
    int mOverviewTransitionTime;
    float mSpringLoadedShrinkFactor;
    AnimatorSet mStateAnimator;
    final Workspace mWorkspace;
    boolean mWorkspaceFadeInAdjacentScreens;
    float mWorkspaceScrimAlpha;
    int mLastChildCount = -1;
    final ZoomInInterpolator mZoomInInterpolator = new ZoomInInterpolator();

    public WorkspaceStateTransitionAnimation(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        Resources res = launcher.getResources();
        this.mAllAppsTransitionTime = res.getInteger(R.integer.config_allAppsTransitionTime);
        this.mOverviewTransitionTime = res.getInteger(R.integer.config_overviewTransitionTime);
        this.mOverlayTransitionTime = res.getInteger(R.integer.config_overlayTransitionTime);
        this.mSpringLoadedShrinkFactor = res.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f;
        this.mOverviewModeShrinkFactor = res.getInteger(R.integer.config_workspaceOverviewShrinkPercentage) / 100.0f;
        this.mWorkspaceScrimAlpha = res.getInteger(R.integer.config_workspaceScrimAlpha) / 100.0f;
        this.mWorkspaceFadeInAdjacentScreens = grid.shouldFadeAdjacentWorkspaceScreensWhileTransitionAnimation();
    }

    public AnimatorSet getAnimationToState(Workspace.State fromState, Workspace.State toState, int toPage, boolean animated, HashMap<View, Integer> layerViews) {
        AccessibilityManager am = (AccessibilityManager) this.mLauncher.getSystemService("accessibility");
        boolean accessibilityEnabled = am.isEnabled();
        TransitionStates states = new TransitionStates(fromState, toState);
        int workspaceDuration = getAnimationDuration(states);
        animateWorkspace(states, toPage, animated, workspaceDuration, layerViews, accessibilityEnabled);
        animateBackgroundGradient(states, animated, BACKGROUND_FADE_OUT_DURATION);
        return this.mStateAnimator;
    }

    public float getFinalScale() {
        return this.mNewScale;
    }

    private void reinitializeAnimationArrays() {
        int childCount = this.mWorkspace.getChildCount();
        if (this.mLastChildCount != childCount) {
            this.mOldBackgroundAlphas = new float[childCount];
            this.mOldAlphas = new float[childCount];
            this.mNewBackgroundAlphas = new float[childCount];
            this.mNewAlphas = new float[childCount];
        }
    }

    private int getAnimationDuration(TransitionStates states) {
        if (states.workspaceToAllApps || states.overviewToAllApps) {
            return this.mAllAppsTransitionTime;
        }
        if (states.workspaceToOverview || states.overviewToWorkspace) {
            return this.mOverviewTransitionTime;
        }
        return this.mOverlayTransitionTime;
    }

    private void animateWorkspace(TransitionStates states, int toPage, boolean animated, int duration, HashMap<View, Integer> layerViews, final boolean accessibilityEnabled) {
        Animator pageIndicatorAlpha;
        Animator hotseatAlpha;
        float finalAlpha;
        reinitializeAnimationArrays();
        cancelAnimation();
        if (animated) {
            this.mStateAnimator = LauncherAnimUtils.createAnimatorSet();
        }
        CellLayout cellLayout = this.mWorkspace.getScreenWithId(this.mWorkspace.getScreenIdForPageIndex(this.mWorkspace.getCurrentPage()));
        boolean isPageEmpty = false;
        if (cellLayout != null) {
            isPageEmpty = cellLayout.getShortcutsAndWidgets().getChildCount() == 0;
        }
        float finalBackgroundAlpha = (states.stateIsSpringLoaded || states.stateIsOverview || states.stateIsCustomizations || states.stateIsIconRearrangement) ? 1.0f : 0.0f;
        float finalHotseatAndPageIndicatorAlpha = (states.stateIsNormal || states.stateIsSpringLoaded) ? 1.0f : 0.0f;
        float finalOverviewPanelAlpha = states.stateIsOverview ? 1.0f : 0.0f;
        final float finalUtilsPanelAlpha = (!states.stateIsOverview || isPageEmpty) ? 0.0f : 1.0f;
        float finalWorkspaceTranslationY = (states.stateIsOverview || states.stateIsOverviewHidden || states.stateIsCustomizations || states.stateIsShrunkenAllApps || states.stateIsWallpapers || states.stateIsIconRearrangement) ? this.mWorkspace.getOverviewModeTranslationY() : 0.0f;
        float finalShrunkenAllAppsTranslationY = ((states.stateIsOverview || states.stateIsOverviewHidden || states.stateIsCustomizations || states.stateIsShrunkenAllApps || states.stateIsWallpapers || states.stateIsIconRearrangement) && StyleManager.getInstance().showAllApps()) ? this.mLauncher.getAppsView().getSearchBarView().getMeasuredHeight() / 2 : 0.0f;
        int childCount = this.mWorkspace.getChildCount();
        int customPageCount = this.mWorkspace.numCustomPages();
        this.mNewScale = 1.0f;
        if (states.stateIsOverview || states.stateIsIconRearrangement) {
            this.mWorkspace.disableShelfScroll();
        } else if (states.oldStateIsOverview || states.oldStateIsIconRearrangement) {
            this.mWorkspace.enableShelfScroll();
        }
        if (!states.stateIsNormal) {
            if (states.stateIsSpringLoaded) {
                this.mNewScale = this.mSpringLoadedShrinkFactor;
            } else if (states.stateIsOverview || states.stateIsOverviewHidden || states.stateIsCustomizations || states.stateIsShrunkenAllApps || states.stateIsWallpapers || states.stateIsIconRearrangement) {
                this.mNewScale = this.mOverviewModeShrinkFactor;
            }
        }
        if (toPage == -1) {
            toPage = this.mWorkspace.getPageNearestToCenterOfScreen();
        }
        this.mWorkspace.snapToPage(toPage, duration, this.mZoomInInterpolator);
        int i = 0;
        while (i < childCount) {
            CellLayout cl = (CellLayout) this.mWorkspace.getChildAt(i);
            boolean isCurrentPage = i == toPage;
            float initialAlpha = cl.getShortcutsAndWidgets().getAlpha();
            if (states.stateIsNormalHidden || states.stateIsOverviewHidden || states.stateIsShrunkenAllApps || states.stateIsWallpapers) {
                finalAlpha = 0.0f;
            } else if (states.stateIsNormal && this.mWorkspaceFadeInAdjacentScreens) {
                finalAlpha = (i == toPage || i < customPageCount) ? 1.0f : 0.0f;
            } else if (states.stateIsCustomizations) {
                finalAlpha = i == toPage ? 1.0f : 0.0f;
            } else {
                finalAlpha = 1.0f;
            }
            if (!this.mWorkspace.isSwitchingState() && (states.workspaceToAllApps || states.allAppsToWorkspace)) {
                if (states.allAppsToWorkspace && isCurrentPage) {
                    initialAlpha = 0.0f;
                } else if (!isCurrentPage) {
                    finalAlpha = 0.0f;
                    initialAlpha = 0.0f;
                }
                cl.setShortcutAndWidgetAlpha(initialAlpha);
            }
            this.mOldAlphas[i] = initialAlpha;
            this.mNewAlphas[i] = finalAlpha;
            if (animated) {
                this.mOldBackgroundAlphas[i] = cl.getBackgroundAlpha();
                this.mNewBackgroundAlphas[i] = (!states.stateIsCustomizations || i == toPage) ? finalBackgroundAlpha : 0.0f;
            } else {
                cl.setBackgroundAlpha(finalBackgroundAlpha);
                cl.setShortcutAndWidgetAlpha(finalAlpha);
            }
            i++;
        }
        final ViewGroup overviewPanel = this.mLauncher.getOverviewPanel();
        final ViewGroup utilsPanel = this.mLauncher.getUtilsPanel();
        View hotseat = this.mLauncher.getHotseat();
        View pageIndicator = this.mWorkspace.getPageIndicator();
        AllAppsContainerView allAppsContainerView = this.mLauncher.getAppsView();
        if (animated) {
            LauncherViewPropertyAnimator scale = new LauncherViewPropertyAnimator(this.mWorkspace);
            scale.scaleX(this.mNewScale).scaleY(this.mNewScale).translationY(finalWorkspaceTranslationY).setDuration(duration).setInterpolator(this.mZoomInInterpolator);
            this.mStateAnimator.play(scale);
            if (allAppsContainerView != null) {
                LauncherViewPropertyAnimator shrunkenAllApps = new LauncherViewPropertyAnimator(allAppsContainerView);
                shrunkenAllApps.scaleX(this.mNewScale).scaleY(this.mNewScale).translationY(finalWorkspaceTranslationY - finalShrunkenAllAppsTranslationY).setDuration(duration).setInterpolator(this.mZoomInInterpolator);
                this.mStateAnimator.play(shrunkenAllApps);
            }
            for (int index = 0; index < childCount; index++) {
                int i2 = index;
                final CellLayout cl2 = (CellLayout) this.mWorkspace.getChildAt(i2);
                float currentAlpha = cl2.getShortcutsAndWidgets().getAlpha();
                if (this.mOldAlphas[i2] == 0.0f && this.mNewAlphas[i2] == 0.0f) {
                    cl2.setBackgroundAlpha(this.mNewBackgroundAlphas[i2]);
                    cl2.setShortcutAndWidgetAlpha(this.mNewAlphas[i2]);
                } else {
                    if (layerViews != null) {
                        layerViews.put(cl2, 0);
                    }
                    if (this.mOldAlphas[i2] != this.mNewAlphas[i2] || currentAlpha != this.mNewAlphas[i2]) {
                        LauncherViewPropertyAnimator alphaAnim = new LauncherViewPropertyAnimator(cl2.getShortcutsAndWidgets());
                        alphaAnim.alpha(this.mNewAlphas[i2]).setDuration(duration).setInterpolator(this.mZoomInInterpolator);
                        final float newAlpha = this.mNewAlphas[i2];
                        alphaAnim.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.WorkspaceStateTransitionAnimation.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animation) {
                                float currentAlpha2 = cl2.getShortcutsAndWidgets().getAlpha();
                                Logger.d(WorkspaceStateTransitionAnimation.TAG, "alpha onAnimationEnd, currentAlpha = " + currentAlpha2 + ", finalAlpha = " + newAlpha);
                                cl2.getShortcutsAndWidgets().setAlpha(newAlpha);
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animation) {
                                Logger.d(WorkspaceStateTransitionAnimation.TAG, "alpha onAnimationCancel");
                            }
                        });
                        this.mStateAnimator.play(alphaAnim);
                    }
                    if (this.mOldBackgroundAlphas[i2] != 0.0f || this.mNewBackgroundAlphas[i2] != 0.0f) {
                        ValueAnimator bgAnim = ObjectAnimator.ofFloat(cl2, "backgroundAlpha", this.mOldBackgroundAlphas[i2], this.mNewBackgroundAlphas[i2]);
                        LauncherAnimUtils.ofFloat(cl2, 0.0f, 1.0f);
                        bgAnim.setInterpolator(this.mZoomInInterpolator);
                        bgAnim.setDuration(duration);
                        this.mStateAnimator.play(bgAnim);
                    }
                }
            }
            if (pageIndicator != null) {
                pageIndicatorAlpha = new LauncherViewPropertyAnimator(pageIndicator).alpha(finalHotseatAndPageIndicatorAlpha).withLayer();
                pageIndicatorAlpha.addListener(new AlphaUpdateListener(pageIndicator, accessibilityEnabled));
            } else {
                pageIndicatorAlpha = ValueAnimator.ofFloat(0.0f, 0.0f);
            }
            if (hotseat != null) {
                hotseatAlpha = new LauncherViewPropertyAnimator(hotseat).alpha(finalHotseatAndPageIndicatorAlpha);
                hotseatAlpha.addListener(new AlphaUpdateListener(hotseat, accessibilityEnabled));
            } else {
                hotseatAlpha = ValueAnimator.ofFloat(0.0f, 0.0f);
            }
            LauncherViewPropertyAnimator overviewPanelAlpha = new LauncherViewPropertyAnimator(overviewPanel).alpha(finalOverviewPanelAlpha);
            overviewPanelAlpha.addListener(new AlphaUpdateListener(overviewPanel, accessibilityEnabled));
            LauncherViewPropertyAnimator utilsPanelAlpha = new LauncherViewPropertyAnimator(utilsPanel).alpha(finalUtilsPanelAlpha);
            utilsPanelAlpha.addListener(new AlphaUpdateListener(utilsPanel, accessibilityEnabled));
            if (hotseat != null) {
                hotseat.setLayerType(2, null);
            }
            overviewPanel.setLayerType(2, null);
            utilsPanel.setLayerType(2, null);
            if (layerViews != null) {
                if (hotseat != null) {
                    layerViews.put(hotseat, 1);
                }
                layerViews.put(overviewPanel, 1);
                layerViews.put(utilsPanel, 1);
            } else {
                ((LauncherViewPropertyAnimator) hotseatAlpha).withLayer();
                overviewPanelAlpha.withLayer();
            }
            if (states.workspaceToOverview) {
                pageIndicatorAlpha.setInterpolator(new DecelerateInterpolator(2.0f));
                hotseatAlpha.setInterpolator(new DecelerateInterpolator(2.0f));
                overviewPanelAlpha.setInterpolator(null);
                utilsPanelAlpha.setInterpolator(null);
            } else if (states.overviewToWorkspace) {
                pageIndicatorAlpha.setInterpolator(null);
                hotseatAlpha.setInterpolator(null);
                overviewPanelAlpha.setInterpolator(new DecelerateInterpolator(2.0f));
                utilsPanelAlpha.setInterpolator(new DecelerateInterpolator(2.0f));
            }
            overviewPanelAlpha.setDuration(duration);
            utilsPanelAlpha.setDuration(duration);
            pageIndicatorAlpha.setDuration(duration);
            hotseatAlpha.setDuration(duration);
            this.mStateAnimator.play(overviewPanelAlpha);
            this.mStateAnimator.play(utilsPanelAlpha);
            this.mStateAnimator.play(hotseatAlpha);
            this.mStateAnimator.play(pageIndicatorAlpha);
            this.mStateAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.WorkspaceStateTransitionAnimation.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    utilsPanel.setVisibility(Float.compare(finalUtilsPanelAlpha, 1.0f) == 0 ? 0 : 8);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    WorkspaceStateTransitionAnimation.this.mStateAnimator = null;
                    if (accessibilityEnabled && overviewPanel.getVisibility() == 0) {
                        overviewPanel.getChildAt(0).performAccessibilityAction(64, null);
                    }
                }
            });
            return;
        }
        for (int index2 = 0; index2 < childCount; index2++) {
            int i3 = index2;
            CellLayout cl3 = (CellLayout) this.mWorkspace.getChildAt(i3);
            cl3.setBackgroundAlpha(this.mNewBackgroundAlphas[i3]);
            cl3.setShortcutAndWidgetAlpha(this.mNewAlphas[i3]);
        }
        overviewPanel.setAlpha(finalOverviewPanelAlpha);
        AlphaUpdateListener.updateVisibility(overviewPanel, accessibilityEnabled);
        utilsPanel.setAlpha(finalUtilsPanelAlpha);
        AlphaUpdateListener.updateVisibility(utilsPanel, accessibilityEnabled);
        if (hotseat != null) {
            hotseat.setAlpha(finalHotseatAndPageIndicatorAlpha);
            AlphaUpdateListener.updateVisibility(hotseat, accessibilityEnabled);
        }
        if (pageIndicator != null) {
            pageIndicator.setAlpha(finalHotseatAndPageIndicatorAlpha);
            AlphaUpdateListener.updateVisibility(pageIndicator, accessibilityEnabled);
        }
        this.mWorkspace.updateCustomContentVisibility();
        this.mWorkspace.setScaleX(this.mNewScale);
        this.mWorkspace.setScaleY(this.mNewScale);
        this.mWorkspace.setTranslationY(finalWorkspaceTranslationY);
        if (accessibilityEnabled && overviewPanel.getVisibility() == 0) {
            overviewPanel.getChildAt(0).performAccessibilityAction(64, null);
        }
    }

    private void animateBackgroundGradient(TransitionStates states, boolean animated, int duration) {
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        float startAlpha = dragLayer.getBackgroundAlpha();
        float finalAlpha = (states.stateIsNormal || states.stateIsNormalHidden) ? 0.0f : this.mWorkspaceScrimAlpha;
        if (finalAlpha != startAlpha) {
            if (animated) {
                ValueAnimator bgFadeOutAnimation = LauncherAnimUtils.ofFloat(this.mWorkspace, startAlpha, finalAlpha);
                bgFadeOutAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.WorkspaceStateTransitionAnimation.3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        dragLayer.setBackgroundAlpha(((Float) animation.getAnimatedValue()).floatValue());
                    }
                });
                bgFadeOutAnimation.setInterpolator(new DecelerateInterpolator(1.5f));
                bgFadeOutAnimation.setDuration(duration);
                this.mStateAnimator.play(bgFadeOutAnimation);
                return;
            }
            dragLayer.setBackgroundAlpha(finalAlpha);
        }
    }

    private void cancelAnimation() {
        if (this.mStateAnimator != null) {
            this.mStateAnimator.setDuration(0L);
            this.mStateAnimator.cancel();
        }
        this.mStateAnimator = null;
    }
}
