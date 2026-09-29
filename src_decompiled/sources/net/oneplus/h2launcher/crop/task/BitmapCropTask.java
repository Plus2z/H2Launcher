package net.oneplus.h2launcher.crop.task;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.OutputStream;
import net.oneplus.h2launcher.crop.callback.BitmapCropCallback;
import net.oneplus.h2launcher.crop.util.BitmapLoadUtils;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class BitmapCropTask extends AsyncTask<Void, Void, Exception> {
    private static final String TAG = BitmapCropTask.class.getSimpleName();
    private final Bitmap.CompressFormat mCompressFormat;
    private final int mCompressQuality;
    private final Context mContext;
    private final BitmapCropCallback mCropCallback;
    private final RectF mCropRect;
    private float mCurrentAngle;
    private final RectF mCurrentImageRect;
    private float mCurrentScale;
    private final int mMaxResultImageSizeX;
    private final int mMaxResultImageSizeY;
    private final Uri mOutputUri;
    private final Matrix mTempMatrix = new Matrix();
    private Bitmap mViewBitmap;

    public BitmapCropTask(@NonNull Context context, @Nullable Bitmap viewBitmap, @NonNull RectF cropRect, @NonNull RectF currentImageRect, float currentScale, float currentAngle, int maxResultImageSizeX, int maxResultImageSizeY, @NonNull Bitmap.CompressFormat compressFormat, int compressQuality, @NonNull Uri outputUri, @Nullable BitmapCropCallback cropCallback) {
        this.mContext = context;
        this.mViewBitmap = viewBitmap;
        this.mCropRect = cropRect;
        this.mCurrentImageRect = currentImageRect;
        this.mCurrentScale = currentScale;
        this.mCurrentAngle = currentAngle;
        this.mMaxResultImageSizeX = maxResultImageSizeX;
        this.mMaxResultImageSizeY = maxResultImageSizeY;
        this.mCompressFormat = compressFormat;
        this.mCompressQuality = compressQuality;
        this.mOutputUri = outputUri;
        this.mCropCallback = cropCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @Nullable
    public Exception doInBackground(Void... params) {
        if (this.mViewBitmap == null || this.mViewBitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is null or already recycled");
        }
        if (this.mCurrentImageRect.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            if (this.mMaxResultImageSizeX > 0 && this.mMaxResultImageSizeY > 0) {
                resize();
            }
            if (this.mCurrentAngle != 0.0f) {
                rotate();
            }
            crop();
            OutputStream outputStream = null;
            try {
                outputStream = this.mContext.getContentResolver().openOutputStream(this.mOutputUri);
                this.mViewBitmap.compress(this.mCompressFormat, this.mCompressQuality, outputStream);
                this.mViewBitmap.recycle();
                this.mViewBitmap = null;
                return null;
            } catch (Exception e) {
                return e;
            } finally {
                BitmapLoadUtils.close(outputStream);
            }
        } catch (OutOfMemoryError error) {
            Logger.e(TAG, "Failed to crop image, error: %s", error.getMessage());
            return new RuntimeException(error.getMessage());
        }
    }

    private void resize() {
        float cropWidth = this.mCropRect.width() / this.mCurrentScale;
        float cropHeight = this.mCropRect.height() / this.mCurrentScale;
        if (cropWidth > this.mMaxResultImageSizeX || cropHeight > this.mMaxResultImageSizeY) {
            float scaleX = this.mMaxResultImageSizeX / cropWidth;
            float scaleY = this.mMaxResultImageSizeY / cropHeight;
            float resizeScale = Math.min(scaleX, scaleY);
            Bitmap resizedBitmap = Bitmap.createScaledBitmap(this.mViewBitmap, Math.round(this.mViewBitmap.getWidth() * resizeScale), Math.round(this.mViewBitmap.getHeight() * resizeScale), false);
            if (this.mViewBitmap != resizedBitmap) {
                this.mViewBitmap.recycle();
            }
            this.mViewBitmap = resizedBitmap;
            this.mCurrentScale /= resizeScale;
        }
    }

    private void rotate() {
        this.mTempMatrix.reset();
        this.mTempMatrix.setRotate(this.mCurrentAngle, this.mViewBitmap.getWidth() / 2, this.mViewBitmap.getHeight() / 2);
        Bitmap rotatedBitmap = Bitmap.createBitmap(this.mViewBitmap, 0, 0, this.mViewBitmap.getWidth(), this.mViewBitmap.getHeight(), this.mTempMatrix, true);
        if (this.mViewBitmap != rotatedBitmap) {
            this.mViewBitmap.recycle();
        }
        this.mViewBitmap = rotatedBitmap;
    }

    private void crop() {
        int top = Math.round((this.mCropRect.top - this.mCurrentImageRect.top) / this.mCurrentScale);
        int left = Math.round((this.mCropRect.left - this.mCurrentImageRect.left) / this.mCurrentScale);
        int width = Math.round(this.mCropRect.width() / this.mCurrentScale);
        int height = Math.round(this.mCropRect.height() / this.mCurrentScale);
        int top2 = Math.max(0, top);
        int left2 = Math.max(0, left);
        this.mViewBitmap = Bitmap.createBitmap(this.mViewBitmap, left2, top2, Math.min(width, this.mViewBitmap.getWidth() - left2), Math.min(height, this.mViewBitmap.getHeight() - top2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(@Nullable Exception result) {
        if (this.mCropCallback != null) {
            if (result == null) {
                this.mCropCallback.onBitmapCropped();
            } else {
                this.mCropCallback.onCropFailure(result);
            }
        }
    }
}
