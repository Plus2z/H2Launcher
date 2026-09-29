package net.oneplus.h2launcher.wallpaper;

import android.text.TextUtils;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
class SetWallpaperServiceMutex {
    private static final boolean DEBUG = true;
    private static final String TAG = SetWallpaperServiceMutex.class.getSimpleName();
    private static volatile SetWallpaperServiceMutex sInstance;
    private String mName;

    SetWallpaperServiceMutex() {
    }

    public static SetWallpaperServiceMutex getInstance() {
        if (sInstance == null) {
            synchronized (SetWallpaperServiceMutex.class) {
                if (sInstance == null) {
                    sInstance = new SetWallpaperServiceMutex();
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean acquire(String name) {
        boolean z = false;
        synchronized (this) {
            Logger.d(TAG, "[acquire] mName=%s, name=%s", this.mName, name);
            if (!TextUtils.isEmpty(name) && TextUtils.isEmpty(this.mName)) {
                this.mName = name;
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void release(String name) {
        Logger.d(TAG, "[release] mName=%s, name=%s", this.mName, name);
        if (!TextUtils.isEmpty(name) && name.equals(this.mName)) {
            this.mName = null;
        }
    }
}
