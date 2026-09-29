package net.oneplus.h2launcher;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.Keep;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.ExtendedEditText;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class FoldersContainerView extends BaseContainerView implements View.OnFocusChangeListener {
    private static final float CONTENT_ANIM_START_DELAY = 50.0f;
    private static final float CONTENT_ANIM_START_PROGRESS;
    private static final float HEADER_CLOSE_ALPHA_SPEED_UP_FACTOR = 1.4f;
    private static final float HEADER_CLOSE_ANIM_ALPHA_DURATION = 125.0f;
    private static final float HEADER_CLOSE_ANIM_DURATION = 175.0f;
    private static final float HEADER_CLOSE_ANIM_END_PROGRESS;
    private static final float HEADER_OPEN_ANIM_DURATION = 175.0f;
    private static final float HEADER_OPEN_ANIM_END_PROGRESS;
    private static final String TAG = FoldersContainerView.class.getSimpleName();
    private static float sIndicatorCollapseScaleEnd;
    private static float sIndicatorCollapseScaleMiddle;
    private static float sIndicatorExpandScaleEnd;
    private static float sIndicatorExpandScaleMiddle;
    private float mDownX;
    private float mDownY;
    private Folder mFolder;
    private final int mFolderBottomPadding;
    private ViewGroup mFolderHeader;
    private final float mFolderHeaderTranslation;
    private View mFolderIndicator;
    private ExtendedEditText mFolderName;
    private final Rect mFolderNameRect;
    private TextView mFolderNameText;
    private View.OnClickListener mFolderNameTextClickListener;
    private final Rect mFolderRect;
    private FolderScrollBar mFolderScrollBar;
    private AnimatorSet mIndicatorAnim;
    private final DecelerateInterpolator mInterpolator;
    private float mLastProgress;
    private Launcher mLauncher;
    private float mProgress;
    private final int mTouchSlop;

    static {
        Context context = LauncherAppState.getInstance().getContext();
        Resources resources = context.getResources();
        float folderTransitionTime = resources.getInteger(R.integer.config_foldersTransitionTime);
        HEADER_OPEN_ANIM_END_PROGRESS = (folderTransitionTime - 175.0f) / folderTransitionTime;
        HEADER_CLOSE_ANIM_END_PROGRESS = 175.0f / folderTransitionTime;
        CONTENT_ANIM_START_PROGRESS = (folderTransitionTime - CONTENT_ANIM_START_DELAY) / folderTransitionTime;
    }

    public FoldersContainerView(Context context) {
        this(context, null);
    }

    public FoldersContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FoldersContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mFolderNameRect = new Rect();
        this.mFolderRect = new Rect();
        this.mInterpolator = new DecelerateInterpolator(0.25f);
        this.mFolderNameTextClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.FoldersContainerView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FoldersContainerView.this.mFolderNameText.setVisibility(8);
                FoldersContainerView.this.mFolderName.setVisibility(0);
                FoldersContainerView.this.mFolderName.requestFocus();
                FoldersContainerView.this.mFolderName.showKeyboard();
            }
        };
        this.mIndicatorAnim = new AnimatorSet();
        this.mLauncher = Launcher.getLauncher(context);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledPagingTouchSlop();
        Resources resources = getResources();
        this.mFolderHeaderTranslation = resources.getDimensionPixelSize(R.dimen.folder_header_translation);
        this.mLauncher = Launcher.getLauncher(context);
        this.mProgress = 1.0f;
        this.mLastProgress = 1.0f;
        int screenWidth = Utilities.getScreenDimensions(context, true).x;
        int folderNameMarginH = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_name_margin_horizontal);
        float folderIndicatorW = resources.getDimensionPixelSize(R.dimen.folder_indicator_width);
        sIndicatorExpandScaleEnd = (screenWidth - (folderNameMarginH * 2)) / folderIndicatorW;
        sIndicatorExpandScaleMiddle = sIndicatorExpandScaleEnd + (27.0f / folderIndicatorW);
        sIndicatorCollapseScaleEnd = 1.0f;
        sIndicatorCollapseScaleMiddle = sIndicatorCollapseScaleEnd - (21.0f / folderIndicatorW);
        this.mFolderBottomPadding = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_padding);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        if (params instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) params;
            mlp.topMargin = 0;
            if (mlp.bottomMargin > 0) {
                View content = getContentView();
                int l = content.getPaddingLeft();
                int t = content.getPaddingTop();
                int r = content.getPaddingRight();
                int b = content.getPaddingBottom() + mlp.bottomMargin;
                getContentView().setPadding(l, t, r, b);
                mlp.bottomMargin = 0;
            }
        }
        super.setLayoutParams(params);
    }

    @Override // net.oneplus.h2launcher.BaseContainerView
    protected void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) getContentView().getLayoutParams();
        params.bottomMargin = padding.bottom - this.mContainerBoundsInset;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Context context = getContext();
        this.mFolderHeader = (LinearLayout) findViewById(R.id.folder_header);
        int folderHeaderMarginH = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_name_margin_horizontal);
        ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) this.mFolderHeader.getLayoutParams();
        params.leftMargin = folderHeaderMarginH;
        params.rightMargin = folderHeaderMarginH;
        this.mFolderIndicator = findViewById(R.id.folder_indicator);
        this.mFolderIndicator.setPivotX(0.0f);
        this.mFolderScrollBar = (FolderScrollBar) findViewById(R.id.scroller);
        layoutFolderScrollBar(context, this.mFolderScrollBar);
        this.mFolderName = (ExtendedEditText) this.mFolderHeader.findViewById(R.id.folder_name);
        this.mFolderName.setOnBackKeyListener(new ExtendedEditText.OnBackKeyListener() { // from class: net.oneplus.h2launcher.FoldersContainerView.2
            @Override // net.oneplus.h2launcher.ExtendedEditText.OnBackKeyListener
            public boolean onBackKey() {
                if (FoldersContainerView.this.mFolder != null) {
                    FoldersContainerView.this.mFolder.doneEditingFolderName(true);
                    return false;
                }
                return false;
            }
        });
        this.mFolderName.setOnFocusChangeListener(this);
        ViewGroup.MarginLayoutParams params2 = (FrameLayout.LayoutParams) this.mFolderName.getLayoutParams();
        params2.leftMargin = -this.mFolderName.getPaddingLeft();
        params2.rightMargin = -this.mFolderName.getPaddingRight();
        this.mFolderNameText = (TextView) this.mFolderHeader.findViewById(R.id.folder_name_text);
        this.mFolderNameText.setOnClickListener(this.mFolderNameTextClickListener);
        if (!Utilities.ATLEAST_MARSHMALLOW) {
            this.mFolderName.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: net.oneplus.h2launcher.FoldersContainerView.3
                @Override // android.view.ActionMode.Callback
                public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public boolean onCreateActionMode(ActionMode mode, Menu menu) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public void onDestroyActionMode(ActionMode mode) {
                }

                @Override // android.view.ActionMode.Callback
                public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
                    return false;
                }
            });
        }
        this.mFolderName.setSelectAllOnFocus(true);
        this.mFolderName.setInputType(this.mFolderName.getInputType() | 524288 | 8192);
        View content = getContentView();
        content.setPadding(content.getPaddingLeft(), content.getPaddingTop(), content.getPaddingRight(), this.mFolderBottomPadding);
    }

    private void layoutFolderScrollBar(Context context, View scrollbar) {
        int screenWidth = Utilities.getScreenDimensions(context, true).x;
        int folderWidth = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_width);
        int folderHeight = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_height);
        int scrollbarMarginV = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_scrollbar_margin_vertical);
        int scrollbarMarginEnd = getResources().getDimensionPixelSize(R.dimen.folder_scrollbar_margin_end);
        int scrollbarHeight = folderHeight - (scrollbarMarginV * 2);
        int marginEnd = ((screenWidth - folderWidth) / 2) + scrollbarMarginEnd;
        ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) scrollbar.getLayoutParams();
        params.height = scrollbarHeight;
        params.setMarginEnd(marginEnd);
        params.bottomMargin = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_scrollbar_margin_vertical);
        this.mFolderScrollBar.setLayoutParams(params);
    }

    public void addFolder(Folder folder) {
        if (folder == null) {
            Logger.e(TAG, "addFolder# folder is null");
            return;
        }
        ViewParent vp = folder.getParent();
        if (vp != null) {
            ((ViewGroup) vp).removeView(folder);
        }
        removeFolder();
        Context context = getContext();
        int width = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_width);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(width, -2);
        params.addRule(12);
        params.addRule(14);
        ((ViewGroup) getContentView()).addView(folder, params);
        RelativeLayout.LayoutParams params2 = (RelativeLayout.LayoutParams) this.mFolderHeader.getLayoutParams();
        params2.addRule(2, folder.getId());
        this.mFolderHeader.setLayoutParams(params2);
        this.mFolder = folder;
        this.mFolder.bindFolderName(this.mFolderName, this.mFolderNameText);
        folder.setFolderScrollBar(this.mFolderScrollBar);
        this.mFolderScrollBar.notifyFolderOpen();
        setProgress(1.0f);
    }

    public void removeFolder() {
        if (this.mFolder != null) {
            ((ViewGroup) getContentView()).removeView(this.mFolder);
            this.mFolder = null;
        }
        if (this.mFolderScrollBar != null) {
            this.mFolderScrollBar.dismissScrollBar();
        }
    }

    public Folder getCurrentFolder() {
        return this.mFolder;
    }

    public FolderScrollBar getFolderScrollBar() {
        return this.mFolderScrollBar;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.mDownX = event.getX();
                this.mDownY = event.getY();
                break;
            case 1:
                if (isEventOverBlankArea(event)) {
                    this.mLauncher.closeFolder();
                    break;
                }
                break;
        }
        return this.mLauncher.isFoldersViewVisible() || super.onTouchEvent(event);
    }

    private boolean isEventOverBlankArea(MotionEvent ev) {
        if (this.mFolder == null || this.mFolderName == null) {
            return false;
        }
        int x = (int) ev.getX();
        int y = (int) ev.getY();
        this.mFolderName.getHitRect(this.mFolderNameRect);
        this.mFolder.getHitRect(this.mFolderRect);
        boolean eventOverBlankArea = y < this.mFolderNameRect.top || (y > this.mFolderNameRect.bottom && !this.mFolderRect.contains(x, y));
        return eventOverBlankArea && isClickEvent(Math.abs(((float) x) - this.mDownX), Math.abs(((float) y) - this.mDownY));
    }

    private boolean isClickEvent(float xDiff, float yDiff) {
        return xDiff < ((float) this.mTouchSlop) && yDiff < ((float) this.mTouchSlop);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View v, boolean hasFocus) {
        if (this.mFolder != null && v == this.mFolderName) {
            if (hasFocus) {
                this.mFolder.startEditingFolderName();
                animateFolderIndicator(true);
            } else {
                animateFolderIndicator(false);
                this.mFolderName.setVisibility(8);
                this.mFolder.dismissEditingName();
                this.mFolderNameText.setVisibility(0);
            }
        }
    }

    private void animateFolderIndicator(boolean expand) {
        float scaleX0 = this.mFolderIndicator.getScaleX();
        float scaleX1 = expand ? sIndicatorExpandScaleMiddle : sIndicatorCollapseScaleMiddle;
        float scaleX2 = expand ? sIndicatorExpandScaleEnd : sIndicatorCollapseScaleEnd;
        float scaleY = expand ? 2.0f : 1.0f;
        this.mIndicatorAnim.playSequentially(ObjectAnimator.ofFloat(this.mFolderIndicator, "scaleX", scaleX0, scaleX1).setDuration(175L), ObjectAnimator.ofFloat(this.mFolderIndicator, "scaleX", scaleX1, scaleX2).setDuration(125L));
        this.mIndicatorAnim.play(ObjectAnimator.ofFloat(this.mFolderIndicator, "scaleY", scaleY).setDuration(300L));
        this.mIndicatorAnim.start();
    }

    @Keep
    public void setProgress(float progress) {
        this.mLastProgress = this.mProgress;
        this.mProgress = progress;
        if (this.mFolder != null) {
            setFolderHeaderTranslationAndAlpha();
            setFolderContentTranslationAndAlpha();
        }
    }

    private void setFolderHeaderTranslationAndAlpha() {
        float progress = calFolderHeaderProgress();
        float interpolation = applyInterpolation(progress);
        float translation = interpolation * this.mFolderHeaderTranslation;
        float alpha = isClosingOrDraggingFolder() ? 1.0f - (HEADER_CLOSE_ALPHA_SPEED_UP_FACTOR * progress) : 1.0f - progress;
        this.mFolderNameText.setTranslationY(translation);
        this.mFolderNameText.setAlpha(alpha);
        this.mFolderIndicator.setTranslationY(translation);
        this.mFolderIndicator.setAlpha(alpha);
    }

    private void setFolderContentTranslationAndAlpha() {
        float progress = calFolderHeaderProgress();
        float interpolation = applyInterpolation(progress);
        float translation = interpolation * this.mFolderHeaderTranslation;
        float alpha = isClosingOrDraggingFolder() ? 1.0f - (HEADER_CLOSE_ALPHA_SPEED_UP_FACTOR * progress) : 1.0f - progress;
        this.mFolder.setTranslationY(translation);
        this.mFolder.setAlpha(alpha);
        this.mFolderScrollBar.setTranslationY(translation);
        if (this.mFolderScrollBar.isShown()) {
            this.mFolderScrollBar.setAlpha(alpha);
        }
    }

    private float calFolderHeaderProgress() {
        if (isClosingOrDraggingFolder()) {
            if (this.mProgress > HEADER_CLOSE_ANIM_END_PROGRESS) {
                return 1.0f;
            }
            return this.mProgress / HEADER_CLOSE_ANIM_END_PROGRESS;
        }
        if (this.mProgress < HEADER_OPEN_ANIM_END_PROGRESS) {
            return 0.0f;
        }
        return (this.mProgress - HEADER_OPEN_ANIM_END_PROGRESS) / (1.0f - HEADER_OPEN_ANIM_END_PROGRESS);
    }

    private float calFolderContentProgress() {
        if (isClosingOrDraggingFolder()) {
            return calFolderHeaderProgress();
        }
        if (this.mProgress > CONTENT_ANIM_START_PROGRESS) {
            return 1.0f;
        }
        return this.mProgress / CONTENT_ANIM_START_PROGRESS;
    }

    private float applyInterpolation(float progress) {
        return this.mLauncher.getFoldersController().isTransitioning() ? progress : this.mInterpolator.getInterpolation(progress);
    }

    private boolean isClosingOrDraggingFolder() {
        return this.mLastProgress < this.mProgress || this.mLauncher.getFoldersController().isTransitioning();
    }

    public View getRevealView() {
        return findViewById(R.id.reveal_view);
    }

    public View getContentView() {
        return findViewById(R.id.main_content);
    }

    public void adjustMarginForIconRearrangeMode(Context context) {
        Launcher launcher = Launcher.getLauncher(context);
        if (launcher != null) {
            View content = getContentView();
            ViewGroup.MarginLayoutParams lp = (ViewGroup.MarginLayoutParams) getLayoutParams();
            if (launcher.isIconRearrangementMode()) {
                Rect rect = new Rect();
                launcher.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                Workspace workspace = launcher.getWorkspace();
                lp.topMargin = rect.top;
                lp.bottomMargin = workspace.getPaddingBottom();
                lp.leftMargin = workspace.getPaddingLeft();
                lp.rightMargin = workspace.getPaddingRight();
                content.setPadding(content.getPaddingLeft(), content.getPaddingTop(), content.getPaddingRight(), this.mFolderBottomPadding - workspace.getInsets().bottom);
                float scale = launcher.getWorkspace().getScaleX();
                setScaleX(scale);
                setScaleY(scale);
                setTranslationY(launcher.getWorkspace().getOverviewModeTranslationY());
                return;
            }
            lp.rightMargin = 0;
            lp.leftMargin = 0;
            lp.bottomMargin = 0;
            lp.topMargin = 0;
            content.setPadding(content.getPaddingLeft(), content.getPaddingTop(), content.getPaddingRight(), this.mFolderBottomPadding);
            setScaleX(1.0f);
            setScaleY(1.0f);
            setTranslationY(0.0f);
        }
    }
}
