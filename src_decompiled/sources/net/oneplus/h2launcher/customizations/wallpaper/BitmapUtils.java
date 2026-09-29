package net.oneplus.h2launcher.customizations.wallpaper;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class BitmapUtils {
    private static final String TAG = "BitmapUtils";

    public static int computeSampleSizeLarger(float scale) {
        int initialSize = (int) Math.floor(1.0f / scale);
        if (initialSize <= 1) {
            return 1;
        }
        return initialSize <= 8 ? prevPowerOf2(initialSize) : (initialSize / 8) * 8;
    }

    public static int getRotationFromExif(Context context, Uri uri) {
        return getRotationFromExifHelper(null, 0, context, uri);
    }

    public static int getRotationFromExif(Resources res, int resId) {
        return getRotationFromExifHelper(res, resId, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int getRotationFromExifHelper(android.content.res.Resources r8, int r9, android.content.Context r10, android.net.Uri r11) {
        /*
            net.oneplus.gallery3d.exif.ExifInterface r3 = new net.oneplus.gallery3d.exif.ExifInterface
            r3.<init>()
            r4 = 0
            r0 = 0
            if (r11 == 0) goto L35
            android.content.ContentResolver r6 = r10.getContentResolver()     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            java.io.InputStream r4 = r6.openInputStream(r11)     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            r1.<init>(r4)     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            r3.readExif(r1)     // Catch: java.lang.Throwable -> L95 java.lang.NullPointerException -> L98 java.io.IOException -> L9b
            r0 = r1
        L1a:
            int r6 = net.oneplus.gallery3d.exif.ExifInterface.TAG_ORIENTATION     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            java.lang.Integer r5 = r3.getTagIntValue(r6)     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            if (r5 == 0) goto L43
            short r6 = r5.shortValue()     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            int r6 = net.oneplus.gallery3d.exif.ExifInterface.getRotationForOrientationValue(r6)     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            if (r0 == 0) goto L2f
            r0.close()     // Catch: java.io.IOException -> L85
        L2f:
            if (r4 == 0) goto L34
            r4.close()     // Catch: java.io.IOException -> L87
        L34:
            return r6
        L35:
            java.io.InputStream r4 = r8.openRawResource(r9)     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            r1.<init>(r4)     // Catch: java.io.IOException -> L4f java.lang.NullPointerException -> L64 java.lang.Throwable -> L79
            r3.readExif(r1)     // Catch: java.lang.Throwable -> L95 java.lang.NullPointerException -> L98 java.io.IOException -> L9b
            r0 = r1
            goto L1a
        L43:
            if (r0 == 0) goto L48
            r0.close()     // Catch: java.io.IOException -> L89
        L48:
            if (r4 == 0) goto L4d
            r4.close()     // Catch: java.io.IOException -> L8b
        L4d:
            r6 = 0
            goto L34
        L4f:
            r2 = move-exception
        L50:
            java.lang.String r6 = "BitmapUtils"
            java.lang.String r7 = "Getting exif data failed"
            android.util.Log.w(r6, r7, r2)     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L5c
            r0.close()     // Catch: java.io.IOException -> L8d
        L5c:
            if (r4 == 0) goto L4d
            r4.close()     // Catch: java.io.IOException -> L62
            goto L4d
        L62:
            r6 = move-exception
            goto L4d
        L64:
            r2 = move-exception
        L65:
            java.lang.String r6 = "BitmapUtils"
            java.lang.String r7 = "Getting exif data failed"
            android.util.Log.w(r6, r7, r2)     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L71
            r0.close()     // Catch: java.io.IOException -> L8f
        L71:
            if (r4 == 0) goto L4d
            r4.close()     // Catch: java.io.IOException -> L77
            goto L4d
        L77:
            r6 = move-exception
            goto L4d
        L79:
            r6 = move-exception
        L7a:
            if (r0 == 0) goto L7f
            r0.close()     // Catch: java.io.IOException -> L91
        L7f:
            if (r4 == 0) goto L84
            r4.close()     // Catch: java.io.IOException -> L93
        L84:
            throw r6
        L85:
            r7 = move-exception
            goto L2f
        L87:
            r7 = move-exception
            goto L34
        L89:
            r6 = move-exception
            goto L48
        L8b:
            r6 = move-exception
            goto L4d
        L8d:
            r6 = move-exception
            goto L5c
        L8f:
            r6 = move-exception
            goto L71
        L91:
            r7 = move-exception
            goto L7f
        L93:
            r7 = move-exception
            goto L84
        L95:
            r6 = move-exception
            r0 = r1
            goto L7a
        L98:
            r2 = move-exception
            r0 = r1
            goto L65
        L9b:
            r2 = move-exception
            r0 = r1
            goto L50
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.customizations.wallpaper.BitmapUtils.getRotationFromExifHelper(android.content.res.Resources, int, android.content.Context, android.net.Uri):int");
    }

    public static Bitmap rotateBitmap(Bitmap source, int rotation) {
        if (rotation != 0) {
            int width = source.getWidth();
            int height = source.getHeight();
            Logger.d(TAG, "rotate: rotation=%d", Integer.valueOf(rotation));
            Matrix matrix = new Matrix();
            matrix.setRotate(rotation, width / 2, height / 2);
            return Bitmap.createBitmap(source, 0, 0, width, height, matrix, true);
        }
        return source;
    }

    private static int prevPowerOf2(int n) {
        if (n <= 0) {
            throw new IllegalArgumentException();
        }
        return Integer.highestOneBit(n);
    }
}
