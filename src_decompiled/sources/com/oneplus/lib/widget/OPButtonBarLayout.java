package com.oneplus.lib.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.oneplus.commonctrl.R;

/* loaded from: classes.dex */
public class OPButtonBarLayout extends LinearLayout {
    private boolean mAllowStacking;
    private int mLastWidthSize;

    public OPButtonBarLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mLastWidthSize = -1;
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.OPButtonBarLayout);
        this.mAllowStacking = ta.getBoolean(R.styleable.OPButtonBarLayout_op_allowStacking, true);
        ta.recycle();
    }

    public void setAllowStacking(boolean allowStacking) {
        if (this.mAllowStacking != allowStacking) {
            this.mAllowStacking = allowStacking;
            if (!this.mAllowStacking && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int initialWidthMeasureSpec;
        int widthSize = View.MeasureSpec.getSize(widthMeasureSpec);
        if (this.mAllowStacking) {
            if (widthSize > this.mLastWidthSize && isStacked()) {
                setStacked(false);
            }
            this.mLastWidthSize = widthSize;
        }
        boolean needsRemeasure = false;
        if (!isStacked() && View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824) {
            initialWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(widthSize, Integer.MIN_VALUE);
            needsRemeasure = true;
        } else {
            initialWidthMeasureSpec = widthMeasureSpec;
        }
        super.onMeasure(initialWidthMeasureSpec, heightMeasureSpec);
        if (this.mAllowStacking && !isStacked()) {
            int measuredWidth = getMeasuredWidthAndState();
            int measuredWidthState = measuredWidth & (-16777216);
            if (measuredWidthState == 16777216) {
                setStacked(true);
                needsRemeasure = true;
            }
        }
        if (needsRemeasure) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    private void setStacked(boolean stacked) {
        setOrientation(stacked ? 1 : 0);
        setGravity(stacked ? 5 : 80);
        if (stacked) {
            setPadding(0, 0, 0, getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_layout_margin_bottom1));
        } else {
            setPadding(getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_layout_margin_top1), getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_layout_margin_right1), getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_layout_margin_bottom1), getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_layout_margin_left1));
        }
        View spacer = findViewById(R.id.spacer);
        if (spacer != null) {
            spacer.setVisibility(stacked ? 8 : 4);
        }
        View spacer2 = findViewById(R.id.spacer2);
        if (spacer2 != null) {
            spacer2.setVisibility(stacked ? 8 : 4);
        }
        View button1 = findViewById(android.R.id.button1);
        if (button1 != null) {
            button1.setMinimumHeight(stacked ? getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_list_item_height_one_line1) : (int) TypedValue.applyDimension(1, 36.0f, getContext().getResources().getDisplayMetrics()));
        }
        View button2 = findViewById(android.R.id.button2);
        if (button2 != null) {
            button2.setMinimumHeight(stacked ? getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_list_item_height_one_line1) : (int) TypedValue.applyDimension(1, 36.0f, getContext().getResources().getDisplayMetrics()));
        }
        View button3 = findViewById(android.R.id.button3);
        if (button3 != null) {
            button3.setMinimumHeight(stacked ? getContext().getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_list_item_height_one_line1) : (int) TypedValue.applyDimension(1, 36.0f, getContext().getResources().getDisplayMetrics()));
        }
        int childCount = getChildCount();
        for (int i = childCount - 2; i >= 0; i--) {
            bringChildToFront(getChildAt(i));
        }
    }

    private boolean isStacked() {
        return getOrientation() == 1;
    }
}
