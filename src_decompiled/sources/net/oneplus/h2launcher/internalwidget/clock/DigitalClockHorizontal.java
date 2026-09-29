package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.graphics.Rect;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.util.Locale;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class DigitalClockHorizontal extends ClockViewGroup {
    private static final String TAG = "DigitalClockHorizontal";
    protected int mDatePaddingLeft;
    protected TextView mDateTV;
    private int mPaddingTop;
    protected int mTimePaddingLeft;
    protected TextView mTimeTV;

    public DigitalClockHorizontal(Context context) {
        this(context, null);
    }

    public DigitalClockHorizontal(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DigitalClockHorizontal(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        intiPadding();
        initLayout();
        ViewTreeObserver vto = getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.internalwidget.clock.DigitalClockHorizontal.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DigitalClockHorizontal.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int marginTop = DigitalClockHorizontal.this.getStatusBarHeight(DigitalClockHorizontal.this.mContext);
                int marginLeft = DigitalClockHorizontal.this.mWorkspacePadding.left + DigitalClockHorizontal.this.mParentPaddingLeft;
                int left = marginLeft + DigitalClockHorizontal.this.mTimeTV.getLeft();
                int top = marginTop + DigitalClockHorizontal.this.mTimeTV.getTop();
                int right = marginLeft + Math.max(DigitalClockHorizontal.this.mTimeTV.getRight(), DigitalClockHorizontal.this.mDateTV.getRight());
                int bottom = marginTop + DigitalClockHorizontal.this.mDateTV.getBottom();
                DigitalClockHorizontal.this.mRect = new Rect(left, top, right, bottom);
            }
        });
    }

    private void intiPadding() {
        this.mPaddingTop = getResources().getDimensionPixelSize(R.dimen.clock1_padding_top);
        this.mTimePaddingLeft = getResources().getDimensionPixelSize(R.dimen.clock1_time_padding_left);
        this.mDatePaddingLeft = getResources().getDimensionPixelSize(R.dimen.clock1_date_padding_left);
    }

    private void initLayout() {
        this.mTimeTV = new TextView(this.mContext);
        this.mTimeTV.setTextAppearance(R.style.Clock1TimeTextStyle);
        addView(this.mTimeTV);
        this.mDateTV = new TextView(this.mContext);
        this.mDateTV.setTextAppearance(R.style.Clock1DateTextStyle);
        addView(this.mDateTV);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup
    public void onTimeChanged() {
        super.onTimeChanged();
        if (this.mTimeTV != null) {
            if (DateFormat.is24HourFormat(this.mContext)) {
                this.mTimeTV.setText(DateFormat.format(DEFAULT_FORMAT_TIME_24, this.mCalendar));
            } else {
                this.mTimeTV.setText(DateFormat.format(DEFAULT_FORMAT_TIME_12, this.mCalendar));
            }
        }
        if (this.mDateTV != null) {
            if (Locale.getDefault().getLanguage().equals("zh")) {
                String c1 = DateFormat.format(FORMAT_MONTH_DAY_zh, this.mCalendar).toString();
                String c2 = DateFormat.format(FORMAT_WEEK_DAY_zh, this.mCalendar).toString();
                String day = this.mContext.getString(R.string.day);
                this.mDateTV.setText(c1 + day + c2);
                return;
            }
            this.mDateTV.setText(DateFormat.format(DEFAULT_FORMAT_DATE, this.mCalendar).toString().toUpperCase());
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int textWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int textHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mTimeTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        this.mDateTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec), getDefaultSize(getSuggestedMinimumHeight(), heightMeasureSpec));
    }

    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int remainedHeight = getMeasuredHeight();
        int top = ((remainedHeight - (this.mTimeTV != null ? this.mTimeTV.getMeasuredHeight() : 0)) - (this.mDateTV != null ? this.mDateTV.getMeasuredHeight() : 0)) / 2;
        int timeLeft = (this.mTimePaddingLeft - this.mWorkspacePadding.left) - this.mParentPaddingLeft;
        int dateLeft = (this.mDatePaddingLeft - this.mWorkspacePadding.left) - this.mParentPaddingLeft;
        if (this.mTimeTV != null) {
            this.mTimeTV.layout(timeLeft, top, this.mTimeTV.getMeasuredWidth() + timeLeft, this.mTimeTV.getMeasuredHeight() + top);
            top += this.mTimeTV.getMeasuredHeight();
        }
        if (this.mDateTV != null) {
            this.mDateTV.layout(dateLeft, top, this.mDateTV.getMeasuredWidth() + dateLeft, this.mDateTV.getMeasuredHeight() + top);
            int measuredHeight = top + this.mDateTV.getMeasuredHeight();
        }
    }
}
