package net.oneplus.h2launcher.customizations.wallpaper;

import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.v4.content.FileProvider;
import android.widget.Toast;
import com.oneplus.sdk.wrapper.android.app.OpWallpaperManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.dynamicicon.DynamicIconTextConfig;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;

/* loaded from: classes.dex */
public class SetLockscreenWallpaperActivity extends Activity {
    private static final String FILE_PROVIDER_AHTHORITY = "net.oneplus.fileprovider";
    private static final int REQUEST_CROP_WALLPAPER = 0;
    private static final String STATE_IMAGE_URI = "imageUri";
    private static final String TAG = SetLockscreenWallpaperActivity.class.getSimpleName();
    private static final String TEMP_WALLPAPER_DIR = "temp";
    private static final String TEMP_WALLPAPER_FILE = "temp_wp.jpg";
    private AsyncTask mSaveFileTask;
    private Uri mTempUri;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!"android.intent.action.ATTACH_DATA".equals(getIntent().getAction())) {
            finish();
            return;
        }
        if (savedInstanceState != null) {
            String imageUri = savedInstanceState.getString(STATE_IMAGE_URI);
            if (imageUri != null) {
                this.mTempUri = Uri.parse(imageUri);
                return;
            }
            return;
        }
        if (!PermissionUtils.hasGrantedPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            PermissionUtils.requestPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE", PermissionUtils.STORAGE_PERMISSION_REQUEST);
        } else {
            decodeAndSaveFile();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        if (this.mTempUri != null) {
            outState.putString(STATE_IMAGE_URI, this.mTempUri.toString());
        }
        super.onSaveInstanceState(outState);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 0 && resultCode == -1) {
            if (data != null) {
                this.mTempUri = data.getData();
            }
            String str = TAG;
            Object[] objArr = new Object[1];
            objArr[0] = this.mTempUri == null ? "null" : this.mTempUri;
            Logger.d(str, "[onActivityResult] mTempUri=%s", objArr);
            if (this.mTempUri == null) {
                Logger.w(TAG, "cropped wallpaper does not exist");
                String msg = getString(R.string.cannot_load_photo);
                Toast.makeText(getApplicationContext(), msg, 0).show();
                deleteTempFile();
                finish();
                return;
            }
            new TempFileLoader().execute(new Void[0]);
            return;
        }
        deleteTempFile();
        finish();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        switch (requestCode) {
            case PermissionUtils.STORAGE_PERMISSION_REQUEST /* 202 */:
                for (int i = 0; i < permissions.length; i++) {
                    if (permissions[i].equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                        if (grantResults[i] == 0) {
                            decodeAndSaveFile();
                        } else {
                            finish();
                        }
                    }
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (Utilities.isTaskUnfinished(this.mSaveFileTask)) {
            this.mSaveFileTask.cancel(true);
        }
        deleteTempFile();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    private void decodeAndSaveFile() {
        Uri fileUri = getIntent().getData();
        this.mSaveFileTask = new SaveFileTask(fileUri).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri getTempFile() {
        File dir = new File(getFilesDir(), "temp");
        if (!dir.exists() && dir.mkdirs()) {
            Logger.d(TAG, "created temp wallpaper file dir successfully");
        }
        File file = new File(dir, TEMP_WALLPAPER_FILE);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                Logger.w(TAG, "failed to create temp file: %s, error: %s", file.getPath(), e.getMessage());
            }
        }
        Uri contentUri = FileProvider.getUriForFile(this, FILE_PROVIDER_AHTHORITY, file);
        String str = TAG;
        Object[] objArr = new Object[1];
        objArr[0] = contentUri == null ? "null" : contentUri;
        Logger.d(str, "contentUri=%s", objArr);
        return contentUri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteTempFile() {
        if (this.mTempUri != null) {
            File file = new File(this.mTempUri.getPath());
            if (file.exists()) {
                if (!file.delete()) {
                    Logger.d(TAG, "failed to delete temp file");
                } else {
                    Logger.d(TAG, "temp file[%s] deleted", this.mTempUri.getPath());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SaveFileTask extends AsyncTask<Void, Void, Uri> {
        private final Uri mFileUri;

        SaveFileTask(Uri fileUri) {
            this.mFileUri = fileUri;
            if (this.mFileUri == null) {
                Logger.e(SetLockscreenWallpaperActivity.TAG, "file uri is empty");
                cancel(true);
                SetLockscreenWallpaperActivity.this.finish();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:79:? A[Catch: Exception -> 0x00cb, Exception | OutOfMemoryError -> 0x0168, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #12 {Exception | OutOfMemoryError -> 0x0168, blocks: (B:3:0x0013, B:39:0x015b, B:36:0x017d, B:43:0x0160, B:73:0x00c7, B:70:0x0196, B:77:0x0191, B:74:0x00ca), top: B:2:0x0013 }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.net.Uri doInBackground(java.lang.Void... r28) {
            /*
                Method dump skipped, instructions count: 414
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.customizations.wallpaper.SetLockscreenWallpaperActivity.SaveFileTask.doInBackground(java.lang.Void[]):android.net.Uri");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Uri result) {
            if (result == null || isCancelled()) {
                Logger.w(SetLockscreenWallpaperActivity.TAG, "failed to load file uri");
                return;
            }
            if (SetLockscreenWallpaperActivity.this.isFinishing()) {
                Logger.w(SetLockscreenWallpaperActivity.TAG, "crop cancelled since activity is finishing");
                return;
            }
            Point dimens = Utilities.getScreenDimensions(SetLockscreenWallpaperActivity.this.getApplicationContext(), true);
            Intent intent = new Intent("com.android.camera.action.CROP");
            intent.setDataAndType(result, "image/*");
            intent.setFlags(3);
            intent.putExtra("crop", DynamicIconTextConfig.KEY_TRUE);
            intent.putExtra("aspectX", dimens.x);
            intent.putExtra("aspectY", dimens.y);
            intent.putExtra("outputX", dimens.x);
            intent.putExtra("outputY", dimens.y);
            intent.putExtra("output", result);
            intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
            SetLockscreenWallpaperActivity.this.startActivityForResult(intent, 0);
        }
    }

    /* loaded from: classes.dex */
    private class TempFileLoader extends AsyncTask<Void, Void, Bitmap> {
        private ParcelFileDescriptor mTempFile;

        TempFileLoader() {
            try {
                this.mTempFile = SetLockscreenWallpaperActivity.this.getContentResolver().openFileDescriptor(SetLockscreenWallpaperActivity.this.mTempUri, "rw");
            } catch (FileNotFoundException e) {
                Logger.e(SetLockscreenWallpaperActivity.TAG, "cannot find cropped wallpaper file: %s", SetLockscreenWallpaperActivity.this.mTempUri);
                SetLockscreenWallpaperActivity.this.finish();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... params) {
            return BitmapFactory.decodeFileDescriptor(this.mTempFile.getFileDescriptor());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap newWallpaper) {
            WallpaperLoader loader = new WallpaperLoader();
            loader.setBitmap(newWallpaper);
            loader.execute(new Integer[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WallpaperLoader extends AsyncTask<Integer, Void, Boolean> {
        Bitmap mBitmap;

        private WallpaperLoader() {
        }

        public void setBitmap(Bitmap bitmap) {
            this.mBitmap = bitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Integer... params) {
            InputStream in;
            try {
                try {
                    WallpaperManager manager = WallpaperManager.getInstance(SetLockscreenWallpaperActivity.this.getApplicationContext());
                    if (this.mBitmap == null) {
                        in = SetLockscreenWallpaperActivity.this.getContentResolver().openInputStream(SetLockscreenWallpaperActivity.this.mTempUri);
                    } else {
                        ByteArrayOutputStream bos = new ByteArrayOutputStream();
                        this.mBitmap.compress(Bitmap.CompressFormat.JPEG, 100, bos);
                        byte[] output = bos.toByteArray();
                        in = new ByteArrayInputStream(output);
                    }
                    try {
                        OpWallpaperManager.setKeyguardStream(manager, in);
                        return true;
                    } finally {
                        if (in != null) {
                            in.close();
                        }
                    }
                } catch (IOException e) {
                    Logger.e(SetLockscreenWallpaperActivity.TAG, e.getMessage(), e);
                    throw new NullPointerException();
                }
            } catch (NullPointerException e2) {
                Logger.e(SetLockscreenWallpaperActivity.TAG, e2.getMessage(), e2);
                return false;
            } catch (OutOfMemoryError e3) {
                Logger.e(SetLockscreenWallpaperActivity.TAG, e3.getMessage(), e3);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean success) {
            SetLockscreenWallpaperActivity.this.deleteTempFile();
            if (this.mBitmap != null) {
                this.mBitmap.recycle();
            }
            SetLockscreenWallpaperActivity.this.finish();
        }
    }
}
