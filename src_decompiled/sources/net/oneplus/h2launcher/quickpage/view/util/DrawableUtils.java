package net.oneplus.h2launcher.quickpage.view.util;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class DrawableUtils {
    private static final int[] EMPTY_STATE = new int[0];

    public static void clearState(Drawable drawable) {
        if (drawable != null) {
            drawable.setState(EMPTY_STATE);
        }
    }
}
