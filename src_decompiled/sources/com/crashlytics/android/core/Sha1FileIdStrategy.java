package com.crashlytics.android.core;

import com.crashlytics.android.core.BinaryImagesConverter;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class Sha1FileIdStrategy implements BinaryImagesConverter.FileIdStrategy {
    @Override // com.crashlytics.android.core.BinaryImagesConverter.FileIdStrategy
    public String createId(File file) throws IOException {
        return getFileSHA(file.getPath());
    }

    private static String getFileSHA(String path) throws IOException {
        InputStream data;
        InputStream data2 = null;
        try {
            data = new BufferedInputStream(new FileInputStream(path));
        } catch (Throwable th) {
            th = th;
        }
        try {
            String sha = CommonUtils.sha1(data);
            CommonUtils.closeQuietly(data);
            return sha;
        } catch (Throwable th2) {
            th = th2;
            data2 = data;
            CommonUtils.closeQuietly(data2);
            throw th;
        }
    }
}
