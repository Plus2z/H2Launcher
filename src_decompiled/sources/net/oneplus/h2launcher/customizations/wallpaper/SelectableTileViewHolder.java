package net.oneplus.h2launcher.customizations.wallpaper;

import android.graphics.drawable.Drawable;
import android.view.View;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.Selection;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class SelectableTileViewHolder extends WallpapersGridAdapter.BaseWallpaperTileViewHolder {
    private static final String TAG = SelectableTileViewHolder.class.getSimpleName();
    private Selection mSelection;

    public SelectableTileViewHolder(View itemView, WallpaperCard wallpaperCard) {
        super(itemView, wallpaperCard);
        this.mSelection = (Selection) itemView.findViewById(R.id.selection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter.BaseWallpaperTileViewHolder
    public void bind(WallpaperTileInfo info) {
        if (info == null) {
            Logger.w(TAG, "invalid wallpaper tile info");
            return;
        }
        Drawable drawable = info.mThumb;
        if (this.mImageView == null || drawable == null) {
            Logger.w(TAG, "invalid image view or thumbnail");
            return;
        }
        this.mImageView.setImageDrawable(drawable);
        if (this.mSelection != null) {
            WallpaperTileInfo selectedTile = this.mWallpaperCard.getSelectedTile();
            boolean isSelected = selectedTile != null && selectedTile.equals(info);
            this.mSelection.setSelected(isSelected, 0);
        }
        setupItemView(info);
    }
}
