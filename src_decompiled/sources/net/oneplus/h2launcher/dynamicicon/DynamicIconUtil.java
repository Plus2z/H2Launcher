package net.oneplus.h2launcher.dynamicicon;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import net.oneplus.h2launcher.FastBitmapDrawable;

/* loaded from: classes.dex */
public class DynamicIconUtil {
    private static final int DEFAULT_TEXT_DP = 12;
    public static float sDpPixel;
    public static float sSpPixel;
    public static float sTextSizeDefault;

    public static void init(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        sDpPixel = metrics.density;
        sSpPixel = metrics.scaledDensity;
        sTextSizeDefault = sDpPixel * 12.0f;
    }

    public static Bitmap getCompleteBitmap(FastBitmapDrawable fastBitmapDrawable) {
        Bitmap sourceBitmap = fastBitmapDrawable.getBitmap();
        if (sourceBitmap == null || sourceBitmap.getWidth() == 0 || sourceBitmap.getHeight() == 0) {
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(sourceBitmap.getWidth(), sourceBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas();
        canvas.setBitmap(bitmap);
        fastBitmapDrawable.draw(canvas);
        return bitmap;
    }
}
