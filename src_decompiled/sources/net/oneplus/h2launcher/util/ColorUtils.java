package net.oneplus.h2launcher.util;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class ColorUtils {
    public static final String TAG = ColorUtils.class.getSimpleName();

    public static boolean isColorDifferencePerceptible(int color1, int color2) {
        float[] labColor1 = new float[3];
        float[] labColor2 = new float[3];
        rgbToLab(color1, labColor1);
        rgbToLab(color2, labColor2);
        float dL = labColor1[0] - labColor2[0];
        float da = labColor1[1] - labColor2[1];
        float db = labColor1[2] - labColor2[2];
        float deltaE = (float) Math.sqrt((dL * dL) + (da * da) + (db * db));
        return deltaE > 1.0f;
    }

    private static void rgbToLab(int color, float[] lab) {
        float r;
        float g;
        float b;
        float fx;
        float fy;
        float fz;
        float r2 = Color.red(color) / 255.0f;
        float g2 = Color.green(color) / 255.0f;
        float b2 = Color.blue(color) / 255.0f;
        if (r2 <= 0.04045f) {
            r = r2 / 12.92f;
        } else {
            r = (float) Math.pow((0.055f + r2) / 1.055f, 2.4000000953674316d);
        }
        if (g2 <= 0.04045f) {
            g = g2 / 12.92f;
        } else {
            g = (float) Math.pow((0.055f + g2) / 1.055f, 2.4000000953674316d);
        }
        if (b2 <= 0.04045f) {
            b = b2 / 12.92f;
        } else {
            b = (float) Math.pow((0.055f + b2) / 1.055f, 2.4000000953674316d);
        }
        float X = (0.4124f * r) + (0.3576f * g) + (0.1805f * b);
        float Y = (0.2126f * r) + (0.7152f * g) + (0.0722f * b);
        float Z = (0.0193f * r) + (0.1192f * g) + (0.9505f * b);
        float xr = X / 0.95047f;
        float yr = Y / 1.0f;
        float zr = Z / 1.08883f;
        if (xr > 0.008856f) {
            fx = (float) Math.pow(xr, 0.3333333432674408d);
        } else {
            fx = (7.787f * xr) + 0.13793103f;
        }
        if (yr > 0.008856f) {
            fy = (float) Math.pow(yr, 0.3333333432674408d);
        } else {
            fy = (7.787f * yr) + 0.13793103f;
        }
        if (zr > 0.008856f) {
            fz = (float) Math.pow(zr, 0.3333333432674408d);
        } else {
            fz = (7.787f * zr) + 0.13793103f;
        }
        lab[0] = (116.0f * fy) - 16.0f;
        lab[1] = 500.0f * (fx - fy);
        lab[2] = 200.0f * (fy - fz);
    }
}
