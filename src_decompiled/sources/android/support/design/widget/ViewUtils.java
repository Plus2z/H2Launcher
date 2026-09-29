package android.support.design.widget;

import android.graphics.PorterDuff;

/* loaded from: classes.dex */
class ViewUtils {
    ViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean objectEquals(Object a, Object b) {
        return a == b || (a != null && a.equals(b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        switch (value) {
            case 3:
                PorterDuff.Mode defaultMode2 = PorterDuff.Mode.SRC_OVER;
                return defaultMode2;
            case 5:
                PorterDuff.Mode defaultMode3 = PorterDuff.Mode.SRC_IN;
                return defaultMode3;
            case 9:
                PorterDuff.Mode defaultMode4 = PorterDuff.Mode.SRC_ATOP;
                return defaultMode4;
            case 14:
                PorterDuff.Mode defaultMode5 = PorterDuff.Mode.MULTIPLY;
                return defaultMode5;
            case 15:
                PorterDuff.Mode defaultMode6 = PorterDuff.Mode.SCREEN;
                return defaultMode6;
            default:
                return defaultMode;
        }
    }
}
