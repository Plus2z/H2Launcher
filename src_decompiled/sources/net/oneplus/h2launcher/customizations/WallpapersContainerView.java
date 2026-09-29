package net.oneplus.h2launcher.customizations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.v7.graphics.Palette;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.AlphaUpdateListener;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.customizations.BaseCardContainer;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class WallpapersContainerView extends BaseCardContainer {
    private static final String TAG = WallpapersContainerView.class.getSimpleName();
    private static int sWallpaperBackgroundColor = 0;
    private static final List<String> sWallpaperTaskTags = new ArrayList();
    private boolean mIsSavingWallpaper;
    private List<Runnable> mOnWallpaperSavedCallbacks;
    private SaveWallpaperTask mSaveWallpaperTask;
    private WallpaperBackground mWallpaperBackground;
    private LauncherViewPropertyAnimator mWallpaperBackgroundAnimator;
    private WallpaperPreview mWallpaperPreview;
    private LauncherViewPropertyAnimator mWallpaperPreviewAnimator;
    private LauncherViewPropertyAnimator mWallpaperPreviewTitleAnimator;
    private View mWallpaperPreviewTitles;

    static {
        sWallpaperTaskTags.add(WallpaperCard.class.getSimpleName());
        sWallpaperTaskTags.add(WallpaperColorCustomizationCard.class.getSimpleName());
    }

    public WallpapersContainerView(Context context) {
        this(context, null);
    }

    public WallpapersContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WallpapersContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mOnWallpaperSavedCallbacks = new ArrayList();
        this.mIsSavingWallpaper = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void updateWallpaperBackground(final Bitmap preview, final boolean animated) {
        Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.1
            @Override // java.lang.Runnable
            public void run() {
                List<Palette.Swatch> swatches = WallpaperUtils.loadWallpaperSwatches(preview);
                if (swatches == null || swatches.isEmpty()) {
                    Logger.w(WallpapersContainerView.TAG, "cannot load wallpaper background color");
                    return;
                }
                final int color = swatches.get(0).getRgb();
                final Launcher launcher = LauncherAppState.getInstance().getLauncher();
                if (launcher == null || launcher.getWallpapersView() == null) {
                    int unused = WallpapersContainerView.sWallpaperBackgroundColor = color;
                } else {
                    WallpaperTaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            launcher.getWallpapersView().getWallpaperBackground().setColor(color, animated);
                        }
                    });
                }
            }
        };
        TaskWorker.get().post(runnable);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getContainerViewId() {
        return R.id.wallpapers_content_container;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getRevealViewId() {
        return R.id.wallpapers_reveal_view;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getActionBarId() {
        return R.id.wallpapers_action_bar;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getActionBarTitleId() {
        return R.string.wallpaper_button_text;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getPagerId() {
        return R.id.wallpaper_pager;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    int getPagerIndicatorId() {
        return R.id.wallpaper_pager_indicator;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    void onCardSlided(float slideOffset) {
        if (this.mWallpaperPreview != null) {
            this.mWallpaperPreview.setSlideOffset(slideOffset);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    BaseCardContainer.BaseCustomizationAsyncTask getSaveCustomizations() {
        return new BaseCardContainer.BaseCustomizationAsyncTask() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.2
            private List<BaseCustomizationCard.SaveCustomizationTask> mTasks;

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                this.mTasks = new ArrayList();
                List<BaseCustomizationCard.SaveCustomizationTask> tasks = WallpapersContainerView.this.mPager.gatherSaveCustomizationTasks();
                for (BaseCustomizationCard.SaveCustomizationTask task : tasks) {
                    if (!WallpapersContainerView.sWallpaperTaskTags.contains(task.getTag())) {
                        this.mTasks.add(task);
                    }
                }
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
                WallpapersContainerView.this.reloadCustomizations();
                WallpapersContainerView.this.onLeftCardContainer();
            }
        };
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer, net.oneplus.h2launcher.BaseContainerView
    protected void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        super.onUpdateBackgroundAndPaddings(searchBarBounds, padding);
        if (this.mWallpaperPreviewTitles != null) {
            this.mWallpaperPreviewTitleAnimator = new LauncherViewPropertyAnimator(this.mWallpaperPreviewTitles);
            this.mWallpaperPreviewTitleAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperPreviewTitles != null) {
                        WallpapersContainerView.this.mWallpaperPreviewTitles.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperPreviewTitles != null) {
                        AlphaUpdateListener.updateVisibility(WallpapersContainerView.this.mWallpaperPreviewTitles, WallpapersContainerView.this.mAccessibilityEnabled);
                    }
                }
            });
            if (this.mWallpaperPreview != null) {
                this.mWallpaperPreview.setPreviewTitles(this.mWallpaperPreviewTitles);
                this.mWallpaperPreview.selectPage(this.mWallpaperPreview.getCurrentPage(), false);
            }
        }
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mWallpaperBackground = (WallpaperBackground) findViewById(R.id.background);
        if (this.mWallpaperBackground != null) {
            if (sWallpaperBackgroundColor != 0) {
                this.mWallpaperBackground.setColor(sWallpaperBackgroundColor, false);
            }
            this.mWallpaperBackgroundAnimator = new LauncherViewPropertyAnimator(this.mWallpaperBackground);
            this.mWallpaperBackgroundAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperBackground != null) {
                        WallpapersContainerView.this.mWallpaperBackground.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperBackground != null) {
                        AlphaUpdateListener.updateVisibility(WallpapersContainerView.this.mWallpaperBackground, WallpapersContainerView.this.mAccessibilityEnabled);
                    }
                }
            });
        }
        this.mWallpaperPreview = (WallpaperPreview) findViewById(R.id.wallpaper_preview);
        this.mWallpaperPreviewTitles = findViewById(R.id.wallpaper_preview_titles);
        if (this.mWallpaperPreview != null) {
            layoutWallpaperPreview();
            this.mWallpaperPreviewAnimator = new LauncherViewPropertyAnimator(this.mWallpaperPreview);
            this.mWallpaperPreviewAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperPreview != null) {
                        WallpapersContainerView.this.mWallpaperPreview.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperPreview != null) {
                        AlphaUpdateListener.updateVisibility(WallpapersContainerView.this.mWallpaperPreview, WallpapersContainerView.this.mAccessibilityEnabled);
                    }
                }
            });
        }
        if (this.mWallpaperPreviewTitles != null) {
            this.mWallpaperPreviewTitleAnimator = new LauncherViewPropertyAnimator(this.mWallpaperPreviewTitles);
            this.mWallpaperPreviewTitleAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperPreviewTitles != null) {
                        WallpapersContainerView.this.mWallpaperPreviewTitles.setVisibility(0);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (WallpapersContainerView.this.mWallpaperPreviewTitles != null) {
                        AlphaUpdateListener.updateVisibility(WallpapersContainerView.this.mWallpaperPreviewTitles, WallpapersContainerView.this.mAccessibilityEnabled);
                    }
                }
            });
        }
        ImageView backButton = (ImageView) findViewById(R.id.up);
        if (backButton != null) {
            backButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.7
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    WallpapersContainerView.this.mLauncher.onBackPressed();
                }
            });
        }
        TextView saveButton = (TextView) findViewById(R.id.menu_save);
        if (saveButton != null) {
            saveButton.setVisibility(8);
        }
        this.mLauncher.setupWallpapersButton();
    }

    private void layoutWallpaperPreview() {
        Resources res = getResources();
        int previewWidth = res.getDimensionPixelSize(R.dimen.picker_preview_item_width);
        int previewHeight = (int) (previewWidth / Utilities.getScreenAspectRatio(getContext(), true));
        int previewMargin = res.getDimensionPixelSize(R.dimen.picker_preview_item_margin);
        RelativeLayout.LayoutParams lp = (RelativeLayout.LayoutParams) this.mWallpaperPreview.getLayoutParams();
        lp.height = (previewMargin * 2) + previewHeight;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    public boolean animateToState(BaseCardContainer.State newState, int duration) {
        boolean result = super.animateToState(newState, duration);
        if (!result) {
            return false;
        }
        this.mWallpaperBackgroundAnimator.cancel();
        this.mWallpaperPreviewAnimator.cancel();
        if (this.mWallpaperBackground != null && this.mWallpaperPreview != null) {
            float startAlpha = this.mState == BaseCardContainer.State.VISIBLE ? 0.0f : 1.0f;
            float endAlpha = this.mState == BaseCardContainer.State.VISIBLE ? 1.0f : 0.0f;
            if (Float.compare(startAlpha, endAlpha) != 0) {
                if (duration > 0) {
                    this.mWallpaperBackground.setAlpha(startAlpha);
                    this.mWallpaperBackgroundAnimator.alpha(endAlpha).withLayer().setDuration(duration).start();
                    this.mWallpaperPreview.setAlpha(startAlpha);
                    this.mWallpaperPreviewAnimator.alpha(endAlpha).withLayer().setDuration(duration).start();
                } else {
                    this.mWallpaperBackground.setAlpha(endAlpha);
                    this.mWallpaperPreview.setAlpha(endAlpha);
                    AlphaUpdateListener.updateVisibility(this.mWallpaperBackground, this.mAccessibilityEnabled);
                    AlphaUpdateListener.updateVisibility(this.mWallpaperPreview, this.mAccessibilityEnabled);
                }
            }
            if (this.mWallpaperPreviewTitles != null && this.mWallpaperPreviewTitles.isEnabled()) {
                this.mWallpaperPreviewTitleAnimator.cancel();
                if (Float.compare(startAlpha, endAlpha) != 0) {
                    if (duration > 0) {
                        this.mWallpaperPreviewTitles.setAlpha(startAlpha);
                        this.mWallpaperPreviewTitleAnimator.alpha(endAlpha).withLayer().setDuration(duration).start();
                    } else {
                        this.mWallpaperPreviewTitles.setAlpha(endAlpha);
                        AlphaUpdateListener.updateVisibility(this.mWallpaperPreviewTitles, this.mAccessibilityEnabled);
                    }
                }
            }
        }
        return true;
    }

    public void init(int requestCode, int resultCode, Intent data) {
        if (this.mPager != null && (this.mPager instanceof WallpaperPager)) {
            ((WallpaperPager) this.mPager).init(this.mWallpaperPreview, requestCode, resultCode, data);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCardContainer
    public WallpaperPager getPager() {
        return (WallpaperPager) this.mPager;
    }

    public WallpaperPreview getWallpaperPreview() {
        return this.mWallpaperPreview;
    }

    public WallpaperBackground getWallpaperBackground() {
        return this.mWallpaperBackground;
    }

    public void saveWallpaperCustomizations() {
        List<BaseCustomizationCard.SaveCustomizationTask> wallpaperTasks = getWallpaperTasks();
        boolean hasWallpaperTasks = !wallpaperTasks.isEmpty();
        if (hasWallpaperTasks && !this.mIsSavingWallpaper && this.mOnWallpaperSavedCallbacks.isEmpty()) {
            this.mSaveWallpaperTask = new SaveWallpaperTask(this, wallpaperTasks);
            this.mSaveWallpaperTask.execute(new Void[0]);
            this.mIsSavingWallpaper = true;
        }
    }

    public void onWallpaperSaved(int screen) {
        if (!this.mIsSavingWallpaper || this.mSaveWallpaperTask == null) {
            return;
        }
        this.mSaveWallpaperTask.onWallpaperSaved(screen);
    }

    public boolean waitUntilWallpaperSaved(Runnable runnable) {
        if (!this.mIsSavingWallpaper) {
            return false;
        }
        this.mOnWallpaperSavedCallbacks.add(runnable);
        return true;
    }

    private List<BaseCustomizationCard.SaveCustomizationTask> getWallpaperTasks() {
        List<BaseCustomizationCard.SaveCustomizationTask> wallpaperTasks = new ArrayList<>();
        if (this.mPager != null) {
            List<BaseCustomizationCard.SaveCustomizationTask> tasks = this.mPager.gatherSaveCustomizationTasks();
            for (BaseCustomizationCard.SaveCustomizationTask task : tasks) {
                if (sWallpaperTaskTags.contains(task.getTag())) {
                    wallpaperTasks.add(task);
                }
            }
        }
        return wallpaperTasks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SaveWallpaperTask extends AsyncTask<Void, Void, Void> {
        private static final long MIN_DIALOG_SHOW_DURATION_MS = 1000;
        private static final long SAVE_WALLPAPER_TIMEOUT_MS = 2000;
        private final String mDialogMessage;
        private long mDialogPopupTime;
        private ProgressDialog mSaveProgressDialog;
        private int mScreen;
        private final WeakReference<View> mWallpapersViewReference;
        private Runnable mForceStopSaveWallpaper = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.SaveWallpaperTask.1
            @Override // java.lang.Runnable
            public void run() {
                if (WallpapersContainerView.this.mIsSavingWallpaper) {
                    Logger.w(WallpapersContainerView.TAG, "force stop set wallpaper task");
                    SaveWallpaperTask.this.onWallpaperSaved(SaveWallpaperTask.this.mScreen);
                }
            }
        };
        private final List<BaseCustomizationCard.SaveCustomizationTask> mTasks = new ArrayList();

        SaveWallpaperTask(@NonNull View wallpapersView, @NonNull List<BaseCustomizationCard.SaveCustomizationTask> tasks) {
            this.mWallpapersViewReference = new WeakReference<>(wallpapersView);
            this.mTasks.addAll(tasks);
            this.mDialogMessage = wallpapersView.getContext().getString(R.string.saving_wallpaper);
            for (BaseCustomizationCard.SaveCustomizationTask task : this.mTasks) {
                if (task instanceof WallpaperCard.SaveWallpaperCustomizationTask) {
                    this.mScreen = ((WallpaperCard.SaveWallpaperCustomizationTask) task).getScreen();
                }
            }
            wallpapersView.postDelayed(this.mForceStopSaveWallpaper, SAVE_WALLPAPER_TIMEOUT_MS);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            hideProgress();
            showProgress();
            this.mDialogPopupTime = System.currentTimeMillis();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... params) {
            for (BaseCustomizationCard.SaveCustomizationTask task : this.mTasks) {
                task.run();
            }
            return null;
        }

        private void showProgress() {
            Context context;
            View wallpapersView = this.mWallpapersViewReference.get();
            if (wallpapersView == null || (context = wallpapersView.getContext()) == null) {
                Logger.e(WallpapersContainerView.TAG, "cannot get context from wallpapers view");
                return;
            }
            this.mSaveProgressDialog = new ProgressDialog(context);
            this.mSaveProgressDialog.setMessage(this.mDialogMessage);
            this.mSaveProgressDialog.setIndeterminate(false);
            this.mSaveProgressDialog.setCancelable(false);
            this.mSaveProgressDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hideProgress() {
            if (this.mSaveProgressDialog != null && this.mSaveProgressDialog.isShowing()) {
                this.mSaveProgressDialog.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onWallpaperSaved(int screen) {
            if (this.mScreen != screen) {
                Logger.d(WallpapersContainerView.TAG, "onWallpaperSaved: mScreen=%d, screen=%d", Integer.valueOf(this.mScreen), Integer.valueOf(screen));
                return;
            }
            View wallpapersView = this.mWallpapersViewReference.get();
            if (wallpapersView != null) {
                wallpapersView.removeCallbacks(this.mForceStopSaveWallpaper);
                Logger.d(WallpapersContainerView.TAG, "force stop save wallpaper runnable removed");
            }
            Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpapersContainerView.SaveWallpaperTask.2
                @Override // java.lang.Runnable
                public void run() {
                    SaveWallpaperTask.this.hideProgress();
                    WallpapersContainerView.this.mIsSavingWallpaper = false;
                    if (!WallpapersContainerView.this.mOnWallpaperSavedCallbacks.isEmpty()) {
                        for (int i = 0; i < WallpapersContainerView.this.mOnWallpaperSavedCallbacks.size(); i++) {
                            ((Runnable) WallpapersContainerView.this.mOnWallpaperSavedCallbacks.get(i)).run();
                        }
                        WallpapersContainerView.this.mOnWallpaperSavedCallbacks.clear();
                    }
                }
            };
            if (wallpapersView == null) {
                Logger.e(WallpapersContainerView.TAG, "wallpapers view is null");
                return;
            }
            long duration = computeProgressDialogRemainingShowDuration();
            if (duration > 0) {
                wallpapersView.postDelayed(runnable, duration);
            } else {
                wallpapersView.post(runnable);
            }
        }

        private long computeProgressDialogRemainingShowDuration() {
            long dialogShowDuration = System.currentTimeMillis() - this.mDialogPopupTime;
            long remainingDuration = MIN_DIALOG_SHOW_DURATION_MS - dialogShowDuration;
            Logger.d(WallpapersContainerView.TAG, "remaining duration=%d", Long.valueOf(remainingDuration));
            return remainingDuration;
        }
    }
}
