package net.oneplus.h2launcher.dynamicicon.calendar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import net.oneplus.h2launcher.FastBitmapDrawable;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.dynamicicon.DynamicIconConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconTextConfig;

/* loaded from: classes.dex */
public class CalendarFastBitmapDrawable extends FastBitmapDrawable {
    public static final String KEY_DAY = "day";
    private boolean drawDay;
    private int mAlignX;
    private int mAlignY;
    private DynamicIconConfig mAssetPackConfig;
    private int mBaseIconSize;
    private Context mContext;
    private DynamicIconTextConfig mDayTextConfig;
    private float mOffsetX;
    private float mOffsetY;
    private DynamicIconConfig mOriginalConfig;
    private String mText;
    private Paint mTextPaint;
    private float mTextSize;
    private float mTextWidth;

    public CalendarFastBitmapDrawable(Context context, Bitmap b) {
        super(b);
        this.drawDay = false;
        this.mContext = context;
        this.mTextPaint = new Paint(2);
        Resources resources = context.getResources();
        this.mTextPaint.setAntiAlias(true);
        this.mTextSize = resources.getDimension(R.dimen.calendar_icon_text_size);
        int color = resources.getColor(R.color.grey_100, null);
        this.mTextPaint.setShadowLayer(1.0f, 1.0f, 1.0f, (color & ViewCompat.MEASURED_SIZE_MASK) | 234881024);
        this.mTextPaint.setTextSize(this.mTextSize);
        this.mTextPaint.setColor(resources.getColor(R.color.grey_A1000, null));
        Typeface lTypeface = Typeface.create("sans-serif", 1);
        this.mTextPaint.setTypeface(lTypeface);
        this.mBaseIconSize = b.getWidth();
    }

    public void updateConfig(DynamicIconConfig originalConfig, DynamicIconConfig assetPackConfig) {
        this.mOriginalConfig = originalConfig;
        this.mAssetPackConfig = assetPackConfig;
        if (this.mAssetPackConfig != null) {
            this.mDayTextConfig = this.mAssetPackConfig.getTextConfig(KEY_DAY);
        }
        if (this.mDayTextConfig == null) {
            this.mDayTextConfig = this.mOriginalConfig.getTextConfig(KEY_DAY);
        }
        updateTextConfig();
    }

    private void updateTextConfig() {
        if (this.mDayTextConfig != null) {
            if (!this.mDayTextConfig.isEnable()) {
                this.drawDay = false;
                return;
            }
            this.drawDay = true;
            this.mTextSize = this.mDayTextConfig.getTextSize();
            this.mTextPaint.setColor(this.mDayTextConfig.getTextColor());
            this.mTextPaint.setShadowLayer(this.mDayTextConfig.getShadowLayerRadius(), this.mDayTextConfig.getShadowLayerX(), this.mDayTextConfig.getShadowLayerY(), this.mDayTextConfig.getShadowLayerColor());
            this.mTextPaint.setTypeface(this.mDayTextConfig.getTypeFace());
            this.mAlignX = this.mDayTextConfig.getAlignX();
            this.mAlignY = this.mDayTextConfig.getAlignY();
            this.mOffsetX = this.mDayTextConfig.getOffsetX();
            this.mOffsetY = this.mDayTextConfig.getOffsetY();
        } else {
            this.drawDay = false;
        }
        measureText();
    }

    public void setText(String text) {
        this.mText = text;
        measureText();
    }

    private void measureText() {
        if (TextUtils.isEmpty(this.mText)) {
            this.mTextWidth = 0.0f;
        } else {
            this.mTextWidth = this.mTextPaint.measureText(this.mText);
        }
    }

    @Override // net.oneplus.h2launcher.FastBitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect r = getBounds();
        canvas.drawBitmap(this.mBitmap, (Rect) null, r, this.mPaint);
        if (this.mText != null && this.drawDay) {
            refreshIcon(canvas, r);
        }
    }

    protected void refreshIcon(Canvas canvas, Rect r) {
        float iconScaleSize = r.right / this.mBaseIconSize;
        float scaleTextWidth = this.mTextWidth * iconScaleSize;
        this.mTextPaint.setTextSize(this.mTextSize * iconScaleSize);
        this.mTextPaint.setAlpha(getAlpha());
        Paint.FontMetricsInt fontMetrics = this.mTextPaint.getFontMetricsInt();
        float y = 0.0f;
        float x = 0.0f;
        if (this.mAlignX == 0) {
            x = (r.right - scaleTextWidth) / 2.0f;
        } else if (this.mAlignX == 2) {
            x = r.right - scaleTextWidth;
        }
        float x2 = x + (this.mOffsetX * iconScaleSize);
        if (this.mAlignY == 0) {
            y = (r.top + ((((r.bottom - r.top) - fontMetrics.bottom) + fontMetrics.top) / 2)) - fontMetrics.top;
        } else if (this.mAlignY == 4) {
            y = r.bottom - (fontMetrics.bottom - fontMetrics.top);
        }
        canvas.drawText(this.mText, x2, y + (this.mOffsetY * iconScaleSize), this.mTextPaint);
    }
}
