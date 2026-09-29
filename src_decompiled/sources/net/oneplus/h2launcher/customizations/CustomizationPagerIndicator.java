package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class CustomizationPagerIndicator extends View implements ViewPager.OnPageChangeListener {
    private int mCurrentPage;
    private Paint mPaint;
    private float mPositionOffset;
    private int mScrollState;
    private ViewPager mViewPager;

    public CustomizationPagerIndicator(Context context) {
        this(context, null);
    }

    public CustomizationPagerIndicator(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CustomizationPagerIndicator(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPaint = new Paint(1);
        int color = getContext().getColor(R.color.customization_pager_indicator_color);
        this.mPaint.setColor(color);
    }

    public void setViewPager(ViewPager viewPager) {
        if (this.mViewPager != viewPager) {
            if (this.mViewPager != null) {
                this.mViewPager.removeOnPageChangeListener(this);
            }
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
            this.mViewPager = viewPager;
            this.mViewPager.addOnPageChangeListener(this);
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        if (this.mViewPager != null && (count = this.mViewPager.getAdapter().getCount()) != 0) {
            if (this.mCurrentPage >= count) {
                this.mCurrentPage = count - 1;
                return;
            }
            int paddingLeft = getPaddingLeft();
            float pageWidth = ((getWidth() - paddingLeft) - getPaddingRight()) / (1.0f * count);
            float left = paddingLeft + ((this.mCurrentPage + this.mPositionOffset) * pageWidth);
            float right = left + pageWidth;
            float top = getPaddingTop();
            float bottom = getHeight() - getPaddingBottom();
            canvas.drawRect(left, top, right, bottom, this.mPaint);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        this.mCurrentPage = position;
        this.mPositionOffset = positionOffset;
        invalidate();
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int position) {
        if (this.mScrollState == 0) {
            this.mCurrentPage = position;
            this.mPositionOffset = 0.0f;
            invalidate();
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int state) {
        this.mScrollState = state;
    }
}
