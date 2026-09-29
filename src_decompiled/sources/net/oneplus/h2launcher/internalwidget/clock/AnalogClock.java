package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class AnalogClock extends ClockViewGroup {
    private boolean mChanged;
    private final int mClockHeight;
    private final int mClockRadius;
    private final Paint mDialPaint;
    private final float mDotOffset;
    private Paint mDotPaint;
    private final float mDotRadius;
    protected float mHour;
    private final Drawable mHourHand;
    private final Drawable mMinuteHand;
    protected float mMinutes;

    public AnalogClock(Context context) {
        this(context, null);
    }

    public AnalogClock(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AnalogClock(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDialPaint = new Paint();
        Resources r = this.mContext.getResources();
        this.mHourHand = r.getDrawable(R.drawable.clock_analog_hour_mipmap);
        this.mMinuteHand = r.getDrawable(R.drawable.clock_analog_minute_mipmap);
        this.mClockRadius = r.getDimensionPixelSize(R.dimen.clock_radius);
        this.mClockHeight = r.getDimensionPixelSize(R.dimen.clock1_base_height);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.AnalogClock);
        this.mDotRadius = a.getDimension(0, 0.0f);
        this.mDotOffset = a.getDimension(1, 0.0f);
        int dotColor = a.getColor(2, -1);
        if (dotColor != 0) {
            this.mDotPaint = new Paint(1);
            this.mDotPaint.setColor(dotColor);
        }
        final int stroke = r.getDimensionPixelSize(R.dimen.clock_dial_width);
        this.mDialPaint.setAntiAlias(true);
        this.mDialPaint.setStyle(Paint.Style.STROKE);
        this.mDialPaint.setStrokeWidth(stroke);
        this.mDialPaint.setColor(context.getResources().getColor(R.color.grey_A1000, null));
        ViewTreeObserver vto = getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.internalwidget.clock.AnalogClock.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                AnalogClock.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int marginTop = AnalogClock.this.getStatusBarHeight(AnalogClock.this.mContext);
                int marginLeft = AnalogClock.this.mWorkspacePadding.left + AnalogClock.this.mParentPaddingLeft;
                int left = (((AnalogClock.this.getWidth() / 2) + marginLeft) - AnalogClock.this.mClockRadius) - (stroke / 2);
                int top = (((AnalogClock.this.getHeight() / 2) + marginTop) - AnalogClock.this.mClockRadius) - (stroke / 2);
                int right = (AnalogClock.this.getWidth() / 2) + marginLeft + AnalogClock.this.mClockRadius + (stroke / 2);
                int bottom = (AnalogClock.this.getHeight() / 2) + marginTop + AnalogClock.this.mClockRadius + (stroke / 2);
                AnalogClock.this.mRect = new Rect(left, top, right, bottom);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup
    public void onTimeChanged() {
        super.onTimeChanged();
        int hour = this.mCalendar.get(10);
        int minute = this.mCalendar.get(12);
        this.mCalendar.get(13);
        this.mMinutes = minute;
        this.mHour = hour + (this.mMinutes / 60.0f);
        this.mChanged = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        boolean changed = this.mChanged;
        if (changed) {
            this.mChanged = false;
        }
        int availableWidth = getWidth();
        int availableHeight = getHeight();
        int x = availableWidth / 2;
        int y = availableHeight / 2;
        this.mHourHand.getIntrinsicWidth();
        int h = this.mHourHand.getIntrinsicHeight();
        int desiredHeight = this.mClockRadius * 2;
        float scaleCircle = 1.0f;
        if (desiredHeight > availableHeight) {
            scaleCircle = h / desiredHeight;
        }
        float scale = (this.mClockHeight / h) * scaleCircle;
        canvas.save();
        canvas.scale(scale, scale, x, y);
        if (this.mDotRadius > 0.0f && this.mDotPaint != null) {
            canvas.drawCircle(x, (y - (h / 2)) + this.mDotOffset, this.mDotRadius, this.mDotPaint);
        }
        drawHand(canvas, this.mHourHand, x, y, (this.mHour / 12.0f) * 360.0f, changed);
        drawHand(canvas, this.mMinuteHand, x, y, (this.mMinutes / 60.0f) * 360.0f, changed);
        canvas.restore();
        if (scaleCircle != 1.0f) {
            canvas.save();
            canvas.scale(scale, scale, x, y);
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.mClockRadius, this.mDialPaint);
        if (scaleCircle != 1.0f) {
            canvas.restore();
        }
    }

    private void drawHand(Canvas canvas, Drawable hand, int x, int y, float angle, boolean changed) {
        canvas.save();
        canvas.rotate(angle, x, y);
        if (changed) {
            int w = hand.getIntrinsicWidth();
            int h = hand.getIntrinsicHeight();
            hand.setBounds(x - (w / 2), y - (h / 2), (w / 2) + x, (h / 2) + y);
        }
        hand.draw(canvas);
        canvas.restore();
    }

    @Override // net.oneplus.h2launcher.internalwidget.clock.ClockViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
    }
}
