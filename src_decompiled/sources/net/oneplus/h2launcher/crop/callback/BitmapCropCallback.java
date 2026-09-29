package net.oneplus.h2launcher.crop.callback;

import android.support.annotation.NonNull;

/* loaded from: classes.dex */
public interface BitmapCropCallback {
    void onBitmapCropped();

    void onCropFailure(@NonNull Exception exc);
}
