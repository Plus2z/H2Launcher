package net.oneplus.h2launcher.allapps;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class AllAppsBackgroundDrawable extends Drawable {
    private static final int DARK_THEME_ICON_ALPHA = 76;
    private ObjectAnimator mBackgroundAnim;
    private Context mContext;
    private final int mHeight;
    private final TransformedImageDrawable[] mIcons;
    private final int mWidth;

    public AllAppsBackgroundDrawable(Context context) {
        this.mContext = context;
        Resources res = context.getResources();
        this.mIcons = new TransformedImageDrawable[4];
        this.mIcons[0] = new TransformedImageDrawable(res, R.drawable.ic_all_apps_bg_icon_1, 0.425f, 0.0f, 1);
        this.mIcons[1] = new TransformedImageDrawable(res, R.drawable.ic_all_apps_bg_icon_2, 0.3625f, 0.25f, 1);
        this.mIcons[2] = new TransformedImageDrawable(res, R.drawable.ic_all_apps_bg_icon_3, 0.475f, 0.4f, 1);
        this.mIcons[3] = new TransformedImageDrawable(res, R.drawable.ic_all_apps_bg_icon_4, 0.65f, 0.125f, 1);
        this.mWidth = res.getDimensionPixelSize(R.dimen.all_apps_background_canvas_width);
        this.mHeight = res.getDimensionPixelSize(R.dimen.all_apps_background_canvas_height);
    }

    public void animateBgAlpha(float finalAlpha, int duration) {
        int finalAlphaI = (int) (255.0f * finalAlpha);
        if (getAlpha() != finalAlphaI) {
            this.mBackgroundAnim = cancelAnimator(this.mBackgroundAnim);
            this.mBackgroundAnim = ObjectAnimator.ofInt(this, "alpha", finalAlphaI);
            this.mBackgroundAnim.setDuration(duration);
            this.mBackgroundAnim.start();
        }
    }

    public void setBgAlpha(float finalAlpha) {
        int finalAlphaI = (int) (255.0f * finalAlpha);
        if (getAlpha() != finalAlphaI) {
            this.mBackgroundAnim = cancelAnimator(this.mBackgroundAnim);
            setAlpha(finalAlphaI);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        for (int i = 0; i < this.mIcons.length; i++) {
            this.mIcons[i].draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        for (int i = 0; i < this.mIcons.length; i++) {
            this.mIcons[i].updateBounds(bounds);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        for (int i = 0; i < this.mIcons.length; i++) {
            if (Utilities.isDarkModeTheme(this.mContext) && alpha >= 76) {
                alpha = 76;
            }
            this.mIcons[i].setAlpha(alpha);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mIcons[0].getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private ObjectAnimator cancelAnimator(ObjectAnimator animator) {
        if (animator != null) {
            animator.removeAllListeners();
            animator.cancel();
            return null;
        }
        return null;
    }
}
