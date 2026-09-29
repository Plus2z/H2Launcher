package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;

/* loaded from: classes.dex */
public class ExternalWallpaperTileInfo extends WallpaperTileInfo {
    protected String mLabel;

    public ExternalWallpaperTileInfo() {
        this.mType = WallpaperTileInfo.Type.EXTERNAL;
    }

    public String getLabel() {
        return this.mLabel;
    }
}
