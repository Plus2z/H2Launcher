package net.oneplus.h2launcher.dragndrop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.widget.WidgetCell;

/* loaded from: classes.dex */
public class LivePreviewWidgetCell extends WidgetCell {
    private RemoteViews mPreview;

    public LivePreviewWidgetCell(Context context) {
        this(context, null);
    }

    public LivePreviewWidgetCell(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LivePreviewWidgetCell(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setPreview(RemoteViews view) {
        this.mPreview = view;
    }

    @Override // net.oneplus.h2launcher.widget.WidgetCell
    public void ensurePreview() {
        Bitmap preview;
        if (this.mPreview != null && this.mActiveRequest == null && (preview = generateFromRemoteViews(this.mLauncher, this.mPreview, this.mItem.widgetInfo, this.mPresetPreviewSize, new int[1])) != null) {
            applyPreview(preview, null);
        } else {
            super.ensurePreview();
        }
    }

    public static Bitmap generateFromRemoteViews(Launcher launcher, RemoteViews views, LauncherAppWidgetProviderInfo info, int previewSize, int[] preScaledWidthOut) {
        float scale;
        int bitmapWidth;
        int bitmapHeight;
        DeviceProfile dp = launcher.getDeviceProfile();
        int viewWidth = dp.cellWidthPx * info.spanX;
        int viewHeight = dp.cellHeightPx * info.spanY;
        try {
            View v = views.apply(launcher, new FrameLayout(launcher));
            v.measure(View.MeasureSpec.makeMeasureSpec(viewWidth, LauncherActivityInfoCompat.FLAG_SUSPENDED), View.MeasureSpec.makeMeasureSpec(viewHeight, LauncherActivityInfoCompat.FLAG_SUSPENDED));
            int viewWidth2 = v.getMeasuredWidth();
            int viewHeight2 = v.getMeasuredHeight();
            v.layout(0, 0, viewWidth2, viewHeight2);
            preScaledWidthOut[0] = viewWidth2;
            if (viewWidth2 > previewSize) {
                scale = previewSize / viewWidth2;
                bitmapWidth = previewSize;
                bitmapHeight = (int) (viewHeight2 * scale);
            } else {
                scale = 1.0f;
                bitmapWidth = viewWidth2;
                bitmapHeight = viewHeight2;
            }
            Bitmap preview = Bitmap.createBitmap(bitmapWidth, bitmapHeight, Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(preview);
            c.scale(scale, scale);
            v.draw(c);
            c.setBitmap(null);
            return preview;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // net.oneplus.h2launcher.widget.WidgetCell, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        return true;
    }
}
