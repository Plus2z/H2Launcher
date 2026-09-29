package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class WallpaperPreviewHelper {
    private static WallpaperPreviewHelper sInstance;
    private final float mWallpaperPreviewPageFraction;
    private final float mWallpaperPreviewPageMarginFraction;
    private final int mWallpaperPreviewPageMarginPx;
    private final int mWallpaperPreviewWidth;

    public static WallpaperPreviewHelper getInstance() {
        return sInstance;
    }

    public static void init(Context context) {
        sInstance = new WallpaperPreviewHelper(context);
    }

    private WallpaperPreviewHelper(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        Resources res = context.getResources();
        int previewSideMargin = res.getDimensionPixelSize(R.dimen.picker_preview_side_margin);
        int previewItemMargin = res.getDimensionPixelSize(R.dimen.picker_preview_item_margin);
        int previewItemWidth = res.getDimensionPixelSize(R.dimen.picker_preview_item_width);
        int smallPreviewItemWidth = res.getDimensionPixelSize(R.dimen.picker_preview_item_width_small);
        this.mWallpaperPreviewWidth = metrics.widthPixels - (previewSideMargin * 2);
        this.mWallpaperPreviewPageFraction = ((previewItemMargin * 2) + previewItemWidth) / this.mWallpaperPreviewWidth;
        this.mWallpaperPreviewPageMarginPx = (this.mWallpaperPreviewWidth - ((previewItemMargin * 2) + previewItemWidth)) - ((previewItemMargin * 2) + smallPreviewItemWidth);
        this.mWallpaperPreviewPageMarginFraction = this.mWallpaperPreviewPageMarginPx / this.mWallpaperPreviewWidth;
    }

    public float getWallpaperPreviewPageFraction() {
        return this.mWallpaperPreviewPageFraction;
    }

    public float getWallpaperPreviewPageMarginFraction() {
        return this.mWallpaperPreviewPageMarginFraction;
    }

    public int getWallpaperPreviewPageMarginPx() {
        return this.mWallpaperPreviewPageMarginPx;
    }

    public int getWallpaperPreviewWidth() {
        return this.mWallpaperPreviewWidth;
    }
}
