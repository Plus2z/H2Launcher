package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.graphics.Palette;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ColorCircleView extends FrameLayout {
    private static final int INVALID_RADIUS = 0;
    private static final String TAG = ColorCircleView.class.getSimpleName();
    private Drawable mCheck;
    private ImageView mCheckedCircle;
    private final int mCheckedCircleBorderSize;
    private final int mCheckedCircleEndBottomMargin;
    private final int mCheckedCircleSize;
    private ImageView mColorDot;
    private int mIndex;
    private Paint mPaint;
    private Palette.Swatch mSwatch;

    public ColorCircleView(Context context) {
        this(context, null);
    }

    public ColorCircleView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ColorCircleView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public ColorCircleView(Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        Resources res = getResources();
        int colorCircleSize = res.getDimensionPixelSize(R.dimen.picker_color_circle_size);
        this.mCheckedCircleSize = res.getDimensionPixelSize(R.dimen.checked_color_circle_size);
        this.mCheckedCircleBorderSize = res.getDimensionPixelSize(R.dimen.checked_color_circle_border_size);
        this.mCheckedCircleEndBottomMargin = (colorCircleSize / 2) - this.mCheckedCircleSize;
        this.mCheck = context.getDrawable(R.drawable.ic_check_select_light);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mColorDot = (ImageView) findViewById(R.id.color_dot);
        this.mCheckedCircle = (ImageView) findViewById(R.id.checked_circle);
        if (this.mCheckedCircle != null) {
            this.mCheckedCircle.setImageBitmap(createCheckedCircle());
            FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) this.mCheckedCircle.getLayoutParams();
            params.setMarginEnd(this.mCheckedCircleEndBottomMargin);
            params.bottomMargin = this.mCheckedCircleEndBottomMargin;
        }
    }

    public int getIndex() {
        return this.mIndex;
    }

    public void setIndex(int index) {
        this.mIndex = index;
    }

    public Palette.Swatch getSwatch() {
        return this.mSwatch;
    }

    public void setSwatch(Palette.Swatch swatch) {
        this.mSwatch = swatch;
        this.mColorDot.setImageBitmap(this.mSwatch != null ? createColorDot() : null);
    }

    @Override // android.view.View
    public void setSelected(boolean selected) {
        this.mCheckedCircle.setVisibility(selected ? 0 : 4);
    }

    private Bitmap createColorDot() {
        Point center = new Point();
        int radius = getCenterAndRadius(center);
        int h = radius * 2;
        if (h <= 0 || h <= 0) {
            Logger.e(TAG, "invalid width or height for creating color dot");
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(h, h, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        this.mPaint.setColor(this.mSwatch == null ? 0 : this.mSwatch.getRgb());
        canvas.drawCircle(center.x, center.y, radius, this.mPaint);
        return bitmap;
    }

    private Bitmap createCheckedCircle() {
        int h = this.mCheckedCircleSize;
        if (h <= 0 || h <= 0) {
            Logger.e(TAG, "invalid width or height for creating check circle");
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(h, h, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Point center = new Point();
        getCenterAndRadius(center);
        int checkCircleRadius = this.mCheckedCircleSize / 2;
        int checkCircleCenterX = center.x + checkCircleRadius;
        int checkCircleCenterY = center.y + checkCircleRadius;
        this.mPaint.setColor(-1);
        canvas.drawCircle(checkCircleCenterX, checkCircleCenterY, checkCircleRadius, this.mPaint);
        int checkCircleRadius2 = checkCircleRadius - this.mCheckedCircleBorderSize;
        this.mPaint.setColor(getContext().getColor(R.color.oneplus_accent_color));
        canvas.drawCircle(checkCircleCenterX, checkCircleCenterY, checkCircleRadius2, this.mPaint);
        Rect rect = new Rect(checkCircleCenterX - checkCircleRadius2, checkCircleCenterX - checkCircleRadius2, checkCircleCenterY + checkCircleRadius2, checkCircleCenterY + checkCircleRadius2);
        this.mCheck.setBounds(rect);
        this.mCheck.draw(canvas);
        return bitmap;
    }

    private int getCenterAndRadius(Point outCenter) {
        if (outCenter == null) {
            Logger.e(TAG, "invalid parameter 'outCenter'");
            return 0;
        }
        int w = getWidth();
        int h = getHeight();
        int pl = getPaddingLeft();
        int pr = getPaddingRight();
        int pt = getPaddingTop();
        int pb = getPaddingBottom();
        int usableWidth = w - (pl + pr);
        int usableHeight = h - (pt + pb);
        int min = Math.min(usableWidth, usableHeight) / 2;
        outCenter.x = (usableWidth / 2) + pl;
        outCenter.y = (usableHeight / 2) + pt;
        return min;
    }
}
