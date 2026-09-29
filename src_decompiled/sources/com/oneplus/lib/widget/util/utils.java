package com.oneplus.lib.widget.util;

import android.content.Context;
import android.util.TypedValue;

/* loaded from: classes.dex */
public class utils {
    public static int resolveDefStyleAttr(Context context, int defStyleAttr) {
        TypedValue outValue = new TypedValue();
        context.getTheme().resolveAttribute(defStyleAttr, outValue, true);
        if ((outValue.resourceId >>> 24) == 1) {
            return 0;
        }
        return defStyleAttr;
    }
}
