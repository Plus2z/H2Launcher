package com.oneplus.lib.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class OPCheckBoxNoAnim extends ImageView {
    private boolean mChecked;
    private int mCheckedResId;
    private int mIntrinsicWidth;
    private int mUnCheckedResId;

    public OPCheckBoxNoAnim(Context context) {
        this(context, null);
    }

    public OPCheckBoxNoAnim(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OPCheckBoxNoAnim(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIntrinsicWidth = 0;
        this.mCheckedResId = 0;
        this.mUnCheckedResId = 0;
        this.mChecked = false;
        init();
    }

    private void init() {
    }

    @Override // android.widget.ImageView
    public void setImageResource(int resId) {
    }

    public void setCheckedImageResource(int resId) {
        this.mCheckedResId = resId;
        if (this.mIntrinsicWidth == 0) {
            this.mIntrinsicWidth = getContext().getResources().getDrawable(this.mCheckedResId, null).getIntrinsicWidth();
        }
    }

    public void setUnCheckedImageResource(int resId) {
        this.mUnCheckedResId = resId;
    }

    public void setChecked(boolean checked) {
        if (checked) {
            super.setImageResource(this.mCheckedResId);
        } else {
            super.setImageResource(this.mUnCheckedResId);
        }
        this.mChecked = checked;
    }
}
