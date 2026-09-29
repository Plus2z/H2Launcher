package android.support.v4.graphics;

import android.graphics.Paint;
import android.os.Build;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public final class PaintCompat {
    public static boolean hasGlyph(@NonNull Paint paint, @NonNull String string) {
        return Build.VERSION.SDK_INT >= 23 ? paint.hasGlyph(string) : PaintCompatApi14.hasGlyph(paint, string);
    }

    private PaintCompat() {
    }
}
