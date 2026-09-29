package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.graphics.drawable.Drawable;
import java.io.File;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperManager;

/* loaded from: classes.dex */
public class SavedWallpaperTile extends FileWallpaperInfo {
    private int mDbId;

    public SavedWallpaperTile(int dbId, File target, Drawable thumb, int maskColor, int orientation, String name) {
        super(target, thumb, maskColor, orientation, name);
        this.mDbId = dbId;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public void onDelete(WallpaperCard a) {
        SavedWallpaperManager.deleteImage(a.getContext(), this.mDbId);
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo
    public boolean isSelectable() {
        return true;
    }
}
