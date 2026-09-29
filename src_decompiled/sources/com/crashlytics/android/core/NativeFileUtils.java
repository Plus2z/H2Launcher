package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
final class NativeFileUtils {
    private NativeFileUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readFile(File file) {
        FileInputStream fis;
        byte[] bArr = null;
        FileInputStream fis2 = null;
        try {
            fis = new FileInputStream(file);
        } catch (FileNotFoundException e) {
        } catch (IOException e2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArr = readBytes(fis);
            CommonUtils.closeQuietly(fis);
        } catch (FileNotFoundException e3) {
            fis2 = fis;
            CommonUtils.closeQuietly(fis2);
            return bArr;
        } catch (IOException e4) {
            fis2 = fis;
            CommonUtils.closeQuietly(fis2);
            return bArr;
        } catch (Throwable th2) {
            th = th2;
            fis2 = fis;
            CommonUtils.closeQuietly(fis2);
            throw th;
        }
        return bArr;
    }

    private static byte[] readBytes(InputStream inputStream) throws IOException {
        byte[] b = new byte[1024];
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        while (true) {
            int c = inputStream.read(b);
            if (c != -1) {
                os.write(b, 0, c);
            } else {
                return os.toByteArray();
            }
        }
    }

    private static File filter(File directory, String extension) {
        for (File file : directory.listFiles()) {
            if (file.getName().endsWith(extension)) {
                return file;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] minidumpFromDirectory(File directory) {
        File file = filter(directory, ".dmp");
        return file == null ? new byte[0] : minidumpFromFile(file);
    }

    private static byte[] minidumpFromFile(File file) {
        return readFile(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] binaryImagesJsonFromDirectory(File directory, Context context) throws IOException {
        File file = filter(directory, ".binary_libs");
        if (file == null) {
            return null;
        }
        return binaryImagesJsonFromFile(file, context);
    }

    private static byte[] binaryImagesJsonFromFile(File file, Context context) throws IOException {
        byte[] raw = readFile(file);
        if (raw == null || raw.length == 0) {
            return null;
        }
        return processBinaryImages(context, new String(raw));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] metadataJsonFromDirectory(File directory) {
        File file = filter(directory, ".device_info");
        if (file == null) {
            return null;
        }
        return readFile(file);
    }

    private static byte[] processBinaryImages(Context context, String binaryImages) throws IOException {
        return new BinaryImagesConverter(context, new Sha1FileIdStrategy()).convert(binaryImages);
    }
}
