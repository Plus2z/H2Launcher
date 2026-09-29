package net.oneplus.h2launcher.crop.task;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.util.Locale;
import net.oneplus.h2launcher.crop.callback.BitmapLoadCallback;
import net.oneplus.h2launcher.crop.util.BitmapLoadUtils;

/* loaded from: classes.dex */
public class BitmapLoadTask extends AsyncTask<Void, Void, BitmapWorkerResult> {
    private static final String TAG = "BitmapWorkerTask";
    private final BitmapLoadCallback mBitmapLoadCallback;
    private final Context mContext;
    private Uri mInputUri;
    private final Uri mOutputUri;
    private final int mRequiredHeight;
    private final int mRequiredWidth;

    /* loaded from: classes.dex */
    public static class BitmapWorkerResult {
        Bitmap mBitmapResult;
        Exception mBitmapWorkerException;

        public BitmapWorkerResult(@Nullable Bitmap bitmapResult, @Nullable Exception bitmapWorkerException) {
            this.mBitmapResult = bitmapResult;
            this.mBitmapWorkerException = bitmapWorkerException;
        }
    }

    public BitmapLoadTask(@NonNull Context context, @Nullable Uri inputUri, @Nullable Uri outputUri, int requiredWidth, int requiredHeight, BitmapLoadCallback loadCallback) {
        this.mContext = context;
        this.mInputUri = inputUri;
        this.mOutputUri = outputUri;
        this.mRequiredWidth = requiredWidth;
        this.mRequiredHeight = requiredHeight;
        this.mBitmapLoadCallback = loadCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @NonNull
    public BitmapWorkerResult doInBackground(Void... params) {
        if (this.mInputUri == null || this.mOutputUri == null) {
            return new BitmapWorkerResult(null, new NullPointerException("Uri cannot be null"));
        }
        try {
            ParcelFileDescriptor parcelFileDescriptor = this.mContext.getContentResolver().openFileDescriptor(this.mInputUri, "r");
            if (parcelFileDescriptor != null) {
                FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                if (options.outWidth == -1 || options.outHeight == -1) {
                    return new BitmapWorkerResult(null, new IllegalArgumentException("Bounds for bitmap could not be retrieved from Uri"));
                }
                options.inSampleSize = BitmapLoadUtils.calculateInSampleSize(options, this.mRequiredWidth, this.mRequiredHeight);
                options.inJustDecodeBounds = false;
                Bitmap decodeSampledBitmap = null;
                boolean decodeAttemptSuccess = false;
                while (!decodeAttemptSuccess) {
                    try {
                        decodeSampledBitmap = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                        decodeAttemptSuccess = true;
                    } catch (OutOfMemoryError error) {
                        Log.e(TAG, "doInBackground: BitmapFactory.decodeFileDescriptor: ", error);
                        options.inSampleSize++;
                    }
                }
                if (decodeSampledBitmap == null) {
                    return new BitmapWorkerResult(null, new IllegalArgumentException("Bitmap could not be decoded from Uri"));
                }
                if (decodeSampledBitmap.getWidth() > this.mRequiredWidth || decodeSampledBitmap.getHeight() > this.mRequiredHeight) {
                    String message = String.format(Locale.US, "The size [%d:%d] of decode bitmap is invalid", Integer.valueOf(decodeSampledBitmap.getWidth()), Integer.valueOf(decodeSampledBitmap.getHeight()));
                    return new BitmapWorkerResult(null, new IllegalArgumentException(message));
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    BitmapLoadUtils.close(parcelFileDescriptor);
                }
                int exifOrientation = BitmapLoadUtils.getExifOrientation(this.mContext, this.mInputUri);
                int exifDegrees = BitmapLoadUtils.exifToDegrees(exifOrientation);
                int exifTranslation = BitmapLoadUtils.exifToTranslation(exifOrientation);
                Matrix matrix = new Matrix();
                if (exifDegrees != 0) {
                    matrix.preRotate(exifDegrees);
                }
                if (exifTranslation != 1) {
                    matrix.postScale(exifTranslation, 1.0f);
                }
                if (!matrix.isIdentity()) {
                    return new BitmapWorkerResult(BitmapLoadUtils.transformBitmap(decodeSampledBitmap, matrix), null);
                }
                return new BitmapWorkerResult(decodeSampledBitmap, null);
            }
            return new BitmapWorkerResult(null, new NullPointerException("ParcelFileDescriptor was null for given Uri"));
        } catch (FileNotFoundException e) {
            return new BitmapWorkerResult(null, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(@NonNull BitmapWorkerResult result) {
        if (result.mBitmapWorkerException == null) {
            this.mBitmapLoadCallback.onBitmapLoaded(result.mBitmapResult);
        } else {
            this.mBitmapLoadCallback.onFailure(result.mBitmapWorkerException);
        }
    }
}
