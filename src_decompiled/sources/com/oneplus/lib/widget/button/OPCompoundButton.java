package com.oneplus.lib.widget.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class OPCompoundButton extends Button implements Checkable {
    private boolean mBroadcasting;
    private Drawable mButtonDrawable;
    private int mButtonResource;
    private ColorStateList mButtonTintList;
    private PorterDuff.Mode mButtonTintMode;
    private boolean mChecked;
    private boolean mHasButtonTint;
    private boolean mHasButtonTintMode;
    private OnCheckedChangeListener mOnCheckedChangeListener;
    private OnCheckedChangeListener mOnCheckedChangeWidgetListener;
    public static String TAG = OPCompoundButton.class.getSimpleName();
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};

    /* loaded from: classes.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(OPCompoundButton oPCompoundButton, boolean z);
    }

    public OPCompoundButton(Context context) {
        this(context, null);
    }

    public OPCompoundButton(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OPCompoundButton(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public OPCompoundButton(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mButtonTintList = null;
        this.mButtonTintMode = null;
        this.mHasButtonTint = false;
        this.mHasButtonTintMode = false;
        TypedArray a = context.obtainStyledAttributes(attrs, com.oneplus.commonctrl.R.styleable.OPCompoundbutton, defStyleAttr, defStyleRes);
        Drawable d = a.getDrawable(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_button);
        if (d != null) {
            setButtonDrawable(d);
        }
        if (a.hasValue(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_buttonTintMode)) {
            this.mButtonTintMode = parseTintMode(a.getInt(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_buttonTintMode, -1), this.mButtonTintMode);
            this.mHasButtonTintMode = true;
        }
        if (a.hasValue(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_buttonTint)) {
            this.mButtonTintList = a.getColorStateList(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_buttonTint);
            this.mHasButtonTint = true;
        }
        boolean checked = a.getBoolean(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_checked, false);
        setChecked(checked);
        int nRadius = a.getDimensionPixelSize(com.oneplus.commonctrl.R.styleable.OPCompoundbutton_android_radius, -1);
        setRadius(nRadius);
        a.recycle();
        applyButtonTint();
    }

    private void setRadius(int nRadius) {
        if (nRadius != -1) {
            Drawable background = getBackground();
            if (background != null && (background instanceof RippleDrawable)) {
                background.mutate();
                ((RippleDrawable) background).setRadius(nRadius);
            } else {
                Log.i(TAG, "setRaidus fail , background not a rippleDrawable");
            }
        }
    }

    private static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        switch (value) {
            case 3:
                PorterDuff.Mode defaultMode2 = PorterDuff.Mode.SRC_OVER;
                return defaultMode2;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return defaultMode;
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
            case 16:
                PorterDuff.Mode defaultMode7 = PorterDuff.Mode.ADD;
                return defaultMode7;
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.mChecked);
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        boolean handled = super.performClick();
        if (!handled) {
            playSoundEffect(0);
        }
        return handled;
    }

    @Override // android.widget.Checkable
    @ViewDebug.ExportedProperty
    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean checked) {
        if (this.mChecked != checked) {
            this.mChecked = checked;
            refreshDrawableState();
            try {
                Class<?> clz = Class.forName("android.view.View");
                Method m = clz.getMethod("notifyViewAccessibilityStateChangedIfNeeded", Integer.TYPE);
                m.invoke(this, 0);
            } catch (Exception e) {
                Log.e(TAG, "notifyViewAccessibilityStateChangedIfNeeded with Exception!", e);
            }
            if (!this.mBroadcasting) {
                this.mBroadcasting = true;
                if (this.mOnCheckedChangeListener != null) {
                    this.mOnCheckedChangeListener.onCheckedChanged(this, this.mChecked);
                }
                if (this.mOnCheckedChangeWidgetListener != null) {
                    this.mOnCheckedChangeWidgetListener.onCheckedChanged(this, this.mChecked);
                }
                this.mBroadcasting = false;
            }
        }
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener listener) {
        this.mOnCheckedChangeListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnCheckedChangeWidgetListener(OnCheckedChangeListener listener) {
        this.mOnCheckedChangeWidgetListener = listener;
    }

    public void setButtonDrawable(int resid) {
        if (resid == 0 || resid != this.mButtonResource) {
            this.mButtonResource = resid;
            Drawable d = null;
            if (this.mButtonResource != 0) {
                d = getContext().getDrawable(this.mButtonResource);
            }
            setButtonDrawable(d);
        }
    }

    public void setButtonDrawable(Drawable d) {
        if (this.mButtonDrawable != d) {
            if (this.mButtonDrawable != null) {
                this.mButtonDrawable.setCallback(null);
                unscheduleDrawable(this.mButtonDrawable);
            }
            this.mButtonDrawable = d;
            if (d != null) {
                d.setCallback(this);
                try {
                    Class<?> clz = Class.forName("android.graphics.drawable.Drawable");
                    Method m = clz.getMethod("setLayoutDirection", Integer.TYPE);
                    m.invoke(d, Integer.valueOf(getLayoutDirection()));
                } catch (Exception e) {
                    Log.e(TAG, "setLayoutDirection with Exception!", e);
                }
                if (d.isStateful()) {
                    d.setState(getDrawableState());
                }
                d.setVisible(getVisibility() == 0, false);
                setMinHeight(d.getIntrinsicHeight());
                applyButtonTint();
            }
        }
    }

    public Drawable getButtonDrawable() {
        return this.mButtonDrawable;
    }

    public void setButtonTintList(ColorStateList tint) {
        this.mButtonTintList = tint;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    public ColorStateList getButtonTintList() {
        return this.mButtonTintList;
    }

    public void setButtonTintMode(PorterDuff.Mode tintMode) {
        this.mButtonTintMode = tintMode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }

    public PorterDuff.Mode getButtonTintMode() {
        return this.mButtonTintMode;
    }

    private void applyButtonTint() {
        if (this.mButtonDrawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                this.mButtonDrawable = this.mButtonDrawable.mutate();
                if (this.mHasButtonTint) {
                    this.mButtonDrawable.setTintList(this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    this.mButtonDrawable.setTintMode(this.mButtonTintMode);
                }
                if (this.mButtonDrawable.isStateful()) {
                    this.mButtonDrawable.setState(getDrawableState());
                }
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(OPCompoundButton.class.getName());
        event.setChecked(this.mChecked);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(OPCompoundButton.class.getName());
        info.setCheckable(true);
        info.setChecked(this.mChecked);
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        Drawable buttonDrawable;
        int padding = super.getCompoundPaddingLeft();
        if (!isLayoutRtl() && (buttonDrawable = this.mButtonDrawable) != null) {
            return padding + buttonDrawable.getIntrinsicWidth();
        }
        return padding;
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        Drawable buttonDrawable;
        int padding = super.getCompoundPaddingRight();
        if (isLayoutRtl() && (buttonDrawable = this.mButtonDrawable) != null) {
            return padding + buttonDrawable.getIntrinsicWidth();
        }
        return padding;
    }

    public int getHorizontalOffsetForDrawables() {
        Drawable buttonDrawable = this.mButtonDrawable;
        if (buttonDrawable != null) {
            return buttonDrawable.getIntrinsicWidth();
        }
        return 0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int top;
        Drawable buttonDrawable = this.mButtonDrawable;
        if (buttonDrawable != null) {
            int verticalGravity = getGravity() & 112;
            int drawableHeight = buttonDrawable.getIntrinsicHeight();
            int drawableWidth = buttonDrawable.getIntrinsicWidth();
            switch (verticalGravity) {
                case 16:
                    top = (getHeight() - drawableHeight) / 2;
                    break;
                case 80:
                    top = getHeight() - drawableHeight;
                    break;
                default:
                    top = 0;
                    break;
            }
            int bottom = top + drawableHeight;
            int left = isLayoutRtl() ? getWidth() - drawableWidth : 0;
            int right = isLayoutRtl() ? getWidth() : drawableWidth;
            buttonDrawable.setBounds(left, top, right, bottom);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(left, top, right, bottom);
            }
        }
        super.onDraw(canvas);
        if (buttonDrawable != null) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            if (scrollX == 0 && scrollY == 0) {
                buttonDrawable.draw(canvas);
                return;
            }
            canvas.translate(scrollX, scrollY);
            buttonDrawable.draw(canvas);
            canvas.translate(-scrollX, -scrollY);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int extraSpace) {
        int[] drawableState = super.onCreateDrawableState(extraSpace + 1);
        if (isChecked()) {
            mergeDrawableStates(drawableState, CHECKED_STATE_SET);
        }
        return drawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mButtonDrawable != null) {
            int[] myDrawableState = getDrawableState();
            this.mButtonDrawable.setState(myDrawableState);
            invalidate();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float x, float y) {
        super.drawableHotspotChanged(x, y);
        if (this.mButtonDrawable != null) {
            this.mButtonDrawable.setHotspot(x, y);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return super.verifyDrawable(who) || who == this.mButtonDrawable;
    }

    @Override // android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.mButtonDrawable != null) {
            this.mButtonDrawable.jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.oneplus.lib.widget.button.OPCompoundButton.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        boolean checked;

        SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in) {
            super(in);
            this.checked = ((Boolean) in.readValue(null)).booleanValue();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeValue(Boolean.valueOf(this.checked));
        }

        public String toString() {
            return "CompoundButton.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " checked=" + this.checked + "}";
        }
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable superState = super.onSaveInstanceState();
        SavedState ss = new SavedState(superState);
        ss.checked = isChecked();
        return ss;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        setChecked(ss.checked);
        requestLayout();
    }

    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }
}
