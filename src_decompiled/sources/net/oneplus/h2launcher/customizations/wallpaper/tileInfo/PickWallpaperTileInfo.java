package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.content.Intent;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;

/* loaded from: classes.dex */
public class PickWallpaperTileInfo extends WallpaperTileInfo {
    public PickWallpaperTileInfo() {
        this.mType = WallpaperTileInfo.Type.GALLERY;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard card, int screen, boolean changed) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        int requestCode = screen == 1 ? 10 : 25;
        card.startActivityForResult(intent, requestCode);
    }
}
