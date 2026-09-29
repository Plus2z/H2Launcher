package net.oneplus.h2launcher.customizations.wallpaper;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.oneplus.sdk.wrapper.android.app.OpWallpaperManager;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class BitmapCropTask extends AsyncTask<Void, Void, Boolean> {
    private static final int DEFAULT_COMPRESS_QUALITY = 90;
    private static final String LOGTAG = "BitmapCropTask";
    Context mContext;
    RectF mCropBounds;
    Bitmap mCroppedBitmap;
    String mInFilePath;
    byte[] mInImageBytes;
    int mInResId;
    Uri mInUri;
    boolean mNoCrop;
    OnBitmapCroppedHandler mOnBitmapCroppedHandler;
    Runnable mOnEndRunnable;
    int mOutHeight;
    int mOutWidth;
    Resources mResources;
    int mRotation;
    boolean mSaveCroppedBitmap;
    boolean mSetKeyguardWallpaper;
    boolean mSetWallpaper;

    /* loaded from: classes.dex */
    public interface OnBitmapCroppedHandler {
        void onBitmapCropped(Bitmap bitmap);

        void onBitmapCropped(byte[] bArr);
    }

    public BitmapCropTask(Context c, String filePath, RectF cropBounds, int rotation, int outWidth, int outHeight, boolean setWallpaper, boolean setKeyguardWallpaper, boolean saveCroppedBitmap, Runnable onEndRunnable) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mContext = c;
        this.mInFilePath = filePath;
        init(cropBounds, rotation, outWidth, outHeight, setWallpaper, setKeyguardWallpaper, saveCroppedBitmap, onEndRunnable);
    }

    public BitmapCropTask(byte[] imageBytes, RectF cropBounds, int rotation, int outWidth, int outHeight, boolean setWallpaper, boolean setKeyguardWallpaper, boolean saveCroppedBitmap, Runnable onEndRunnable) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mInImageBytes = imageBytes;
        init(cropBounds, rotation, outWidth, outHeight, setWallpaper, setKeyguardWallpaper, saveCroppedBitmap, onEndRunnable);
    }

    public BitmapCropTask(Context c, Uri inUri, RectF cropBounds, int rotation, int outWidth, int outHeight, boolean setWallpaper, boolean setKeyguardWallpaper, boolean saveCroppedBitmap, Runnable onEndRunnable) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mContext = c;
        this.mInUri = inUri;
        init(cropBounds, rotation, outWidth, outHeight, setWallpaper, setKeyguardWallpaper, saveCroppedBitmap, onEndRunnable);
    }

    public BitmapCropTask(Context c, Resources res, int inResId, RectF cropBounds, int rotation, int outWidth, int outHeight, boolean setWallpaper, boolean setKeyguardWallpaper, boolean saveCroppedBitmap, Runnable onEndRunnable) {
        this.mInUri = null;
        this.mInResId = 0;
        this.mCropBounds = null;
        this.mContext = c;
        this.mInResId = inResId;
        this.mResources = res;
        init(cropBounds, rotation, outWidth, outHeight, setWallpaper, setKeyguardWallpaper, saveCroppedBitmap, onEndRunnable);
    }

    private void init(RectF cropBounds, int rotation, int outWidth, int outHeight, boolean setWallpaper, boolean setKeyguardWallpaper, boolean saveCroppedBitmap, Runnable onEndRunnable) {
        this.mCropBounds = cropBounds;
        this.mRotation = rotation;
        this.mOutWidth = outWidth;
        this.mOutHeight = outHeight;
        this.mSetWallpaper = setWallpaper;
        this.mSetKeyguardWallpaper = setKeyguardWallpaper;
        this.mSaveCroppedBitmap = saveCroppedBitmap;
        this.mOnEndRunnable = onEndRunnable;
    }

    public void setOnBitmapCropped(OnBitmapCroppedHandler handler) {
        this.mOnBitmapCroppedHandler = handler;
    }

    public void setNoCrop(boolean value) {
        this.mNoCrop = value;
    }

    public void setOnEndRunnable(Runnable onEndRunnable) {
        this.mOnEndRunnable = onEndRunnable;
    }

    private InputStream regenerateInputStream() {
        InputStream bufferedInputStream;
        if (this.mInUri == null && this.mInResId == 0 && this.mInFilePath == null && this.mInImageBytes == null) {
            Log.w(LOGTAG, "cannot read original file, no input URI, resource ID, or image byte array given");
        } else {
            try {
                if (this.mInUri != null) {
                    bufferedInputStream = new BufferedInputStream(this.mContext.getContentResolver().openInputStream(this.mInUri));
                } else if (this.mInFilePath != null) {
                    bufferedInputStream = this.mContext.openFileInput(this.mInFilePath);
                } else if (this.mInImageBytes != null) {
                    bufferedInputStream = new BufferedInputStream(new ByteArrayInputStream(this.mInImageBytes));
                } else {
                    bufferedInputStream = new BufferedInputStream(this.mResources.openRawResource(this.mInResId));
                }
                return bufferedInputStream;
            } catch (FileNotFoundException e) {
                Log.w(LOGTAG, "cannot read file: " + this.mInUri.toString(), e);
            }
        }
        return null;
    }

    public Point getImageBounds() {
        InputStream is = regenerateInputStream();
        if (is == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(is, null, options);
        closeSilently(is);
        if (options.outWidth == 0 || options.outHeight == 0) {
            return null;
        }
        return new Point(options.outWidth, options.outHeight);
    }

    public void setCropBounds(RectF cropBounds) {
        this.mCropBounds = cropBounds;
    }

    public Bitmap getCroppedBitmap() {
        return this.mCroppedBitmap;
    }

    public boolean cropBitmap() {
        boolean failure = false;
        WallpaperManager wallpaperManager = (this.mSetWallpaper || this.mSetKeyguardWallpaper) ? WallpaperManager.getInstance(this.mContext.getApplicationContext()) : null;
        if ((this.mSetWallpaper || this.mSetKeyguardWallpaper) && this.mNoCrop) {
            try {
                InputStream is = regenerateInputStream();
                if (is != null) {
                    if (this.mSetWallpaper) {
                        WallpaperUtils.saveImageBytesAsFile(this.mContext, WallpaperUtils.WALLPAPER_NAME, is);
                    } else {
                        OpWallpaperManager.setKeyguardStream(wallpaperManager, is);
                    }
                    closeSilently(is);
                }
            } catch (IOException e) {
                Log.w(LOGTAG, "cannot write stream to wallpaper", e);
                failure = true;
            }
            return !failure;
        }
        Rect roundedTrueCrop = new Rect();
        Matrix rotateMatrix = new Matrix();
        Matrix inverseRotateMatrix = new Matrix();
        Point bounds = getImageBounds();
        if (this.mRotation > 0) {
            rotateMatrix.setRotate(this.mRotation);
            inverseRotateMatrix.setRotate(-this.mRotation);
            this.mCropBounds.roundOut(roundedTrueCrop);
            this.mCropBounds = new RectF(roundedTrueCrop);
            if (bounds == null) {
                Log.w(LOGTAG, "cannot get bounds for image");
                return false;
            }
            float[] rotatedBounds = {bounds.x, bounds.y};
            rotateMatrix.mapPoints(rotatedBounds);
            rotatedBounds[0] = Math.abs(rotatedBounds[0]);
            rotatedBounds[1] = Math.abs(rotatedBounds[1]);
            this.mCropBounds.offset((-rotatedBounds[0]) / 2.0f, (-rotatedBounds[1]) / 2.0f);
            inverseRotateMatrix.mapRect(this.mCropBounds);
            this.mCropBounds.offset(bounds.x / 2, bounds.y / 2);
        }
        this.mCropBounds.roundOut(roundedTrueCrop);
        if (roundedTrueCrop.width() <= 0 || roundedTrueCrop.height() <= 0) {
            Log.w(LOGTAG, "crop has bad values for full size image");
            return false;
        }
        int scaleDownSampleSize = Math.max(1, Math.min(roundedTrueCrop.width() / this.mOutWidth, roundedTrueCrop.height() / this.mOutHeight));
        BitmapRegionDecoder decoder = null;
        InputStream is2 = null;
        try {
            is2 = regenerateInputStream();
        } catch (IOException e2) {
            Log.w(LOGTAG, "cannot open region decoder for file: " + this.mInUri.toString(), e2);
        } finally {
            closeSilently(is2);
        }
        if (is2 == null) {
            Log.w(LOGTAG, "cannot get input stream for uri=" + this.mInUri.toString());
            return false;
        }
        decoder = BitmapRegionDecoder.newInstance(is2, false);
        closeSilently(is2);
        Bitmap crop = null;
        if (decoder != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            if (scaleDownSampleSize > 1) {
                options.inSampleSize = scaleDownSampleSize;
            }
            crop = decoder.decodeRegion(roundedTrueCrop, options);
            decoder.recycle();
        }
        if (crop == null) {
            InputStream is3 = regenerateInputStream();
            Bitmap fullSize = null;
            if (is3 != null) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                if (scaleDownSampleSize > 1) {
                    options2.inSampleSize = scaleDownSampleSize;
                }
                fullSize = BitmapFactory.decodeStream(is3, null, options2);
                closeSilently(is3);
            }
            if (fullSize != null) {
                int scaleDownSampleSize2 = bounds.x / fullSize.getWidth();
                this.mCropBounds.left /= scaleDownSampleSize2;
                this.mCropBounds.top /= scaleDownSampleSize2;
                this.mCropBounds.bottom /= scaleDownSampleSize2;
                this.mCropBounds.right /= scaleDownSampleSize2;
                this.mCropBounds.roundOut(roundedTrueCrop);
                if (roundedTrueCrop.width() > fullSize.getWidth()) {
                    roundedTrueCrop.right = roundedTrueCrop.left + fullSize.getWidth();
                }
                if (roundedTrueCrop.right > fullSize.getWidth()) {
                    int adjustment = roundedTrueCrop.left - Math.max(0, roundedTrueCrop.right - roundedTrueCrop.width());
                    roundedTrueCrop.left -= adjustment;
                    roundedTrueCrop.right -= adjustment;
                }
                if (roundedTrueCrop.height() > fullSize.getHeight()) {
                    roundedTrueCrop.bottom = roundedTrueCrop.top + fullSize.getHeight();
                }
                if (roundedTrueCrop.bottom > fullSize.getHeight()) {
                    int adjustment2 = roundedTrueCrop.top - Math.max(0, roundedTrueCrop.bottom - roundedTrueCrop.height());
                    roundedTrueCrop.top -= adjustment2;
                    roundedTrueCrop.bottom -= adjustment2;
                }
                crop = Bitmap.createBitmap(fullSize, roundedTrueCrop.left, roundedTrueCrop.top, roundedTrueCrop.width(), roundedTrueCrop.height());
            }
        }
        if (crop == null) {
            Log.w(LOGTAG, "cannot decode file: " + this.mInUri.toString());
            return false;
        }
        if ((this.mOutWidth > 0 && this.mOutHeight > 0) || this.mRotation > 0) {
            float[] dimsAfter = {crop.getWidth(), crop.getHeight()};
            rotateMatrix.mapPoints(dimsAfter);
            dimsAfter[0] = Math.abs(dimsAfter[0]);
            dimsAfter[1] = Math.abs(dimsAfter[1]);
            if (this.mOutWidth <= 0 || this.mOutHeight <= 0) {
                this.mOutWidth = Math.round(dimsAfter[0]);
                this.mOutHeight = Math.round(dimsAfter[1]);
            }
            RectF cropRect = new RectF(0.0f, 0.0f, dimsAfter[0], dimsAfter[1]);
            RectF returnRect = new RectF(0.0f, 0.0f, this.mOutWidth, this.mOutHeight);
            Matrix m = new Matrix();
            if (this.mRotation == 0) {
                m.setRectToRect(cropRect, returnRect, Matrix.ScaleToFit.FILL);
            } else {
                Matrix m1 = new Matrix();
                m1.setTranslate((-crop.getWidth()) / 2.0f, (-crop.getHeight()) / 2.0f);
                Matrix m2 = new Matrix();
                m2.setRotate(this.mRotation);
                Matrix m3 = new Matrix();
                m3.setTranslate(dimsAfter[0] / 2.0f, dimsAfter[1] / 2.0f);
                Matrix m4 = new Matrix();
                m4.setRectToRect(cropRect, returnRect, Matrix.ScaleToFit.FILL);
                Matrix c1 = new Matrix();
                c1.setConcat(m2, m1);
                Matrix c2 = new Matrix();
                c2.setConcat(m4, m3);
                m.setConcat(c2, c1);
            }
            Bitmap tmp = Bitmap.createBitmap((int) returnRect.width(), (int) returnRect.height(), Bitmap.Config.ARGB_8888);
            if (tmp != null) {
                Canvas c = new Canvas(tmp);
                Paint p = new Paint();
                p.setFilterBitmap(true);
                c.drawBitmap(crop, m, p);
                crop = tmp;
            }
        }
        if (this.mSaveCroppedBitmap) {
            this.mCroppedBitmap = crop;
        }
        ByteArrayOutputStream tmpOut = new ByteArrayOutputStream(2048);
        if (!crop.compress(Bitmap.CompressFormat.JPEG, 90, tmpOut)) {
            Log.w(LOGTAG, "cannot compress bitmap");
            failure = true;
        } else if ((this.mSetWallpaper || this.mSetKeyguardWallpaper) && wallpaperManager != null) {
            try {
                byte[] outByteArray = tmpOut.toByteArray();
                if (this.mSetWallpaper) {
                    WallpaperUtils.saveImageBytesAsFile(this.mContext, WallpaperUtils.WALLPAPER_NAME, outByteArray);
                } else {
                    OpWallpaperManager.setKeyguardStream(wallpaperManager, new ByteArrayInputStream(outByteArray));
                }
                if (this.mOnBitmapCroppedHandler != null) {
                    this.mOnBitmapCroppedHandler.onBitmapCropped(outByteArray);
                }
            } catch (IOException e3) {
                Log.w(LOGTAG, "cannot write stream to wallpaper", e3);
                failure = true;
            }
        }
        return !failure;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Boolean doInBackground(Void... params) {
        return Boolean.valueOf(cropBitmap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Boolean result) {
        if (this.mOnEndRunnable != null) {
            this.mOnEndRunnable.run();
        }
    }

    private void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (IOException t) {
                Log.w(LOGTAG, "close fail ", t);
            }
        }
    }
}
