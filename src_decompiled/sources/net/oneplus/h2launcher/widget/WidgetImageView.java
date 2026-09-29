package net.oneplus.h2launcher.widget;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class WidgetImageView extends View {
    private Bitmap mBitmap;
    private final RectF mDstRectF;
    private final Paint mPaint;

    public WidgetImageView(Context context) {
        super(context);
        this.mPaint = new Paint(3);
        this.mDstRectF = new RectF();
    }

    public WidgetImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPaint = new Paint(3);
        this.mDstRectF = new RectF();
    }

    public WidgetImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mPaint = new Paint(3);
        this.mDstRectF = new RectF();
    }

    public void setBitmap(Bitmap bitmap, ComponentName componentName) {
        this.mBitmap = bitmap;
        if (this.mBitmap != null && isNeedAddShadow(componentName)) {
            this.mBitmap = addShadow(this.mBitmap, this.mBitmap.getHeight(), this.mBitmap.getWidth(), getResources().getColor(R.color.widgets_shadow_color), 1, 0.0f, 1.0f);
        }
        invalidate();
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mBitmap != null) {
            updateDstRectF();
            canvas.drawBitmap(this.mBitmap, (Rect) null, this.mDstRectF, this.mPaint);
        }
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    private void updateDstRectF() {
        if (this.mBitmap.getWidth() > getWidth()) {
            float scale = getWidth() / this.mBitmap.getWidth();
            this.mDstRectF.set(0.0f, 0.0f, getWidth(), this.mBitmap.getHeight() * scale);
        } else {
            this.mDstRectF.set((getWidth() - this.mBitmap.getWidth()) * 0.5f, (getHeight() - this.mBitmap.getHeight()) * 0.5f, (getWidth() + this.mBitmap.getWidth()) * 0.5f, (getHeight() + this.mBitmap.getHeight()) * 0.5f);
        }
    }

    public Rect getBitmapBounds() {
        updateDstRectF();
        Rect rect = new Rect();
        this.mDstRectF.round(rect);
        return rect;
    }

    private Bitmap addShadow(Bitmap bm, int dstHeight, int dstWidth, int color, int size, float dx, float dy) {
        Bitmap mask = Bitmap.createBitmap(dstWidth, dstHeight, Bitmap.Config.ALPHA_8);
        Matrix scaleToFit = new Matrix();
        RectF src = new RectF(0.0f, 0.0f, bm.getWidth(), bm.getHeight());
        RectF dst = new RectF(0.0f, 0.0f, dstWidth - dx, dstHeight - dy);
        scaleToFit.setRectToRect(src, dst, Matrix.ScaleToFit.CENTER);
        Matrix dropShadow = new Matrix(scaleToFit);
        dropShadow.postTranslate(dx, dy);
        Canvas maskCanvas = new Canvas(mask);
        Paint paint = new Paint(1);
        maskCanvas.drawBitmap(bm, scaleToFit, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
        maskCanvas.drawBitmap(bm, dropShadow, paint);
        BlurMaskFilter filter = new BlurMaskFilter(size, BlurMaskFilter.Blur.NORMAL);
        paint.reset();
        paint.setAntiAlias(true);
        paint.setColor(color);
        paint.setMaskFilter(filter);
        paint.setFilterBitmap(true);
        Bitmap ret = Bitmap.createBitmap(dstWidth, dstHeight, Bitmap.Config.ARGB_8888);
        Canvas retCanvas = new Canvas(ret);
        retCanvas.drawBitmap(mask, 0.0f, 0.0f, paint);
        retCanvas.drawBitmap(bm, scaleToFit, null);
        mask.recycle();
        return ret;
    }

    private boolean isNeedAddShadow(ComponentName cn) {
        if (cn == null) {
            return false;
        }
        for (ComponentName componentName : WidgetConstant.ADD_SHADOW_WIDGET_LIST) {
            if (componentName.equals(cn)) {
                return true;
            }
        }
        return false;
    }
}
