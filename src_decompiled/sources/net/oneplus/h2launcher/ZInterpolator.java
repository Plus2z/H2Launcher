package net.oneplus.h2launcher;

import android.animation.TimeInterpolator;

/* compiled from: WorkspaceStateTransitionAnimation.java */
/* loaded from: classes.dex */
class ZInterpolator implements TimeInterpolator {
    private float focalLength;

    public ZInterpolator(float foc) {
        this.focalLength = foc;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float input) {
        return (1.0f - (this.focalLength / (this.focalLength + input))) / (1.0f - (this.focalLength / (this.focalLength + 1.0f)));
    }
}
