package net.oneplus.h2launcher.crop.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import net.oneplus.h2launcher.crop.util.RotationGestureDetector;

/* loaded from: classes.dex */
public class GestureCropImageView extends CropImageView {
    private static final int DOUBLE_TAP_ZOOM_DURATION = 200;
    private int mDoubleTapScaleSteps;
    private GestureDetector mGestureDetector;
    private boolean mIsRotateEnabled;
    private boolean mIsScaleEnabled;
    private float mMidPntX;
    private float mMidPntY;
    private RotationGestureDetector mRotateDetector;
    private ScaleGestureDetector mScaleDetector;

    public GestureCropImageView(Context context) {
        super(context);
        this.mIsRotateEnabled = true;
        this.mIsScaleEnabled = true;
        this.mDoubleTapScaleSteps = 5;
    }

    public GestureCropImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GestureCropImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mIsRotateEnabled = true;
        this.mIsScaleEnabled = true;
        this.mDoubleTapScaleSteps = 5;
    }

    public void setScaleEnabled(boolean scaleEnabled) {
        this.mIsScaleEnabled = scaleEnabled;
    }

    public boolean isScaleEnabled() {
        return this.mIsScaleEnabled;
    }

    public void setRotateEnabled(boolean rotateEnabled) {
        this.mIsRotateEnabled = rotateEnabled;
    }

    public boolean isRotateEnabled() {
        return this.mIsRotateEnabled;
    }

    public void setDoubleTapScaleSteps(int doubleTapScaleSteps) {
        this.mDoubleTapScaleSteps = doubleTapScaleSteps;
    }

    public int getDoubleTapScaleSteps() {
        return this.mDoubleTapScaleSteps;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if ((event.getAction() & 255) == 0) {
            cancelAllAnimations();
        }
        if (event.getPointerCount() > 1) {
            this.mMidPntX = (event.getX(0) + event.getX(1)) / 2.0f;
            this.mMidPntY = (event.getY(0) + event.getY(1)) / 2.0f;
        }
        this.mGestureDetector.onTouchEvent(event);
        if (this.mIsScaleEnabled) {
            this.mScaleDetector.onTouchEvent(event);
        }
        if (this.mIsRotateEnabled) {
            this.mRotateDetector.onTouchEvent(event);
        }
        if ((event.getAction() & 255) == 1) {
            setImageToWrapCropBounds();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.crop.view.TransformImageView
    public void init() {
        super.init();
        setupGestureListeners();
    }

    protected float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.mDoubleTapScaleSteps));
    }

    private void setupGestureListeners() {
        this.mGestureDetector = new GestureDetector(getContext(), new GestureListener(), null, true);
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
        this.mRotateDetector = new RotationGestureDetector(new RotateListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector detector) {
            GestureCropImageView.this.postScale(detector.getScaleFactor(), GestureCropImageView.this.mMidPntX, GestureCropImageView.this.mMidPntY);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent e) {
            GestureCropImageView.this.zoomImageToPosition(GestureCropImageView.this.getDoubleTapTargetScale(), e.getX(), e.getY(), 200L);
            return super.onDoubleTap(e);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            GestureCropImageView.this.postTranslate(-distanceX, -distanceY);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class RotateListener extends RotationGestureDetector.SimpleOnRotationGestureListener {
        private RotateListener() {
        }

        @Override // net.oneplus.h2launcher.crop.util.RotationGestureDetector.SimpleOnRotationGestureListener, net.oneplus.h2launcher.crop.util.RotationGestureDetector.OnRotationGestureListener
        public boolean onRotation(RotationGestureDetector rotationDetector) {
            GestureCropImageView.this.postRotate(rotationDetector.getAngle(), GestureCropImageView.this.mMidPntX, GestureCropImageView.this.mMidPntY);
            return true;
        }
    }
}
