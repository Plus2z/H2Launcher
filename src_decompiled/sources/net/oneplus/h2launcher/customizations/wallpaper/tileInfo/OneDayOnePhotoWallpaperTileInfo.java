package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.onedayonephoto.OneDayOnePhotoHelper;

/* loaded from: classes.dex */
public class OneDayOnePhotoWallpaperTileInfo extends WallpaperTileInfo {
    public static final String TAG = OneDayOnePhotoWallpaperTileInfo.class.getSimpleName();

    public OneDayOnePhotoWallpaperTileInfo() {
        this.mType = WallpaperTileInfo.Type.ONEDAYONEPHOTO;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onClick(WallpaperCard card, int screen, boolean changed) {
        OneDayOnePhotoHelper.startOneDayOnePhotoPicker(card.getContext(), screen);
    }
}
