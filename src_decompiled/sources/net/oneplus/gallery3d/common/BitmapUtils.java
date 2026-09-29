package net.oneplus.gallery3d.common;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import net.oneplus.gallery3d.exif.ExifInterface;

/* loaded from: classes.dex */
public class BitmapUtils {
    private static final String TAG = "BitmapUtils";

    public static int computeSampleSizeLarger(float scale) {
        int initialSize = (int) Math.floor(1.0f / scale);
        if (initialSize <= 1) {
            return 1;
        }
        return initialSize <= 8 ? Utils.prevPowerOf2(initialSize) : (initialSize / 8) * 8;
    }

    public static int getRotationFromExif(Context context, Uri uri) {
        return getRotationFromExifHelper(null, 0, context, uri);
    }

    public static int getRotationFromExif(Resources res, int resId) {
        return getRotationFromExifHelper(res, resId, null, null);
    }

    private static int getRotationFromExifHelper(Resources res, int resId, Context context, Uri uri) {
        BufferedInputStream bis;
        Integer ori;
        ExifInterface ei = new ExifInterface();
        InputStream is = null;
        BufferedInputStream bis2 = null;
        try {
            try {
                try {
                    if (uri != null) {
                        is = context.getContentResolver().openInputStream(uri);
                        bis = new BufferedInputStream(is);
                        ei.readExif(bis);
                        bis2 = bis;
                    } else {
                        is = res.openRawResource(resId);
                        bis = new BufferedInputStream(is);
                        ei.readExif(bis);
                        bis2 = bis;
                    }
                    ori = ei.getTagIntValue(ExifInterface.TAG_ORIENTATION);
                } catch (Throwable th) {
                    th = th;
                    Utils.closeSilently(bis2);
                    Utils.closeSilently(is);
                    throw th;
                }
            } catch (IOException e) {
                e = e;
                Log.w(TAG, "Getting exif data failed", e);
                Utils.closeSilently(bis2);
                Utils.closeSilently(is);
                return 0;
            } catch (NullPointerException e2) {
                e = e2;
                Log.w(TAG, "Getting exif data failed", e);
                Utils.closeSilently(bis2);
                Utils.closeSilently(is);
                return 0;
            }
        } catch (IOException e3) {
            e = e3;
            bis2 = bis;
            Log.w(TAG, "Getting exif data failed", e);
            Utils.closeSilently(bis2);
            Utils.closeSilently(is);
            return 0;
        } catch (NullPointerException e4) {
            e = e4;
            bis2 = bis;
            Log.w(TAG, "Getting exif data failed", e);
            Utils.closeSilently(bis2);
            Utils.closeSilently(is);
            return 0;
        } catch (Throwable th2) {
            th = th2;
            bis2 = bis;
            Utils.closeSilently(bis2);
            Utils.closeSilently(is);
            throw th;
        }
        if (ori == null) {
            Utils.closeSilently(bis2);
            Utils.closeSilently(is);
            return 0;
        }
        int rotationForOrientationValue = ExifInterface.getRotationForOrientationValue(ori.shortValue());
        Utils.closeSilently(bis2);
        Utils.closeSilently(is);
        return rotationForOrientationValue;
    }
}
