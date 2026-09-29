package net.oneplus.h2launcher;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class BorderCropDrawable extends Drawable {
    private final Drawable mChild;
    private final Rect mBoundsShift = new Rect();
    private final Rect mPadding = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public BorderCropDrawable(Drawable child, boolean cropLeft, boolean cropTop, boolean cropRight, boolean cropBottom) {
        this.mChild = child;
        this.mChild.getPadding(this.mPadding);
        if (cropLeft) {
            this.mBoundsShift.left = -this.mPadding.left;
            this.mPadding.left = 0;
        }
        if (cropTop) {
            this.mBoundsShift.top = -this.mPadding.top;
            this.mPadding.top = 0;
        }
        if (cropRight) {
            this.mBoundsShift.right = this.mPadding.right;
            this.mPadding.right = 0;
        }
        if (cropBottom) {
            this.mBoundsShift.bottom = this.mPadding.bottom;
            this.mPadding.bottom = 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        this.mChild.setBounds(bounds.left + this.mBoundsShift.left, bounds.top + this.mBoundsShift.top, bounds.right + this.mBoundsShift.right, bounds.bottom + this.mBoundsShift.bottom);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        padding.set(this.mPadding);
        return (((padding.left | padding.top) | padding.right) | padding.bottom) != 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mChild.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mChild.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.mChild.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.mChild.setColorFilter(cf);
    }
}
