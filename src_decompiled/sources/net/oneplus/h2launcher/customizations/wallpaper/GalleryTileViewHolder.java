package net.oneplus.h2launcher.customizations.wallpaper;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore;
import android.view.View;
import android.widget.ImageView;
import java.io.File;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.wallpaper.WallpapersGridAdapter;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GalleryTileViewHolder extends WallpapersGridAdapter.BaseWallpaperTileViewHolder {
    private static final String TAG = GalleryTileViewHolder.class.getSimpleName();
    private AsyncTask mLoadLastGalleryPhotoTask;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GalleryTileViewHolder(View itemView, WallpaperCard wallpaperCard) {
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
        Drawable drawable = info.mThumb;
        if (drawable == null && !Utilities.isTaskUnfinished(this.mLoadLastGalleryPhotoTask)) {
            Context context = this.itemView.getContext();
            this.mLoadLastGalleryPhotoTask = new LoadLastGalleryPhotoTask(context, info, this.mImageView).execute(new Void[0]);
        } else {
            this.mImageView.setImageDrawable(drawable);
        }
        this.mImageView.setColorFilter(this.mWallpaperCard.getColorOverlay(), PorterDuff.Mode.SRC_ATOP);
        setupItemView(info);
    }

    /* loaded from: classes.dex */
    private class LoadLastGalleryPhotoTask extends AsyncTask<Void, Void, Bitmap> {
        private WeakReference<Context> mContextRef;
        private WeakReference<ImageView> mImageViewRef;
        private WallpaperTileInfo mInfo;

        private LoadLastGalleryPhotoTask(Context context, WallpaperTileInfo info, ImageView imageView) {
            this.mInfo = info;
            this.mContextRef = new WeakReference<>(context);
            this.mImageViewRef = new WeakReference<>(imageView);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... params) {
            return getThumbnailOfLastPhoto();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            Context context;
            ImageView imageView;
            if (this.mImageViewRef != null && (imageView = this.mImageViewRef.get()) != null) {
                imageView.setImageBitmap(bitmap);
            }
            if (bitmap != null && this.mInfo != null && this.mContextRef != null && (context = this.mContextRef.get()) != null) {
                this.mInfo.mThumb = new BitmapDrawable(context.getResources(), bitmap);
            }
        }

        protected Bitmap getThumbnailOfLastPhoto() {
            Context context;
            if (this.mContextRef == null || (context = this.mContextRef.get()) == null) {
                Logger.e(GalleryTileViewHolder.TAG, "failed to get context from weak reference");
                return null;
            }
            if (!PermissionUtils.hasGrantedPermission(context, "android.permission.READ_EXTERNAL_STORAGE")) {
                Logger.e(GalleryTileViewHolder.TAG, "failed to get thumbnail of last photo since permission[%s] not granted", "android.permission.READ_EXTERNAL_STORAGE");
                return null;
            }
            Cursor cursor = MediaStore.Images.Media.query(context.getContentResolver(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{GlobalSearchDbHelper.COLUMN_ID, "_data", "datetaken"}, null, null, "datetaken DESC LIMIT 1");
            Bitmap thumb = null;
            if (cursor == null) {
                return null;
            }
            if (cursor.moveToNext()) {
                int id = cursor.getInt(0);
                String path = cursor.getString(1);
                thumb = MediaStore.Images.Thumbnails.getThumbnail(context.getContentResolver(), id, 1, null);
                if (thumb != null) {
                    Uri uri = Uri.fromFile(new File(path));
                    int rotation = BitmapUtils.getRotationFromExif(context, uri);
                    if (rotation != 0) {
                        thumb = BitmapUtils.rotateBitmap(thumb, rotation);
                    }
                }
            }
            cursor.close();
            return thumb;
        }
    }
}
