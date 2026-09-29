package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import java.util.GregorianCalendar;
import net.oneplus.gallery3d.exif.ExifInterface;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class DigitalClockCircle extends ClockViewGroup {
    private final Paint mAMPMPaint;
    private final Rect mAMPMRect;
    private String mAMPMString;
    private final int mClockMinRadius;
    private final int mClockRadius;
    private final Paint mDialPaint;
    private final Paint mHourPaint;
    private final Rect mHourRect;
    private String mHourString;
    private final Paint mMinPaint;
    private final Rect mMinRect;
    private String mMinuteString;
    protected int mMinutes;
    private final int mShadowHeight;
    private final Paint mWeekPaint;
    private final Rect mWeekRect;
    private String mWeekString;
    protected static final CharSequence DEFAULT_FORMAT_WEEK = ExifInterface.GpsLongitudeRef.EAST;
    protected static final CharSequence DEFAULT_FORMAT_AMPM = "a";

    public DigitalClockCircle(Context context) {
        this(context, null);
    }

    public DigitalClockCircle(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DigitalClockCircle(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDialPaint = new Paint();
        this.mHourPaint = new Paint();
        this.mMinPaint = new Paint();
        this.mWeekPaint = new Paint();
        this.mAMPMPaint = new Paint();
        this.mHourRect = new Rect();
        this.mMinRect = new Rect();
        this.mWeekRect = new Rect();
        this.mAMPMRect = new Rect();
        Resources r = this.mContext.getResources();
        this.mClockRadius = r.getDimensionPixelSize(R.dimen.clock_radius);
        this.mClockMinRadius = r.getDimensionPixelSize(R.dimen.clock5_min_radius);
        this.mShadowHeight = r.getDimensionPixelSize(R.dimen.clock_blur_y_offset) + r.getDimensionPixelSize(R.dimen.clock_blur_size);
        final int stroke = r.getDimensionPixelSize(R.dimen.clock_dial_width);
        Typeface tf_roboto_regular = Typeface.create("sans-serif", 0);
        Typeface tf_roboto_light = Typeface.create("sans-serif-light", 0);
        this.mDialPaint.setAntiAlias(true);
        this.mDialPaint.setStyle(Paint.Style.STROKE);
        this.mDialPaint.setStrokeWidth(stroke);
        this.mDialPaint.setColor(context.getResources().getColor(R.color.grey_A1000, null));
        this.mHourPaint.setAntiAlias(true);
        this.mHourPaint.setTextAlign(Paint.Align.CENTER);
        this.mHourPaint.setColor(r.getColor(R.color.grey_A1000, null));
        this.mHourPaint.setTextSize(r.getDimensionPixelSize(R.dimen.clock5_hour_text_size));
        this.mHourPaint.setTypeface(tf_roboto_regular);
        this.mMinPaint.setAntiAlias(true);
        this.mMinPaint.setTextAlign(Paint.Align.CENTER);
        this.mMinPaint.setColor(r.getColor(R.color.grey_1000, null));
        this.mMinPaint.setTextSize(r.getDimensionPixelSize(R.dimen.clock5_min_text_size));
        this.mMinPaint.setTypeface(tf_roboto_light);
        this.mWeekPaint.setAntiAlias(true);
        this.mWeekPaint.setTextAlign(Paint.Align.CENTER);
        this.mWeekPaint.setColor(r.getColor(R.color.grey_A1000, null));
        this.mWeekPaint.setTextSize(r.getDimensionPixelSize(R.dimen.clock5_week_text_size));
        this.mWeekPaint.setTypeface(tf_roboto_regular);
        this.mAMPMPaint.setAntiAlias(true);
        this.mAMPMPaint.setTextAlign(Paint.Align.CENTER);
        this.mAMPMPaint.setColor(r.getColor(R.color.grey_A1000, null));
        this.mAMPMPaint.setTextSize(r.getDimensionPixelSize(R.dimen.clock5_ampm_text_size));
        this.mAMPMPaint.setTypeface(tf_roboto_regular);
        ViewTreeObserver vto = getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.internalwidget.clock.DigitalClockCircle.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DigitalClockCircle.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int marginTop = DigitalClockCircle.this.getStatusBarHeight(DigitalClockCircle.this.mContext);
                int marginLeft = DigitalClockCircle.this.mWorkspacePadding.left + DigitalClockCircle.this.mParentPaddingLeft;
                int left = (((DigitalClockCircle.this.getWidth() / 2) + marginLeft) - DigitalClockCircle.this.mClockRadius) - (stroke / 2);
                int top = (((DigitalClockCircle.this.getHeight() / 2) + marginTop) - DigitalClockCircle.this.mClockRadius) - (stroke / 2);
                int right = (DigitalClockCircle.this.getWidth() / 2) + marginLeft + DigitalClockCircle.this.mClockRadius + (stroke / 2);
                int bottom = (DigitalClockCircle.this.getHeight() / 2) + marginTop + DigitalClockCircle.this.mClockRadius + (stroke / 2);
                DigitalClockCircle.this.mRect = new Rect(left, top, right, bottom);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup
    public void onTimeChanged() {
        super.onTimeChanged();
        setupDigits();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mMinuteString == null || this.mHourString == null || this.mWeekString == null || this.mAMPMString == null) {
            setupDigits();
        }
        boolean scaled = false;
        int desiredHeight = (this.mClockRadius + this.mClockMinRadius + this.mShadowHeight) * 2;
        int h = getHeight();
        if (desiredHeight > getHeight()) {
            scaled = true;
            float scale = h / desiredHeight;
            canvas.save();
            canvas.scale(scale, scale, getWidth() / 2, getHeight() / 2);
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.mClockRadius, this.mDialPaint);
        Double theta = Double.valueOf(Math.toRadians(((this.mMinutes / 60.0f) * 360.0f) - 90.0f));
        float coordX = (float) ((getWidth() / 2) + (this.mClockRadius * Math.cos(theta.doubleValue())));
        float coordY = (float) ((getHeight() / 2) + (this.mClockRadius * Math.sin(theta.doubleValue())));
        canvas.drawCircle(coordX, coordY, this.mClockMinRadius, this.mHourPaint);
        canvas.drawText(this.mMinuteString, coordX, (this.mMinRect.height() / 2) + coordY, this.mMinPaint);
        int hourX = getWidth() / 2;
        int hourY = (getHeight() / 2) + (this.mHourRect.height() / 2);
        canvas.drawText(this.mHourString, hourX, hourY, this.mHourPaint);
        int weekY = (hourY - (0 - this.mHourPaint.getFontMetricsInt().ascent)) - this.mWeekPaint.getFontMetricsInt().descent;
        canvas.drawText(this.mWeekString, hourX, weekY, this.mWeekPaint);
        int ampmY = this.mHourPaint.getFontMetricsInt().descent + hourY + (0 - this.mAMPMPaint.getFontMetricsInt().ascent);
        canvas.drawText(this.mAMPMString, hourX, ampmY, this.mAMPMPaint);
        if (scaled) {
            canvas.restore();
        }
    }

    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
    }

    private void setupDigits() {
        if (this.mCalendar == null) {
            this.mCalendar = GregorianCalendar.getInstance();
        }
        this.mMinutes = this.mCalendar.get(12);
        if (DateFormat.is24HourFormat(this.mContext)) {
            this.mHourString = DateFormat.format(DEFAULT_FORMAT_HOUR_24, this.mCalendar).toString();
        } else {
            this.mHourString = DateFormat.format(DEFAULT_FORMAT_HOUR_12, this.mCalendar).toString();
        }
        this.mMinuteString = DateFormat.format(DEFAULT_FORMAT_MINUTE, this.mCalendar).toString();
        this.mWeekString = DateFormat.format(DEFAULT_FORMAT_WEEK, this.mCalendar).toString().toUpperCase();
        this.mAMPMString = DateFormat.format(DEFAULT_FORMAT_AMPM, this.mCalendar).toString().toUpperCase();
        this.mHourPaint.getTextBounds(this.mHourString, 0, this.mHourString.length(), this.mHourRect);
        this.mMinPaint.getTextBounds(this.mMinuteString, 0, this.mMinuteString.length(), this.mMinRect);
        this.mWeekPaint.getTextBounds(this.mWeekString, 0, this.mWeekString.length(), this.mWeekRect);
        this.mAMPMPaint.getTextBounds(this.mAMPMString, 0, this.mAMPMString.length(), this.mAMPMRect);
    }
}
