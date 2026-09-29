package com.oneplus.lib.widget.button;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.design.widget.AppBarLayout;
import com.oneplus.lib.design.widget.CoordinatorLayout;
import com.oneplus.lib.design.widget.Utils;
import java.util.List;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
/* loaded from: classes.dex */
public class OPFloatingActionButton extends ImageView {
    private static final int SIZE_MINI = 1;
    private static final int SIZE_NORMAL = 0;
    private ColorStateList mBackgroundTint;
    private PorterDuff.Mode mBackgroundTintMode;
    private int mBorderWidth;
    private int mContentPadding;
    private final OPFloatingActionButtonImpl mImpl;
    private int mRippleColor;
    private final Rect mShadowPadding;
    private int mSize;
    private int mUserSetVisibility;

    /* loaded from: classes.dex */
    public static abstract class OnVisibilityChangedListener {
        public void onShown(OPFloatingActionButton fab) {
        }

        public void onHidden(OPFloatingActionButton fab) {
        }
    }

    public OPFloatingActionButton(Context context) {
        this(context, null);
    }

    public OPFloatingActionButton(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.OPFloatingActionButtonStyle);
    }

    public OPFloatingActionButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mUserSetVisibility = getVisibility();
        this.mShadowPadding = new Rect();
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.OPFloatingActionButton, defStyleAttr, R.style.OnePlus_Widget_Design_FloatingActionButton);
        Drawable background = a.getDrawable(R.styleable.OPFloatingActionButton_android_background);
        this.mBackgroundTint = a.getColorStateList(R.styleable.OPFloatingActionButton_op_backgroundTint);
        this.mBackgroundTintMode = parseTintMode(a.getInt(R.styleable.OPFloatingActionButton_op_backgroundTintMode, -1), null);
        this.mRippleColor = a.getColor(R.styleable.OPFloatingActionButton_op_rippleColor, 0);
        this.mSize = a.getInt(R.styleable.OPFloatingActionButton_op_fabSize, 0);
        this.mBorderWidth = a.getDimensionPixelSize(R.styleable.OPFloatingActionButton_op_borderWidth, 0);
        float op_elevation = a.getDimension(R.styleable.OPFloatingActionButton_op_elevation, 0.0f);
        float op_pressedTranslationZ = a.getDimension(R.styleable.OPFloatingActionButton_op_pressedTranslationZ, 0.0f);
        a.recycle();
        OPShadowViewDelegate delegate = new OPShadowViewDelegate() { // from class: com.oneplus.lib.widget.button.OPFloatingActionButton.1
            @Override // com.oneplus.lib.widget.button.OPShadowViewDelegate
            public float getRadius() {
                return OPFloatingActionButton.this.getSizeDimension() / 2.0f;
            }

            @Override // com.oneplus.lib.widget.button.OPShadowViewDelegate
            public void setShadowPadding(int left, int top, int right, int bottom) {
                OPFloatingActionButton.this.mShadowPadding.set(left, top, right, bottom);
                OPFloatingActionButton.this.setPadding(OPFloatingActionButton.this.mContentPadding + left, OPFloatingActionButton.this.mContentPadding + top, OPFloatingActionButton.this.mContentPadding + right, OPFloatingActionButton.this.mContentPadding + bottom);
            }

            @Override // com.oneplus.lib.widget.button.OPShadowViewDelegate
            public void setBackground(Drawable background2) {
                OPFloatingActionButton.super.setBackground(background2);
            }
        };
        this.mImpl = new OPFloatingActionButtonImpl(this, delegate);
        int maxContentSize = (int) getResources().getDimension(R.dimen.design_fab_content_size);
        this.mContentPadding = (getSizeDimension() - maxContentSize) / 2;
        this.mImpl.setBackground(background, this.mBackgroundTint, this.mBackgroundTintMode, this.mRippleColor, this.mBorderWidth);
        this.mImpl.setElevation(op_elevation);
        this.mImpl.setPressedTranslationZ(op_pressedTranslationZ);
        setClickable(true);
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        internalSetVisibility(visibility, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void internalSetVisibility(int visibility, boolean fromUser) {
        super.setVisibility(visibility);
        if (fromUser) {
            this.mUserSetVisibility = visibility;
        }
    }

    final int getUserSetVisibility() {
        return this.mUserSetVisibility;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int preferredSize = getSizeDimension();
        int w = resolveAdjustedSize(preferredSize, widthMeasureSpec);
        int h = resolveAdjustedSize(preferredSize, heightMeasureSpec);
        int d = Math.min(w, h);
        setMeasuredDimension(this.mShadowPadding.left + d + this.mShadowPadding.right, this.mShadowPadding.top + d + this.mShadowPadding.bottom);
    }

    public void setRippleColor(int color) {
        if (this.mRippleColor != color) {
            this.mRippleColor = color;
            this.mImpl.setRippleColor(color);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.mBackgroundTint;
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList tint) {
        if (this.mBackgroundTint != tint) {
            this.mBackgroundTint = tint;
            this.mImpl.setBackgroundTintList(tint);
        }
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.mBackgroundTintMode;
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode tintMode) {
        if (this.mBackgroundTintMode != tintMode) {
            this.mBackgroundTintMode = tintMode;
            this.mImpl.setBackgroundTintMode(tintMode);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable background) {
        if (this.mImpl != null) {
            this.mImpl.setBackground(background, this.mBackgroundTint, this.mBackgroundTintMode, this.mRippleColor, this.mBorderWidth);
        }
    }

    public void show() {
        show(true);
    }

    public void hide() {
        hide(true);
    }

    public void show(boolean fromUser) {
        this.mImpl.show(fromUser);
    }

    public void hide(boolean fromUser) {
        this.mImpl.hide(fromUser);
    }

    final int getSizeDimension() {
        switch (this.mSize) {
            case 1:
                return getResources().getDimensionPixelSize(R.dimen.design_fab_size_mini);
            default:
                return getResources().getDimensionPixelSize(R.dimen.design_fab_size_normal);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.mImpl.onDrawableStateChanged(getDrawableState());
    }

    @Override // android.widget.ImageView, android.view.View
    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.mImpl.jumpDrawableToCurrentState();
    }

    private static int resolveAdjustedSize(int desiredSize, int measureSpec) {
        int specMode = View.MeasureSpec.getMode(measureSpec);
        int specSize = View.MeasureSpec.getSize(measureSpec);
        switch (specMode) {
            case Integer.MIN_VALUE:
                int result = Math.min(desiredSize, specSize);
                return result;
            case 0:
                return desiredSize;
            case LauncherActivityInfoCompat.FLAG_SUSPENDED /* 1073741824 */:
                return specSize;
            default:
                return desiredSize;
        }
    }

    static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        switch (value) {
            case 3:
                PorterDuff.Mode defaultMode2 = PorterDuff.Mode.SRC_OVER;
                return defaultMode2;
            case 5:
                PorterDuff.Mode defaultMode3 = PorterDuff.Mode.SRC_IN;
                return defaultMode3;
            case 9:
                PorterDuff.Mode defaultMode4 = PorterDuff.Mode.SRC_ATOP;
                return defaultMode4;
            case 14:
                PorterDuff.Mode defaultMode5 = PorterDuff.Mode.MULTIPLY;
                return defaultMode5;
            case 15:
                PorterDuff.Mode defaultMode6 = PorterDuff.Mode.SCREEN;
                return defaultMode6;
            default:
                return defaultMode;
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends CoordinatorLayout.Behavior<OPFloatingActionButton> {
        private static final boolean AUTO_HIDE_DEFAULT = true;
        private boolean mAutoHideEnabled;
        private OnVisibilityChangedListener mInternalAutoHideListener;
        private Rect mTmpRect;

        public Behavior() {
            this.mAutoHideEnabled = true;
        }

        public Behavior(Context context, AttributeSet attrs) {
            super(context, attrs);
            TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.OpFloatingActionButton_Behavior_Layout);
            this.mAutoHideEnabled = a.getBoolean(R.styleable.OpFloatingActionButton_Behavior_Layout_op_behavior_autoHide, true);
            a.recycle();
        }

        public void setAutoHideEnabled(boolean autoHide) {
            this.mAutoHideEnabled = autoHide;
        }

        public boolean isAutoHideEnabled() {
            return this.mAutoHideEnabled;
        }

        @Override // com.oneplus.lib.design.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams lp) {
            if (lp.dodgeInsetEdges == 0) {
                lp.dodgeInsetEdges = 80;
            }
        }

        @Override // com.oneplus.lib.design.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout parent, OPFloatingActionButton child, View dependency) {
            if (dependency instanceof AppBarLayout) {
                updateFabVisibilityForAppBarLayout(parent, (AppBarLayout) dependency, child);
                return false;
            }
            if (isBottomSheet(dependency)) {
                updateFabVisibilityForBottomSheet(dependency, child);
                return false;
            }
            return false;
        }

        private static boolean isBottomSheet(@NonNull View view) {
            return false;
        }

        @VisibleForTesting
        void setInternalAutoHideListener(OnVisibilityChangedListener listener) {
            this.mInternalAutoHideListener = listener;
        }

        private boolean shouldUpdateVisibility(View dependency, OPFloatingActionButton child) {
            CoordinatorLayout.LayoutParams lp = (CoordinatorLayout.LayoutParams) child.getLayoutParams();
            return this.mAutoHideEnabled && lp.getAnchorId() == dependency.getId() && child.getUserSetVisibility() == 0;
        }

        private boolean updateFabVisibilityForAppBarLayout(CoordinatorLayout parent, AppBarLayout appBarLayout, OPFloatingActionButton child) {
            if (!shouldUpdateVisibility(appBarLayout, child)) {
                return false;
            }
            if (this.mTmpRect == null) {
                this.mTmpRect = new Rect();
            }
            Rect rect = this.mTmpRect;
            Utils.getDescendantRect(parent, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                child.hide(false);
            } else {
                child.show(false);
            }
            return true;
        }

        private boolean updateFabVisibilityForBottomSheet(View bottomSheet, OPFloatingActionButton child) {
            if (!shouldUpdateVisibility(bottomSheet, child)) {
                return false;
            }
            CoordinatorLayout.LayoutParams lp = (CoordinatorLayout.LayoutParams) child.getLayoutParams();
            if (bottomSheet.getTop() < (child.getHeight() / 2) + lp.topMargin) {
                child.hide(false);
            } else {
                child.show(false);
            }
            return true;
        }

        @Override // com.oneplus.lib.design.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(CoordinatorLayout parent, OPFloatingActionButton child, int layoutDirection) {
            List<View> dependencies = parent.getDependencies(child);
            int count = dependencies.size();
            for (int i = 0; i < count; i++) {
                View dependency = dependencies.get(i);
                if (dependency instanceof AppBarLayout) {
                    if (updateFabVisibilityForAppBarLayout(parent, (AppBarLayout) dependency, child)) {
                        break;
                    }
                } else {
                    if (isBottomSheet(dependency) && updateFabVisibilityForBottomSheet(dependency, child)) {
                        break;
                    }
                }
            }
            parent.onLayoutChild(child, layoutDirection);
            offsetIfNeeded(parent, child);
            return true;
        }

        @Override // com.oneplus.lib.design.widget.CoordinatorLayout.Behavior
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout parent, @NonNull OPFloatingActionButton child, @NonNull Rect rect) {
            Rect shadowPadding = child.mShadowPadding;
            rect.set(child.getLeft() + shadowPadding.left, child.getTop() + shadowPadding.top, child.getRight() - shadowPadding.right, child.getBottom() - shadowPadding.bottom);
            return true;
        }

        private void offsetIfNeeded(CoordinatorLayout parent, OPFloatingActionButton fab) {
            Rect padding = fab.mShadowPadding;
            if (padding != null && padding.centerX() > 0 && padding.centerY() > 0) {
                CoordinatorLayout.LayoutParams lp = (CoordinatorLayout.LayoutParams) fab.getLayoutParams();
                int offsetTB = 0;
                int offsetLR = 0;
                if (fab.getRight() >= parent.getWidth() - lp.rightMargin) {
                    offsetLR = padding.right;
                } else if (fab.getLeft() <= lp.leftMargin) {
                    offsetLR = -padding.left;
                }
                if (fab.getBottom() >= parent.getHeight() - lp.bottomMargin) {
                    offsetTB = padding.bottom;
                } else if (fab.getTop() <= lp.topMargin) {
                    offsetTB = -padding.top;
                }
                if (offsetTB != 0) {
                    ViewCompat.offsetTopAndBottom(fab, offsetTB);
                }
                if (offsetLR != 0) {
                    ViewCompat.offsetLeftAndRight(fab, offsetLR);
                }
            }
        }
    }
}
