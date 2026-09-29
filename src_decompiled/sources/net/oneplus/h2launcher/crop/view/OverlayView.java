package net.oneplus.h2launcher.crop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.View;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class OverlayView extends View {
    public static final int DEFAULT_CROP_GRID_COLUMN_COUNT = 2;
    public static final int DEFAULT_CROP_GRID_ROW_COUNT = 2;
    public static final boolean DEFAULT_OVAL_DIMMED_LAYER = false;
    public static final boolean DEFAULT_SHOW_CROP_COVER_COLOR_MASK = false;
    public static final boolean DEFAULT_SHOW_CROP_FRAME = true;
    public static final boolean DEFAULT_SHOW_CROP_GRID = true;
    private Path mCircularPath;
    private Bitmap mCropCoverImage;
    private int mCropCoverImageMaskColor;
    private Paint mCropCoverPaint;
    private Drawable mCropFrameLandscape;
    private Paint mCropFramePaint;
    private Drawable mCropFramePortrait;
    private int mCropGridColumnCount;
    private Paint mCropGridPaint;
    private int mCropGridRowCount;
    private final RectF mCropViewRect;
    private int mDimmedColor;
    private Paint mDimmedStrokePaint;
    private float[] mGridPoints;
    private boolean mOvalDimmedLayer;
    private boolean mShowCropColorMask;
    private boolean mShowCropFrame;
    private boolean mShowCropGrid;
    private float mTargetAspectRatio;
    protected int mThisHeight;
    protected int mThisWidth;

    public OverlayView(Context context) {
        this(context, null);
    }

    public OverlayView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OverlayView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mCropViewRect = new RectF();
        this.mCropCoverImageMaskColor = 0;
        this.mGridPoints = null;
        this.mCircularPath = new Path();
        this.mDimmedStrokePaint = new Paint(1);
        this.mCropGridPaint = new Paint(1);
        this.mCropFramePaint = new Paint(1);
        this.mCropCoverPaint = new Paint(1);
        init();
    }

    public void setOvalDimmedLayer(boolean ovalDimmedLayer) {
        this.mOvalDimmedLayer = ovalDimmedLayer;
    }

    public void setCropGridRowCount(@IntRange(from = 0) int cropGridRowCount) {
        this.mCropGridRowCount = cropGridRowCount;
        this.mGridPoints = null;
    }

    public void setCropGridColumnCount(@IntRange(from = 0) int cropGridColumnCount) {
        this.mCropGridColumnCount = cropGridColumnCount;
        this.mGridPoints = null;
    }

    public void setShowCropFrame(boolean showCropFrame) {
        this.mShowCropFrame = showCropFrame;
    }

    public void setShowCropGrid(boolean showCropGrid) {
        this.mShowCropGrid = showCropGrid;
    }

    public void setShowCropCoverColorMask(boolean showCropColorMask) {
        this.mShowCropColorMask = showCropColorMask;
    }

    public void setDimmedColor(@ColorInt int dimmedColor) {
        this.mDimmedColor = dimmedColor;
    }

    public void setCropFrameStrokeWidth(@IntRange(from = 0) int width) {
        this.mCropFramePaint.setStrokeWidth(width);
    }

    public void setCropGridStrokeWidth(@IntRange(from = 0) int width) {
        this.mCropGridPaint.setStrokeWidth(width);
    }

    public void setCropFrameColor(@ColorInt int color) {
        this.mCropFramePaint.setColor(color);
    }

    public void setCropGridColor(@ColorInt int color) {
        this.mCropGridPaint.setColor(color);
    }

    public void setTargetAspectRatio(float targetAspectRatio) {
        this.mTargetAspectRatio = targetAspectRatio;
        setupCropBounds();
    }

    public void setCropCoverImage(Bitmap cropCoverImage) {
        this.mCropCoverImage = cropCoverImage;
    }

    public void setCropCoverMaskColor(int cropCoverMaskColor) {
        this.mCropCoverImageMaskColor = cropCoverMaskColor;
        if (this.mShowCropColorMask) {
            invalidate();
        }
    }

    public int getCropCoverMaskColor() {
        return this.mCropCoverImageMaskColor;
    }

    public void setupCropBounds() {
        float cropRectWidth = (getWidth() - getPaddingRight()) - getPaddingLeft();
        float cropRectHeight = cropRectWidth / this.mTargetAspectRatio;
        this.mCropViewRect.set(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + cropRectWidth, getPaddingTop() + cropRectHeight);
        this.mGridPoints = null;
        this.mCircularPath.reset();
        this.mCircularPath.addOval(this.mCropViewRect, Path.Direction.CW);
    }

    protected void init() {
        if (Build.VERSION.SDK_INT < 18 && Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        this.mCropFramePortrait = getContext().getDrawable(R.drawable.bg_crop_vetical);
        this.mCropFrameLandscape = getContext().getDrawable(R.drawable.bg_crop_landscape);
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            int left2 = getPaddingLeft();
            int top2 = getPaddingTop();
            int right2 = getWidth() - getPaddingRight();
            int bottom2 = getHeight() - getPaddingBottom();
            this.mThisWidth = right2 - left2;
            this.mThisHeight = bottom2 - top2;
            setupCropBounds();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawDimmedLayer(canvas);
        drawCropGrid(canvas);
        drawCropCover(canvas);
    }

    protected void drawDimmedLayer(@NonNull Canvas canvas) {
        canvas.save();
        if (this.mOvalDimmedLayer) {
            canvas.clipPath(this.mCircularPath, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.mCropViewRect, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.mDimmedColor);
        canvas.restore();
        if (this.mOvalDimmedLayer) {
            canvas.drawOval(this.mCropViewRect, this.mDimmedStrokePaint);
        }
    }

    protected void drawCropGrid(@NonNull Canvas canvas) {
        if (this.mShowCropGrid) {
            if (this.mGridPoints == null && !this.mCropViewRect.isEmpty()) {
                this.mGridPoints = new float[(this.mCropGridRowCount * 4) + (this.mCropGridColumnCount * 4)];
                int index = 0;
                for (int i = 0; i < this.mCropGridRowCount; i++) {
                    int index2 = index + 1;
                    this.mGridPoints[index] = this.mCropViewRect.left;
                    int index3 = index2 + 1;
                    this.mGridPoints[index2] = (this.mCropViewRect.height() * ((i + 1.0f) / (this.mCropGridRowCount + 1))) + this.mCropViewRect.top;
                    int index4 = index3 + 1;
                    this.mGridPoints[index3] = this.mCropViewRect.right;
                    index = index4 + 1;
                    this.mGridPoints[index4] = (this.mCropViewRect.height() * ((i + 1.0f) / (this.mCropGridRowCount + 1))) + this.mCropViewRect.top;
                }
                for (int i2 = 0; i2 < this.mCropGridColumnCount; i2++) {
                    int index5 = index + 1;
                    this.mGridPoints[index] = (this.mCropViewRect.width() * ((i2 + 1.0f) / (this.mCropGridColumnCount + 1))) + this.mCropViewRect.left;
                    int index6 = index5 + 1;
                    this.mGridPoints[index5] = this.mCropViewRect.top;
                    int index7 = index6 + 1;
                    this.mGridPoints[index6] = (this.mCropViewRect.width() * ((i2 + 1.0f) / (this.mCropGridColumnCount + 1))) + this.mCropViewRect.left;
                    index = index7 + 1;
                    this.mGridPoints[index7] = this.mCropViewRect.bottom;
                }
            }
            if (this.mGridPoints != null) {
                canvas.drawLines(this.mGridPoints, this.mCropGridPaint);
            }
        }
    }

    protected void drawCropCover(@NonNull Canvas canvas) {
        if (this.mCropCoverImage != null) {
            Paint paint = this.mCropCoverPaint;
            if (this.mShowCropColorMask && this.mCropCoverImageMaskColor != 0) {
                int w = this.mCropCoverImage.getWidth();
                int h = this.mCropCoverImage.getHeight();
                Bitmap mask = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                int color = this.mCropCoverImageMaskColor;
                int orientation = this.mTargetAspectRatio > 1.0f ? 1 : 0;
                Bitmap mask2 = WallpaperUtils.paintWallpaperColorMask(getContext(), mask, color, orientation);
                if (mask2 != null) {
                    canvas.drawBitmap(mask2, this.mCropViewRect.left, this.mCropViewRect.top, paint);
                }
            }
            if (this.mShowCropColorMask) {
                canvas.drawBitmap(this.mCropCoverImage, this.mCropViewRect.left, this.mCropViewRect.top, paint);
            } else {
                Rect src = new Rect(0, 0, this.mCropCoverImage.getWidth(), this.mCropCoverImage.getHeight());
                canvas.drawBitmap(this.mCropCoverImage, src, this.mCropViewRect, paint);
            }
        }
        if (this.mShowCropFrame) {
            Drawable cropFrameDrawable = this.mTargetAspectRatio > 1.0f ? this.mCropFrameLandscape : this.mCropFramePortrait;
            Rect rect = new Rect();
            this.mCropViewRect.round(rect);
            adjustCropFrameBoundsIfNecessary(rect);
            cropFrameDrawable.setBounds(rect);
            cropFrameDrawable.draw(canvas);
        }
    }

    private void adjustCropFrameBoundsIfNecessary(Rect rect) {
        if (this.mTargetAspectRatio > 1.0f) {
            Point displaySize = Utilities.getScreenDimensions(getContext(), false);
            Point realDisplaySize = Utilities.getScreenDimensions(getContext(), true);
            if (displaySize.y != realDisplaySize.y) {
                float screenHeightScale = displaySize.y / realDisplaySize.y;
                int height = rect.bottom - rect.top;
                rect.bottom = rect.top + ((int) (height * screenHeightScale));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processStyledAttributes(@NonNull TypedArray a) {
        this.mOvalDimmedLayer = a.getBoolean(3, false);
        this.mDimmedColor = a.getColor(4, getResources().getColor(R.color.ucrop_color_default_dimmed));
        this.mDimmedStrokePaint.setColor(this.mDimmedColor);
        this.mDimmedStrokePaint.setStyle(Paint.Style.STROKE);
        this.mDimmedStrokePaint.setStrokeWidth(1.0f);
        initCropFrameStyle(a);
        this.mShowCropFrame = a.getBoolean(12, true);
        initCropGridStyle(a);
        this.mShowCropGrid = a.getBoolean(9, true);
    }

    private void initCropFrameStyle(@NonNull TypedArray a) {
        int cropFrameStrokeSize = a.getDimensionPixelSize(10, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width));
        int cropFrameColor = a.getColor(11, getResources().getColor(R.color.ucrop_color_default_crop_frame));
        this.mCropFramePaint.setStrokeWidth(cropFrameStrokeSize);
        this.mCropFramePaint.setColor(cropFrameColor);
        this.mCropFramePaint.setStyle(Paint.Style.STROKE);
    }

    private void initCropGridStyle(@NonNull TypedArray a) {
        int cropGridStrokeSize = a.getDimensionPixelSize(5, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width));
        int cropGridColor = a.getColor(6, getResources().getColor(R.color.ucrop_color_default_crop_grid));
        this.mCropGridPaint.setStrokeWidth(cropGridStrokeSize);
        this.mCropGridPaint.setColor(cropGridColor);
        this.mCropGridRowCount = a.getInt(7, 2);
        this.mCropGridColumnCount = a.getInt(8, 2);
    }
}
