package net.oneplus.h2launcher.iconrearrangement;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.FolderIcon;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAnimUtils;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class IconRearrangementAddFolderIcon extends FolderIcon {
    public static final int ALPHA_ANIMATION_DRUATION = 100;
    public static final float ALPHA_DISABLE = 0.2f;
    public static final float ALPHA_ENABLE = 1.0f;
    public static final float ALPHA_HIDE = 0.0f;
    public static final int TEXTVIEW_ALPHA_ANIMATION_DRUATION = 400;
    private LauncherViewPropertyAnimator mEnableAnimator;
    protected BubbleTextView mFakeFolderAnimationName;
    private Drawable[] mFakeIconDrawableList;
    private float mLastAlpha;
    boolean mUseDarkColor;

    public IconRearrangementAddFolderIcon(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mLastAlpha = -1.0f;
    }

    public IconRearrangementAddFolderIcon(Context context) {
        super(context);
        this.mLastAlpha = -1.0f;
    }

    public static IconRearrangementAddFolderIcon fromXml(int resId, Launcher launcher, ViewGroup group) {
        Context context = launcher.getApplicationContext();
        launcher.getDeviceProfile();
        Resources res = context.getResources();
        IconRearrangementAddFolderIcon icon = (IconRearrangementAddFolderIcon) LayoutInflater.from(launcher).inflate(resId, group, false);
        icon.setClipToPadding(false);
        icon.mFolderName = (BubbleTextView) icon.findViewById(R.id.folder_icon_name);
        icon.mFakeFolderAnimationName = (BubbleTextView) icon.findViewById(R.id.folder_icon_animation_name);
        icon.setClipToPadding(false);
        int textSize = res.getDimensionPixelSize(R.dimen.icon_rearrangement_icon_text_size);
        icon.mFolderName.setCompoundDrawablePadding(0);
        icon.mFolderName.setTextSize(0, textSize);
        int paddingTop = res.getDimensionPixelSize(R.dimen.icon_rearrangement_folder_icon_size) + res.getDimensionPixelSize(R.dimen.icon_rearrangement_icon_text_padding);
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) icon.mFolderName.getLayoutParams();
        lp.topMargin = paddingTop;
        icon.mFakeFolderAnimationName.setCompoundDrawablePadding(0);
        icon.mFakeFolderAnimationName.setTextSize(0, textSize);
        FrameLayout.LayoutParams lp2 = (FrameLayout.LayoutParams) icon.mFakeFolderAnimationName.getLayoutParams();
        lp2.topMargin = paddingTop;
        icon.mPreviewBackground = (ImageView) icon.findViewById(R.id.preview_background);
        FrameLayout.LayoutParams lp3 = (FrameLayout.LayoutParams) icon.mPreviewBackground.getLayoutParams();
        lp3.width = res.getDimensionPixelSize(R.dimen.icon_rearrangement_folder_icon_size);
        lp3.height = lp3.width;
        icon.mLauncher = launcher;
        icon.mFolderRingAnimator = new FolderIcon.FolderRingAnimator(launcher, icon);
        icon.mLauncher = launcher;
        icon.initFolderBackground();
        icon.mPreviewBackground.setBackgroundResource(R.drawable.bg_add_folder);
        icon.mPreviewBackground.setAlpha(1.0f);
        icon.mPreviewBackground.setImageResource(R.drawable.ic_add_folder);
        icon.setEnabled(false);
        return icon;
    }

    private void computePreviewDrawingParams(int drawableSize, int totalSize) {
        if (this.mIntrinsicIconSize != drawableSize || this.mTotalWidth != totalSize) {
            this.mLauncher.getDeviceProfile();
            this.mIntrinsicIconSize = drawableSize;
            this.mTotalWidth = totalSize;
            int previewSize = this.mPreviewBackground.getLayoutParams().height;
            int previewPadding = FolderIcon.FolderRingAnimator.sPreviewPadding;
            this.mAvailableSpaceInPreview = previewSize - (previewPadding * 2);
            this.mFourGridIconSize = this.mLauncher.getResources().getDimensionPixelSize(R.dimen.icon_rearrangement_folder_fourgrid_icon_size);
            this.mFourGridIconGap = this.mLauncher.getResources().getDimensionPixelSize(R.dimen.icon_rearrangement_folder_fourgrid_icon_gap);
            int actualWidth = (this.mFourGridIconSize * 2) + this.mFourGridIconGap;
            int adjustedAvailableSpace = (int) ((this.mAvailableSpaceInPreview / 2) * 1.8f);
            int unscaledHeight = (int) (this.mIntrinsicIconSize * 1.1800001f);
            this.mBaselineIconScale = (1.0f * adjustedAvailableSpace) / unscaledHeight;
            this.mBaselineIconSize = (int) (this.mIntrinsicIconSize * this.mBaselineIconScale);
            this.mMaxPerspectiveShift = this.mBaselineIconSize * 0.18f;
            this.mPreviewOffsetX = (this.mTotalWidth - actualWidth) / 2;
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) this.mPreviewBackground.getLayoutParams();
            this.mPreviewOffsetY = getPaddingTop() + lp.topMargin + ((previewSize - actualWidth) / 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.FolderIcon, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mFakeIconDrawableList != null && this.mFakeIconDrawableList.length > 0) {
            Drawable d = this.mFakeIconDrawableList[0];
            computePreviewDrawingParams(d.getIntrinsicWidth(), getMeasuredWidth());
            for (int i = this.mFakeIconDrawableList.length - 1; i >= 0; i--) {
                this.mParams = computePreviewItemDrawingParams(i, this.mParams);
                this.mParams.drawable = this.mFakeIconDrawableList[i];
                drawPreviewItem(canvas, this.mParams);
            }
        }
    }

    public void setTextColor(boolean useDarkColor) {
    }

    public void setTextColor(int textColor) {
    }

    public void setSingleLine(boolean flag) {
        this.mFolderName.setSingleLine(flag);
    }

    public void setEnableNoAnimation(boolean enable) {
        setClickable(enable);
        if (this.mEnableAnimator != null && this.mEnableAnimator.isRunning()) {
            this.mEnableAnimator.cancel();
        }
        if (enable) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.2f);
        }
        this.mLastAlpha = getAlpha();
    }

    @Override // android.view.View
    public void setEnabled(boolean enable) {
        setEnabled(enable, enable);
    }

    public void setEnabled(boolean enable, boolean clickAble) {
        setClickable(clickAble);
        if (enable) {
            performAlphaAnimation(1.0f);
        } else {
            performAlphaAnimation(0.2f);
        }
    }

    public void setFakeIconDrawable(Drawable[] fakeIconDrawableList) {
        this.mFakeIconDrawableList = fakeIconDrawableList;
        if (this.mFakeIconDrawableList == null || this.mFakeIconDrawableList.length == 0) {
            this.mPreviewBackground.setImageResource(R.drawable.ic_add_folder);
        } else {
            this.mPreviewBackground.setImageResource(0);
        }
        invalidate();
    }

    public int getFakeIconDrawableLength() {
        if (this.mFakeIconDrawableList == null) {
            return 0;
        }
        return this.mFakeIconDrawableList.length;
    }

    public void performAlphaAnimation(float targetAlpha) {
        if (targetAlpha != this.mLastAlpha) {
            this.mLastAlpha = targetAlpha;
            if (this.mEnableAnimator != null && this.mEnableAnimator.isRunning()) {
                this.mEnableAnimator.cancel();
            }
            this.mEnableAnimator = new LauncherViewPropertyAnimator(this);
            this.mEnableAnimator.alpha(targetAlpha);
            this.mEnableAnimator.setDuration(100L);
            this.mEnableAnimator.start();
        }
    }

    public Animator getCreateTextFadeAnimation(boolean showCreateButton) {
        LauncherViewPropertyAnimator showAnim;
        LauncherViewPropertyAnimator hideAnim;
        if (showCreateButton) {
            showAnim = new LauncherViewPropertyAnimator(this.mFolderName);
            hideAnim = new LauncherViewPropertyAnimator(this.mFakeFolderAnimationName);
            this.mFolderName.setAlpha(0.0f);
            this.mFakeFolderAnimationName.setAlpha(1.0f);
            this.mFolderName.setVisibility(0);
            this.mFakeFolderAnimationName.setVisibility(0);
        } else {
            showAnim = new LauncherViewPropertyAnimator(this.mFakeFolderAnimationName);
            hideAnim = new LauncherViewPropertyAnimator(this.mFolderName);
            this.mFolderName.setAlpha(1.0f);
            this.mFakeFolderAnimationName.setAlpha(0.0f);
            this.mFolderName.setVisibility(0);
            this.mFakeFolderAnimationName.setVisibility(0);
        }
        showAnim.alpha(1.0f);
        hideAnim.alpha(0.0f);
        hideAnim.setDuration(400L);
        showAnim.setDuration(400L);
        AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        animatorSet.playTogether(showAnim, hideAnim);
        return animatorSet;
    }

    public void setCreateTextVisibility(int visibility) {
        this.mFolderName.setVisibility(visibility);
        if (visibility == 0) {
            this.mFolderName.setAlpha(1.0f);
        } else {
            this.mFolderName.setAlpha(0.0f);
        }
    }

    public void setNewFolderTextVisibility(int visibility) {
        this.mFakeFolderAnimationName.setVisibility(visibility);
        if (visibility == 0) {
            this.mFakeFolderAnimationName.setAlpha(1.0f);
        } else {
            this.mFakeFolderAnimationName.setAlpha(0.0f);
        }
    }
}
