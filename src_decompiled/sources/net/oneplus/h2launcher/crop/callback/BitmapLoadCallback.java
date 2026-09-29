package net.oneplus.h2launcher.crop.callback;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public interface BitmapLoadCallback {
    void onBitmapLoaded(@NonNull Bitmap bitmap);

    void onFailure(@NonNull Exception exc);
}
