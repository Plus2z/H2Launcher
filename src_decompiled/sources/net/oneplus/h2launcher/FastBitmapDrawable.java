package net.oneplus.h2launcher;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;

/* loaded from: classes.dex */
public class FastBitmapDrawable extends Drawable {
    static final long CLICK_FEEDBACK_DURATION = 200;
    private static final int GHOST_MODE_MIN_COLOR_RANGE = 130;
    private static final int PRESSED_BRIGHTNESS = 30;
    private static ColorMatrix sGhostModeMatrix;
    protected final Bitmap mBitmap;
    private ObjectAnimator mPressedAnimator;
    static final TimeInterpolator CLICK_FEEDBACK_INTERPOLATOR = new TimeInterpolator() { // from class: net.oneplus.h2launcher.FastBitmapDrawable.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            if (input < 0.05f) {
                return input / 0.05f;
            }
            if (input >= 0.3f) {
                return (1.0f - input) / 0.7f;
            }
            return 1.0f;
        }
    };
    private static final ColorMatrix sTempMatrix = new ColorMatrix();
    private static final SparseArray<ColorFilter> sCachedBrightnessFilter = new SparseArray<>();
    protected final Paint mPaint = new Paint(2);
    private int mBrightness = 0;
    private boolean mGhostModeEnabled = false;
    private boolean mPressed = false;
    private int mAlpha = 255;

    public FastBitmapDrawable(Bitmap b) {
        this.mBitmap = b;
        setBounds(0, 0, b.getWidth(), b.getHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect r = getBounds();
        canvas.drawBitmap(this.mBitmap, (Rect) null, r, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.mAlpha = alpha;
        this.mPaint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filterBitmap) {
        this.mPaint.setFilterBitmap(filterBitmap);
        this.mPaint.setAntiAlias(filterBitmap);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mBitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mBitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return getBounds().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return getBounds().height();
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public void setGhostModeEnabled(boolean enabled) {
        if (this.mGhostModeEnabled != enabled) {
            this.mGhostModeEnabled = enabled;
            updateFilter();
        }
    }

    public void setPressed(boolean pressed) {
        if (this.mPressed != pressed) {
            this.mPressed = pressed;
            if (this.mPressed) {
                this.mPressedAnimator = ObjectAnimator.ofInt(this, "brightness", 30).setDuration(CLICK_FEEDBACK_DURATION);
                this.mPressedAnimator.setInterpolator(CLICK_FEEDBACK_INTERPOLATOR);
                this.mPressedAnimator.start();
            } else if (this.mPressedAnimator != null) {
                this.mPressedAnimator.cancel();
                setBrightness(0);
            }
        }
        invalidateSelf();
    }

    public boolean isPressed() {
        return this.mPressed;
    }

    public boolean isGhostModeEnabled() {
        return this.mGhostModeEnabled;
    }

    public int getBrightness() {
        return this.mBrightness;
    }

    public void setBrightness(int brightness) {
        if (this.mBrightness != brightness) {
            this.mBrightness = brightness;
            updateFilter();
            invalidateSelf();
        }
    }

    private void updateFilter() {
        if (this.mGhostModeEnabled) {
            if (sGhostModeMatrix == null) {
                sGhostModeMatrix = new ColorMatrix();
                sGhostModeMatrix.setSaturation(0.0f);
                sTempMatrix.set(new float[]{0.49019608f, 0.0f, 0.0f, 0.0f, 130.0f, 0.0f, 0.49019608f, 0.0f, 0.0f, 130.0f, 0.0f, 0.0f, 0.49019608f, 0.0f, 130.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
                sGhostModeMatrix.preConcat(sTempMatrix);
            }
            if (this.mBrightness == 0) {
                this.mPaint.setColorFilter(new ColorMatrixColorFilter(sGhostModeMatrix));
                return;
            }
            setBrightnessMatrix(sTempMatrix, this.mBrightness);
            sTempMatrix.postConcat(sGhostModeMatrix);
            this.mPaint.setColorFilter(new ColorMatrixColorFilter(sTempMatrix));
            return;
        }
        if (this.mBrightness != 0) {
            ColorFilter filter = sCachedBrightnessFilter.get(this.mBrightness);
            if (filter == null) {
                filter = new PorterDuffColorFilter(Color.argb(this.mBrightness, 255, 255, 255), PorterDuff.Mode.SRC_ATOP);
                sCachedBrightnessFilter.put(this.mBrightness, filter);
            }
            this.mPaint.setColorFilter(filter);
            return;
        }
        this.mPaint.setColorFilter(null);
    }

    private static void setBrightnessMatrix(ColorMatrix matrix, int brightness) {
        float scale = 1.0f - (brightness / 255.0f);
        matrix.setScale(scale, scale, scale, 1.0f);
        float[] array = matrix.getArray();
        array[4] = brightness;
        array[9] = brightness;
        array[14] = brightness;
    }
}
