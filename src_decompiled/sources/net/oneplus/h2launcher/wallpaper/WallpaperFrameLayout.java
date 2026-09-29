package net.oneplus.h2launcher.wallpaper;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public class WallpaperFrameLayout extends FrameLayout {
    private static final float WALLPAPER_FRAME_ASPECT_RATIO;

    static {
        Context context = LauncherAppState.getInstance().getContext();
        WALLPAPER_FRAME_ASPECT_RATIO = Utilities.getScreenAspectRatio(context, true);
    }

    public WallpaperFrameLayout(Context context) {
        this(context, null, 0, 0);
    }

    public WallpaperFrameLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0, 0);
    }

    public WallpaperFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public WallpaperFrameLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        boolean widthDynamic;
        int measuredWidth;
        int measuredHeight;
        int widthMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int heightMode = View.MeasureSpec.getMode(heightMeasureSpec);
        int receivedWidth = View.MeasureSpec.getSize(widthMeasureSpec);
        int receivedHeight = View.MeasureSpec.getSize(heightMeasureSpec);
        if (heightMode == 1073741824) {
            widthDynamic = widthMode != 1073741824 || receivedWidth == 0;
        } else if (widthMode == 1073741824) {
            widthDynamic = false;
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        if (widthDynamic) {
            int w = (int) (receivedHeight * WALLPAPER_FRAME_ASPECT_RATIO);
            measuredWidth = View.MeasureSpec.makeMeasureSpec(w, LauncherActivityInfoCompat.FLAG_SUSPENDED);
            measuredHeight = heightMeasureSpec;
        } else {
            measuredWidth = widthMeasureSpec;
            int h = (int) (receivedWidth / WALLPAPER_FRAME_ASPECT_RATIO);
            measuredHeight = View.MeasureSpec.makeMeasureSpec(h, LauncherActivityInfoCompat.FLAG_SUSPENDED);
        }
        super.onMeasure(measuredWidth, measuredHeight);
    }
}
