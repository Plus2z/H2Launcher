package net.oneplus.h2launcher.customizations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import net.oneplus.h2launcher.AlphaUpdateListener;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class Selection extends FrameLayout {
    private static final String TAG = Selection.class.getSimpleName();
    private boolean mAccessibilityEnabled;
    private boolean mSelected;
    private ImageView mSelectedIcon;
    private LauncherViewPropertyAnimator mSelectedIconAnimator;

    public Selection(Context context) {
        this(context, null, 0);
    }

    public Selection(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Selection(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSelected = false;
        this.mAccessibilityEnabled = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int iconSize = getResources().getDimensionPixelSize(R.dimen.customization_selected_icon_size);
        this.mSelectedIcon = new ImageView(getContext());
        this.mSelectedIcon.setImageDrawable(getContext().getDrawable(R.drawable.ic_selected).mutate());
        this.mSelectedIcon.getDrawable().setTint(getContext().getColor(R.color.oneplus_accent_color));
        this.mSelectedIcon.setLayoutParams(new FrameLayout.LayoutParams(iconSize, iconSize, 17));
        this.mSelectedIcon.setVisibility(4);
        addView(this.mSelectedIcon);
        bringChildToFront(this.mSelectedIcon);
        this.mSelectedIconAnimator = new LauncherViewPropertyAnimator(this.mSelectedIcon);
        this.mSelectedIconAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.Selection.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                if (Selection.this.mSelectedIcon != null) {
                    Selection.this.mSelectedIcon.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (Selection.this.mSelectedIcon != null) {
                    AlphaUpdateListener.updateVisibility(Selection.this.mSelectedIcon, Selection.this.mAccessibilityEnabled);
                }
            }
        });
    }

    @Override // android.view.View
    public void setSelected(boolean selected) {
        setSelected(selected, 300);
    }

    public void setSelected(boolean selected, int duration) {
        if (this.mSelected == selected) {
            Log.d(TAG, "Skip animation since new state (selected=" + selected + ") is the same ascurrent state (selected=" + this.mSelected + ")");
            return;
        }
        this.mSelected = selected;
        AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.mAccessibilityEnabled = am.isEnabled();
        this.mSelectedIconAnimator.cancel();
        if (this.mSelectedIcon != null) {
            float startAlpha = selected ? 0.0f : 1.0f;
            float endAlpha = selected ? 1.0f : 0.0f;
            if (Float.compare(startAlpha, endAlpha) != 0) {
                if (duration > 0) {
                    this.mSelectedIcon.setAlpha(startAlpha);
                    this.mSelectedIconAnimator.alpha(endAlpha).setDuration(duration).start();
                } else {
                    this.mSelectedIcon.setAlpha(endAlpha);
                    AlphaUpdateListener.updateVisibility(this.mSelectedIcon, this.mAccessibilityEnabled);
                }
            }
        }
    }
}
