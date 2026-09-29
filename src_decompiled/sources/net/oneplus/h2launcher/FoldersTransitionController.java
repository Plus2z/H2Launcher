package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.support.annotation.Keep;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.PathInterpolator;
import net.oneplus.h2launcher.allapps.VerticalPullDetector;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TouchController;

/* loaded from: classes.dex */
public class FoldersTransitionController implements TouchController, View.OnLayoutChangeListener, VerticalPullDetector.Listener {
    private static final float PARALLAX_COEFFICIENT = 0.125f;
    private static final int SINGLE_FRAME_MS = 16;
    private static final String TAG = FoldersTransitionController.class.getSimpleName();
    private static final float WORKSPACE_ANIM_DURATION = 175.0f;
    private long mAnimationDuration;
    private float mContainerVelocity;
    private AnimatorSet mCurrentAnimation;
    private final VerticalPullDetector mDetector;
    private final float mFoldersScrimAlpha;
    private FoldersContainerView mFoldersView;
    private Launcher mLauncher;
    private boolean mNoIntercept;
    private final PathInterpolator mPathInterpolator = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
    private float mProgress = 1.0f;
    private float mShiftRange;
    private float mShiftStart;
    private Workspace mWorkspace;
    private final float mWorkspaceEndProgress;

    /* loaded from: classes.dex */
    public enum State {
        FOLDER,
        WORKSPACE
    }

    public FoldersTransitionController(Context context) {
        this.mLauncher = (Launcher) context;
        Resources res = context.getResources();
        this.mFoldersScrimAlpha = res.getInteger(R.integer.config_workspaceScrimAlpha) / 100.0f;
        float totalAnimDuration = res.getInteger(R.integer.config_foldersTransitionTime);
        this.mWorkspaceEndProgress = (totalAnimDuration - WORKSPACE_ANIM_DURATION) / totalAnimDuration;
        this.mDetector = new VerticalPullDetector(this.mLauncher);
        this.mDetector.setListener(this);
    }

    public void setupViews(FoldersContainerView foldersView, Workspace workspace) {
        this.mFoldersView = foldersView;
        this.mWorkspace = workspace;
        this.mFoldersView.addOnLayoutChangeListener(this);
    }

    public boolean isAnimating() {
        return this.mCurrentAnimation != null && this.mCurrentAnimation.isRunning();
    }

    @Keep
    public void setProgress(float progress) {
        float oldProgress = this.mProgress;
        float shiftPrevious = this.mProgress * this.mShiftRange;
        this.mProgress = progress;
        float workspaceProgress = progress < this.mWorkspaceEndProgress ? 0.0f : (progress - this.mWorkspaceEndProgress) / (1.0f - this.mWorkspaceEndProgress);
        float boundedProgress = Utilities.boundToRange(workspaceProgress, 0.0f, 1.0f);
        float interpolation = this.mPathInterpolator.getInterpolation(boundedProgress);
        int alpha = (int) (255.0f * this.mFoldersScrimAlpha * (1.0f - interpolation));
        int color = Color.argb(alpha, 0, 0, 0);
        if (this.mLauncher.isIconRearrangementMode()) {
            this.mFoldersView.getContentView().setBackgroundColor(color);
        } else {
            this.mFoldersView.setBackgroundColor(color);
        }
        this.mFoldersView.setProgress(progress);
        float shiftCurrent = interpolation * this.mShiftRange;
        this.mWorkspace.setWorkspaceYTranslationAndAlpha(0.0f, interpolation, this.mDetector.isDraggingState());
        if (!this.mDetector.isDraggingState()) {
            this.mContainerVelocity = this.mDetector.computeVelocity(shiftCurrent - shiftPrevious, System.currentTimeMillis());
        }
        if (!this.mLauncher.isIconRearrangementMode()) {
            if (Float.compare(progress, 0.0f) == 0 && Float.compare(oldProgress, this.mProgress) != 0) {
                this.mLauncher.showFolderTutorial();
            } else if (Float.compare(oldProgress, 0.0f) == 0 && Float.compare(oldProgress, this.mProgress) != 0) {
                this.mLauncher.dismissFolderTutorial();
            }
        }
    }

    private void calculateDuration(float velocity, float disp) {
        float velocityDivisor = Math.max(2.0f, Math.abs(0.5f * velocity));
        float travelDistance = Math.max(0.2f, disp / this.mShiftRange);
        this.mAnimationDuration = Math.min(WORKSPACE_ANIM_DURATION, Math.max(100.0f, (1200.0f / velocityDivisor) * travelDistance));
    }

    public boolean animateToFolders(AnimatorSet animationOut, long duration) {
        boolean shouldPost = true;
        if (this.mDetector.isIdleState()) {
            this.mAnimationDuration = duration;
            prepare();
        } else {
            float nextFrameProgress = this.mProgress + ((this.mContainerVelocity * 16.0f) / this.mShiftRange);
            if (nextFrameProgress >= 0.0f) {
                this.mProgress = nextFrameProgress;
            }
            shouldPost = false;
        }
        ObjectAnimator driftAndAlpha = ObjectAnimator.ofFloat(this, "progress", this.mProgress, 0.0f);
        driftAndAlpha.setDuration(this.mAnimationDuration);
        animationOut.play(driftAndAlpha);
        animationOut.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.FoldersTransitionController.1
            boolean canceled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                this.canceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (!this.canceled) {
                    FoldersTransitionController.this.endAnimation(State.FOLDER);
                }
            }
        });
        this.mCurrentAnimation = animationOut;
        return shouldPost;
    }

    public boolean animateToWorkspace(AnimatorSet animationOut, long duration) {
        boolean shouldPost = true;
        if (this.mDetector.isIdleState()) {
            prepare();
            this.mAnimationDuration = duration;
        } else {
            float nextFrameProgress = this.mProgress + ((this.mContainerVelocity * 16.0f) / this.mShiftRange);
            if (nextFrameProgress <= 1.0f) {
                this.mProgress = nextFrameProgress;
            }
            shouldPost = false;
        }
        ObjectAnimator driftAndAlpha = ObjectAnimator.ofFloat(this, "progress", this.mProgress, 1.0f);
        driftAndAlpha.setDuration(this.mAnimationDuration);
        animationOut.play(driftAndAlpha);
        animationOut.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.FoldersTransitionController.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                if (FoldersTransitionController.this.mFoldersView.getFolderScrollBar() != null) {
                    FoldersTransitionController.this.mFoldersView.getFolderScrollBar().cancelShowScrollbarAnimation();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                FoldersTransitionController.this.endAnimation(State.WORKSPACE);
            }
        });
        this.mCurrentAnimation = animationOut;
        return shouldPost;
    }

    public boolean isTransitioning() {
        return this.mDetector.isDraggingOrSettling();
    }

    private void prepare() {
        if (!this.mLauncher.isFoldersViewVisible()) {
            Logger.d(TAG, "prepare# show folders view");
            this.mFoldersView.setVisibility(0);
        }
    }

    public void endAnimation(State state) {
        if (state == State.FOLDER) {
            setProgress(0.0f);
        } else {
            Logger.d(TAG, "endAnimation# dismiss folders view");
            this.mFoldersView.setVisibility(8);
            this.mLauncher.closeFolder();
            setProgress(1.0f);
            this.mFoldersView.removeFolder();
        }
        this.mDetector.finishedScrolling();
        this.mCurrentAnimation = null;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        if (v instanceof FoldersContainerView) {
            this.mShiftRange = (bottom - top) / 2;
        }
    }

    @Override // net.oneplus.h2launcher.allapps.VerticalPullDetector.Listener
    public void onDragStart(boolean start) {
        Logger.d(TAG, "onDragStart# launcher state=" + this.mLauncher.getState());
        this.mShiftStart = this.mProgress;
        if (start) {
            prepare();
        }
    }

    @Override // net.oneplus.h2launcher.allapps.VerticalPullDetector.Listener
    public boolean onDrag(float displacement, float velocity) {
        if (this.mFoldersView == null) {
            return false;
        }
        this.mContainerVelocity = velocity;
        float progress = Math.min(Math.max(0.0f, this.mShiftStart + (displacement / this.mShiftRange)), 1.0f);
        setProgress(progress);
        return true;
    }

    @Override // net.oneplus.h2launcher.allapps.VerticalPullDetector.Listener
    public void onDragEnd(float velocity, boolean fling) {
        Logger.d(TAG, "onDragEnd# launcher state=" + this.mLauncher.getState());
        if (this.mFoldersView != null) {
            if (fling) {
                if (velocity < 0.0f) {
                    calculateDuration(velocity, Math.abs(this.mShiftRange * this.mProgress));
                    this.mLauncher.showFoldersView(true);
                    return;
                } else {
                    calculateDuration(velocity, Math.abs(this.mShiftRange * (1.0f - this.mProgress)));
                    this.mLauncher.closeFolder();
                    return;
                }
            }
            if (this.mProgress >= 0.33f) {
                calculateDuration(velocity, Math.abs(this.mShiftRange * (1.0f - this.mProgress)));
                this.mLauncher.closeFolder();
            } else {
                calculateDuration(velocity, Math.abs(this.mShiftRange * this.mProgress));
                this.mLauncher.showFoldersView(true);
            }
        }
    }

    @Override // net.oneplus.h2launcher.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent ev) {
        return this.mLauncher.isFoldersViewVisible() && this.mDetector.onTouchEvent(ev);
    }

    @Override // net.oneplus.h2launcher.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            this.mNoIntercept = false;
            Folder currentFolder = null;
            if (this.mFoldersView != null) {
                currentFolder = this.mFoldersView.getCurrentFolder();
            }
            if (!this.mLauncher.isFoldersViewVisible()) {
                Logger.d(TAG, "onInterceptTouchEvent# not in folders mode");
                this.mNoIntercept = true;
            } else if (this.mLauncher.isFoldersViewVisible() && currentFolder != null && !currentFolder.isScrolledToTop()) {
                Logger.d(TAG, "onInterceptTouchEvent# folders mode but can't scroll the container");
                this.mNoIntercept = true;
            } else if (this.mLauncher.isFoldersViewVisible() && currentFolder != null && currentFolder.isEditingName()) {
                Logger.d(TAG, "onInterceptTouchEvent# editing folder name");
                this.mNoIntercept = true;
            } else {
                int directionsToDetectScroll = 0;
                if (this.mDetector.isIdleState() && this.mLauncher.isFoldersViewVisible()) {
                    directionsToDetectScroll = 0 | 2;
                }
                this.mDetector.setDetectableScrollConditions(directionsToDetectScroll, false);
            }
        }
        if (this.mNoIntercept) {
            return false;
        }
        if (this.mLauncher.isFoldersViewVisible()) {
            this.mDetector.onTouchEvent(ev);
        }
        return this.mDetector.isDraggingOrSettling();
    }
}
