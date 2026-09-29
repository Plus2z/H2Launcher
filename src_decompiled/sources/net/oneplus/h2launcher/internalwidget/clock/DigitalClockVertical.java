package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.graphics.Rect;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.util.Locale;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public class DigitalClockVertical extends ClockViewGroup {
    private static final String TAG = "DigitalClockVertical";
    private TextView mDateTV;
    private View mDivider;
    private int mDividerHeight;
    private int mDividerWidth;
    private TextView mHourTV;
    private TextView mMinTV;
    private int mPaddingLeft;
    private int mPaddingTop;

    public DigitalClockVertical(Context context) {
        this(context, null);
    }

    public DigitalClockVertical(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DigitalClockVertical(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        intiPadding();
        initLayout(context);
        ViewTreeObserver vto = getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.internalwidget.clock.DigitalClockVertical.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DigitalClockVertical.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int marginTop = DigitalClockVertical.this.getStatusBarHeight(DigitalClockVertical.this.mContext);
                int marginLeft = DigitalClockVertical.this.mWorkspacePadding.left + DigitalClockVertical.this.mParentPaddingLeft;
                int left = marginLeft + DigitalClockVertical.this.mHourTV.getLeft();
                int top = marginTop + DigitalClockVertical.this.mHourTV.getTop();
                int right = marginLeft + Math.max(DigitalClockVertical.this.mHourTV.getRight(), DigitalClockVertical.this.mDateTV.getRight());
                int bottom = marginTop + DigitalClockVertical.this.mDateTV.getBottom();
                DigitalClockVertical.this.mRect = new Rect(left, top, right, bottom);
            }
        });
    }

    private void intiPadding() {
        this.mPaddingTop = getResources().getDimensionPixelSize(R.dimen.clock2_padding_top);
        this.mPaddingLeft = getResources().getDimensionPixelSize(R.dimen.clock2_padding_left);
        this.mDividerWidth = getResources().getDimensionPixelSize(R.dimen.clock2_divider_width);
        this.mDividerHeight = getResources().getDimensionPixelSize(R.dimen.clock2_divider_height);
    }

    private void initLayout(Context context) {
        this.mHourTV = new TextView(this.mContext);
        this.mHourTV.setTextAppearance(R.style.Clock2HourTextStyle);
        addView(this.mHourTV);
        this.mMinTV = new TextView(this.mContext);
        this.mMinTV.setTextAppearance(R.style.Clock2MinuteTextStyle);
        addView(this.mMinTV);
        this.mDateTV = new TextView(this.mContext);
        this.mDateTV.setTextAppearance(R.style.Clock2DateTextStyle);
        addView(this.mDateTV);
        this.mDivider = new View(this.mContext);
        ViewGroup.LayoutParams params = new ViewGroup.LayoutParams(198, 3);
        this.mDivider.setLayoutParams(params);
        this.mDivider.setBackgroundColor(this.mContext.getResources().getColor(R.color.grey_A1000, null));
        addView(this.mDivider);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup
    public void onTimeChanged() {
        super.onTimeChanged();
        if (this.mHourTV != null) {
            if (DateFormat.is24HourFormat(this.mContext)) {
                this.mHourTV.setText(DateFormat.format(DEFAULT_FORMAT_HOUR_24, this.mCalendar));
            } else {
                this.mHourTV.setText(DateFormat.format(DEFAULT_FORMAT_HOUR_12, this.mCalendar));
            }
        }
        if (this.mMinTV != null) {
            this.mMinTV.setText(DateFormat.format(DEFAULT_FORMAT_MINUTE, this.mCalendar));
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
        this.mHourTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        this.mMinTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        this.mDateTV.measure(textWidthMeasureSpec, textHeightMeasureSpec);
        ViewGroup.LayoutParams params = this.mDivider.getLayoutParams();
        int dividerWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(params.width, LauncherActivityInfoCompat.FLAG_SUSPENDED);
        int dividerHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(params.height, LauncherActivityInfoCompat.FLAG_SUSPENDED);
        this.mDivider.measure(dividerWidthMeasureSpec, dividerHeightMeasureSpec);
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec), getDefaultSize(getSuggestedMinimumHeight(), heightMeasureSpec));
    }

    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int remainedHeight = getMeasuredHeight();
        int top = ((((remainedHeight - (this.mHourTV != null ? this.mHourTV.getMeasuredHeight() : 0)) - (this.mDivider != null ? this.mDivider.getMeasuredHeight() : 0)) - (this.mMinTV != null ? this.mMinTV.getMeasuredHeight() : 0)) - (this.mDateTV != null ? this.mDateTV.getMeasuredHeight() : 0)) / 2;
        int left = (this.mPaddingLeft - this.mWorkspacePadding.left) - this.mParentPaddingLeft;
        if (this.mHourTV != null) {
            this.mHourTV.layout(left, top, this.mHourTV.getMeasuredWidth() + left, this.mHourTV.getMeasuredHeight() + top);
            top += this.mHourTV.getMeasuredHeight();
        }
        if (this.mDivider != null) {
            this.mDivider.layout(left, top, this.mDivider.getMeasuredWidth() + left, this.mDivider.getMeasuredHeight() + top);
            top += this.mDivider.getMeasuredHeight();
        }
        if (this.mMinTV != null) {
            this.mMinTV.layout(left, top, this.mMinTV.getMeasuredWidth() + left, this.mMinTV.getMeasuredHeight() + top);
            top += this.mMinTV.getMeasuredHeight();
        }
        if (this.mDateTV != null) {
            this.mDateTV.layout(left, top, this.mDateTV.getMeasuredWidth() + left, this.mDateTV.getMeasuredHeight() + top);
            int measuredHeight = top + this.mDateTV.getMeasuredHeight();
        }
    }
}
