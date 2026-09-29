package net.oneplus.h2launcher.customizations.wallpaper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.AsyncTask;
import android.view.View;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.onedayonephoto.OneDayOnePhotoHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class OneDayOnePhotoTileViewHolder extends WallpapersGridAdapter.BaseWallpaperTileViewHolder {
    private static final String TAG = OneDayOnePhotoTileViewHolder.class.getSimpleName();
    private AsyncTask mLoadOneDayOnePhotoTask;

    public OneDayOnePhotoTileViewHolder(View itemView, WallpaperCard wallpaperCard) {
        super(itemView, wallpaperCard);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter.BaseWallpaperTileViewHolder
    public void bind(WallpaperTileInfo info) {
        if (info == null) {
            Logger.w(TAG, "invalid wallpaper tile info");
            return;
        }
        if (this.mImageView == null) {
            Logger.w(TAG, "invalid image view");
            return;
        }
        Context context = this.mImageView.getContext();
        this.mImageView.setColorFilter(this.mWallpaperCard.getColorOverlay(), PorterDuff.Mode.SRC_ATOP);
        if (!Utilities.isTaskUnfinished(this.mLoadOneDayOnePhotoTask)) {
            this.mLoadOneDayOnePhotoTask = new LoadOneDayOnePhotoTask(context, this.mImageView).execute(new Void[0]);
        }
        setupItemView(info);
    }

    /* loaded from: classes.dex */
    private class LoadOneDayOnePhotoTask extends AsyncTask<Void, Void, Bitmap> {
        private WeakReference<Context> mContextRef;
        private WeakReference<ImageView> mImageViewRef;

        private LoadOneDayOnePhotoTask(Context context, ImageView imageView) {
            this.mContextRef = new WeakReference<>(context);
            this.mImageViewRef = new WeakReference<>(imageView);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... params) {
            Context context;
            if (this.mContextRef == null || (context = this.mContextRef.get()) == null) {
                return null;
            }
            return OneDayOnePhotoHelper.loadLatestThumbnail(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            ImageView imageView;
            if (this.mImageViewRef == null || (imageView = this.mImageViewRef.get()) == null) {
                Logger.e(OneDayOnePhotoTileViewHolder.TAG, "invalid image view");
                return;
            }
            if (bitmap == null || bitmap.isRecycled()) {
                Logger.w(OneDayOnePhotoTileViewHolder.TAG, "one day one photo thumbnail not found, set default icon");
                imageView.setImageResource(R.drawable.onedayonephoto);
            } else {
                imageView.setImageBitmap(bitmap);
                Logger.d(OneDayOnePhotoTileViewHolder.TAG, "one day one photo thumbnail: W=%d, H=%d", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
            }
        }
    }
}
