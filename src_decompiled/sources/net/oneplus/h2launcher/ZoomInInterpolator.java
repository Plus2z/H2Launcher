package net.oneplus.h2launcher;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;

/* compiled from: WorkspaceStateTransitionAnimation.java */
/* loaded from: classes.dex */
class ZoomInInterpolator implements TimeInterpolator {
    private final InverseZInterpolator inverseZInterpolator = new InverseZInterpolator(0.35f);
    private final DecelerateInterpolator decelerate = new DecelerateInterpolator(3.0f);

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float input) {
        return this.decelerate.getInterpolation(this.inverseZInterpolator.getInterpolation(input));
    }
}
