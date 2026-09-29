package net.oneplus.h2launcher.crop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.crop.view.CropImageView;

/* loaded from: classes.dex */
public class UCropView extends FrameLayout {
    private final GestureCropImageView mGestureCropImageView;
    private final OverlayView mViewOverlay;

    public UCropView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public UCropView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, (ViewGroup) this, true);
        this.mGestureCropImageView = (GestureCropImageView) findViewById(R.id.image_view_crop);
        this.mViewOverlay = (OverlayView) findViewById(R.id.view_overlay);
        this.mGestureCropImageView.setCropBoundsChangeListener(new CropImageView.CropBoundsChangeListener() { // from class: net.oneplus.h2launcher.crop.view.UCropView.1
            @Override // net.oneplus.h2launcher.crop.view.CropImageView.CropBoundsChangeListener
            public void onCropBoundsChangedRotate(float cropRatio) {
                if (UCropView.this.mViewOverlay != null) {
                    UCropView.this.mViewOverlay.setTargetAspectRatio(cropRatio);
                    UCropView.this.mViewOverlay.postInvalidate();
                }
            }
        });
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ucrop_UCropView);
        this.mViewOverlay.processStyledAttributes(a);
        this.mGestureCropImageView.processStyledAttributes(a);
        a.recycle();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.mGestureCropImageView;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.mViewOverlay;
    }
}
