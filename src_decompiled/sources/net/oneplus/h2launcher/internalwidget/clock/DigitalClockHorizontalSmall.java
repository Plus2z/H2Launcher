package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class DigitalClockHorizontalSmall extends DigitalClockHorizontal {
    private int mPaddingBottom;

    public DigitalClockHorizontalSmall(Context context) {
        this(context, null);
    }

    public DigitalClockHorizontalSmall(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DigitalClockHorizontalSmall(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        intiPadding();
        initLayout();
        ViewTreeObserver vto = getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.internalwidget.clock.DigitalClockHorizontalSmall.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DigitalClockHorizontalSmall.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int marginTop = DigitalClockHorizontalSmall.this.getStatusBarHeight(DigitalClockHorizontalSmall.this.mContext);
                int marginLeft = DigitalClockHorizontalSmall.this.mWorkspacePadding.left + DigitalClockHorizontalSmall.this.mParentPaddingLeft;
                int left = marginLeft + DigitalClockHorizontalSmall.this.mTimeTV.getLeft();
                int top = marginTop + DigitalClockHorizontalSmall.this.mTimeTV.getTop();
                int right = marginLeft + Math.max(DigitalClockHorizontalSmall.this.mTimeTV.getRight(), DigitalClockHorizontalSmall.this.mDateTV.getRight());
                int bottom = marginTop + DigitalClockHorizontalSmall.this.mDateTV.getBottom();
                DigitalClockHorizontalSmall.this.mRect = new Rect(left, top, right, bottom);
            }
        });
    }

    private void intiPadding() {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.clock4_padding_bottom);
        this.mPaddingBottom = dimensionPixelSize;
        this.mPaddingBottom = dimensionPixelSize;
    }

    private void initLayout() {
        this.mTimeTV.setTextAppearance(R.style.Clock4TimeTextStyle);
        this.mDateTV.setTextAppearance(R.style.Clock4DateTextStyle);
    }

    @Override // net.oneplus.h2launcher.internalwidget.clock.DigitalClockHorizontal, net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int remainedHeight = getMeasuredHeight();
        int measuredHeight = (remainedHeight - (this.mTimeTV != null ? this.mTimeTV.getMeasuredHeight() : 0)) - (this.mDateTV != null ? this.mDateTV.getMeasuredHeight() : 0);
        int bottom = (getMeasuredHeight() + this.mParentPaddingBottom) - this.mPaddingBottom;
        int left = (this.mTimePaddingLeft - this.mWorkspacePadding.left) - this.mParentPaddingLeft;
        if (this.mDateTV != null) {
            this.mDateTV.layout(left, bottom - this.mDateTV.getMeasuredHeight(), this.mDateTV.getMeasuredWidth() + left, bottom);
            bottom -= this.mDateTV.getMeasuredHeight();
        }
        if (this.mTimeTV != null) {
            this.mTimeTV.layout(left, bottom - this.mTimeTV.getMeasuredHeight(), this.mTimeTV.getMeasuredWidth() + left, bottom);
            int measuredHeight2 = bottom - this.mTimeTV.getMeasuredHeight();
        }
    }
}
