package net.oneplus.h2launcher;

import android.animation.TimeInterpolator;

/* loaded from: classes.dex */
public class LogAccelerateInterpolator implements TimeInterpolator {
    int mBase;
    int mDrift;
    final float mLogScale;

    public LogAccelerateInterpolator(int base, int drift) {
        this.mBase = base;
        this.mDrift = drift;
        this.mLogScale = 1.0f / computeLog(1.0f, this.mBase, this.mDrift);
    }

    static float computeLog(float t, int base, int drift) {
        return ((float) (-Math.pow(base, -t))) + 1.0f + (drift * t);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float t) {
        return 1.0f - (computeLog(1.0f - t, this.mBase, this.mDrift) * this.mLogScale);
    }
}
