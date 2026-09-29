package net.oneplus.h2launcher.customizations.wallpaper;

import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WallpapersGridAdapter extends RecyclerView.Adapter {
    protected static final int INDEX_NONE = Integer.MIN_VALUE;
    private static final int ITEM_VIEW_TYPE_EXTERNAL = 3;
    private static final int ITEM_VIEW_TYPE_GALLERY = 1;
    private static final int ITEM_VIEW_TYPE_ONEDAYONEPHOTO = 4;
    private static final int ITEM_VIEW_TYPE_SELECTABLE = 2;
    private static final String TAG = WallpapersGridAdapter.class.getSimpleName();
    private WallpapersRecyclerView.WallpaperTileInfoFilter mFilter;
    private WallpaperCard mWallpaperCard;
    private List<WallpaperTileInfo> mWallpaperTileInfos = new ArrayList();
    private List<WallpaperTileInfo> mFilteredWallpaperTileInfos = new ArrayList();

    public void setWallpaperCard(WallpaperCard wallpaperCard) {
        this.mWallpaperCard = wallpaperCard;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addWallpaperTiles(List<? extends WallpaperTileInfo> tileInfos) {
        this.mWallpaperTileInfos.addAll(tileInfos);
        applyFilter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addWallpaperTiles(int index, List<? extends WallpaperTileInfo> tileInfos) {
        if (index > this.mWallpaperTileInfos.size() || index < 0) {
            Logger.e(TAG, "failed to add wallpaper tiles: index=%d, wallpaper tile info list size=%d", Integer.valueOf(index), Integer.valueOf(this.mWallpaperTileInfos.size()));
        } else {
            this.mWallpaperTileInfos.addAll(index, tileInfos);
            applyFilter();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeAllWallpaperTiles() {
        this.mWallpaperTileInfos.clear();
        applyFilter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyFilter(WallpapersRecyclerView.WallpaperTileInfoFilter filter) {
        this.mFilter = filter;
        applyFilter();
    }

    private void applyFilter() {
        int itemCount = getItemCount();
        if (itemCount > 0) {
            this.mFilteredWallpaperTileInfos.clear();
            notifyItemRangeRemoved(0, itemCount);
        }
        List<WallpaperTileInfo> temp = new ArrayList<>();
        for (WallpaperTileInfo info : this.mWallpaperTileInfos) {
            if (this.mFilter == null || this.mFilter.filter(info)) {
                temp.add(info);
            }
        }
        this.mFilteredWallpaperTileInfos.addAll(temp);
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WallpaperTileInfo findWallpaperTileInfo(String name, int orientation) {
        for (WallpaperTileInfo info : this.mWallpaperTileInfos) {
            if (info.getOrientation() == orientation && name.equals(info.getName())) {
                return info;
            }
        }
        return null;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        switch (viewType) {
            case 1:
                View itemView = inflater.inflate(R.layout.wallpaper_picker_image_picker_item, parent, false);
                return new GalleryTileViewHolder(itemView, this.mWallpaperCard);
            case 2:
                View itemView2 = inflater.inflate(R.layout.wallpaper_picker_item, parent, false);
                return new SelectableTileViewHolder(itemView2, this.mWallpaperCard);
            case 3:
                View itemView3 = inflater.inflate(R.layout.wallpaper_picker_external_item, parent, false);
                return new ExternalTileViewHolder(itemView3, this.mWallpaperCard);
            case 4:
                View itemView4 = inflater.inflate(R.layout.wallpaper_picker_one_day_one_photo_item, parent, false);
                return new OneDayOnePhotoTileViewHolder(itemView4, this.mWallpaperCard);
            default:
                Logger.e(TAG, "invalid item type");
                return null;
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        WallpaperTileInfo info = this.mFilteredWallpaperTileInfos.get(position);
        int itemViewType = getItemViewType(position);
        switch (itemViewType) {
            case 1:
                ((GalleryTileViewHolder) holder).bind(info);
                return;
            case 2:
                ((SelectableTileViewHolder) holder).bind(info);
                return;
            case 3:
                ((ExternalTileViewHolder) holder).bind(info);
                return;
            case 4:
                ((OneDayOnePhotoTileViewHolder) holder).bind(info);
                return;
            default:
                Logger.w(TAG, "unknown item view type: %d", Integer.valueOf(itemViewType));
                return;
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemCount() {
        return this.mFilteredWallpaperTileInfos.size();
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemViewType(int position) {
        WallpaperTileInfo info = this.mFilteredWallpaperTileInfos.get(position);
        if (info != null) {
            switch (info.getType()) {
                case GALLERY:
                    return 1;
                case ONEDAYONEPHOTO:
                    return 4;
                case RESOURCE:
                case FILE:
                    return 2;
                case EXTERNAL:
                    return 3;
                default:
                    return super.getItemViewType(position);
            }
        }
        return super.getItemViewType(position);
    }

    /* loaded from: classes.dex */
    public static abstract class BaseWallpaperTileViewHolder extends RecyclerView.ViewHolder {
        protected ImageView mImageView;
        protected WallpaperCard mWallpaperCard;

        protected abstract void bind(WallpaperTileInfo wallpaperTileInfo);

        public BaseWallpaperTileViewHolder(View itemView, WallpaperCard wallpaperCard) {
            super(itemView);
            this.mWallpaperCard = wallpaperCard;
            this.mImageView = (ImageView) itemView.findViewById(R.id.wallpaper_image);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void setupItemView(WallpaperTileInfo info) {
            this.itemView.setTag(info);
            this.itemView.setOnClickListener(this.mWallpaperCard.getOnThumbnailClickListener());
            if (info.shouldPerformClickOnBound()) {
                info.setShouldPerformClickOnBound(false);
                this.itemView.performClick();
            }
            Size size = WallpaperCard.getDefaultThumbnailSize(this.itemView.getResources());
            this.itemView.getLayoutParams().width = size.getWidth();
            this.itemView.getLayoutParams().height = size.getHeight();
        }
    }
}
