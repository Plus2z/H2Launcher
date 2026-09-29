package com.oneplus.lib.widget.cardview;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
interface CardViewDelegate {
    Drawable getBackground();

    boolean getPreventCornerOverlap();

    float getRadius();

    boolean getUseCompatPadding();

    void setBackgroundDrawable(Drawable drawable);

    void setShadowPadding(int i, int i2, int i3, int i4);
}
