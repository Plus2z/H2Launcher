package net.oneplus.h2launcher.customizations.wallpaper;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.crop.UCrop;
import net.oneplus.h2launcher.crop.view.CropImageView;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.UriWallpaperInfo;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class SetWallpaperActivity extends Activity {
    private static final String TAG = SetWallpaperActivity.class.getSimpleName();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTheme(Utilities.isDarkModeTheme(this) ? R.style.SetWallpaperDark : R.style.SetWallpaper);
        LauncherAppState.setApplicationContext(getApplicationContext());
        LauncherAppState.getInstance().getContext();
        Intent intent = getIntent();
        if (!"android.intent.action.ATTACH_DATA".equals(intent.getAction())) {
            finish();
            return;
        }
        if (savedInstanceState == null) {
            Uri source = intent.getData();
            if (source == null) {
                Logger.e(TAG, "source uri is empty");
                finish();
            } else {
                Logger.d(TAG, "source uri=%s", source);
                launchCropActivity(source);
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        WallpaperUtils.purgeCropFiles(getApplicationContext());
        super.finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (data == null) {
            Logger.d(TAG, "invalid data");
            finish();
            return;
        }
        if (resultCode != -1) {
            Logger.d(TAG, "invalid result code: %d", Integer.valueOf(requestCode));
            finish();
            return;
        }
        List<UriWallpaperInfo> outputUriInfos = new ArrayList<>();
        Uri srcUri = UCrop.getInput(data);
        Uri uri = UCrop.getOutput(data);
        int maskColor = UCrop.getOutputMaskColor(data);
        int orientation = UCrop.getOutputCropAspectRatio(data) > 1.0f ? 1 : 0;
        outputUriInfos.add(new UriWallpaperInfo(srcUri, uri, maskColor, orientation));
        Uri uri2 = UCrop.getOutputSecondary(data);
        if (uri2 != null) {
            int maskColor2 = UCrop.getOutputMaskColorSecondary(data);
            int orientation2 = UCrop.getOutputCropAspectRatioSecondary(data) > 1.0f ? 1 : 0;
            outputUriInfos.add(new UriWallpaperInfo(srcUri, uri2, maskColor2, orientation2));
        }
        new SaveUriWallpapers(this, outputUriInfos, 1).execute(new Void[0]);
    }

    private void launchCropActivity(Uri source) {
        UCrop uCrop;
        File output2 = null;
        try {
            File directory = getFilesDir();
            File output = File.createTempFile("crop_", null, directory);
            if (StyleManager.isSimplifiedLayout()) {
                output2 = File.createTempFile("crop_", null, directory);
                Logger.d(TAG, output2.getPath());
            }
            if (StyleManager.isSimplifiedLayout()) {
                uCrop = UCrop.of(source, Uri.fromFile(output), Uri.fromFile(output2));
            } else {
                uCrop = UCrop.of(source, Uri.fromFile(output));
            }
            Context context = getApplicationContext();
            int orientation = PreferencesHelper.getBlurWallpaperSettings(context).orientation;
            if (orientation == 0) {
                uCrop.withAspectRatio(CropImageView.PORTRAIT_IMAGE_ASPECT_RATIO, 1.0f);
            } else {
                uCrop.withAspectRatio(CropImageView.LANDSCAPE_IMAGE_ASPECT_RATIO, 1.0f);
            }
            int w = getResources().getDimensionPixelSize(R.dimen.cropper_preview_item_width);
            int h = (int) (w / Utilities.getScreenAspectRatio(context, true));
            int cropCoverResId = getCropCoverResId();
            Bitmap bitmap = BitmapFactory.decodeResource(getResources(), cropCoverResId);
            Bitmap cropCover = Bitmap.createScaledBitmap(bitmap, w, h, false);
            if (cropCover != bitmap) {
                bitmap.recycle();
            }
            UCrop.Options options = new UCrop.Options();
            options.setShowCropGrid(false);
            options.setShowCropCoverColorMask(StyleManager.isSimplifiedLayout());
            options.setCropCoverImage(cropCover);
            uCrop.withOptions(options);
            uCrop.start(this, 15);
        } catch (IOException e) {
            Logger.e(TAG, "failed to create temp crop file(s)");
        }
    }

    private int getCropCoverResId() {
        String deviceTag = Utilities.getDeviceTag();
        char c = 65535;
        switch (deviceTag.hashCode()) {
            case 46946387:
                if (deviceTag.equals(Utilities.DEVICE_17801)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return R.drawable.crop_cover_simplified_17801;
            default:
                return R.drawable.crop_cover_simplified;
        }
    }

    /* loaded from: classes.dex */
    private class SaveUriWallpapers extends AsyncTask<Void, Void, Boolean> {
        private WeakReference<Context> mContextRef;
        private ProgressDialog mLoadingProgressDialog;
        private int mScreen;
        private List<UriWallpaperInfo> mUriWallpaperInfos;

        SaveUriWallpapers(Context context, List<UriWallpaperInfo> infos, int screen) {
            if (infos == null || infos.isEmpty()) {
                Logger.e(SetWallpaperActivity.TAG, "invalid uri wallpaper infos");
                cancel(true);
            }
            this.mContextRef = new WeakReference<>(context);
            this.mUriWallpaperInfos = infos;
            this.mScreen = screen;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (this.mLoadingProgressDialog != null && this.mLoadingProgressDialog.isShowing()) {
                this.mLoadingProgressDialog.dismiss();
            }
            Context context = this.mContextRef.get();
            if (context == null) {
                Logger.d(SetWallpaperActivity.TAG, "invalid context");
                cancel(true);
                return;
            }
            this.mLoadingProgressDialog = new ProgressDialog(context);
            this.mLoadingProgressDialog.setMessage(context.getString(R.string.saving_wallpaper));
            this.mLoadingProgressDialog.setIndeterminate(false);
            this.mLoadingProgressDialog.setCancelable(false);
            this.mLoadingProgressDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... args) {
            Context context = this.mContextRef.get();
            if (context == null) {
                Logger.e(SetWallpaperActivity.TAG, "invalid context");
                return false;
            }
            UriWallpaperInfo primary = this.mUriWallpaperInfos.get(0);
            BlurWallpaperSettings settings = PreferencesHelper.getBlurWallpaperSettings(context);
            settings.notify = false;
            if (StyleManager.isSimplifiedLayout()) {
                settings.maskColor = primary.getMaskColor();
                settings.orientation = primary.getOrientation();
            }
            Logger.d(SetWallpaperActivity.TAG, "settings=%s", settings);
            PreferencesHelper.setBlurWallpaperSettings(context, settings);
            WallpaperImageCache.clear();
            int homeScreenOrientation = settings.orientation;
            String serialNumber = String.valueOf(System.currentTimeMillis());
            for (UriWallpaperInfo info : this.mUriWallpaperInfos) {
                info.updateMetaData(serialNumber);
                info.loadImage(context, this.mScreen);
                info.onBeforeSave(homeScreenOrientation);
                info.onSave(context, this.mScreen);
            }
            WallpaperColor wallpaperColor = new WallpaperColor(0, primary.getMaskColor(), settings.blurEnabled);
            PreferencesHelper.setWallpaperColor(context, wallpaperColor);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            if (this.mLoadingProgressDialog != null) {
                this.mLoadingProgressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: net.oneplus.h2launcher.customizations.wallpaper.SetWallpaperActivity.SaveUriWallpapers.1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialog) {
                        SetWallpaperActivity.this.finish();
                    }
                });
                this.mLoadingProgressDialog.dismiss();
                this.mLoadingProgressDialog = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Boolean aBoolean) {
            SetWallpaperActivity.this.finish();
        }
    }
}
