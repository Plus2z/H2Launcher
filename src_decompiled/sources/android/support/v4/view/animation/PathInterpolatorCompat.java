package android.support.v4.view.animation;

import android.graphics.Path;
import android.os.Build;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* loaded from: classes.dex */
public final class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    public static Interpolator create(Path path) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(path) : new PathInterpolatorApi14(path);
    }

    public static Interpolator create(float controlX, float controlY) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(controlX, controlY) : new PathInterpolatorApi14(controlX, controlY);
    }

    public static Interpolator create(float controlX1, float controlY1, float controlX2, float controlY2) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(controlX1, controlY1, controlX2, controlY2) : new PathInterpolatorApi14(controlX1, controlY1, controlX2, controlY2);
    }
}
