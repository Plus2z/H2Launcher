package net.oneplus.h2launcher.customizations.wallpaper;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.oneplus.lib.widget.recyclerview.GridLayoutManager;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.oneplus.h2launcher.CheckableFrameLayout;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.providers.ImageWallpaperProvider;
import net.oneplus.h2launcher.customizations.wallpaper.providers.LiveWallpaperProvider;
import net.oneplus.h2launcher.customizations.wallpaper.providers.SavedWallpaperProvider;
import net.oneplus.h2launcher.customizations.wallpaper.providers.ThirdPartyWallpaperProvider;
import net.oneplus.h2launcher.customizations.wallpaper.providers.WallpaperTileInfoProvider;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.OneDayOnePhotoWallpaperTileInfo;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.PickWallpaperTileInfo;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.onedayonephoto.OneDayOnePhotoHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WallpapersRecyclerView extends RecyclerView {
    private static final String TAG = WallpapersRecyclerView.class.getSimpleName();
    private int mCellSpacing;
    private WallpapersGridAdapter mGridAdapter;
    private GridLayoutManager mGridLayoutManager;
    private List<WallpaperTileInfo> mPickWallpaperTiles;
    private List<WallpaperTileInfoProvider> mProviders;

    /* loaded from: classes.dex */
    public interface WallpaperTileInfoFilter {
        boolean filter(WallpaperTileInfo wallpaperTileInfo);
    }

    public WallpapersRecyclerView(Context context) {
        this(context, null, 0);
    }

    public WallpapersRecyclerView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WallpapersRecyclerView(Context context, @Nullable AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mProviders = new ArrayList();
        this.mPickWallpaperTiles = new ArrayList();
        this.mGridAdapter = new WallpapersGridAdapter();
        this.mGridLayoutManager = new GridLayoutManager(getContext(), 3);
        this.mCellSpacing = getResources().getDimensionPixelSize(R.dimen.picker_flow_layout_spacing);
        setLayoutManager(this.mGridLayoutManager);
        setAdapter(this.mGridAdapter);
        addItemDecoration(new SpacingDecoration(this.mCellSpacing));
        this.mProviders.add(new SavedWallpaperProvider(getContext()));
        this.mProviders.add(new ImageWallpaperProvider(getContext()));
        this.mProviders.add(new LiveWallpaperProvider(getContext()));
        this.mProviders.add(new ThirdPartyWallpaperProvider(getContext()));
    }

    public void loadWallpaperThumbnails() {
        Logger.d(TAG, "loadWallpaperThumbnails");
        removeAllWallpaperTiles();
        WallpaperTaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                WallpapersRecyclerView.this.loadAndAddPickWallpaperTiles();
                for (final WallpaperTileInfoProvider provider : WallpapersRecyclerView.this.mProviders) {
                    provider.registerDataSetObserver(new DataSetObserver() { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView.1.1
                        @Override // android.database.DataSetObserver
                        public void onChanged() {
                            int index = provider.getTileCount() - 1;
                            WallpaperTileInfo info = provider.getTile(index);
                            if (info != null) {
                                WallpapersRecyclerView.this.addWallpaperTile(provider.getTile(index));
                            }
                        }
                    });
                    provider.loadTiles();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAndAddPickWallpaperTiles() {
        this.mPickWallpaperTiles.clear();
        this.mPickWallpaperTiles.add(new PickWallpaperTileInfo());
        if (OneDayOnePhotoHelper.oneDayOnePhotoAppExists(getContext())) {
            this.mPickWallpaperTiles.add(new OneDayOnePhotoWallpaperTileInfo());
        }
        for (int i = 0; i < this.mPickWallpaperTiles.size(); i++) {
            addWallpaperTile(this.mPickWallpaperTiles.get(i));
        }
    }

    public void addWallpaperTile(WallpaperTileInfo tileInfo) {
        addWallpaperTiles(Integer.MIN_VALUE, Collections.singletonList(tileInfo));
    }

    public void addWallpaperTiles(final int index, final List<? extends WallpaperTileInfo> tileInfos) {
        Runnable addWallpaperTiles = new Runnable() { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                if (WallpapersRecyclerView.this.mGridAdapter == null) {
                    Logger.e(WallpapersRecyclerView.TAG, "wallpapers grid adapter is null");
                } else if (index == Integer.MIN_VALUE) {
                    WallpapersRecyclerView.this.mGridAdapter.addWallpaperTiles(tileInfos);
                } else {
                    WallpapersRecyclerView.this.mGridAdapter.addWallpaperTiles(index, tileInfos);
                }
            }
        };
        post(addWallpaperTiles);
    }

    public void removeAllWallpaperTiles() {
        if (this.mGridAdapter != null) {
            this.mGridAdapter.removeAllWallpaperTiles();
        }
    }

    public WallpaperTileInfo findWallpaperTileInfo(String name, int orientation) {
        if (this.mGridAdapter == null || TextUtils.isEmpty(name)) {
            return null;
        }
        return this.mGridAdapter.findWallpaperTileInfo(name, orientation);
    }

    public View findWallpaperTileView(WallpaperTileInfo info) {
        View view = null;
        if (info == null) {
            return null;
        }
        int count = getChildCount();
        int i = 0;
        while (true) {
            if (i >= count) {
                break;
            }
            View child = getChildAt(i);
            if (!info.equals(child.getTag())) {
                i++;
            } else {
                view = child;
                break;
            }
        }
        return view;
    }

    public void applyFilter(WallpaperTileInfoFilter filter) {
        if (this.mGridAdapter != null) {
            this.mGridAdapter.applyFilter(filter);
        }
    }

    public void setWallpaperCard(WallpaperCard wallpaperCard) {
        if (this.mGridAdapter != null) {
            this.mGridAdapter.setWallpaperCard(wallpaperCard);
        }
    }

    public void trimWallpaperTileData() {
        for (WallpaperTileInfoProvider provider : this.mProviders) {
            provider.clearTiles();
        }
        post(new Runnable() { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView.3
            @Override // java.lang.Runnable
            public void run() {
                WallpapersRecyclerView.this.removeAllWallpaperTiles();
                WallpapersRecyclerView.this.clearWallpaperTileImages();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearWallpaperTileImages() {
        ImageView image;
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if ((child instanceof CheckableFrameLayout) && (image = (ImageView) child.findViewById(R.id.wallpaper_image)) != null) {
                image.setImageDrawable(null);
            }
        }
    }

    public boolean isMemoryTrimmed() {
        return this.mGridAdapter.getItemCount() == 0;
    }

    public int getPickWallpaperTilesCount() {
        return this.mPickWallpaperTiles.size();
    }

    /* loaded from: classes.dex */
    public class SpacingDecoration extends RecyclerView.ItemDecoration {
        private int mSpacing;

        public SpacingDecoration(int spacing) {
            this.mSpacing = 0;
            this.mSpacing = spacing;
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            super.getItemOffsets(outRect, view, parent, state);
            int position = parent.getChildAdapterPosition(view);
            if (parent.getLayoutManager() instanceof GridLayoutManager) {
                GridLayoutManager layoutManager = (GridLayoutManager) parent.getLayoutManager();
                int spanCount = layoutManager.getSpanCount();
                int column = position % spanCount;
                getGridItemOffsets(outRect, column, spanCount);
            }
        }

        private void getGridItemOffsets(Rect outRect, int column, int spanCount) {
            outRect.left = (this.mSpacing * column) / spanCount;
            outRect.right = (this.mSpacing * ((spanCount - 1) - column)) / spanCount;
            outRect.bottom = this.mSpacing;
        }
    }
}
