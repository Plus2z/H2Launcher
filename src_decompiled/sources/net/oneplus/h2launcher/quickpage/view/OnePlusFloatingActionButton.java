package net.oneplus.h2launcher.quickpage.view;

import android.animation.AnimatorInflater;
import android.animation.StateListAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class OnePlusFloatingActionButton extends ImageButton {
    public static final int TYPE_MINI = 1;
    public static final int TYPE_NORMAL = 0;
    private int mColorDisabled;
    private int mColorNormal;
    private int mColorPressed;
    private int mColorRipple;
    private Context mContext;
    private boolean mMarginsSet;
    private boolean mShadow;
    private int mShadowSize;
    private int mType;
    private boolean mVisible;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TYPE {
    }

    public OnePlusFloatingActionButton(Context context) {
        this(context, null);
    }

    public OnePlusFloatingActionButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContext = context;
        init(context, attrs);
    }

    public OnePlusFloatingActionButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(context, attrs);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = getDimension(this.mType == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
        setMeasuredDimension(size, size);
    }

    @SuppressLint({"NewApi"})
    private void init(Context context, AttributeSet attributeSet) {
        this.mVisible = true;
        this.mColorNormal = getColor(android.R.color.transparent);
        this.mColorPressed = darkenColor(this.mColorNormal);
        this.mColorRipple = lightenColor(this.mColorNormal);
        this.mColorDisabled = getColor(android.R.color.darker_gray);
        this.mType = 0;
        this.mShadow = true;
        this.mShadowSize = getDimension(R.dimen.fab_shadow_size);
        StateListAnimator stateListAnimator = AnimatorInflater.loadStateListAnimator(context, R.anim.fab_press_elevation);
        setStateListAnimator(stateListAnimator);
        if (attributeSet != null) {
            initAttributes(context, attributeSet);
        }
        updateBackground();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    private void initAttributes(Context context, AttributeSet attributeSet) {
        TypedArray attr = getTypedArray(context, attributeSet, R.styleable.OnePlusFloatingActionButton);
        if (attr != null) {
            try {
                this.mColorNormal = attr.getColor(1, getColor(android.R.color.transparent));
                this.mColorPressed = attr.getColor(0, darkenColor(this.mColorNormal));
                this.mColorRipple = attr.getColor(2, lightenColor(this.mColorNormal));
                this.mColorDisabled = attr.getColor(3, this.mColorDisabled);
                this.mShadow = attr.getBoolean(4, true);
                this.mType = attr.getInt(5, 0);
            } finally {
                attr.recycle();
            }
        }
    }

    private void updateBackground() {
        StateListDrawable drawable = new StateListDrawable();
        drawable.addState(new int[]{android.R.attr.state_pressed}, createDrawable(this.mColorPressed));
        drawable.addState(new int[]{-16842910}, createDrawable(this.mColorDisabled));
        drawable.addState(new int[0], createDrawable(this.mColorNormal));
        setBackgroundCompat(drawable);
    }

    private Drawable createDrawable(int color) {
        OvalShape ovalShape = new OvalShape();
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        shapeDrawable.getPaint().setColor(color);
        return shapeDrawable;
    }

    private TypedArray getTypedArray(Context context, AttributeSet attributeSet, int[] attr) {
        return context.obtainStyledAttributes(attributeSet, attr, 0, 0);
    }

    private int getColor(@ColorRes int id) {
        return getResources().getColor(id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDimension(@DimenRes int id) {
        return getResources().getDimensionPixelSize(id);
    }

    private void setMarginsWithoutShadow() {
        if (!this.mMarginsSet && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams layoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            int leftMargin = layoutParams.leftMargin - this.mShadowSize;
            int topMargin = layoutParams.topMargin - this.mShadowSize;
            int rightMargin = layoutParams.rightMargin - this.mShadowSize;
            int bottomMargin = layoutParams.bottomMargin - this.mShadowSize;
            layoutParams.setMargins(leftMargin, topMargin, rightMargin, bottomMargin);
            requestLayout();
            this.mMarginsSet = true;
        }
    }

    private void setBackgroundCompat(Drawable drawable) {
        float elevation;
        if (this.mShadow) {
            elevation = getElevation() > 0.0f ? getElevation() : getDimension(R.dimen.fab_elevation);
        } else {
            elevation = 0.0f;
        }
        setElevation(elevation);
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.mColorRipple}), drawable, null);
        setOutlineProvider(new ViewOutlineProvider() { // from class: net.oneplus.h2launcher.quickpage.view.OnePlusFloatingActionButton.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                int size = OnePlusFloatingActionButton.this.getDimension(OnePlusFloatingActionButton.this.mType == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
                outline.setOval(0, 0, size, size);
            }
        });
        setClipToOutline(true);
        setBackground(rippleDrawable);
    }

    private int getMarginBottom() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        int marginBottom = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        return marginBottom;
    }

    public void setColorNormal(int color) {
        if (color != this.mColorNormal) {
            this.mColorNormal = color;
            updateBackground();
        }
    }

    public void setColorNormalResId(@ColorRes int colorResId) {
        setColorNormal(getColor(colorResId));
    }

    public int getColorNormal() {
        return this.mColorNormal;
    }

    public void setColorPressed(int color) {
        if (color != this.mColorPressed) {
            this.mColorPressed = color;
            updateBackground();
        }
    }

    public void setColorPressedResId(@ColorRes int colorResId) {
        setColorPressed(getColor(colorResId));
    }

    public int getColorPressed() {
        return this.mColorPressed;
    }

    public void setColorRipple(int color) {
        if (color != this.mColorRipple) {
            this.mColorRipple = color;
            updateBackground();
        }
    }

    public void setColorRippleResId(@ColorRes int colorResId) {
        setColorRipple(getColor(colorResId));
    }

    public int getColorRipple() {
        return this.mColorRipple;
    }

    public void setShadow(boolean shadow) {
        if (shadow != this.mShadow) {
            this.mShadow = shadow;
            updateBackground();
        }
    }

    public boolean hasShadow() {
        return this.mShadow;
    }

    public void setType(int type) {
        if (type != this.mType) {
            this.mType = type;
            updateBackground();
        }
    }

    public int getType() {
        return this.mType;
    }

    public boolean isVisible() {
        return this.mVisible;
    }

    public void show(boolean animate) {
        toggle(true, animate, false);
    }

    public void hide(boolean animate) {
        toggle(false, animate, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggle(final boolean visible, final boolean animate, boolean force) {
        if (this.mVisible != visible || force) {
            this.mVisible = visible;
            int height = getHeight();
            if (height == 0 && !force) {
                ViewTreeObserver vto = getViewTreeObserver();
                if (vto.isAlive()) {
                    vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: net.oneplus.h2launcher.quickpage.view.OnePlusFloatingActionButton.2
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public boolean onPreDraw() {
                            ViewTreeObserver currentVto = OnePlusFloatingActionButton.this.getViewTreeObserver();
                            if (currentVto.isAlive()) {
                                currentVto.removeOnPreDrawListener(this);
                            }
                            OnePlusFloatingActionButton.this.toggle(visible, animate, true);
                            return true;
                        }
                    });
                }
            }
        }
    }

    private static int darkenColor(int color) {
        Color.colorToHSV(color, hsv);
        float[] hsv = {0.0f, 0.0f, hsv[2] * 0.9f};
        return Color.HSVToColor(hsv);
    }

    private static int lightenColor(int color) {
        Color.colorToHSV(color, hsv);
        float[] hsv = {0.0f, 0.0f, hsv[2] * 1.1f};
        return Color.HSVToColor(hsv);
    }
}
