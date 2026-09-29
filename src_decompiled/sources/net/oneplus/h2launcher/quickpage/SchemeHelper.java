package net.oneplus.h2launcher.quickpage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class SchemeHelper {
    private Scheme mCurrentScheme;
    private Scheme mDefaultScheme;
    private Resources mResources;

    public SchemeHelper(Resources res) {
        this.mResources = res;
        this.mDefaultScheme = new Scheme(BitmapFactory.decodeResource(res, R.drawable.header_image_default));
    }

    public void setSchemeFromImage(Bitmap headerImage) {
        this.mCurrentScheme = new Scheme(headerImage);
    }

    public Scheme getCurrentScheme() {
        return this.mCurrentScheme != null ? this.mCurrentScheme : this.mDefaultScheme;
    }

    public void destroySchemes() {
        this.mDefaultScheme.destroy();
        this.mDefaultScheme = null;
        if (this.mCurrentScheme != null) {
            this.mCurrentScheme.destroy();
            this.mCurrentScheme = null;
        }
        this.mResources = null;
    }

    /* loaded from: classes.dex */
    public class Scheme {
        private int backgroundColor;
        private int floatingButtonColor;
        private int headerContourColor;
        private int itemBackground;
        private int widgetBackgroundColor;

        public Scheme(Bitmap headerImage) {
            this.backgroundColor = SchemeHelper.this.mResources.getColor(android.R.color.transparent);
            this.widgetBackgroundColor = SchemeHelper.this.mResources.getColor(R.color.quick_page_widget_background);
            this.itemBackground = SchemeHelper.this.mResources.getColor(R.color.quick_page_item_background_color);
            this.headerContourColor = SchemeHelper.this.mResources.getColor(R.color.quick_page_item_header_contour_color_top);
            this.floatingButtonColor = SchemeHelper.this.mResources.getColor(R.color.floating_button_main_color);
        }

        public int getBackgroundColor() {
            return this.backgroundColor;
        }

        public int getWidgetBackgroundColor() {
            return this.widgetBackgroundColor;
        }

        public int getHeaderContourColor() {
            return this.headerContourColor;
        }

        public int getItemBackground() {
            return this.itemBackground;
        }

        public int getFloatingButtonColor() {
            return this.floatingButtonColor;
        }

        public void destroy() {
        }
    }
}
