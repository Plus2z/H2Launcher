package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Trace;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.oneplus.h2launcher.FoldersTransitionController;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.SearchDropTargetBar;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.allapps.AllAppsContainerView;
import net.oneplus.h2launcher.allapps.AllAppsGridAdapter;
import net.oneplus.h2launcher.customizations.BaseCardContainer;
import net.oneplus.h2launcher.customizations.CustomizationsContainerView;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.WallpapersContainerView;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementContainerView;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.UiThreadCircularReveal;
import net.oneplus.h2launcher.widget.WidgetsContainerView;

/* loaded from: classes.dex */
public class LauncherStateTransitionAnimation {
    public static final int BUILD_AND_SET_LAYER = 1;
    public static final int BUILD_LAYER = 0;
    public static final int FOLDERS = 3;
    public static final int SINGLE_FRAME_DELAY = 16;
    public static final String TAG = LauncherStateTransitionAnimation.class.getSimpleName();
    AnimatorSet mCurrentAnimation;
    FoldersTransitionController mFoldersController;
    Launcher mLauncher;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class PrivateTransitionCallbacks {
        PrivateTransitionCallbacks() {
        }

        float getMaterialRevealViewFinalAlpha(View revealView) {
            return 0.0f;
        }

        float getMaterialRevealViewStartFinalRadius() {
            return 0.0f;
        }

        boolean isContentViewAlphaEnabled() {
            return true;
        }

        AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(View revealView, View buttonView) {
            return null;
        }

        void onTransitionComplete() {
        }
    }

    public LauncherStateTransitionAnimation(Launcher l) {
        this.mLauncher = l;
        this.mFoldersController = this.mLauncher.getFoldersController();
    }

    public void startAnimationToAllApps(Workspace.State fromWorkspaceState, boolean animated, final boolean startSearchAfterTransition) {
        final AllAppsContainerView toView = this.mLauncher.getAppsView();
        if (toView == null) {
            Logger.w(TAG, "[startAnimationToAllApps] appsView is null. Should not be here!");
            return;
        }
        View buttonView = this.mLauncher.getAllAppsButton();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.1
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewStartFinalRadius() {
                int allAppsButtonSize = LauncherStateTransitionAnimation.this.mLauncher.getDeviceProfile().allAppsButtonVisualSize;
                return allAppsButtonSize / 2;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(View revealView, final View allAppsButtonView) {
                return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                        allAppsButtonView.setVisibility(4);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        allAppsButtonView.setVisibility(0);
                    }
                };
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                if (startSearchAfterTransition) {
                    toView.startAppsSearch();
                }
            }
        };
        this.mCurrentAnimation = startAnimationToOverlay(fromWorkspaceState, Workspace.State.NORMAL_HIDDEN, buttonView, toView, toView.getContentView(), toView.getRevealView(), toView.getSearchBarView(), animated, cb);
    }

    public void startAnimationToWidgets(Workspace.State fromWorkspaceState, boolean animated) {
        WidgetsContainerView toView = this.mLauncher.getWidgetsView();
        View buttonView = this.mLauncher.getWidgetsButton();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.2
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewFinalAlpha(View revealView) {
                return 0.3f;
            }
        };
        this.mCurrentAnimation = startAnimationToOverlay(fromWorkspaceState, Workspace.State.OVERVIEW_HIDDEN, buttonView, toView, toView.getContentView(), toView.getRevealView(), null, animated, cb);
    }

    public void startAnimationToCustomizations(Workspace.State fromWorkspaceState, boolean animated) {
        if (fromWorkspaceState == Workspace.State.SHRUNKEN_ALL_APPS) {
            final AllAppsContainerView appsView = this.mLauncher.getAppsView();
            if (appsView == null) {
                Logger.w(TAG, "[startAnimationToCustomizations] appsView is null. Should not be here!");
                return;
            }
            this.mLauncher.getCustomizationsView();
            PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.3
                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                float getMaterialRevealViewFinalAlpha(View revealView) {
                    return 1.0f;
                }

                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                float getMaterialRevealViewStartFinalRadius() {
                    return 0.0f;
                }

                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                boolean isContentViewAlphaEnabled() {
                    return true;
                }

                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, final View allAppsButtonView) {
                    return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.3.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animation) {
                            revealView.setLayerType(2, null);
                            allAppsButtonView.setVisibility(0);
                            allAppsButtonView.setAlpha(0.0f);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animation) {
                            revealView.setVisibility(4);
                            revealView.setLayerType(0, null);
                            allAppsButtonView.setAlpha(1.0f);
                        }
                    };
                }

                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                void onTransitionComplete() {
                    appsView.getAdapter().setUpdateIconsInBackground(false);
                }
            };
            this.mCurrentAnimation = startAnimationToCustomizationFromOverlay(fromWorkspaceState, Workspace.State.CUSTOMIZATIONS, -1, appsView.getRevealView(), appsView, appsView.getContentView(), appsView.getRevealView(), appsView.getSearchBarView(), animated, null, cb);
            return;
        }
        CustomizationsContainerView toView = this.mLauncher.getCustomizationsView();
        PrivateTransitionCallbacks cb2 = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.4
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return false;
            }
        };
        this.mCurrentAnimation = startAnimationToOverlay(fromWorkspaceState, Workspace.State.CUSTOMIZATIONS, toView.getRevealView(), toView, toView.getContentView(), toView.getRevealView(), null, animated, cb2);
    }

    public void startAnimationToShrunkenAllApps(Workspace.State fromWorkspaceState, boolean animated) {
        final AllAppsContainerView toView = this.mLauncher.getAppsView();
        if (toView == null) {
            Logger.w(TAG, "[startAnimationToShrunkenAllApps] appsView is null. Should not be here!");
            return;
        }
        this.mLauncher.getCustomizationsView();
        final boolean isFirstInitialized = toView.isFirstInitialized();
        if (isFirstInitialized) {
            toView.getAppsRecyclerView().setAdapter(null);
        }
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.5
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewFinalAlpha(View revealView) {
                return 0.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewStartFinalRadius() {
                return 0.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return true;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                toView.enableScrollBar(false);
                AllAppsGridAdapter adapter = toView.getAdapter();
                if (isFirstInitialized) {
                    toView.setFirstInitialized(false);
                    adapter.setUpdateIconsInBackground(true);
                }
                toView.getAppsRecyclerView().setAdapter(adapter);
            }
        };
        this.mCurrentAnimation = startAnimationToOverlay(fromWorkspaceState, Workspace.State.SHRUNKEN_ALL_APPS, toView.getRevealView(), toView, toView.getContentView(), toView.getRevealView(), toView.getSearchBarView(), animated, cb);
    }

    public void startAnimationToWallpapers(Workspace.State fromWorkspaceState, boolean animated, int requestCode, int resultCode, Intent data) {
        WallpapersContainerView toView = this.mLauncher.getWallpapersView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.6
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return false;
            }
        };
        if (toView != null) {
            toView.init(requestCode, resultCode, data);
            this.mCurrentAnimation = startAnimationToOverlay(fromWorkspaceState, Workspace.State.WALLPAPERS, toView.getRevealView(), toView, toView.getContentView(), toView.getRevealView(), null, animated, cb);
        }
    }

    public void startAnimationToIconRearrangement(Workspace.State fromWorkspaceState, boolean animated) {
        IconRearrangementContainerView iconRearrangementView = this.mLauncher.getIconRearrangementView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.7
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, View widgetsButtonView) {
                return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.7.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        revealView.setVisibility(4);
                    }
                };
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return false;
            }
        };
        this.mCurrentAnimation = startAnimationToOverlay(fromWorkspaceState, Workspace.State.ICON_REARRANGEMENT, iconRearrangementView.getRevealView(), iconRearrangementView, iconRearrangementView.getContentView(), iconRearrangementView.getRevealView(), null, animated, cb);
    }

    public void startAnimationToFolders(Workspace.State fromWorkspaceState, boolean animated) {
        FoldersContainerView toView = this.mLauncher.getFoldersView();
        View buttonView = toView.getRevealView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.8
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 0.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                LauncherStateTransitionAnimation.this.mLauncher.getWindow().setSoftInputMode(48);
            }
        };
        startAnimationToFolderOverlay(fromWorkspaceState, Workspace.State.NORMAL_HIDDEN, buttonView, toView, animated, 3, cb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startAnimationToWorkspace(boolean animated, Runnable onCompleteRunnable) {
        startAnimationToWorkspaceFromFolders(Workspace.State.NORMAL, animated, onCompleteRunnable);
    }

    public void startAnimationToWorkspace(Launcher.State fromState, Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, boolean animated, Runnable onCompleteRunnable) {
        if (toWorkspaceState != Workspace.State.NORMAL && toWorkspaceState != Workspace.State.SPRING_LOADED && toWorkspaceState != Workspace.State.OVERVIEW) {
            Log.e(TAG, "Unexpected call to startAnimationToWorkspace");
        }
        Logger.d(TAG, "[startAnimationToWorkspace] fromState=%s, fromWorkspaceState=%s, toWorkspaceState=%s", fromState, fromWorkspaceState, toWorkspaceState);
        if (fromState == Launcher.State.APPS) {
            startAnimationToWorkspaceFromAllApps(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
            return;
        }
        if (fromState == Launcher.State.CUSTOMIZATIONS) {
            startAnimationToWorkspaceFromCustomizations(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
            return;
        }
        if (fromState == Launcher.State.SHRUNKEN_ALLAPPS) {
            startAnimationToWorkspaceFromCustomizations(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
            return;
        }
        if (fromState == Launcher.State.WALLPAPER) {
            startAnimationToWorkspaceFromWallpaper(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
            return;
        }
        if (fromState == Launcher.State.ICON_REARRANGEMENT) {
            startAnimationToWorkspaceFromIconRearrangement(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated);
            return;
        }
        if (fromState == Launcher.State.APPS_SPRING_LOADED) {
            StyleManager.getInstance();
            if (StyleManager.isStandardLayout()) {
                startAnimationToWorkspaceFromAllApps(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
                return;
            } else {
                startAnimationToWorkspaceFromWidgets(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
                return;
            }
        }
        startAnimationToWorkspaceFromWidgets(fromWorkspaceState, toWorkspaceState, toWorkspacePage, animated, onCompleteRunnable);
    }

    @SuppressLint({"NewApi"})
    private AnimatorSet startAnimationToOverlay(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, View buttonView, final View toView, View contentView, final View revealView, final View overlaySearchBarView, final boolean animated, final PrivateTransitionCallbacks pCb) {
        float revealViewToAlpha;
        float revealViewToYDrift;
        float revealViewToXDrift;
        Logger.d(TAG, "startAnimationToWorkspaceFromOverlay(" + fromWorkspaceState + ", " + toWorkspaceState + ")");
        final AnimatorSet animation = LauncherAnimUtils.createAnimatorSet();
        Resources res = this.mLauncher.getResources();
        boolean material = Utilities.ATLEAST_LOLLIPOP;
        int revealDuration = res.getInteger(R.integer.config_overlayRevealTime);
        int overlayDuration = res.getInteger(R.integer.config_overlayTransitionTime);
        int itemsAlphaStagger = res.getInteger(R.integer.config_overlayItemsAlphaStagger);
        final boolean customizationToShrunkenAllApps = fromWorkspaceState == Workspace.State.CUSTOMIZATIONS && toWorkspaceState == Workspace.State.SHRUNKEN_ALL_APPS;
        boolean shrunkenAllAppsToCustomization = fromWorkspaceState == Workspace.State.SHRUNKEN_ALL_APPS && toWorkspaceState == Workspace.State.CUSTOMIZATIONS;
        final View fromView = this.mLauncher.getWorkspace();
        final HashMap<View, Integer> layerViews = new HashMap<>();
        boolean initialized = buttonView != null;
        cancelAnimation();
        Animator workspaceAnim = this.mLauncher.startWorkspaceStateChangeAnimation(toWorkspaceState, -1, animated, layerViews);
        startWorkspaceSearchBarAnimation(animation, fromWorkspaceState, toWorkspaceState, animated ? revealDuration : 0, overlaySearchBarView);
        if (shrunkenAllAppsToCustomization) {
            AllAppsContainerView allAppsContainerView = this.mLauncher.getAppsView();
            if (allAppsContainerView != null) {
                allAppsContainerView.setVisibility(4);
            } else {
                Logger.w(TAG, "[startAnimationToOverlay] appsView is null. Should not be here!");
            }
        }
        startCustomizationsViewAnimation(toWorkspaceState, animated ? overlayDuration : 0);
        startWallpapersViewAnimation(toWorkspaceState, animated ? overlayDuration : 0);
        if (!animated) {
            overlayDuration = 0;
        }
        startIconRearrangementViewAnimation(toWorkspaceState, overlayDuration);
        if (animated && initialized) {
            int width = revealView.getMeasuredWidth();
            int height = revealView.getMeasuredHeight();
            float revealRadius = (float) Math.hypot(width / 2, height / 2);
            revealView.setVisibility(0);
            revealView.setAlpha(0.0f);
            revealView.setTranslationY(0.0f);
            revealView.setTranslationX(0.0f);
            if (material) {
                int[] buttonViewToPanelDelta = Utilities.getCenterDeltaInScreenSpace(revealView, buttonView, null);
                revealViewToAlpha = pCb.getMaterialRevealViewFinalAlpha(revealView);
                revealViewToYDrift = buttonViewToPanelDelta[1];
                revealViewToXDrift = buttonViewToPanelDelta[0];
            } else {
                revealViewToAlpha = 0.0f;
                revealViewToYDrift = (height * 2) / 3;
                revealViewToXDrift = 0.0f;
            }
            PropertyValuesHolder panelAlpha = PropertyValuesHolder.ofFloat("alpha", revealViewToAlpha, 1.0f);
            PropertyValuesHolder panelDriftY = PropertyValuesHolder.ofFloat("translationY", revealViewToYDrift, 0.0f);
            PropertyValuesHolder panelDriftX = PropertyValuesHolder.ofFloat("translationX", revealViewToXDrift, 0.0f);
            ObjectAnimator panelAlphaAndDrift = ObjectAnimator.ofPropertyValuesHolder(revealView, panelAlpha, panelDriftY, panelDriftX);
            panelAlphaAndDrift.setDuration(revealDuration);
            panelAlphaAndDrift.setInterpolator(new LogDecelerateInterpolator(100, 0));
            layerViews.put(revealView, 1);
            animation.play(panelAlphaAndDrift);
            if (overlaySearchBarView != null && !customizationToShrunkenAllApps) {
                overlaySearchBarView.setAlpha(0.0f);
                ObjectAnimator searchBarAlpha = ObjectAnimator.ofFloat(overlaySearchBarView, "alpha", 0.0f, 1.0f);
                searchBarAlpha.setDuration(100L);
                searchBarAlpha.setInterpolator(new AccelerateInterpolator(1.5f));
                layerViews.put(overlaySearchBarView, 1);
                animation.play(searchBarAlpha);
            }
            contentView.setVisibility(0);
            contentView.setTranslationY(revealViewToYDrift);
            layerViews.put(contentView, 1);
            if (customizationToShrunkenAllApps) {
                itemsAlphaStagger = 0;
            }
            ObjectAnimator pageDrift = ObjectAnimator.ofFloat(contentView, "translationY", revealViewToYDrift, 0.0f);
            pageDrift.setDuration(revealDuration);
            pageDrift.setInterpolator(new LogDecelerateInterpolator(100, 0));
            pageDrift.setStartDelay(itemsAlphaStagger);
            animation.play(pageDrift);
            boolean contentViewAlphaEnabled = pCb.isContentViewAlphaEnabled();
            if (contentViewAlphaEnabled) {
                contentView.setAlpha(0.0f);
                ObjectAnimator itemsAlpha = ObjectAnimator.ofFloat(contentView, "alpha", 0.0f, 1.0f);
                itemsAlpha.setDuration(revealDuration);
                itemsAlpha.setInterpolator(new AccelerateInterpolator(1.5f));
                itemsAlpha.setStartDelay(itemsAlphaStagger);
                animation.play(itemsAlpha);
            }
            if (material) {
                float startRadius = pCb.getMaterialRevealViewStartFinalRadius();
                Animator.AnimatorListener listener = pCb.getMaterialRevealViewAnimatorListener(revealView, buttonView);
                Animator reveal = UiThreadCircularReveal.createCircularReveal(revealView, width / 2, height / 2, startRadius, revealRadius);
                reveal.setDuration(revealDuration);
                reveal.setInterpolator(new LogDecelerateInterpolator(100, 0));
                if (listener != null) {
                    reveal.addListener(listener);
                }
                animation.play(reveal);
            }
            animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation2) {
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(fromView, animated, false);
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(toView, animated, false);
                    revealView.setVisibility(4);
                    if (overlaySearchBarView != null) {
                        overlaySearchBarView.setVisibility(customizationToShrunkenAllApps ? 4 : 0);
                    }
                    for (View v : layerViews.keySet()) {
                        if (((Integer) layerViews.get(v)).intValue() == 1) {
                            v.setLayerType(0, null);
                        }
                    }
                    LauncherStateTransitionAnimation.this.cleanupAnimation();
                    pCb.onTransitionComplete();
                }
            });
            if (workspaceAnim != null) {
                animation.play(workspaceAnim);
            }
            dispatchOnLauncherTransitionPrepare(fromView, animated, false);
            dispatchOnLauncherTransitionPrepare(toView, animated, false);
            Runnable startAnimRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.10
                @Override // java.lang.Runnable
                public void run() {
                    if (LauncherStateTransitionAnimation.this.mCurrentAnimation == animation) {
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(fromView, animated, false);
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(toView, animated, false);
                        for (View v : layerViews.keySet()) {
                            if (((Integer) layerViews.get(v)).intValue() == 1) {
                                v.setLayerType(2, null);
                            }
                            if (Utilities.ATLEAST_LOLLIPOP && Utilities.isViewAttachedToWindow(v)) {
                                v.buildLayer();
                            }
                        }
                        toView.requestFocus();
                        animation.start();
                    }
                }
            };
            toView.bringToFront();
            toView.setVisibility(0);
            if (overlaySearchBarView != null) {
                overlaySearchBarView.setVisibility(customizationToShrunkenAllApps ? 4 : 0);
            }
            toView.post(startAnimRunnable);
            return animation;
        }
        toView.setTranslationX(0.0f);
        toView.setTranslationY(0.0f);
        toView.setScaleX(1.0f);
        toView.setScaleY(1.0f);
        toView.setVisibility(0);
        toView.bringToFront();
        contentView.setVisibility(0);
        dispatchOnLauncherTransitionPrepare(fromView, animated, false);
        dispatchOnLauncherTransitionStart(fromView, animated, false);
        dispatchOnLauncherTransitionEnd(fromView, animated, false);
        dispatchOnLauncherTransitionPrepare(toView, animated, false);
        dispatchOnLauncherTransitionStart(toView, animated, false);
        dispatchOnLauncherTransitionEnd(toView, animated, false);
        pCb.onTransitionComplete();
        return null;
    }

    @SuppressLint({"NewApi"})
    private void startAnimationToFolderOverlay(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, View buttonView, final FoldersContainerView toView, final boolean animated, int animType, final PrivateTransitionCallbacks pCb) {
        Logger.d(TAG, "startAnimationToFolderOverlay(" + fromWorkspaceState + ", " + toWorkspaceState + ")");
        final AnimatorSet animation = LauncherAnimUtils.createAnimatorSet();
        Resources res = this.mLauncher.getResources();
        final View fromView = this.mLauncher.getWorkspace();
        final HashMap<View, Integer> layerViews = new HashMap<>();
        boolean initialized = buttonView != null;
        cancelAnimation();
        Animator workspaceAnim = this.mLauncher.isIconRearrangementMode() ? null : this.mLauncher.startWorkspaceStateChangeAnimation(toWorkspaceState, -1, animated, layerViews);
        View contentView = toView.getContentView();
        if (!animated || !initialized) {
            toView.setTranslationX(0.0f);
            toView.setTranslationY(0.0f);
            toView.setScaleX(1.0f);
            toView.setScaleY(1.0f);
            toView.setAlpha(1.0f);
            toView.setVisibility(0);
            contentView.setVisibility(0);
            dispatchOnLauncherTransitionPrepare(fromView, animated, false);
            dispatchOnLauncherTransitionStart(fromView, animated, false);
            dispatchOnLauncherTransitionEnd(fromView, animated, false);
            dispatchOnLauncherTransitionPrepare(toView, animated, false);
            dispatchOnLauncherTransitionStart(toView, animated, false);
            dispatchOnLauncherTransitionEnd(toView, animated, false);
            pCb.onTransitionComplete();
            return;
        }
        if (animType == 3) {
            layerViews.put(contentView, 1);
            animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation2) {
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(fromView, animated, false);
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(toView, animated, false);
                    for (View v : layerViews.keySet()) {
                        if (((Integer) layerViews.get(v)).intValue() == 1) {
                            v.setLayerType(0, null);
                        }
                    }
                    LauncherStateTransitionAnimation.this.cleanupAnimation();
                    pCb.onTransitionComplete();
                }
            });
            int duration = res.getInteger(R.integer.config_foldersTransitionTime);
            boolean shouldPost = this.mFoldersController.animateToFolders(animation, duration);
            if (workspaceAnim != null) {
                animation.play(workspaceAnim);
            }
            dispatchOnLauncherTransitionPrepare(fromView, animated, false);
            dispatchOnLauncherTransitionPrepare(toView, animated, false);
            Runnable startAnimRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.12
                @Override // java.lang.Runnable
                public void run() {
                    if (LauncherStateTransitionAnimation.this.mCurrentAnimation == animation) {
                        Trace.beginSection("PullUpBoost");
                        Trace.endSection();
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(fromView, animated, false);
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(toView, animated, false);
                        for (View v : layerViews.keySet()) {
                            if (((Integer) layerViews.get(v)).intValue() == 1 && v.getVisibility() != 8) {
                                v.setLayerType(2, null);
                            }
                            if (Utilities.ATLEAST_LOLLIPOP && v.isAttachedToWindow() && v.getVisibility() != 8) {
                                v.buildLayer();
                            }
                        }
                        toView.requestFocus();
                        animation.start();
                    }
                }
            };
            this.mCurrentAnimation = animation;
            if (shouldPost) {
                toView.post(startAnimRunnable);
            } else {
                startAnimRunnable.run();
            }
        }
    }

    private void startAnimationToWorkspaceFromAllApps(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, boolean animated, Runnable onCompleteRunnable) {
        AllAppsContainerView appsView = this.mLauncher.getAppsView();
        if (appsView == null) {
            Logger.w(TAG, "[startAnimationToWorkspaceFromAllApps] appsView is null. Should not be here!");
        } else {
            PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.13
                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                float getMaterialRevealViewFinalAlpha(View revealView) {
                    return 1.0f;
                }

                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                float getMaterialRevealViewStartFinalRadius() {
                    int allAppsButtonSize = LauncherStateTransitionAnimation.this.mLauncher.getDeviceProfile().allAppsButtonVisualSize;
                    return allAppsButtonSize / 2;
                }

                @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
                public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, final View allAppsButtonView) {
                    return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.13.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animation) {
                            allAppsButtonView.setVisibility(0);
                            allAppsButtonView.setAlpha(0.0f);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animation) {
                            revealView.setVisibility(4);
                            allAppsButtonView.setAlpha(1.0f);
                        }
                    };
                }
            };
            this.mCurrentAnimation = startAnimationToWorkspaceFromOverlay(fromWorkspaceState, toWorkspaceState, toWorkspacePage, this.mLauncher.getAllAppsButton(), appsView, appsView.getContentView(), appsView.getRevealView(), appsView.getSearchBarView(), animated, onCompleteRunnable, cb);
        }
    }

    private void startAnimationToWorkspaceFromFolders(Workspace.State toWorkspaceState, boolean animated, Runnable onCompleteRunnable) {
        FoldersContainerView foldersView = this.mLauncher.getFoldersView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.14
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 0.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                LauncherStateTransitionAnimation.this.mLauncher.getWindow().setSoftInputMode(32);
            }
        };
        startAnimationToWorkspaceFromFolderOverlay(toWorkspaceState, foldersView.getRevealView(), foldersView, animated, 3, onCompleteRunnable, cb);
    }

    private void startAnimationToWorkspaceFromWidgets(Workspace.State fromWorkspaceState, final Workspace.State toWorkspaceState, int toWorkspacePage, boolean animated, Runnable onCompleteRunnable) {
        WidgetsContainerView widgetsView = this.mLauncher.getWidgetsView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.15
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 0.3f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, View widgetsButtonView) {
                return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.15.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        revealView.setVisibility(4);
                    }
                };
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                if (toWorkspaceState == Workspace.State.OVERVIEW) {
                    LauncherStateTransitionAnimation.this.mLauncher.inflateViewStubs();
                }
            }
        };
        if (fromWorkspaceState == Workspace.State.NORMAL && toWorkspaceState == Workspace.State.OVERVIEW) {
            this.mLauncher.mDragLayer.snapshot();
            WallpaperPreview.Model.getInstance(this.mLauncher).preloadWallpapers(this.mLauncher);
        }
        this.mCurrentAnimation = startAnimationToWorkspaceFromOverlay(fromWorkspaceState, toWorkspaceState, toWorkspacePage, this.mLauncher.getWidgetsButton(), widgetsView, widgetsView.getContentView(), widgetsView.getRevealView(), null, animated, onCompleteRunnable, cb);
    }

    private void startAnimationToWorkspaceFromCustomizations(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, boolean animated, Runnable onCompleteRunnable) {
        final CustomizationsContainerView customizationsView = this.mLauncher.getCustomizationsView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.16
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, View widgetsButtonView) {
                return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.16.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        revealView.setVisibility(4);
                    }
                };
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                if (customizationsView != null) {
                    customizationsView.saveCustomizations();
                }
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return false;
            }
        };
        this.mCurrentAnimation = startAnimationToWorkspaceFromOverlay(fromWorkspaceState, toWorkspaceState, toWorkspacePage, customizationsView.getRevealView(), customizationsView, customizationsView.getContentView(), customizationsView.getRevealView(), null, animated, onCompleteRunnable, cb);
    }

    private void startAnimationToWorkspaceFromWallpaper(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, boolean animated, Runnable onCompleteRunnable) {
        final WallpapersContainerView wallpapersView = this.mLauncher.getWallpapersView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.17
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, View widgetsButtonView) {
                return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.17.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        revealView.setVisibility(4);
                    }
                };
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
                if (wallpapersView != null) {
                    Logger.d(LauncherStateTransitionAnimation.TAG, "onTransitionComplete#wallpaperView saveCustomizations");
                    wallpapersView.saveCustomizations();
                }
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return false;
            }
        };
        this.mCurrentAnimation = startAnimationToWorkspaceFromOverlay(fromWorkspaceState, toWorkspaceState, toWorkspacePage, wallpapersView.getRevealView(), wallpapersView, wallpapersView.getContentView(), wallpapersView.getRevealView(), null, animated, onCompleteRunnable, cb);
        LauncherClings cling = this.mLauncher.getClings();
        if (cling != null && cling.isWallpaperShowing()) {
            cling.dismissWallpapersCling(false);
        }
    }

    private void startAnimationToWorkspaceFromIconRearrangement(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, boolean animated) {
        IconRearrangementContainerView iconRearrangementView = this.mLauncher.getIconRearrangementView();
        PrivateTransitionCallbacks cb = new PrivateTransitionCallbacks() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.18
            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            float getMaterialRevealViewFinalAlpha(View revealView) {
                return 1.0f;
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            public AnimatorListenerAdapter getMaterialRevealViewAnimatorListener(final View revealView, View widgetsButtonView) {
                return new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.18.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        revealView.setVisibility(4);
                    }
                };
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            void onTransitionComplete() {
            }

            @Override // net.oneplus.h2launcher.LauncherStateTransitionAnimation.PrivateTransitionCallbacks
            boolean isContentViewAlphaEnabled() {
                return false;
            }
        };
        this.mCurrentAnimation = startAnimationToWorkspaceFromOverlay(fromWorkspaceState, toWorkspaceState, toWorkspacePage, iconRearrangementView.getRevealView(), iconRearrangementView, iconRearrangementView.getContentView(), iconRearrangementView.getRevealView(), null, animated, null, cb);
    }

    private AnimatorSet startAnimationToWorkspaceFromOverlay(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, View buttonView, final View fromView, final View contentView, View revealView, final View overlaySearchBarView, final boolean animated, final Runnable onCompleteRunnable, final PrivateTransitionCallbacks pCb) {
        float revealViewToYDrift;
        float revealViewToXDrift;
        Logger.d(TAG, "startAnimationToWorkspaceFromOverlay(" + fromWorkspaceState + ", " + toWorkspaceState + ", " + toWorkspacePage + ")");
        final AnimatorSet animation = LauncherAnimUtils.createAnimatorSet();
        Resources res = this.mLauncher.getResources();
        boolean material = Utilities.ATLEAST_LOLLIPOP;
        int revealDuration = res.getInteger(R.integer.config_overlayRevealTime);
        int overlayDuration = res.getInteger(R.integer.config_overlayTransitionTime);
        int itemsAlphaStagger = res.getInteger(R.integer.config_overlayItemsAlphaStagger);
        final View toView = this.mLauncher.getWorkspace();
        final HashMap<View, Integer> layerViews = new HashMap<>();
        boolean initialized = buttonView != null;
        cancelAnimation();
        Animator workspaceAnim = this.mLauncher.startWorkspaceStateChangeAnimation(toWorkspaceState, toWorkspacePage, animated, layerViews);
        boolean shrunkenAllAppsToOverview = fromWorkspaceState == Workspace.State.SHRUNKEN_ALL_APPS && (toWorkspaceState == Workspace.State.OVERVIEW || toWorkspaceState == Workspace.State.NORMAL);
        if (shrunkenAllAppsToOverview && this.mLauncher.getAppsView() != null) {
            this.mLauncher.getAppsView().setVisibility(4);
        }
        startWorkspaceSearchBarAnimation(animation, fromWorkspaceState, toWorkspaceState, animated ? revealDuration : 0, overlaySearchBarView);
        startCustomizationsViewAnimation(toWorkspaceState, animated ? overlayDuration : 0);
        startWallpapersViewAnimation(toWorkspaceState, animated ? overlayDuration : 0);
        if (!animated) {
            overlayDuration = 0;
        }
        startIconRearrangementViewAnimation(toWorkspaceState, overlayDuration);
        if (animated && initialized) {
            if (workspaceAnim != null) {
                animation.play(workspaceAnim);
            }
            if (fromView.getVisibility() == 0) {
                int width = revealView.getMeasuredWidth();
                int height = revealView.getMeasuredHeight();
                float revealRadius = (float) Math.hypot(width / 2, height / 2);
                revealView.setVisibility(0);
                revealView.setAlpha(1.0f);
                revealView.setTranslationY(0.0f);
                layerViews.put(revealView, 1);
                if (material) {
                    int[] buttonViewToPanelDelta = Utilities.getCenterDeltaInScreenSpace(revealView, buttonView, null);
                    revealViewToYDrift = buttonViewToPanelDelta[1];
                    revealViewToXDrift = buttonViewToPanelDelta[0];
                } else {
                    revealViewToYDrift = (height * 2) / 3;
                    revealViewToXDrift = 0.0f;
                }
                TimeInterpolator decelerateInterpolator = material ? new LogDecelerateInterpolator(100, 0) : new DecelerateInterpolator(1.0f);
                ObjectAnimator panelDriftY = ObjectAnimator.ofFloat(revealView, "translationY", 0.0f, revealViewToYDrift);
                panelDriftY.setDuration(revealDuration - 16);
                panelDriftY.setStartDelay(itemsAlphaStagger + 16);
                panelDriftY.setInterpolator(decelerateInterpolator);
                animation.play(panelDriftY);
                ObjectAnimator panelDriftX = ObjectAnimator.ofFloat(revealView, "translationX", 0.0f, revealViewToXDrift);
                panelDriftX.setDuration(revealDuration - 16);
                panelDriftX.setStartDelay(itemsAlphaStagger + 16);
                panelDriftX.setInterpolator(decelerateInterpolator);
                animation.play(panelDriftX);
                ObjectAnimator panelAlpha = ObjectAnimator.ofFloat(revealView, "alpha", 1.0f, 0.3f);
                panelAlpha.setDuration(revealDuration);
                panelAlpha.setStartDelay(itemsAlphaStagger + 16);
                panelAlpha.setInterpolator(decelerateInterpolator);
                animation.play(panelAlpha);
                layerViews.put(contentView, 1);
                ObjectAnimator pageDrift = ObjectAnimator.ofFloat(contentView, "translationY", 0.0f, revealViewToYDrift);
                contentView.setTranslationY(0.0f);
                pageDrift.setDuration(revealDuration - 16);
                pageDrift.setInterpolator(decelerateInterpolator);
                pageDrift.setStartDelay(itemsAlphaStagger + 16);
                animation.play(pageDrift);
                boolean contentViewAlphaEnabled = pCb.isContentViewAlphaEnabled();
                if (contentViewAlphaEnabled) {
                    ObjectAnimator itemsAlpha = ObjectAnimator.ofFloat(contentView, "alpha", 1.0f, 0.0f);
                    itemsAlpha.setDuration(100L);
                    itemsAlpha.setInterpolator(decelerateInterpolator);
                    animation.play(itemsAlpha);
                }
                if (overlaySearchBarView != null) {
                    overlaySearchBarView.setAlpha(1.0f);
                    ObjectAnimator searchAlpha = ObjectAnimator.ofFloat(overlaySearchBarView, "alpha", 1.0f, 0.0f);
                    searchAlpha.setDuration(material ? 100L : 150L);
                    searchAlpha.setInterpolator(decelerateInterpolator);
                    searchAlpha.setStartDelay(material ? 0L : itemsAlphaStagger + 16);
                    layerViews.put(overlaySearchBarView, 1);
                    animation.play(searchAlpha);
                }
                if (material) {
                    float finalRadius = pCb.getMaterialRevealViewStartFinalRadius();
                    Animator.AnimatorListener listener = pCb.getMaterialRevealViewAnimatorListener(revealView, buttonView);
                    Animator reveal = UiThreadCircularReveal.createCircularReveal(revealView, width / 2, height / 2, revealRadius, finalRadius);
                    reveal.setInterpolator(new LogDecelerateInterpolator(100, 0));
                    reveal.setDuration(revealDuration);
                    reveal.setStartDelay(itemsAlphaStagger);
                    if (listener != null) {
                        reveal.addListener(listener);
                    }
                    animation.play(reveal);
                }
            }
            dispatchOnLauncherTransitionPrepare(fromView, animated, true);
            dispatchOnLauncherTransitionPrepare(toView, animated, true);
            animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.19
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation2) {
                    fromView.setVisibility(8);
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(fromView, animated, true);
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(toView, animated, true);
                    if (onCompleteRunnable != null) {
                        onCompleteRunnable.run();
                    }
                    for (View v : layerViews.keySet()) {
                        if (((Integer) layerViews.get(v)).intValue() == 1) {
                            v.setLayerType(0, null);
                        }
                    }
                    if (contentView != null) {
                        contentView.setTranslationX(0.0f);
                        contentView.setTranslationY(0.0f);
                        contentView.setAlpha(1.0f);
                    }
                    if (overlaySearchBarView != null) {
                        overlaySearchBarView.setAlpha(1.0f);
                    }
                    LauncherStateTransitionAnimation.this.cleanupAnimation();
                    pCb.onTransitionComplete();
                }
            });
            Runnable startAnimRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.20
                @Override // java.lang.Runnable
                public void run() {
                    if (LauncherStateTransitionAnimation.this.mCurrentAnimation == animation) {
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(fromView, animated, false);
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(toView, animated, false);
                        for (View v : layerViews.keySet()) {
                            if (((Integer) layerViews.get(v)).intValue() == 1) {
                                v.setLayerType(2, null);
                            }
                            if (Utilities.ATLEAST_LOLLIPOP && Utilities.isViewAttachedToWindow(v)) {
                                v.buildLayer();
                            }
                        }
                        animation.start();
                    }
                }
            };
            fromView.post(startAnimRunnable);
            return animation;
        }
        fromView.setVisibility(fromView instanceof AllAppsContainerView ? 4 : 8);
        dispatchOnLauncherTransitionPrepare(fromView, animated, true);
        dispatchOnLauncherTransitionStart(fromView, animated, true);
        dispatchOnLauncherTransitionEnd(fromView, animated, true);
        dispatchOnLauncherTransitionPrepare(toView, animated, true);
        dispatchOnLauncherTransitionStart(toView, animated, true);
        dispatchOnLauncherTransitionEnd(toView, animated, true);
        pCb.onTransitionComplete();
        if (onCompleteRunnable != null) {
            onCompleteRunnable.run();
        }
        return null;
    }

    private AnimatorSet startAnimationToCustomizationFromOverlay(Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, int toWorkspacePage, View buttonView, final View fromView, final View contentView, View revealView, final View overlaySearchBarView, final boolean animated, final Runnable onCompleteRunnable, final PrivateTransitionCallbacks pCb) {
        float revealViewToYDrift;
        float revealViewToXDrift;
        Logger.d(TAG, "startAnimationToCustomizationFromOverlay(" + fromWorkspaceState + ", " + toWorkspaceState + ", " + toWorkspacePage + ")");
        final AnimatorSet animation = LauncherAnimUtils.createAnimatorSet();
        Resources res = this.mLauncher.getResources();
        boolean material = Utilities.ATLEAST_LOLLIPOP;
        int revealDuration = res.getInteger(R.integer.config_overlayRevealTime);
        int overlayDuration = res.getInteger(R.integer.config_overlayTransitionTime);
        int itemsAlphaStagger = res.getInteger(R.integer.config_overlayItemsAlphaStagger);
        final View toView = this.mLauncher.getWorkspace();
        final HashMap<View, Integer> layerViews = new HashMap<>();
        boolean initialized = buttonView != null;
        cancelAnimation();
        Animator workspaceAnim = this.mLauncher.startWorkspaceStateChangeAnimation(toWorkspaceState, toWorkspacePage, animated, layerViews);
        startWorkspaceSearchBarAnimation(animation, fromWorkspaceState, toWorkspaceState, animated ? revealDuration : 0, overlaySearchBarView);
        startCustomizationsViewAnimation(toWorkspaceState, animated ? overlayDuration : 0);
        if (!animated) {
            overlayDuration = 0;
        }
        startWallpapersViewAnimation(toWorkspaceState, overlayDuration);
        if (animated && initialized) {
            if (workspaceAnim != null) {
                animation.play(workspaceAnim);
            }
            if (fromView.getVisibility() == 0) {
                int width = revealView.getMeasuredWidth();
                int height = revealView.getMeasuredHeight();
                float revealRadius = (float) Math.hypot(width / 2, height / 2);
                revealView.setVisibility(0);
                revealView.setAlpha(1.0f);
                revealView.setTranslationY(0.0f);
                layerViews.put(revealView, 1);
                if (material) {
                    int[] buttonViewToPanelDelta = Utilities.getCenterDeltaInScreenSpace(revealView, buttonView, null);
                    revealViewToYDrift = buttonViewToPanelDelta[1];
                    revealViewToXDrift = buttonViewToPanelDelta[0];
                } else {
                    revealViewToYDrift = (height * 2) / 3;
                    revealViewToXDrift = 0.0f;
                }
                TimeInterpolator decelerateInterpolator = material ? new LogDecelerateInterpolator(100, 0) : new DecelerateInterpolator(1.0f);
                ObjectAnimator panelDriftY = ObjectAnimator.ofFloat(revealView, "translationY", 0.0f, revealViewToYDrift);
                panelDriftY.setDuration(revealDuration - 16);
                panelDriftY.setStartDelay(itemsAlphaStagger + 16);
                panelDriftY.setInterpolator(decelerateInterpolator);
                animation.play(panelDriftY);
                ObjectAnimator panelDriftX = ObjectAnimator.ofFloat(revealView, "translationX", 0.0f, revealViewToXDrift);
                panelDriftX.setDuration(revealDuration - 16);
                panelDriftX.setStartDelay(itemsAlphaStagger + 16);
                panelDriftX.setInterpolator(decelerateInterpolator);
                animation.play(panelDriftX);
                ObjectAnimator panelAlpha = ObjectAnimator.ofFloat(revealView, "alpha", 1.0f, 0.3f);
                panelAlpha.setDuration(revealDuration);
                panelAlpha.setStartDelay(itemsAlphaStagger + 16);
                panelAlpha.setInterpolator(decelerateInterpolator);
                animation.play(panelAlpha);
                layerViews.put(contentView, 1);
                ObjectAnimator pageDrift = ObjectAnimator.ofFloat(contentView, "translationY", 0.0f, revealViewToYDrift);
                contentView.setTranslationY(0.0f);
                pageDrift.setDuration(revealDuration - 16);
                pageDrift.setInterpolator(decelerateInterpolator);
                pageDrift.setStartDelay(itemsAlphaStagger + 16);
                animation.play(pageDrift);
                boolean contentViewAlphaEnabled = pCb.isContentViewAlphaEnabled();
                if (contentViewAlphaEnabled) {
                    contentView.setAlpha(1.0f);
                    ObjectAnimator itemsAlpha = ObjectAnimator.ofFloat(contentView, "alpha", 1.0f, 0.0f);
                    itemsAlpha.setDuration(100L);
                    itemsAlpha.setInterpolator(decelerateInterpolator);
                    animation.play(itemsAlpha);
                }
                if (overlaySearchBarView != null) {
                    overlaySearchBarView.setAlpha(1.0f);
                    ObjectAnimator searchAlpha = ObjectAnimator.ofFloat(overlaySearchBarView, "alpha", 1.0f, 0.0f);
                    searchAlpha.setDuration(material ? 100L : 150L);
                    searchAlpha.setInterpolator(decelerateInterpolator);
                    searchAlpha.setStartDelay(material ? 0L : itemsAlphaStagger + 16);
                    layerViews.put(overlaySearchBarView, 1);
                    animation.play(searchAlpha);
                }
                if (material) {
                    float finalRadius = pCb.getMaterialRevealViewStartFinalRadius();
                    Animator.AnimatorListener listener = pCb.getMaterialRevealViewAnimatorListener(revealView, buttonView);
                    Animator reveal = UiThreadCircularReveal.createCircularReveal(revealView, width / 2, height / 2, revealRadius, finalRadius);
                    reveal.setInterpolator(new LogDecelerateInterpolator(100, 0));
                    reveal.setDuration(revealDuration);
                    reveal.setStartDelay(itemsAlphaStagger);
                    if (listener != null) {
                        reveal.addListener(listener);
                    }
                    animation.play(reveal);
                }
            }
            dispatchOnLauncherTransitionPrepare(fromView, animated, true);
            dispatchOnLauncherTransitionPrepare(toView, animated, true);
            animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.21
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation2) {
                    fromView.setVisibility(8);
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(fromView, animated, true);
                    LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(toView, animated, true);
                    if (onCompleteRunnable != null) {
                        onCompleteRunnable.run();
                    }
                    for (View v : layerViews.keySet()) {
                        if (((Integer) layerViews.get(v)).intValue() == 1) {
                            v.setLayerType(0, null);
                        }
                    }
                    if (contentView != null) {
                        contentView.setTranslationX(0.0f);
                        contentView.setTranslationY(0.0f);
                        contentView.setAlpha(1.0f);
                    }
                    if (overlaySearchBarView != null) {
                        overlaySearchBarView.setAlpha(1.0f);
                    }
                    LauncherStateTransitionAnimation.this.cleanupAnimation();
                    pCb.onTransitionComplete();
                }
            });
            Runnable startAnimRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.22
                @Override // java.lang.Runnable
                public void run() {
                    if (LauncherStateTransitionAnimation.this.mCurrentAnimation == animation) {
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(fromView, animated, false);
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(toView, animated, false);
                        for (View v : layerViews.keySet()) {
                            if (((Integer) layerViews.get(v)).intValue() == 1) {
                                v.setLayerType(2, null);
                            }
                            if (Utilities.ATLEAST_LOLLIPOP && Utilities.isViewAttachedToWindow(v)) {
                                v.buildLayer();
                            }
                        }
                        animation.start();
                    }
                }
            };
            fromView.post(startAnimRunnable);
            return animation;
        }
        fromView.setVisibility(8);
        dispatchOnLauncherTransitionPrepare(fromView, animated, true);
        dispatchOnLauncherTransitionStart(fromView, animated, true);
        dispatchOnLauncherTransitionEnd(fromView, animated, true);
        dispatchOnLauncherTransitionPrepare(toView, animated, true);
        dispatchOnLauncherTransitionStart(toView, animated, true);
        dispatchOnLauncherTransitionEnd(toView, animated, true);
        pCb.onTransitionComplete();
        if (onCompleteRunnable != null) {
            onCompleteRunnable.run();
        }
        return null;
    }

    private void startAnimationToWorkspaceFromFolderOverlay(Workspace.State toWorkspaceState, View buttonView, final FoldersContainerView fromView, final boolean animated, int animType, final Runnable onCompleteRunnable, final PrivateTransitionCallbacks pCb) {
        Logger.d(TAG, "startAnimationToWorkspaceFromFolderOverlay(" + toWorkspaceState + ")");
        final AnimatorSet animation = LauncherAnimUtils.createAnimatorSet();
        Resources res = this.mLauncher.getResources();
        final View toView = this.mLauncher.getWorkspace();
        View contentView = fromView.getContentView();
        final HashMap<View, Integer> layerViews = new HashMap<>();
        boolean initialized = buttonView != null;
        cancelAnimation();
        Animator workspaceAnim = this.mLauncher.isIconRearrangementMode() ? null : this.mLauncher.startWorkspaceStateChangeAnimation(toWorkspaceState, -1, animated, layerViews);
        if (!animated || !initialized) {
            this.mFoldersController.endAnimation(FoldersTransitionController.State.WORKSPACE);
            fromView.setVisibility(8);
            dispatchOnLauncherTransitionPrepare(fromView, animated, true);
            dispatchOnLauncherTransitionStart(fromView, animated, true);
            dispatchOnLauncherTransitionEnd(fromView, animated, true);
            dispatchOnLauncherTransitionPrepare(toView, animated, true);
            dispatchOnLauncherTransitionStart(toView, animated, true);
            dispatchOnLauncherTransitionEnd(toView, animated, true);
            pCb.onTransitionComplete();
            if (onCompleteRunnable != null) {
                onCompleteRunnable.run();
                return;
            }
            return;
        }
        if (animType == 3) {
            layerViews.put(contentView, 1);
            animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.23
                boolean canceled = false;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation2) {
                    this.canceled = true;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation2) {
                    if (!this.canceled) {
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(fromView, animated, true);
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionEnd(toView, animated, true);
                        if (onCompleteRunnable != null) {
                            onCompleteRunnable.run();
                        }
                        for (View v : layerViews.keySet()) {
                            if (((Integer) layerViews.get(v)).intValue() == 1) {
                                v.setLayerType(0, null);
                            }
                        }
                        LauncherStateTransitionAnimation.this.cleanupAnimation();
                        pCb.onTransitionComplete();
                    }
                }
            });
            int duration = res.getInteger(R.integer.config_foldersTransitionTime);
            boolean shouldPost = this.mFoldersController.animateToWorkspace(animation, duration);
            if (workspaceAnim != null) {
                animation.play(workspaceAnim);
            }
            dispatchOnLauncherTransitionPrepare(fromView, animated, true);
            dispatchOnLauncherTransitionPrepare(toView, animated, true);
            Runnable startAnimRunnable = new Runnable() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.24
                @Override // java.lang.Runnable
                public void run() {
                    if (LauncherStateTransitionAnimation.this.mCurrentAnimation == animation) {
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(fromView, animated, false);
                        LauncherStateTransitionAnimation.this.dispatchOnLauncherTransitionStart(toView, animated, false);
                        for (View v : layerViews.keySet()) {
                            if (((Integer) layerViews.get(v)).intValue() == 1 && v.getVisibility() != 8) {
                                v.setLayerType(2, null);
                            }
                            if (Utilities.ATLEAST_LOLLIPOP && v.isAttachedToWindow() && v.getVisibility() != 8) {
                                v.buildLayer();
                            }
                        }
                        toView.requestFocus();
                        animation.start();
                    }
                }
            };
            this.mCurrentAnimation = animation;
            if (shouldPost) {
                fromView.post(startAnimRunnable);
            } else {
                startAnimRunnable.run();
            }
        }
    }

    private void startWorkspaceSearchBarAnimation(AnimatorSet animation, Workspace.State fromWorkspaceState, Workspace.State toWorkspaceState, final int duration, View overlaySearchBar) {
        final SearchDropTargetBar.State toSearchBarState = toWorkspaceState.getSearchDropTargetBarState();
        if (overlaySearchBar != null) {
            if (toWorkspaceState == Workspace.State.NORMAL && fromWorkspaceState == Workspace.State.NORMAL_HIDDEN) {
                if (Utilities.isDarkModeTheme(this.mLauncher) && duration > 0) {
                    animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.25
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animation2) {
                            if (Utilities.isDarkModeTheme(LauncherStateTransitionAnimation.this.mLauncher)) {
                                LauncherStateTransitionAnimation.this.mLauncher.getSearchDropTargetBar().animateToState(toSearchBarState, duration / 2);
                            }
                        }
                    });
                    return;
                } else {
                    this.mLauncher.getSearchDropTargetBar().animateToState(toSearchBarState, 0);
                    return;
                }
            }
            if (fromWorkspaceState == Workspace.State.NORMAL) {
                animation.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.LauncherStateTransitionAnimation.26
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation2) {
                        if (Utilities.isDarkModeTheme(LauncherStateTransitionAnimation.this.mLauncher)) {
                            LauncherStateTransitionAnimation.this.mLauncher.getSearchDropTargetBar().animateToState(toSearchBarState, duration / 2);
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation2) {
                        if (!Utilities.isDarkModeTheme(LauncherStateTransitionAnimation.this.mLauncher)) {
                            LauncherStateTransitionAnimation.this.mLauncher.getSearchDropTargetBar().animateToState(toSearchBarState, 0);
                        }
                    }
                });
                return;
            } else {
                this.mLauncher.getSearchDropTargetBar().animateToState(toSearchBarState, duration);
                return;
            }
        }
        this.mLauncher.getSearchDropTargetBar().animateToState(toSearchBarState, duration);
    }

    private void startCustomizationsViewAnimation(Workspace.State toWorkspaceState, int duration) {
        BaseCardContainer.State toCustomizationsViewState = (toWorkspaceState == Workspace.State.CUSTOMIZATIONS || toWorkspaceState == Workspace.State.SHRUNKEN_ALL_APPS) ? BaseCardContainer.State.VISIBLE : BaseCardContainer.State.INVISIBLE;
        CustomizationsContainerView customizationsContainerView = this.mLauncher.getCustomizationsView();
        if (customizationsContainerView != null) {
            customizationsContainerView.animateToState(toCustomizationsViewState, duration);
        }
    }

    private void startWallpapersViewAnimation(Workspace.State toWorkspaceState, int duration) {
        BaseCardContainer.State toWallpapersViewState = toWorkspaceState == Workspace.State.WALLPAPERS ? BaseCardContainer.State.VISIBLE : BaseCardContainer.State.INVISIBLE;
        WallpapersContainerView wallpapersContainerView = this.mLauncher.getWallpapersView();
        if (wallpapersContainerView != null) {
            wallpapersContainerView.animateToState(toWallpapersViewState, duration);
        }
    }

    private void startIconRearrangementViewAnimation(Workspace.State toWorkspaceState, int duration) {
        BaseCardContainer.State toIconRearrangementViewState = toWorkspaceState == Workspace.State.ICON_REARRANGEMENT ? BaseCardContainer.State.VISIBLE : BaseCardContainer.State.INVISIBLE;
        IconRearrangementContainerView iconRearrangementContainerView = this.mLauncher.getIconRearrangementView();
        if (iconRearrangementContainerView != null) {
            iconRearrangementContainerView.animateToState(toIconRearrangementViewState, duration);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void dispatchOnLauncherTransitionPrepare(View view, boolean animated, boolean toWorkspace) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionPrepare(this.mLauncher, animated, toWorkspace);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void dispatchOnLauncherTransitionStart(View view, boolean animated, boolean toWorkspace) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionStart(this.mLauncher, animated, toWorkspace);
        }
        dispatchOnLauncherTransitionStep(view, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void dispatchOnLauncherTransitionStep(View view, float t) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionStep(this.mLauncher, t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void dispatchOnLauncherTransitionEnd(View view, boolean animated, boolean toWorkspace) {
        if (view instanceof LauncherTransitionable) {
            ((LauncherTransitionable) view).onLauncherTransitionEnd(this.mLauncher, animated, toWorkspace);
        }
        dispatchOnLauncherTransitionStep(view, 1.0f);
    }

    private void cancelAnimation() {
        if (this.mCurrentAnimation != null) {
            ArrayList<Animator.AnimatorListener> listeners = null;
            if (!this.mCurrentAnimation.isStarted()) {
                listeners = (ArrayList) this.mCurrentAnimation.getListeners().clone();
            }
            this.mCurrentAnimation.setDuration(0L);
            this.mCurrentAnimation.cancel();
            if (listeners != null) {
                Iterator<Animator.AnimatorListener> it = listeners.iterator();
                while (it.hasNext()) {
                    Animator.AnimatorListener listener = it.next();
                    listener.onAnimationEnd(this.mCurrentAnimation);
                }
            }
            this.mCurrentAnimation = null;
        }
    }

    void cleanupAnimation() {
        this.mCurrentAnimation = null;
    }
}
