package io.fabric.sdk.android.services.cache;

import android.content.Context;

/* loaded from: classes.dex */
public interface ValueLoader<T> {
    T load(Context context) throws Exception;
}
