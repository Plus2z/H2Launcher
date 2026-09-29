package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.graphics.Rect;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class DigitalClockVerticalRedOne extends ClockViewGroup {
    private static final String TAG = "DigitalClockVerticalRedOne";
    private ForegroundColorSpan mForegroundColorSpan;
    private TextView mHourTV;
    private int mLineSpacing;
    private TextView mMinTV;

    public DigitalClockVerticalRedOne(Context context) {
        this(context, null);
    }

    public DigitalClockVerticalRedOne(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DigitalClockVerticalRedOne(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        int redColor = getResources().getColor(R.color.clock5_textcolor_red, null);
        this.mForegroundColorSpan = new ForegroundColorSpan(redColor);
        intiPadding();
        initLayout(context);
        ViewTreeObserver vto = getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.internalwidget.clock.DigitalClockVerticalRedOne.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DigitalClockVerticalRedOne.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int marginTop = DigitalClockVerticalRedOne.this.getStatusBarHeight(DigitalClockVerticalRedOne.this.mContext);
                int marginLeft = DigitalClockVerticalRedOne.this.mWorkspacePadding.left + DigitalClockVerticalRedOne.this.mParentPaddingLeft;
                int left = marginLeft + DigitalClockVerticalRedOne.this.mHourTV.getLeft();
                int top = marginTop + DigitalClockVerticalRedOne.this.mHourTV.getTop();
                int right = marginLeft + DigitalClockVerticalRedOne.this.mHourTV.getRight();
                int bottom = marginTop + DigitalClockVerticalRedOne.this.mMinTV.getBottom();
                DigitalClockVerticalRedOne.this.mRect = new Rect(left, top, right, bottom);
            }
        });
    }

    private void intiPadding() {
        this.mLineSpacing = getResources().getDimensionPixelSize(R.dimen.clock6_line_spacing);
    }

    private void initLayout(Context context) {
        this.mHourTV = new TextView(this.mContext);
        this.mHourTV.setTextAppearance(R.style.Clock6TextStyle);
        addView(this.mHourTV);
        this.mMinTV = new TextView(this.mContext);
        this.mMinTV.setTextAppearance(R.style.Clock6TextStyle);
        addView(this.mMinTV);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup
    public void onTimeChanged() {
        String str;
        super.onTimeChanged();
        if (this.mHourTV != null) {
            if (DateFormat.is24HourFormat(this.mContext)) {
                str = DateFormat.format(DEFAULT_FORMAT_HOUR_24, this.mCalendar).toString();
            } else {
                str = DateFormat.format(DEFAULT_FORMAT_HOUR_12, this.mCalendar).toString();
            }
            int h = Integer.parseInt(str);
            boolean isRedTens = h / 10 == 1;
            boolean isRedUnits = h % 10 == 1;
            if (isRedTens || isRedUnits) {
                int start = 0;
                int end = 0;
                if (isRedTens && isRedUnits) {
                    start = 0;
                    end = 2;
                } else if (isRedTens) {
                    start = 0;
                    end = 1;
                } else if (isRedUnits) {
                    start = 1;
                    end = 2;
                }
                SpannableString spannable = new SpannableString(str);
                spannable.setSpan(this.mForegroundColorSpan, start, end, 33);
                this.mHourTV.setText(spannable);
            } else {
                this.mHourTV.setText(str);
            }
        }
        if (this.mMinTV != null) {
            this.mMinTV.setText(DateFormat.format(DEFAULT_FORMAT_MINUTE, this.mCalendar));
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int textWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int textHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mHourTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        this.mMinTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec), getDefaultSize(getSuggestedMinimumHeight(), heightMeasureSpec));
    }

    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int remainedHeight = getMeasuredHeight() - this.mLineSpacing;
        int remainedWidth = getMeasuredWidth();
        int top = ((remainedHeight - (this.mHourTV != null ? this.mHourTV.getMeasuredHeight() : 0)) - (this.mMinTV != null ? this.mMinTV.getMeasuredHeight() : 0)) / 2;
        int left = (remainedWidth - (this.mHourTV != null ? this.mHourTV.getMeasuredWidth() : 0)) / 2;
        if (this.mHourTV != null) {
            this.mHourTV.layout(left, top, this.mHourTV.getMeasuredWidth() + left, this.mHourTV.getMeasuredHeight() + top);
            top = top + this.mHourTV.getMeasuredHeight() + this.mLineSpacing;
        }
        if (this.mMinTV != null) {
            this.mMinTV.layout(left, top, this.mMinTV.getMeasuredWidth() + left, this.mMinTV.getMeasuredHeight() + top);
            int measuredHeight = top + this.mMinTV.getMeasuredHeight();
        }
    }
}
