package net.oneplus.h2launcher;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.UserManager;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherClings implements View.OnClickListener {
    private static final int DISMISS_CLING_DURATION = 200;
    private static final String FOLDER_TUTORIAL_DISMISSED_KEY = "folder_tutorial_dismissed";
    private static final String MIGRATION_CLING_DISMISSED_KEY = "cling_gel.migration.dismissed";
    private static final String QUICK_PAGE_RESIZE_CLING_DISMISSED_KEY = "cling_gel.quick_page_2.dismissed";
    private static final String QUICK_PAGE_WELCOME_CLING_DISMISSED_KEY = "cling_gel.quick_page_1.dismissed";
    private static final int SHOW_CLING_DURATION = 250;
    private static final String SKIP_FIRST_USE_HINTS = "skip_first_use_hints";
    private static final String TAG = LauncherClings.class.getSimpleName();
    private static final String TAG_CROP_TOP_AND_SIDES = "crop_bg_top_and_sides";
    private static final String WALLPAPERS_CLING_DISMISSED_KEY = "cling_gel.wallpapers.dismissed";
    private static final String WORKSPACE_CLING_DISMISSED_KEY = "cling_gel.workspace.dismissed";
    private static View mShelfResizeCling;
    private static View mShelfWelcomeCling;
    private Runnable mFolderTutorial;
    private LayoutInflater mInflater;
    boolean mIsVisible;
    boolean mIsWallpaperShowing = false;
    Launcher mLauncher;
    private View mWallpapersCling;

    public LauncherClings(Launcher launcher) {
        this.mLauncher = launcher;
        this.mInflater = LayoutInflater.from(this.mLauncher);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.cling_dismiss_migration_use_default) {
            Log.i(TAG, "Dismissing migration default cling");
            dismissMigrationCling();
            return;
        }
        if (id == R.id.cling_dismiss_migration_copy_apps) {
            Log.i(TAG, "Dismissing migration apps cling");
            LauncherModel model = this.mLauncher.getModel();
            model.resetLoadedState(false, true);
            model.startLoader(PagedView.INVALID_RESTORE_PAGE, 3);
            String spKey = LauncherAppState.getSharedPreferencesKey();
            SharedPreferences sp = this.mLauncher.getSharedPreferences(spKey, 0);
            SharedPreferences.Editor editor = sp.edit();
            editor.putBoolean(Launcher.USER_HAS_MIGRATED, true);
            editor.apply();
            dismissMigrationCling();
            return;
        }
        if (id == R.id.cling_dismiss_longpress_info) {
            Log.i(TAG, "Dismissing long press cling");
            dismissLongPressCling();
            return;
        }
        if (id == R.id.cling_dismiss_quick_page_welcome_info) {
            Log.i(TAG, "Dismissing shelf welcome cling");
            dismissQuickPageWelcomeCling();
            return;
        }
        if (id == R.id.cling_dismiss_quick_page_resize_info) {
            Log.i(TAG, "Dismissing shelf resize cling");
            dismissCling(this.mLauncher.findViewById(R.id.quick_page_cling_resize), null, QUICK_PAGE_RESIZE_CLING_DISMISSED_KEY, 200);
            dismissQuickPageResizeCling();
            this.mLauncher.getWorkspace().setScrollingDisabled(false);
            return;
        }
        if (id == R.id.cling_dismiss_wallpapers_info) {
            Log.i(TAG, "Dismissing customizations cling");
            dismissWallpapersCling();
        } else if (id == R.id.folder_tutorial_done) {
            dismissFolderTutorial();
        } else {
            Log.i(TAG, "Dismissing shelf default cling");
            dismissQuickPageResizeCling();
        }
    }

    public void showMigrationCling() {
        this.mIsVisible = true;
        this.mLauncher.hideWorkspaceSearchAndHotseat();
        ViewGroup root = (ViewGroup) this.mLauncher.findViewById(R.id.launcher);
        View inflated = this.mInflater.inflate(R.layout.migration_cling, root);
        inflated.findViewById(R.id.cling_dismiss_migration_copy_apps).setOnClickListener(this);
        inflated.findViewById(R.id.cling_dismiss_migration_use_default).setOnClickListener(this);
    }

    private void dismissMigrationCling() {
        this.mLauncher.showWorkspaceSearchAndHotseat();
        Runnable dismissCb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.1
            @Override // java.lang.Runnable
            public void run() {
                Runnable cb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LauncherClings.this.showLongPressCling(false);
                    }
                };
                LauncherClings.this.dismissCling(LauncherClings.this.mLauncher.findViewById(R.id.migration_cling), cb, LauncherClings.MIGRATION_CLING_DISMISSED_KEY, 200);
            }
        };
        this.mLauncher.getWorkspace().post(dismissCb);
    }

    public void showLongPressCling(boolean showWelcome) {
        this.mIsVisible = true;
        ViewGroup root = (ViewGroup) this.mLauncher.findViewById(R.id.launcher);
        View cling = this.mInflater.inflate(R.layout.longpress_cling, root, false);
        cling.setOnLongClickListener(new View.OnLongClickListener() { // from class: net.oneplus.h2launcher.LauncherClings.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View v) {
                LauncherClings.this.mLauncher.showOverviewMode(true);
                LauncherClings.this.dismissLongPressCling();
                return true;
            }
        });
        final ViewGroup content = (ViewGroup) cling.findViewById(R.id.cling_content);
        this.mInflater.inflate(showWelcome ? R.layout.longpress_cling_welcome_content : R.layout.longpress_cling_content, content);
        content.findViewById(R.id.cling_dismiss_longpress_info).setOnClickListener(this);
        if (TAG_CROP_TOP_AND_SIDES.equals(content.getTag())) {
            content.setBackgroundColor(this.mLauncher.getResources().getColor(R.color.cling_background, null));
        }
        root.addView(cling);
        if (!showWelcome) {
            content.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.LauncherClings.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ObjectAnimator anim;
                    content.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    if (LauncherClings.TAG_CROP_TOP_AND_SIDES.equals(content.getTag())) {
                        content.setTranslationY(-content.getMeasuredHeight());
                        anim = LauncherAnimUtils.ofFloat(content, "translationY", 0.0f);
                    } else {
                        content.setScaleX(0.0f);
                        content.setScaleY(0.0f);
                        PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", 1.0f);
                        PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", 1.0f);
                        anim = LauncherAnimUtils.ofPropertyValuesHolder(content, scaleX, scaleY);
                    }
                    anim.setDuration(250L);
                    anim.setInterpolator(new LogDecelerateInterpolator(100, 0));
                    anim.start();
                }
            });
        }
    }

    void dismissLongPressCling() {
        Runnable dismissCb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.4
            @Override // java.lang.Runnable
            public void run() {
                LauncherClings.this.dismissCling(LauncherClings.this.mLauncher.findViewById(R.id.longpress_cling), null, LauncherClings.WORKSPACE_CLING_DISMISSED_KEY, 200);
            }
        };
        this.mLauncher.getWorkspace().post(dismissCb);
    }

    public void showQuickPageWelcomeCling() {
        this.mIsVisible = true;
        this.mLauncher.getWorkspace().setScrollingDisabled(true);
        ViewGroup root = (ViewGroup) this.mLauncher.findViewById(R.id.launcher);
        mShelfWelcomeCling = this.mInflater.inflate(R.layout.quick_page_cling_welcome, root, false);
        mShelfWelcomeCling.setOnClickListener(null);
        ViewGroup content = (ViewGroup) mShelfWelcomeCling.findViewById(R.id.cling_content);
        this.mInflater.inflate(R.layout.shelf_cling_welcome_content, content);
        content.findViewById(R.id.cling_dismiss_quick_page_welcome_info).setOnClickListener(this);
        if (TAG_CROP_TOP_AND_SIDES.equals(content.getTag())) {
            Drawable bg = new BorderCropDrawable(this.mLauncher.getResources().getDrawable(R.drawable.cling_bg), true, true, true, false);
            content.setBackground(bg);
        }
        root.addView(mShelfWelcomeCling);
    }

    private void dismissQuickPageWelcomeCling() {
        Runnable dismissCb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.5
            @Override // java.lang.Runnable
            public void run() {
                Runnable cb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LauncherClings.this.showQuickPageResizeCling();
                    }
                };
                LauncherClings.this.dismissCling(LauncherClings.this.mLauncher.findViewById(R.id.quick_page_cling_welcome), null, LauncherClings.QUICK_PAGE_WELCOME_CLING_DISMISSED_KEY, 200);
                LauncherClings.this.mLauncher.getWorkspace().postDelayed(cb, 500L);
            }
        };
        this.mLauncher.getWorkspace().post(dismissCb);
    }

    public void showQuickPageResizeCling() {
        this.mIsVisible = true;
        ViewGroup root = (ViewGroup) this.mLauncher.findViewById(R.id.launcher);
        mShelfResizeCling = this.mInflater.inflate(R.layout.quick_page_cling_resize, root, false);
        mShelfResizeCling.setOnClickListener(null);
        ViewGroup content = (ViewGroup) mShelfResizeCling.findViewById(R.id.cling_content);
        this.mInflater.inflate(R.layout.shelf_cling_resize_content, content);
        content.findViewById(R.id.cling_dismiss_quick_page_resize_info).setOnClickListener(this);
        if (TAG_CROP_TOP_AND_SIDES.equals(content.getTag())) {
            Drawable bg = new BorderCropDrawable(this.mLauncher.getResources().getDrawable(R.drawable.cling_bg_invert), true, false, true, true);
            content.setBackground(bg);
        }
        root.addView(mShelfResizeCling);
    }

    private void dismissQuickPageResizeCling() {
        Log.i(TAG, "Resetting resize cling");
        this.mLauncher.getWorkspace().setScrollingDisabled(false);
        Runnable cleanUpClingCb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.6
            @Override // java.lang.Runnable
            public void run() {
                if (LauncherClings.mShelfResizeCling != null) {
                    LauncherClings.mShelfResizeCling.setVisibility(8);
                } else {
                    LauncherClings.this.mLauncher.findViewById(R.id.quick_page_cling_resize).setVisibility(8);
                }
                LauncherClings.this.mLauncher.getSharedPrefs().edit().putBoolean(LauncherClings.QUICK_PAGE_RESIZE_CLING_DISMISSED_KEY, true).apply();
                LauncherClings.this.mIsVisible = false;
            }
        };
        if (mShelfResizeCling != null) {
            mShelfResizeCling.animate().alpha(0.0f).setDuration(200L).withEndAction(cleanUpClingCb);
        } else {
            this.mLauncher.findViewById(R.id.quick_page_cling_resize).animate().alpha(0.0f).setDuration(200L).withEndAction(cleanUpClingCb);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showWallpapersCling() {
        this.mIsVisible = true;
        this.mIsWallpaperShowing = true;
        ViewGroup root = (ViewGroup) this.mLauncher.findViewById(R.id.launcher);
        if (this.mWallpapersCling != null) {
            Logger.d(TAG, "[showWallpapersCling] mWallpapersCling != null, remove view.");
            root.removeView(this.mWallpapersCling);
            this.mWallpapersCling = null;
        }
        this.mWallpapersCling = this.mInflater.inflate(R.layout.wallpapers_cling, root, false);
        this.mWallpapersCling.setOnTouchListener(new View.OnTouchListener() { // from class: net.oneplus.h2launcher.LauncherClings.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                LauncherClings.this.dismissWallpapersCling();
                return true;
            }
        });
        ViewGroup content = (ViewGroup) this.mWallpapersCling.findViewById(R.id.cling_content);
        this.mInflater.inflate(R.layout.wallpapers_cling_content, content);
        content.findViewById(R.id.cling_dismiss_wallpapers_info).setOnClickListener(this);
        ((FrameLayout.LayoutParams) content.getLayoutParams()).bottomMargin = BaseCustomizationCard.getCollapsedHeight(content.getContext());
        root.addView(this.mWallpapersCling);
    }

    public void dismissWallpapersCling() {
        dismissWallpapersCling(true);
    }

    public void dismissWallpapersCling(final boolean updateDismissFlag) {
        this.mIsWallpaperShowing = false;
        Runnable dismissCb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.8
            @Override // java.lang.Runnable
            public void run() {
                LauncherClings.this.dismissCling(LauncherClings.this.mWallpapersCling, null, LauncherClings.WALLPAPERS_CLING_DISMISSED_KEY, 200, updateDismissFlag);
            }
        };
        this.mLauncher.getWorkspace().post(dismissCb);
    }

    public boolean isWallpaperShowing() {
        return this.mIsWallpaperShowing;
    }

    void dismissCling(View cling, Runnable postAnimationCb, String flag, int duration) {
        dismissCling(cling, postAnimationCb, flag, duration, true);
    }

    void dismissCling(final View cling, final Runnable postAnimationCb, final String flag, int duration, final boolean updateDismissFlag) {
        if (cling != null && cling.getVisibility() != 8) {
            Runnable cleanUpClingCb = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.9
                @Override // java.lang.Runnable
                public void run() {
                    cling.setVisibility(8);
                    if (updateDismissFlag) {
                        LauncherClings.this.mLauncher.getSharedPrefs().edit().putBoolean(flag, true).apply();
                    }
                    LauncherClings.this.mIsVisible = false;
                    if (postAnimationCb != null) {
                        postAnimationCb.run();
                    }
                }
            };
            if (duration <= 0) {
                cleanUpClingCb.run();
            } else {
                cling.animate().alpha(0.0f).setDuration(duration).withEndAction(cleanUpClingCb);
            }
        }
    }

    public boolean isVisible() {
        return this.mIsVisible;
    }

    @TargetApi(18)
    private boolean areClingsEnabled() {
        if (ActivityManager.isRunningInTestHarness()) {
            return false;
        }
        AccessibilityManager a11yManager = (AccessibilityManager) this.mLauncher.getSystemService("accessibility");
        if (a11yManager.isTouchExplorationEnabled()) {
            return false;
        }
        if (Utilities.ATLEAST_JB_MR2) {
            UserManager um = (UserManager) this.mLauncher.getSystemService("user");
            Bundle restrictions = um.getUserRestrictions();
            if (restrictions.getBoolean("no_modify_accounts", false)) {
                return false;
            }
        }
        return Settings.Secure.getInt(this.mLauncher.getContentResolver(), SKIP_FIRST_USE_HINTS, 0) != 1;
    }

    public boolean shouldShowFirstRunOrMigrationClings() {
        SharedPreferences sharedPrefs = this.mLauncher.getSharedPrefs();
        return (!areClingsEnabled() || sharedPrefs.getBoolean(WORKSPACE_CLING_DISMISSED_KEY, false) || sharedPrefs.getBoolean(MIGRATION_CLING_DISMISSED_KEY, false)) ? false : true;
    }

    public boolean shouldShowQuickPageWelcomeCling() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldShowWallpapersCling() {
        SharedPreferences sharedPrefs = this.mLauncher.getSharedPrefs();
        return areClingsEnabled() && !sharedPrefs.getBoolean(WALLPAPERS_CLING_DISMISSED_KEY, false);
    }

    public static void markFirstRunClingDismissed(Context ctx) {
        SharedPreferences prefs = ctx.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putBoolean(WORKSPACE_CLING_DISMISSED_KEY, true);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showFolderTutorial() {
        this.mLauncher.getWorkspace().removeCallbacks(this.mFolderTutorial);
        if (!isVisible()) {
            this.mFolderTutorial = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.10
                @Override // java.lang.Runnable
                public void run() {
                    SharedPreferences sharedPreferences = Utilities.getPrefs(LauncherClings.this.mLauncher);
                    boolean dismiss = sharedPreferences.getBoolean(LauncherClings.FOLDER_TUTORIAL_DISMISSED_KEY, false);
                    if (!dismiss && !LauncherClings.this.isVisible() && LauncherClings.this.mLauncher.isFoldersViewVisible()) {
                        LauncherClings.this.mIsVisible = true;
                        ViewGroup rootView = (ViewGroup) LauncherClings.this.mLauncher.findViewById(R.id.launcher);
                        FrameLayout tutorialView = (FrameLayout) LauncherClings.this.mInflater.inflate(R.layout.folder_tutorial, rootView, false);
                        tutorialView.setClickable(true);
                        rootView.addView(tutorialView);
                        FrameLayout contentView = (FrameLayout) tutorialView.findViewById(R.id.folder_tutorial_content);
                        LauncherClings.this.mInflater.inflate(R.layout.folder_tutorial_welcome_content, contentView);
                        contentView.findViewById(R.id.folder_tutorial_done).setOnClickListener(LauncherClings.this);
                    }
                }
            };
            this.mLauncher.getWorkspace().postDelayed(this.mFolderTutorial, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dismissFolderTutorial() {
        if (this.mLauncher.getWorkspace() != null) {
            this.mLauncher.getWorkspace().removeCallbacks(this.mFolderTutorial);
            if (isVisible()) {
                Runnable dismissTutorial = new Runnable() { // from class: net.oneplus.h2launcher.LauncherClings.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (LauncherClings.this.isVisible()) {
                            LauncherClings.this.dismissCling(LauncherClings.this.mLauncher.findViewById(R.id.folder_tutorial), null, LauncherClings.FOLDER_TUTORIAL_DISMISSED_KEY, 200);
                        }
                    }
                };
                this.mLauncher.getWorkspace().post(dismissTutorial);
            }
        }
    }
}
