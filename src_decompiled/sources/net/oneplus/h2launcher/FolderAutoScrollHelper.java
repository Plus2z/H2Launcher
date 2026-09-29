package net.oneplus.h2launcher;

import android.support.v4.widget.AutoScrollHelper;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class FolderAutoScrollHelper extends AutoScrollHelper {
    private ScrollView mTarget;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FolderAutoScrollHelper(ScrollView target) {
        super(target);
        this.mTarget = target;
        setActivationDelay(0);
        setEdgeType(0);
        setExclusive(true);
        setMaximumVelocity(1500.0f, 1500.0f);
    }

    @Override // android.support.v4.widget.AutoScrollHelper
    public void scrollTargetBy(int deltaX, int deltaY) {
        this.mTarget.scrollBy(deltaX, deltaY);
    }

    @Override // android.support.v4.widget.AutoScrollHelper
    public boolean canTargetScrollHorizontally(int direction) {
        return false;
    }

    @Override // android.support.v4.widget.AutoScrollHelper
    public boolean canTargetScrollVertically(int direction) {
        return this.mTarget.canScrollVertically(direction);
    }
}
