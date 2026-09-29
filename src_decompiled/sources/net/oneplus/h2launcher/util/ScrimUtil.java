package net.oneplus.h2launcher.util;

import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;

/* loaded from: classes.dex */
public class ScrimUtil {
    private ScrimUtil() {
    }

    public static Drawable makeCubicGradientScrimDrawable(int baseColor, int numStops, int gravity) {
        final float x0;
        final float x1;
        final float y0;
        final float y1;
        int numStops2 = Math.max(numStops, 2);
        PaintDrawable paintDrawable = new PaintDrawable();
        paintDrawable.setShape(new RectShape());
        final int[] stopColors = new int[numStops2];
        int red = Color.red(baseColor);
        int green = Color.green(baseColor);
        int blue = Color.blue(baseColor);
        int alpha = Color.alpha(baseColor);
        for (int i = 0; i < numStops2; i++) {
            float x = i / (numStops2 - 1);
            float opacity = Math.max(0.0f, (float) Math.min(1.0d, Math.pow(x, 3.0d)));
            stopColors[i] = Color.argb((int) (alpha * opacity), red, green, blue);
        }
        switch (gravity & 7) {
            case 3:
                x0 = 1.0f;
                x1 = 0.0f;
                break;
            case 4:
            default:
                x0 = 0.0f;
                x1 = 0.0f;
                break;
            case 5:
                x0 = 0.0f;
                x1 = 1.0f;
                break;
        }
        switch (gravity & 112) {
            case 48:
                y0 = 1.0f;
                y1 = 0.0f;
                break;
            case 80:
                y0 = 0.0f;
                y1 = 1.0f;
                break;
            default:
                y0 = 0.0f;
                y1 = 0.0f;
                break;
        }
        paintDrawable.setShaderFactory(new ShapeDrawable.ShaderFactory() { // from class: net.oneplus.h2launcher.util.ScrimUtil.1
            @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
            public Shader resize(int width, int height) {
                return new LinearGradient(width * x0, height * y0, width * x1, height * y1, stopColors, (float[]) null, Shader.TileMode.CLAMP);
            }
        });
        return paintDrawable;
    }
}
