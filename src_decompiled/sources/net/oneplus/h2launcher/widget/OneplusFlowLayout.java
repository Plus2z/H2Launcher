package net.oneplus.h2launcher.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public class OneplusFlowLayout extends ViewGroup {
    static final /* synthetic */ boolean $assertionsDisabled;
    private int mChildrenHeight;
    private int mChildrenWidth;
    private int mColumnCount;
    private int mHorizontalSpacing;
    private int mPaddingLeft;
    private int mRowCount;
    private int mScaledHorizontalSpacing;
    private int mScaledPaddingLeft;
    private int mVerticalSpacing;
    private boolean mWrap;

    static {
        $assertionsDisabled = !OneplusFlowLayout.class.desiredAssertionStatus();
    }

    public OneplusFlowLayout(Context context) {
        this(context, null);
    }

    public OneplusFlowLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OneplusFlowLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public OneplusFlowLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.OneplusFlowLayout, defStyleAttr, defStyleRes);
        int N = a.getIndexCount();
        for (int i = 0; i < N; i++) {
            int attr = a.getIndex(i);
            switch (attr) {
                case 0:
                    this.mChildrenWidth = a.getDimensionPixelSize(attr, 0);
                    break;
                case 1:
                    this.mChildrenHeight = a.getDimensionPixelSize(attr, 0);
                    break;
                case 2:
                    this.mVerticalSpacing = a.getDimensionPixelSize(attr, 0);
                    break;
                case 3:
                    this.mHorizontalSpacing = a.getDimensionPixelSize(attr, 0);
                    break;
                case 4:
                    this.mPaddingLeft = a.getDimensionPixelSize(attr, 0);
                    break;
                case 5:
                    this.mColumnCount = a.getInt(attr, 1);
                    break;
                case 6:
                    this.mWrap = a.getBoolean(attr, false);
                    break;
            }
        }
        a.recycle();
    }

    public void setWrap(boolean wrap) {
        if (wrap != this.mWrap) {
            this.mWrap = wrap;
            requestLayout();
        }
    }

    public void setChildrenSize(int width, int height) {
        this.mChildrenWidth = width;
        this.mChildrenHeight = height;
    }

    public void setHorizontalSpacing(int horizontalSpacing) {
        this.mHorizontalSpacing = horizontalSpacing;
    }

    public void setVerticalSpacing(int verticalSpacing) {
        this.mVerticalSpacing = verticalSpacing;
    }

    public void setColumnCount(int columnCount) {
        this.mColumnCount = columnCount;
    }

    public int getRowCount() {
        int height = getMeasuredHeight();
        int padding = getPaddingTop() + getPaddingBottom();
        if (this.mRowCount > 0) {
            for (int i = this.mRowCount; i >= 0; i--) {
                int currentRowSize = padding + (this.mChildrenHeight * i) + ((i + (-1) >= 0 ? i - 1 : 0) * this.mVerticalSpacing);
                if (height >= currentRowSize) {
                    return i;
                }
            }
        }
        return 1;
    }

    public int getMinHeight() {
        return getPaddingTop() + this.mChildrenHeight + getPaddingBottom();
    }

    public int getMaxHeight() {
        return getPaddingTop() + (this.mRowCount * this.mChildrenHeight) + ((this.mRowCount - 1) * this.mVerticalSpacing) + getPaddingBottom();
    }

    public int getStandardHeight() {
        int height = getMeasuredHeight();
        int padding = getPaddingTop() + getPaddingBottom();
        if (this.mRowCount > 0) {
            for (int i = this.mRowCount; i >= 0; i--) {
                int currentRowSize = padding + (this.mChildrenHeight * i) + ((i + (-1) >= 0 ? i - 1 : 0) * this.mVerticalSpacing);
                if (height >= currentRowSize) {
                    return currentRowSize;
                }
            }
        }
        return height;
    }

    public int getHeightForSize(int size) {
        return getPaddingTop() + (this.mChildrenHeight * size) + (this.mVerticalSpacing * (size - 1)) + getPaddingBottom();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (!$assertionsDisabled && View.MeasureSpec.getMode(widthMeasureSpec) == 0) {
            throw new AssertionError();
        }
        int count = getChildCount();
        int residue = getMeasuredWidth() - (this.mColumnCount * this.mChildrenWidth);
        int totalMargin = (this.mPaddingLeft * 2) + ((this.mColumnCount - 1) * this.mHorizontalSpacing);
        float scale = residue / totalMargin;
        this.mScaledPaddingLeft = Math.round(this.mPaddingLeft * scale);
        this.mScaledHorizontalSpacing = Math.round(this.mHorizontalSpacing * scale);
        int height = View.MeasureSpec.getSize(heightMeasureSpec) + getPaddingBottom();
        int xPos = this.mScaledPaddingLeft;
        int yPos = getPaddingTop();
        int j = 0;
        int widthSpec = View.MeasureSpec.makeMeasureSpec(this.mChildrenWidth, LauncherActivityInfoCompat.FLAG_SUSPENDED);
        int heightSpec = View.MeasureSpec.makeMeasureSpec(this.mChildrenHeight, 0);
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            child.measure(widthSpec, heightSpec);
            if (this.mWrap && this.mChildrenWidth + xPos > getMeasuredWidth()) {
                xPos = this.mScaledPaddingLeft;
                yPos += this.mChildrenHeight + this.mVerticalSpacing;
                j++;
            }
            xPos += this.mChildrenWidth + this.mScaledHorizontalSpacing;
        }
        this.mRowCount = j + 1;
        int yPos2 = yPos + getPaddingBottom();
        if (View.MeasureSpec.getMode(heightMeasureSpec) == 0) {
            height = yPos2 + this.mChildrenHeight;
        } else if (View.MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE && this.mChildrenHeight + yPos2 < height) {
            height = yPos2 + this.mChildrenHeight;
        }
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec), height);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int count = getChildCount();
        int width = r - l;
        int xPos = this.mScaledPaddingLeft;
        int yPos = getPaddingTop();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (this.mWrap && this.mChildrenWidth + xPos > width) {
                xPos = this.mScaledPaddingLeft;
                yPos += this.mChildrenHeight + this.mVerticalSpacing;
            }
            child.layout(xPos, yPos, this.mChildrenWidth + xPos, this.mChildrenHeight + yPos);
            xPos += this.mChildrenWidth + this.mScaledHorizontalSpacing;
        }
    }
}
