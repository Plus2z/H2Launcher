package net.oneplus.h2launcher.quickpage.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;

/* loaded from: classes.dex */
public class RecyclerFastScrollerUtils {
    @ColorInt
    public static int resolveColor(Context context, @AttrRes int color) {
        TypedArray a = context.obtainStyledAttributes(new int[]{color});
        int resId = a.getColor(0, 0);
        a.recycle();
        return resId;
    }

    public static int convertDpToPx(Context context, float dp) {
        return (int) ((context.getResources().getDisplayMetrics().density * dp) + 0.5f);
    }
}
