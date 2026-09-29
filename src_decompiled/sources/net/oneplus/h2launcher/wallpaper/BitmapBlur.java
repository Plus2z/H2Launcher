package net.oneplus.h2launcher.wallpaper;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.renderscript.ScriptIntrinsicResize;
import android.renderscript.Type;

/* loaded from: classes.dex */
public class BitmapBlur {
    static final float MAX_RADIUS_STAGE_BLUR = 175.0f;
    static final float MAX_STAGE_RADIUS = 25.0f;
    private static Bitmap mBitmapBlur25;
    private static Bitmap mBitmapBlur25_2;
    private static Bitmap mBitmapBlur25_3;
    private static Bitmap mBitmapBlur25_4;
    private static Bitmap mBitmapBlur25_5;
    private static Bitmap mBitmapBlur25_6;
    private static Bitmap mBitmapBlur25_7;
    private static ScriptIntrinsicBlur mBlurScript;
    private static RenderScript mRenderScript;
    private static ScriptIntrinsicResize mResizeScript;
    private static float sMinRadius = 0.05f;

    public static Bitmap stageBlur(Context context, Bitmap srcImage, float radius) {
        initRenderScript(context);
        if (radius <= 0.0f) {
            radius = sMinRadius;
        } else if (radius > MAX_RADIUS_STAGE_BLUR) {
            radius = MAX_RADIUS_STAGE_BLUR;
        }
        Bitmap tmpBitmap = getBitmapBlur25_X(context, srcImage, radius);
        float remainRadius = getRemainRadius(radius);
        if (remainRadius != 0.0f) {
            Allocation imageAllocation = Allocation.createFromBitmap(mRenderScript, tmpBitmap);
            Bitmap outputBitmap = Bitmap.createBitmap(tmpBitmap.getWidth(), tmpBitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Allocation imageBlurAllocation = Allocation.createFromBitmap(mRenderScript, outputBitmap);
            mBlurScript.setRadius(remainRadius);
            mBlurScript.setInput(imageAllocation);
            mBlurScript.forEach(imageBlurAllocation);
            imageBlurAllocation.copyTo(outputBitmap);
            return outputBitmap;
        }
        return tmpBitmap;
    }

    private static Bitmap getBitmapBlur25_X(Context context, Bitmap srcBitmap, float radius) {
        int nIndex = (int) (radius / MAX_STAGE_RADIUS);
        createCacheBlurBitmap(context, srcBitmap, nIndex);
        switch (nIndex) {
            case 0:
            default:
                return srcBitmap;
            case 1:
                return mBitmapBlur25;
            case 2:
                return mBitmapBlur25_2;
            case 3:
                return mBitmapBlur25_3;
            case 4:
                return mBitmapBlur25_4;
            case 5:
                return mBitmapBlur25_5;
            case 6:
                return mBitmapBlur25_6;
            case 7:
                return mBitmapBlur25_7;
        }
    }

    public static void createCacheBlurBitmap(Context context, Bitmap srcBitmap, int num) {
        initRenderScript(context);
        if (mBitmapBlur25 == null) {
            mBitmapBlur25 = createCacheBitmap(srcBitmap);
        }
        if (mBitmapBlur25_2 == null && num > 1) {
            mBitmapBlur25_2 = createCacheBitmap(mBitmapBlur25);
        }
        if (mBitmapBlur25_3 == null && num > 2) {
            mBitmapBlur25_3 = createCacheBitmap(mBitmapBlur25_2);
        }
        if (mBitmapBlur25_4 == null && num > 3) {
            mBitmapBlur25_4 = createCacheBitmap(mBitmapBlur25_3);
        }
        if (mBitmapBlur25_5 == null && num > 4) {
            mBitmapBlur25_5 = createCacheBitmap(mBitmapBlur25_4);
        }
        if (mBitmapBlur25_6 == null && num > 5) {
            mBitmapBlur25_6 = createCacheBitmap(mBitmapBlur25_5);
        }
        if (mBitmapBlur25_7 == null && num > 6) {
            mBitmapBlur25_7 = createCacheBitmap(mBitmapBlur25_6);
        }
    }

    public static void clearCacheBitmap() {
        mBitmapBlur25 = null;
        mBitmapBlur25_2 = null;
        mBitmapBlur25_3 = null;
        mBitmapBlur25_4 = null;
        mBitmapBlur25_5 = null;
        mBitmapBlur25_6 = null;
        mBitmapBlur25_7 = null;
    }

    private static Bitmap createCacheBitmap(Bitmap exStageBitmap) {
        Allocation imageAllocation = Allocation.createFromBitmap(mRenderScript, exStageBitmap);
        Bitmap outBitmap = Bitmap.createBitmap(exStageBitmap.getWidth(), exStageBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Allocation imageBlurAllocation = Allocation.createFromBitmap(mRenderScript, outBitmap);
        mBlurScript.setRadius(MAX_STAGE_RADIUS);
        mBlurScript.setInput(imageAllocation);
        mBlurScript.forEach(imageBlurAllocation);
        imageBlurAllocation.copyTo(outBitmap);
        return outBitmap;
    }

    private static float getRemainRadius(float radius) {
        float remainRadius = radius % MAX_STAGE_RADIUS;
        return remainRadius;
    }

    public static Bitmap reSizeBitmap(Context context, Bitmap srcBitmap, float scaleSize) {
        initRenderScript(context);
        Allocation imageAllocation = Allocation.createFromBitmap(mRenderScript, srcBitmap);
        int resizeWidth = (int) (srcBitmap.getWidth() * scaleSize);
        int resizeHeight = (int) (srcBitmap.getHeight() * scaleSize);
        Bitmap outputBitmap = Bitmap.createBitmap(resizeWidth, resizeHeight, Bitmap.Config.ARGB_8888);
        Type.Builder rgbaTypeBuilder = new Type.Builder(mRenderScript, Element.RGBA_8888(mRenderScript));
        rgbaTypeBuilder.setX(resizeWidth);
        rgbaTypeBuilder.setY(resizeHeight);
        Allocation frameResizeAllocation = Allocation.createTyped(mRenderScript, rgbaTypeBuilder.create(), 1);
        mResizeScript.setInput(imageAllocation);
        mResizeScript.forEach_bicubic(frameResizeAllocation);
        frameResizeAllocation.copyTo(outputBitmap);
        return outputBitmap;
    }

    private static void initRenderScript(Context context) {
        if (mRenderScript == null) {
            mRenderScript = RenderScript.create(context);
        }
        if (mBlurScript == null) {
            mBlurScript = ScriptIntrinsicBlur.create(mRenderScript, Element.RGBA_8888(mRenderScript));
        }
        if (mResizeScript == null) {
            mResizeScript = ScriptIntrinsicResize.create(mRenderScript);
        }
    }
}
