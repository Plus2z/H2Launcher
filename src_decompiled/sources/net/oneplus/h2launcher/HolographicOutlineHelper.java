package net.oneplus.h2launcher;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;

/* loaded from: classes.dex */
public class HolographicOutlineHelper {
    private static HolographicOutlineHelper sInstance;
    private final BlurMaskFilter mMediumInnerBlurMaskFilter;
    private final BlurMaskFilter mMediumOuterBlurMaskFilter;
    private final BlurMaskFilter mShadowBlurMaskFilter;
    private final BlurMaskFilter mThinOuterBlurMaskFilter;
    private final Canvas mCanvas = new Canvas();
    private final Paint mDrawPaint = new Paint();
    private final Paint mBlurPaint = new Paint();
    private final Paint mErasePaint = new Paint();
    private final SparseArray<Bitmap> mBitmapCache = new SparseArray<>(4);

    private HolographicOutlineHelper(Context context) {
        Resources res = context.getResources();
        float mediumBlur = res.getDimension(R.dimen.blur_size_medium_outline);
        this.mMediumOuterBlurMaskFilter = new BlurMaskFilter(mediumBlur, BlurMaskFilter.Blur.OUTER);
        this.mMediumInnerBlurMaskFilter = new BlurMaskFilter(mediumBlur, BlurMaskFilter.Blur.NORMAL);
        this.mThinOuterBlurMaskFilter = new BlurMaskFilter(res.getDimension(R.dimen.blur_size_thin_outline), BlurMaskFilter.Blur.OUTER);
        this.mShadowBlurMaskFilter = new BlurMaskFilter(res.getDimension(R.dimen.blur_size_click_shadow), BlurMaskFilter.Blur.NORMAL);
        this.mDrawPaint.setFilterBitmap(true);
        this.mDrawPaint.setAntiAlias(true);
        this.mBlurPaint.setFilterBitmap(true);
        this.mBlurPaint.setAntiAlias(true);
        this.mErasePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.mErasePaint.setFilterBitmap(true);
        this.mErasePaint.setAntiAlias(true);
    }

    public static HolographicOutlineHelper obtain(Context context) {
        if (sInstance == null) {
            sInstance = new HolographicOutlineHelper(context);
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor) {
        applyExpensiveOutlineWithBlur(srcDst, srcDstCanvas, color, outlineColor, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor, boolean clipAlpha) {
        if (clipAlpha) {
            int[] srcBuffer = new int[srcDst.getWidth() * srcDst.getHeight()];
            srcDst.getPixels(srcBuffer, 0, srcDst.getWidth(), 0, 0, srcDst.getWidth(), srcDst.getHeight());
            for (int i = 0; i < srcBuffer.length; i++) {
                int alpha = srcBuffer[i] >>> 24;
                if (alpha < 188) {
                    srcBuffer[i] = 0;
                }
            }
            srcDst.setPixels(srcBuffer, 0, srcDst.getWidth(), 0, 0, srcDst.getWidth(), srcDst.getHeight());
        }
        Bitmap glowShape = srcDst.extractAlpha();
        this.mBlurPaint.setMaskFilter(this.mMediumOuterBlurMaskFilter);
        int[] outerBlurOffset = new int[2];
        Bitmap thickOuterBlur = glowShape.extractAlpha(this.mBlurPaint, outerBlurOffset);
        this.mBlurPaint.setMaskFilter(this.mThinOuterBlurMaskFilter);
        int[] brightOutlineOffset = new int[2];
        Bitmap brightOutline = glowShape.extractAlpha(this.mBlurPaint, brightOutlineOffset);
        srcDstCanvas.setBitmap(glowShape);
        srcDstCanvas.drawColor(-16777216, PorterDuff.Mode.SRC_OUT);
        this.mBlurPaint.setMaskFilter(this.mMediumInnerBlurMaskFilter);
        int[] thickInnerBlurOffset = new int[2];
        Bitmap thickInnerBlur = glowShape.extractAlpha(this.mBlurPaint, thickInnerBlurOffset);
        srcDstCanvas.setBitmap(thickInnerBlur);
        srcDstCanvas.drawBitmap(glowShape, -thickInnerBlurOffset[0], -thickInnerBlurOffset[1], this.mErasePaint);
        srcDstCanvas.drawRect(0.0f, 0.0f, -thickInnerBlurOffset[0], thickInnerBlur.getHeight(), this.mErasePaint);
        srcDstCanvas.drawRect(0.0f, 0.0f, thickInnerBlur.getWidth(), -thickInnerBlurOffset[1], this.mErasePaint);
        srcDstCanvas.setBitmap(srcDst);
        srcDstCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.mDrawPaint.setColor(color);
        srcDstCanvas.drawBitmap(thickInnerBlur, thickInnerBlurOffset[0], thickInnerBlurOffset[1], this.mDrawPaint);
        srcDstCanvas.drawBitmap(thickOuterBlur, outerBlurOffset[0], outerBlurOffset[1], this.mDrawPaint);
        this.mDrawPaint.setColor(outlineColor);
        srcDstCanvas.drawBitmap(brightOutline, brightOutlineOffset[0], brightOutlineOffset[1], this.mDrawPaint);
        srcDstCanvas.setBitmap(null);
        brightOutline.recycle();
        thickOuterBlur.recycle();
        thickInnerBlur.recycle();
        glowShape.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap createMediumDropShadow(BubbleTextView view) {
        Drawable icon = view.getIcon();
        if (icon == null) {
            return null;
        }
        Rect rect = icon.getBounds();
        int bitmapWidth = (int) (rect.width() * view.getScaleX());
        int bitmapHeight = (int) (rect.height() * view.getScaleY());
        if (bitmapWidth == 0 || bitmapHeight == 0) {
            return null;
        }
        int key = (bitmapWidth << 16) | bitmapHeight;
        Bitmap cache = this.mBitmapCache.get(key);
        if (cache == null) {
            cache = Bitmap.createBitmap(bitmapWidth, bitmapHeight, Bitmap.Config.ARGB_8888);
            this.mCanvas.setBitmap(cache);
            this.mBitmapCache.put(key, cache);
        } else {
            this.mCanvas.setBitmap(cache);
            this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        this.mCanvas.save();
        this.mCanvas.scale(view.getScaleX(), view.getScaleY());
        this.mCanvas.translate(-rect.left, -rect.top);
        icon.draw(this.mCanvas);
        this.mCanvas.restore();
        this.mCanvas.setBitmap(null);
        this.mBlurPaint.setMaskFilter(this.mShadowBlurMaskFilter);
        return cache.extractAlpha(this.mBlurPaint, null);
    }
}
