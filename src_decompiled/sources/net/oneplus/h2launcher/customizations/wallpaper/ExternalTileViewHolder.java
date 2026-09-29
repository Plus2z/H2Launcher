package net.oneplus.h2launcher.customizations.wallpaper;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.ExternalWallpaperTileInfo;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ExternalTileViewHolder extends WallpapersGridAdapter.BaseWallpaperTileViewHolder {
    private static final String TAG = ExternalTileViewHolder.class.getSimpleName();
    private TextView mLabel;

    public ExternalTileViewHolder(View itemView, WallpaperCard wallpaperCard) {
        super(itemView, wallpaperCard);
        this.mLabel = (TextView) itemView.findViewById(R.id.wallpaper_item_label);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter.BaseWallpaperTileViewHolder
    public void bind(WallpaperTileInfo info) {
        if (info == null || info.getType() != WallpaperTileInfo.Type.EXTERNAL) {
            Logger.w(TAG, "invalid wallpaper tile info");
            return;
        }
        if (this.mImageView == null) {
            Logger.w(TAG, "invalid image view");
            return;
        }
        Drawable drawable = info.mThumb;
        if (drawable != null) {
            this.mImageView.setImageDrawable(drawable);
        }
        String label = ((ExternalWallpaperTileInfo) info).getLabel();
        if (this.mLabel != null) {
            this.mLabel.setText(label);
        }
        setupItemView(info);
    }
}
