package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class WallpaperPreviewItem extends RelativeLayout {
    private static final String TAG = WallpaperPreviewItem.class.getSimpleName();
    protected static final int TRANSITION_DURATION = 225;
    private View mBackground;
    private Drawable mBackgroundDrawable;
    private Context mContext;
    protected int mIndex;
    private ImageView mOverlay;
    private WallpaperPreview mWallpaperPreview;

    public WallpaperPreviewItem(Context context) {
        super(context);
    }

    public WallpaperPreviewItem(Context context, ViewPager pager, int overlayResId, int index) {
        super(context);
        this.mContext = context;
        inflate(context, R.layout.wallpaper_preview_item, this);
        this.mWallpaperPreview = (WallpaperPreview) pager;
        this.mIndex = index;
        this.mOverlay = (ImageView) findViewById(R.id.overlay);
        if (this.mOverlay != null) {
            this.mOverlay.setVisibility(0);
            this.mOverlay.setImageResource(overlayResId);
            this.mOverlay.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        this.mBackground = findViewById(R.id.background);
        if (this.mBackground != null && this.mBackgroundDrawable != null) {
            this.mBackground.setBackground(this.mBackgroundDrawable);
        }
        setTag(Integer.valueOf(index));
        setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreviewItem.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                int index2 = ((Integer) v.getTag()).intValue();
                WallpaperPreviewItem.this.mWallpaperPreview.setCurrentItem(index2);
            }
        });
        float pivotX = this.mIndex == 0 ? 0.0f : getResources().getDimensionPixelSize(R.dimen.picker_preview_item_width);
        setPivotX(pivotX);
        setPivotY(0.0f);
    }

    public void setOverlayCover(Drawable cover) {
        if (this.mOverlay != null) {
            this.mOverlay.setImageResource(0);
            this.mOverlay.setImageDrawable(cover);
        }
    }

    public Bitmap getOverlayCover() {
        if (this.mOverlay != null) {
            Drawable d = this.mOverlay.getDrawable();
            if (d instanceof BitmapDrawable) {
                return ((BitmapDrawable) d).getBitmap();
            }
            Logger.w(TAG, "invalid preview item overlay, %s", d);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPreviewBackground(Drawable wallpaper) {
        Logger.d(TAG, "setPreviewBackground index: %d, wallpaper: %s", Integer.valueOf(this.mIndex), wallpaper);
        if (this.mOverlay == null) {
            this.mBackgroundDrawable = wallpaper;
            return;
        }
        if (wallpaper != null && this.mIndex == 0) {
            int color = getResources().getColor(R.color.wallpaper_picker_lock_screen_mask, this.mContext.getTheme());
            wallpaper.setColorFilter(color, PorterDuff.Mode.SRC_OVER);
        }
        if (this.mBackgroundDrawable != null && wallpaper != null) {
            dumpBitmapInfo(wallpaper);
            dumpBitmapInfo(this.mBackgroundDrawable);
            Drawable fromDrawable = cloneDrawable(this.mBackgroundDrawable);
            Drawable toDrawable = cloneDrawable(wallpaper);
            if (this.mIndex == 1 && StyleManager.getInstance().drawWallpaperColorMask()) {
                toDrawable = composePreviewBackground(toDrawable);
            }
            if (fromDrawable == null) {
                this.mOverlay.setBackground(toDrawable);
                this.mBackgroundDrawable = toDrawable;
                return;
            }
            Drawable[] layers = {fromDrawable, toDrawable};
            TransitionDrawable transition = new TransitionDrawable(layers);
            this.mOverlay.setBackground(transition);
            this.mBackgroundDrawable = toDrawable;
            transition.startTransition(TRANSITION_DURATION);
            return;
        }
        dumpBitmapInfo(this.mBackgroundDrawable);
        Drawable wallpaperDrawable = cloneDrawable(wallpaper);
        if (this.mIndex == 1 && StyleManager.getInstance().drawWallpaperColorMask()) {
            wallpaperDrawable = composePreviewBackground(wallpaperDrawable);
        }
        this.mOverlay.setBackground(wallpaperDrawable);
        this.mBackgroundDrawable = wallpaperDrawable;
    }

    private Drawable composePreviewBackground(Drawable wallpaper) {
        Bitmap masked;
        if (wallpaper == null) {
            Logger.e(TAG, "invalid wallpaper");
            return null;
        }
        if (this.mWallpaperPreview.getMaskColor() == 0) {
            Logger.d(TAG, "return original wallpaper for transparent mask color");
            return wallpaper;
        }
        Context context = getContext();
        Bitmap bitmap = ((BitmapDrawable) wallpaper).getBitmap();
        int maskColor = this.mWallpaperPreview.getMaskColor();
        int orientation = WallpaperUtils.resolveWallpaperOrientation(getContext(), bitmap, true);
        if (orientation == 1) {
            int w = getResources().getDimensionPixelSize(R.dimen.picker_preview_item_width);
            int h = (int) (w / Utilities.getScreenAspectRatio(context, true));
            Bitmap temp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(temp);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            masked = WallpaperUtils.paintWallpaperColorMask(context, temp, maskColor, orientation);
            if (masked != temp) {
                temp.recycle();
            }
        } else {
            masked = WallpaperUtils.paintWallpaperColorMask(context, bitmap, maskColor, orientation);
        }
        return new BitmapDrawable(getResources(), masked);
    }

    private Drawable cloneDrawable(Drawable drawable) {
        Bitmap bitmap;
        if (drawable == null || !(drawable instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null || bitmap.isRecycled()) {
            return null;
        }
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        return new BitmapDrawable(this.mContext.getResources(), bitmap.copy(config, false));
    }

    private void dumpBitmapInfo(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap b = ((BitmapDrawable) drawable).getBitmap();
            boolean isRecycled = b.isRecycled();
            Logger.d(TAG, "bitmap:" + b + " isRecycled:" + isRecycled);
            return;
        }
        Logger.d(TAG, "drawable:" + drawable);
    }

    public Drawable getBackgroundDrawable() {
        return this.mBackgroundDrawable;
    }
}
