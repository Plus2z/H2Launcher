package net.oneplus.h2launcher.crop.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import net.oneplus.h2launcher.crop.callback.BitmapLoadCallback;
import net.oneplus.h2launcher.crop.task.BitmapLoadTask;

/* loaded from: classes.dex */
public class BitmapLoadUtils {
    private static final String TAG = "BitmapLoadUtils";

    public static void decodeBitmapInBackground(@NonNull Context context, @Nullable Uri uri, @Nullable Uri outputUri, int requiredWidth, int requiredHeight, BitmapLoadCallback loadCallback) {
        new BitmapLoadTask(context, uri, outputUri, requiredWidth, requiredHeight, loadCallback).execute(new Void[0]);
    }

    public static Bitmap transformBitmap(@NonNull Bitmap bitmap, @NonNull Matrix transformMatrix) {
        try {
            Bitmap converted = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), transformMatrix, true);
            if (bitmap != converted) {
                bitmap.recycle();
                return converted;
            }
            return bitmap;
        } catch (OutOfMemoryError error) {
            Log.e(TAG, "transformBitmap: ", error);
            return bitmap;
        }
    }

    public static int calculateInSampleSize(@NonNull BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > reqHeight || width > reqWidth) {
            while (true) {
                if (height / inSampleSize <= reqHeight && width / inSampleSize <= reqWidth) {
                    break;
                }
                inSampleSize *= 2;
            }
        }
        return inSampleSize;
    }

    public static int getExifOrientation(@NonNull Context context, @NonNull Uri imageUri) {
        InputStream stream;
        int orientation = 0;
        try {
            stream = context.getContentResolver().openInputStream(imageUri);
        } catch (IOException e) {
            Log.e(TAG, "getExifOrientation: " + imageUri.toString(), e);
        }
        if (stream == null) {
            return 0;
        }
        orientation = new ImageHeaderParser(stream).getOrientation();
        close(stream);
        return orientation;
    }

    public static int exifToDegrees(int exifOrientation) {
        switch (exifOrientation) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    public static int exifToTranslation(int exifOrientation) {
        switch (exifOrientation) {
            case 2:
            case 4:
            case 5:
            case 7:
                return -1;
            case 3:
            case 6:
            default:
                return 1;
        }
    }

    public static void close(@Nullable Closeable c) {
        if (c != null && (c instanceof Closeable)) {
            try {
                c.close();
            } catch (IOException e) {
            }
        }
    }
}
