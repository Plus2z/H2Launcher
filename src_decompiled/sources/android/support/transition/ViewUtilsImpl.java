package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;

@RequiresApi(14)
/* loaded from: classes.dex */
interface ViewUtilsImpl {
    ViewOverlayImpl getOverlay(@NonNull View view);

    WindowIdImpl getWindowId(@NonNull View view);
}
