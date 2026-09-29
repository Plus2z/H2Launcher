package com.oneplus.lib.widget;

/* loaded from: classes.dex */
class OPAnimationUtils {
    OPAnimationUtils() {
    }

    static float lerp(float startValue, float endValue, float fraction) {
        return ((endValue - startValue) * fraction) + startValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int lerp(int startValue, int endValue, float fraction) {
        return Math.round((endValue - startValue) * fraction) + startValue;
    }
}
