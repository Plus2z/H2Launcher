package net.oneplus.h2launcher;

import android.animation.TimeInterpolator;

/* compiled from: WorkspaceStateTransitionAnimation.java */
/* loaded from: classes.dex */
class InverseZInterpolator implements TimeInterpolator {
    private ZInterpolator zInterpolator;

    public InverseZInterpolator(float foc) {
        this.zInterpolator = new ZInterpolator(foc);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float input) {
        return 1.0f - this.zInterpolator.getInterpolation(1.0f - input);
    }
}
