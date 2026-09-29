package net.oneplus.h2launcher;

import android.content.Context;
import android.graphics.PorterDuff;
import android.support.v4.graphics.ColorUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class PageIndicatorMarker extends FrameLayout {
    private static final int MARKER_FADE_DURATION = 175;
    private static final String TAG = "PageIndicator";
    private ImageView mActiveMarker;
    private ImageView mInactiveMarker;
    private boolean mIsActive;

    public PageIndicatorMarker(Context context) {
        this(context, null);
    }

    public PageIndicatorMarker(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PageIndicatorMarker(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mIsActive = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mActiveMarker = (ImageView) findViewById(R.id.active);
        this.mInactiveMarker = (ImageView) findViewById(R.id.inactive);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMarkerDrawables(int activeResId, int inactiveResId) {
        this.mActiveMarker.setImageDrawable(getContext().getDrawable(activeResId));
        this.mInactiveMarker.setImageDrawable(getContext().getDrawable(inactiveResId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void activate(boolean immediate) {
        if (immediate) {
            this.mActiveMarker.animate().cancel();
            this.mActiveMarker.setAlpha(1.0f);
            this.mActiveMarker.setScaleX(1.0f);
            this.mActiveMarker.setScaleY(1.0f);
            this.mInactiveMarker.animate().cancel();
            this.mInactiveMarker.setAlpha(0.0f);
        } else {
            if (Float.compare(this.mActiveMarker.getAlpha(), 1.0f) != 0 || Float.compare(this.mActiveMarker.getScaleX(), 1.0f) != 0 || Float.compare(this.mActiveMarker.getScaleY(), 1.0f) != 0) {
                this.mActiveMarker.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(175L).start();
            }
            if (Float.compare(this.mInactiveMarker.getAlpha(), 0.0f) != 0) {
                this.mInactiveMarker.animate().alpha(0.0f).setDuration(175L).start();
            }
        }
        this.mIsActive = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void inactivate(boolean immediate) {
        if (immediate) {
            this.mInactiveMarker.animate().cancel();
            this.mInactiveMarker.setAlpha(1.0f);
            this.mActiveMarker.animate().cancel();
            this.mActiveMarker.setAlpha(0.0f);
            this.mActiveMarker.setScaleX(0.5f);
            this.mActiveMarker.setScaleY(0.5f);
        } else {
            if (Float.compare(this.mInactiveMarker.getAlpha(), 1.0f) != 0) {
                this.mInactiveMarker.animate().alpha(1.0f).setDuration(175L).start();
            }
            if (Float.compare(this.mActiveMarker.getAlpha(), 0.0f) != 0 || Float.compare(this.mActiveMarker.getScaleX(), 0.5f) != 0 || Float.compare(this.mActiveMarker.getScaleY(), 0.5f) != 0) {
                this.mActiveMarker.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setDuration(175L).start();
            }
        }
        this.mIsActive = false;
    }

    boolean isActive() {
        return this.mIsActive;
    }

    public void updateColor(int color) {
        if (color != 0) {
            int color2 = ColorUtils.setAlphaComponent(color, 255);
            if (color2 == getResources().getColor(R.color.super_dark_page_active_indicator_color, null)) {
                this.mActiveMarker.setColorFilter(color2, PorterDuff.Mode.SRC_ATOP);
                this.mInactiveMarker.setColorFilter(color2, PorterDuff.Mode.SRC_ATOP);
            } else if (color2 == -1) {
                this.mActiveMarker.setColorFilter(color2, PorterDuff.Mode.SRC_ATOP);
                this.mInactiveMarker.setColorFilter(color2, PorterDuff.Mode.SRC_ATOP);
            } else {
                Log.e(TAG, "Setting workspace arrow to an unsupported color: #" + Integer.toHexString(color2));
            }
        }
    }
}
