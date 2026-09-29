package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.app.WallpaperInfo;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.customizations.WallpaperCard;

/* loaded from: classes.dex */
public class LiveWallpaperTileInfo extends ExternalWallpaperTileInfo {
    WallpaperInfo mInfo;

    public LiveWallpaperTileInfo(Drawable thumbnail, String label, WallpaperInfo info) {
        this.mThumb = thumbnail;
        this.mLabel = label;
        this.mInfo = info;
        this.mIsLive = true;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard a, int screen, boolean changed) {
        Intent preview = new Intent("android.service.wallpaper.CHANGE_LIVE_WALLPAPER");
        preview.putExtra("android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT", this.mInfo.getComponent());
        a.startActivityForResult(preview, 26);
    }

    public Drawable getThumbnail() {
        return this.mThumb;
    }

    public WallpaperInfo getInfo() {
        return this.mInfo;
    }
}
