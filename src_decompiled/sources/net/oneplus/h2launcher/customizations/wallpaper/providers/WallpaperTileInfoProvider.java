package net.oneplus.h2launcher.customizations.wallpaper.providers;

import android.database.DataSetObserver;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;

/* loaded from: classes.dex */
public abstract class WallpaperTileInfoProvider {
    private DataSetObserver mDataSetObserver;
    private List<WallpaperTileInfo> mTiles = new ArrayList();

    public abstract void loadTiles();

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObserver = dataSetObserver;
    }

    public void addTile(WallpaperTileInfo tileInfo) {
        this.mTiles.add(tileInfo);
        if (this.mDataSetObserver != null) {
            this.mDataSetObserver.onChanged();
        }
    }

    public WallpaperTileInfo getTile(int index) {
        if (index < 0 || index >= this.mTiles.size()) {
            return null;
        }
        return this.mTiles.get(index);
    }

    public void clearTiles() {
        if (this.mTiles != null && !this.mTiles.isEmpty()) {
            for (WallpaperTileInfo info : this.mTiles) {
                info.mThumb = null;
            }
            this.mTiles.clear();
        }
    }

    public int getTileCount() {
        return this.mTiles.size();
    }
}
