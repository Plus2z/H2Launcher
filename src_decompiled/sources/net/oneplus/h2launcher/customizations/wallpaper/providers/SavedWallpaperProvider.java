package net.oneplus.h2launcher.customizations.wallpaper.providers;

import android.content.Context;
import java.util.List;
import net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperDatabaseHelper;
import net.oneplus.h2launcher.customizations.wallpaper.SavedWallpaperManager;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.SavedWallpaperTile;

/* loaded from: classes.dex */
public class SavedWallpaperProvider extends WallpaperTileInfoProvider {
    private Context mContext;

    public SavedWallpaperProvider(Context context) {
        SavedWallpaperDatabaseHelper.moveFromCacheDirectoryIfNecessary(context);
        this.mContext = context;
    }

    @Override // net.oneplus.h2launcher.customizations.wallpaper.providers.WallpaperTileInfoProvider
    public void loadTiles() {
        clearTiles();
        List<SavedWallpaperTile> infos = SavedWallpaperManager.loadThumbnailsAndImageIdList(this.mContext);
        for (SavedWallpaperTile info : infos) {
            addTile(info);
        }
    }
}
