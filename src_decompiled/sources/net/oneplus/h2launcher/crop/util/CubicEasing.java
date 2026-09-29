package net.oneplus.h2launcher.crop.util;

/* loaded from: classes.dex */
public final class CubicEasing {
    public static float easeOut(float time, float start, float end, float duration) {
        float time2 = (time / duration) - 1.0f;
        return (((time2 * time2 * time2) + 1.0f) * end) + start;
    }

    public static float easeIn(float time, float start, float end, float duration) {
        float time2 = time / duration;
        return (end * time2 * time2 * time2) + start;
    }

    public static float easeInOut(float time, float start, float end, float duration) {
        float time2 = time / (duration / 2.0f);
        if (time2 < 1.0f) {
            return ((end / 2.0f) * time2 * time2 * time2) + start;
        }
        float time3 = time2 - 2.0f;
        return ((end / 2.0f) * ((time3 * time3 * time3) + 2.0f)) + start;
    }
}
