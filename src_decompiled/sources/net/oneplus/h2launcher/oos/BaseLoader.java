package net.oneplus.h2launcher.oos;

import android.content.Context;

/* loaded from: classes.dex */
public abstract class BaseLoader {
    Context mContext;

    protected abstract void load(StyleLoaderCallback styleLoaderCallback);

    protected abstract void reload();

    public BaseLoader(Context context) {
        this.mContext = context;
    }
}
