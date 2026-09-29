package com.oneplus.lib.widget.cardview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;

/* loaded from: classes.dex */
public class OPCardView extends CardView {
    private int mBackgroundColor;
    private int mBackgroundColorMask;
    Paint mCardBackgroundMaskPaint;
    private boolean mIsCardSelected;

    public OPCardView(Context context) {
        super(context);
        initialize(context, null, 0);
    }

    public OPCardView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initialize(context, attrs, 0);
    }

    public OPCardView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initialize(context, attrs, defStyleAttr);
    }

    private void initialize(Context context, AttributeSet attrs, int defStyleAttr) {
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.CardView, defStyleAttr, R.style.Oneplus_CardView_Light);
        this.mBackgroundColor = a.getColor(R.styleable.CardView_cardBackgroundColor, 0);
        this.mBackgroundColorMask = a.getColor(R.styleable.CardView_cardBackgroundColorMask, 0);
        a.recycle();
        setCardBackgroundColor(this.mBackgroundColor);
        this.mCardBackgroundMaskPaint = new Paint();
        this.mCardBackgroundMaskPaint.setColor(this.mBackgroundColorMask);
    }

    public void setCardSelected(boolean selected) {
        this.mIsCardSelected = selected;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mCardBackgroundMaskPaint != null && this.mIsCardSelected) {
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.mCardBackgroundMaskPaint);
        }
    }
}
