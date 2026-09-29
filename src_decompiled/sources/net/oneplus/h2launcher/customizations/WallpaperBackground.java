package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class WallpaperBackground extends LinearLayout {
    private Drawable mBackground;

    public WallpaperBackground(Context context) {
        this(context, null);
    }

    public WallpaperBackground(Context context, AttributeSet attrs) {
        super(context, attrs);
        Resources res = getResources();
        Resources.Theme theme = context.getTheme();
        View backgroundDim = new View(context);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -1);
        int dimColor = res.getColor(R.color.wallpaper_picker_background_dim, theme);
        backgroundDim.setLayoutParams(lp);
        backgroundDim.setBackgroundColor(dimColor);
        addView(backgroundDim);
    }

    public void setColor(int color) {
        setColor(color, true);
    }

    public void setColor(int color, boolean animated) {
        if (this.mBackground != null && animated) {
            Drawable newBackground = new ColorDrawable(color);
            Drawable[] layers = {this.mBackground, newBackground};
            TransitionDrawable transition = new TransitionDrawable(layers);
            setBackground(transition);
            this.mBackground = newBackground;
            transition.startTransition(225);
            return;
        }
        this.mBackground = new ColorDrawable(color);
        setBackground(this.mBackground);
    }
}
