package net.oneplus.h2launcher.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.view.View;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class ShadowHelper {
    private static final String TAG = "ShadowHelper";
    private static ShadowHelper sInstance;
    private static final Rect sTempRect = new Rect();
    private Context mContext;
    private final BlurMaskFilter mMediumInnerBlurMaskFilter;
    private final BlurMaskFilter mMediumOuterBlurMaskFilter;
    private float mOffsetYBlur;
    private final Paint mDrawPaint = new Paint();
    private final Paint mBlurPaint = new Paint();
    private final Canvas mCanvas = new Canvas();

    public ShadowHelper(Context context) {
        this.mContext = context;
        this.mOffsetYBlur = context.getResources().getDimension(R.dimen.clock_blur_y_offset);
        float sizeBlur = context.getResources().getDimension(R.dimen.clock_blur_size);
        this.mMediumOuterBlurMaskFilter = new BlurMaskFilter(sizeBlur, BlurMaskFilter.Blur.OUTER);
        this.mMediumInnerBlurMaskFilter = new BlurMaskFilter(sizeBlur, BlurMaskFilter.Blur.NORMAL);
        this.mDrawPaint.setFilterBitmap(true);
        this.mDrawPaint.setAntiAlias(true);
        this.mBlurPaint.setFilterBitmap(true);
        this.mBlurPaint.setAntiAlias(true);
    }

    public static ShadowHelper obtain(Context context) {
        if (sInstance == null) {
            sInstance = new ShadowHelper(context);
        }
        return sInstance;
    }

    public Bitmap createShadow(View v, int padding) {
        if (v.getWidth() <= 0 || v.getHeight() <= 0) {
            Logger.w(TAG, "v.getWidth <= 0 or v.getHeight <= 0");
            return null;
        }
        int outlineColor = this.mContext.getResources().getColor(R.color.clock_text_shadow, null);
        try {
            Bitmap b = Bitmap.createBitmap(v.getWidth() + padding, v.getHeight() + padding, Bitmap.Config.ARGB_8888);
            this.mCanvas.setBitmap(b);
            drawClockView(v, this.mCanvas, padding);
            applyExpensiveOutlineWithBlur(b, this.mCanvas, outlineColor, outlineColor, true);
            this.mCanvas.setBitmap(null);
            return b;
        } catch (NullPointerException ex) {
            ex.printStackTrace();
            Logger.w(TAG, "Cannot create shadow");
            return null;
        }
    }

    static void drawClockView(View v, Canvas destCanvas, int padding) {
        Rect clipRect = sTempRect;
        v.getDrawingRect(clipRect);
        destCanvas.save();
        destCanvas.translate((-v.getScrollX()) + (padding / 2), (-v.getScrollY()) + (padding / 2));
        destCanvas.clipRect(clipRect);
        v.draw(destCanvas);
        destCanvas.restore();
    }

    void applyExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor, boolean clipAlpha) {
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
        this.mBlurPaint.setMaskFilter(this.mMediumInnerBlurMaskFilter);
        int[] thickInnerBlurOffset = new int[2];
        Bitmap thickInnerBlur = glowShape.extractAlpha(this.mBlurPaint, thickInnerBlurOffset);
        srcDstCanvas.setBitmap(srcDst);
        srcDstCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.mDrawPaint.setColor(color);
        srcDstCanvas.drawBitmap(thickInnerBlur, thickInnerBlurOffset[0], thickInnerBlurOffset[1] + this.mOffsetYBlur, this.mDrawPaint);
        srcDstCanvas.drawBitmap(thickOuterBlur, outerBlurOffset[0], outerBlurOffset[1], this.mDrawPaint);
        srcDstCanvas.setBitmap(null);
        thickOuterBlur.recycle();
        thickInnerBlur.recycle();
        glowShape.recycle();
    }
}
