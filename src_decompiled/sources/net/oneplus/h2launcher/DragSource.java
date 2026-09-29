package net.oneplus.h2launcher;

import android.view.View;
import net.oneplus.h2launcher.DropTarget;

/* loaded from: classes.dex */
public interface DragSource {
    float getIntrinsicIconScaleFactor();

    void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z, boolean z2);

    void onFlingToDeleteCompleted();

    boolean supportsAppInfoDropTarget();

    boolean supportsDeleteDropTarget();

    boolean supportsEditDropTarget();

    boolean supportsFlingToDelete();
}
