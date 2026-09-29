package io.fabric.sdk.android.services.persistence;

import java.io.File;

/* loaded from: classes.dex */
public interface FileStore {
    File getCacheDir();

    File getExternalCacheDir();

    File getExternalFilesDir();

    File getFilesDir();
}
