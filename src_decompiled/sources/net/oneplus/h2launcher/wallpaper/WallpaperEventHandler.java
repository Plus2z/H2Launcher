package net.oneplus.h2launcher.wallpaper;

import android.content.Context;

/* loaded from: classes.dex */
interface WallpaperEventHandler {
    void onLauncherCreate(Context context);

    void onLauncherStart(Context context);

    void onUserSwitched(Context context);
}
