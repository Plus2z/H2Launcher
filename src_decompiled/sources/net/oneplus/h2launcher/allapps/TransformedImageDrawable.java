package net.oneplus.h2launcher.allapps;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* compiled from: AllAppsBackgroundDrawable.java */
/* loaded from: classes.dex */
class TransformedImageDrawable {
    private int mGravity;
    private Drawable mImage;
    private float mXPercent;
    private float mYPercent;

    public TransformedImageDrawable(Resources res, int resourceId, float xPct, float yPct, int gravity) {
        this.mImage = res.getDrawable(resourceId);
        this.mXPercent = xPct;
        this.mYPercent = yPct;
        this.mGravity = gravity;
    }

    public void setAlpha(int alpha) {
        this.mImage.setAlpha(alpha);
    }

    public int getAlpha() {
        return this.mImage.getAlpha();
    }

    public void updateBounds(Rect bounds) {
        int width = this.mImage.getIntrinsicWidth();
        int height = this.mImage.getIntrinsicHeight();
        int left = bounds.left + ((int) (this.mXPercent * bounds.width()));
        int top = bounds.top + ((int) (this.mYPercent * bounds.height()));
        if ((this.mGravity & 1) == 1) {
            left -= width / 2;
        }
        if ((this.mGravity & 16) == 16) {
            top -= height / 2;
        }
        this.mImage.setBounds(left, top, left + width, top + height);
    }

    public void draw(Canvas canvas) {
        int c = canvas.save();
        this.mImage.draw(canvas);
        canvas.restoreToCount(c);
    }
}
