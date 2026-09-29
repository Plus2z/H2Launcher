package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;

@RequiresApi(14)
/* loaded from: classes.dex */
class ViewUtilsApi14 implements ViewUtilsImpl {
    @Override // android.support.transition.ViewUtilsImpl
    public ViewOverlayImpl getOverlay(@NonNull View view) {
        return ViewOverlayApi14.createFrom(view);
    }

    @Override // android.support.transition.ViewUtilsImpl
    public WindowIdImpl getWindowId(@NonNull View view) {
        return new WindowIdApi14(view.getWindowToken());
    }
}
