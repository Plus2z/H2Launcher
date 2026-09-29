package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
class RubberBandInterpolator implements Interpolator {
    private final float mLimit;

    public RubberBandInterpolator(float limit) {
        this.mLimit = limit;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float input) {
        float t = 1.0f - input;
        return this.mLimit * (1.0f - (t * t));
    }
}
