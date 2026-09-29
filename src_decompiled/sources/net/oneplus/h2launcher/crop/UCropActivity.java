package net.oneplus.h2launcher.crop;

import android.annotation.TargetApi;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.graphics.Palette;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.crop.UCrop;
import net.oneplus.h2launcher.crop.callback.BitmapCropCallback;
import net.oneplus.h2launcher.crop.util.FastBitmapDrawable;
import net.oneplus.h2launcher.crop.view.CropImageView;
import net.oneplus.h2launcher.crop.view.GestureCropImageView;
import net.oneplus.h2launcher.crop.view.OverlayView;
import net.oneplus.h2launcher.crop.view.TransformImageView;
import net.oneplus.h2launcher.crop.view.UCropView;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class UCropActivity extends AppCompatActivity {
    public static final int DEFAULT_COMPRESS_QUALITY = 100;
    private static final int STORAGE_PERMISSION_REQUEST = 100;
    private View mBlockingView;
    private Bitmap.CompressFormat mCompressFormat = DEFAULT_COMPRESS_FORMAT;
    private int mCompressQuality = 100;
    private GestureCropImageView mGestureCropImageView;
    private GestureCropImageView mGestureCropImageView2;
    private Uri mOutputUri;
    private Uri mOutputUri2;
    private OverlayView mOverlayView;
    private OverlayView mOverlayView2;
    private ProgressDialog mProgressDialog;
    private int mStatusBarColor;
    private int mToolbarColor;
    private String mToolbarTitle;
    private int mToolbarWidgetColor;
    private UCropView mUCropView;
    public static final Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT = Bitmap.CompressFormat.JPEG;
    private static final String TAG = UCropActivity.class.getSimpleName();

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            Logger.w(TAG, "Restored wallpaper cropper is not allowed");
            finish();
        }
        setTheme(Utilities.isDarkModeTheme(this) ? R.style.MainThemeDark : R.style.MainTheme);
        setContentView(R.layout.ucrop_activity_photobox);
        Intent intent = getIntent();
        setupViews(intent);
        setAllowedGestures();
        addBlockingView();
        View ucropFrame = findViewById(R.id.ucrop_frame);
        if (ucropFrame != null) {
            ucropFrame.addOnLayoutChangeListener(new OnUCropFrameLayoutChangeListener(intent));
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.ucrop_menu_activity, menu);
        MenuItem menuItemCrop = menu.findItem(R.id.menu_crop);
        Drawable menuItemCropIcon = menuItemCrop.getIcon();
        if (menuItemCropIcon != null) {
            menuItemCropIcon.mutate();
            menuItemCropIcon.setColorFilter(this.mToolbarWidgetColor, PorterDuff.Mode.SRC_ATOP);
            menuItemCrop.setIcon(menuItemCropIcon);
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.menu_crop) {
            cropAndSaveImage();
        } else if (item.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.mGestureCropImageView != null) {
            this.mGestureCropImageView.cancelAllAnimations();
        }
        if (this.mGestureCropImageView2 != null) {
            this.mGestureCropImageView2.cancelAllAnimations();
        }
        dismissProgressDialog();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        switch (requestCode) {
            case 100:
                for (int i = 0; i < permissions.length; i++) {
                    if (permissions[i].equals("android.permission.READ_EXTERNAL_STORAGE")) {
                        if (grantResults[i] == 0) {
                            setImageData(getIntent());
                        } else {
                            Logger.w(TAG, "permission not granted by user");
                            finish();
                        }
                    }
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageData(@NonNull Intent intent) {
        Uri inputUri = (Uri) intent.getParcelableExtra(UCrop.EXTRA_INPUT_URI);
        this.mOutputUri = (Uri) intent.getParcelableExtra(UCrop.EXTRA_OUTPUT_URI);
        this.mOutputUri2 = (Uri) intent.getParcelableExtra(UCrop.EXTRA_OUTPUT_URI_SECONDARY);
        processOptions(intent);
        if (inputUri != null && this.mOutputUri != null) {
            try {
                showProgressDialog();
                this.mGestureCropImageView.setImageUri(inputUri, this.mOutputUri);
                if (this.mOutputUri2 != null) {
                    this.mGestureCropImageView2.setImageUri(inputUri, this.mOutputUri2);
                }
            } catch (Exception e) {
                setResultException(e);
                finish();
            }
        } else {
            setResultException(new NullPointerException(getString(R.string.ucrop_error_input_data_is_absent)));
            finish();
        }
        if (intent.getBooleanExtra(UCrop.EXTRA_ASPECT_RATIO_SET, false)) {
            float aspectRatioX = intent.getFloatExtra(UCrop.EXTRA_ASPECT_RATIO_X, 0.0f);
            float aspectRatioY = intent.getFloatExtra(UCrop.EXTRA_ASPECT_RATIO_Y, 0.0f);
            if (aspectRatioX > 0.0f && aspectRatioY > 0.0f) {
                this.mGestureCropImageView.setTargetAspectRatio(aspectRatioX / aspectRatioY);
                if (this.mGestureCropImageView.getTargetAspectRatio() == CropImageView.LANDSCAPE_IMAGE_ASPECT_RATIO) {
                    this.mGestureCropImageView2.setTargetAspectRatio(CropImageView.PORTRAIT_IMAGE_ASPECT_RATIO);
                } else {
                    this.mGestureCropImageView2.setTargetAspectRatio(CropImageView.LANDSCAPE_IMAGE_ASPECT_RATIO);
                }
            } else {
                this.mGestureCropImageView.setTargetAspectRatio(0.0f);
                this.mGestureCropImageView2.setTargetAspectRatio(0.0f);
            }
        }
        if (intent.getBooleanExtra(UCrop.EXTRA_MAX_SIZE_SET, false)) {
            int maxSizeX = intent.getIntExtra(UCrop.EXTRA_MAX_SIZE_X, 0);
            int maxSizeY = intent.getIntExtra(UCrop.EXTRA_MAX_SIZE_Y, 0);
            if (maxSizeX > 0 && maxSizeY > 0) {
                this.mGestureCropImageView.setMaxResultImageSizeX(maxSizeX);
                this.mGestureCropImageView.setMaxResultImageSizeY(maxSizeY);
                this.mGestureCropImageView2.setMaxResultImageSizeX(maxSizeX);
                this.mGestureCropImageView2.setMaxResultImageSizeY(maxSizeY);
                return;
            }
            Logger.w(TAG, "EXTRA_MAX_SIZE_X and EXTRA_MAX_SIZE_Y must be greater than 0");
        }
    }

    private void processOptions(@NonNull Intent intent) {
        String compressionFormatName = intent.getStringExtra(UCrop.Options.EXTRA_COMPRESSION_FORMAT_NAME);
        Bitmap.CompressFormat compressFormat = null;
        if (!TextUtils.isEmpty(compressionFormatName)) {
            compressFormat = Bitmap.CompressFormat.valueOf(compressionFormatName);
        }
        if (compressFormat == null) {
            compressFormat = DEFAULT_COMPRESS_FORMAT;
        }
        this.mCompressFormat = compressFormat;
        this.mCompressQuality = intent.getIntExtra(UCrop.Options.EXTRA_COMPRESSION_QUALITY, 100);
        this.mGestureCropImageView.setRotateEnabled(false);
        this.mGestureCropImageView.setMaxBitmapSize(intent.getIntExtra(UCrop.Options.EXTRA_MAX_BITMAP_SIZE, CropImageView.DEFAULT_MAX_BITMAP_SIZE));
        this.mGestureCropImageView.setMaxScaleMultiplier(intent.getFloatExtra(UCrop.Options.EXTRA_MAX_SCALE_MULTIPLIER, 10.0f));
        this.mGestureCropImageView.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra(UCrop.Options.EXTRA_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION, 500));
        this.mGestureCropImageView2.setRotateEnabled(false);
        this.mGestureCropImageView2.setMaxBitmapSize(intent.getIntExtra(UCrop.Options.EXTRA_MAX_BITMAP_SIZE, CropImageView.DEFAULT_MAX_BITMAP_SIZE));
        this.mGestureCropImageView2.setMaxScaleMultiplier(intent.getFloatExtra(UCrop.Options.EXTRA_MAX_SCALE_MULTIPLIER, 10.0f));
        this.mGestureCropImageView2.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra(UCrop.Options.EXTRA_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION, 500));
        this.mOverlayView.setDimmedColor(intent.getIntExtra(UCrop.Options.EXTRA_DIMMED_LAYER_COLOR, getResources().getColor(R.color.ucrop_color_default_dimmed)));
        this.mOverlayView.setOvalDimmedLayer(intent.getBooleanExtra(UCrop.Options.EXTRA_OVAL_DIMMED_LAYER, false));
        this.mOverlayView.setShowCropFrame(intent.getBooleanExtra(UCrop.Options.EXTRA_SHOW_CROP_FRAME, true));
        this.mOverlayView.setCropFrameColor(intent.getIntExtra(UCrop.Options.EXTRA_CROP_FRAME_COLOR, getResources().getColor(R.color.ucrop_color_default_crop_frame)));
        this.mOverlayView.setCropFrameStrokeWidth(intent.getIntExtra(UCrop.Options.EXTRA_CROP_FRAME_STROKE_WIDTH, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width)));
        this.mOverlayView.setShowCropGrid(intent.getBooleanExtra(UCrop.Options.EXTRA_SHOW_CROP_GRID, true));
        this.mOverlayView.setCropGridRowCount(intent.getIntExtra(UCrop.Options.EXTRA_CROP_GRID_ROW_COUNT, 2));
        this.mOverlayView.setCropGridColumnCount(intent.getIntExtra(UCrop.Options.EXTRA_CROP_GRID_COLUMN_COUNT, 2));
        this.mOverlayView.setCropGridColor(intent.getIntExtra(UCrop.Options.EXTRA_CROP_GRID_COLOR, getResources().getColor(R.color.ucrop_color_default_crop_grid)));
        this.mOverlayView.setCropGridStrokeWidth(intent.getIntExtra(UCrop.Options.EXTRA_CROP_GRID_STROKE_WIDTH, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width)));
        this.mOverlayView.setShowCropCoverColorMask(intent.getBooleanExtra(UCrop.Options.EXTRA_SHOW_CROP_COVER_COLOR_MASK, false));
        byte[] bytes = intent.getByteArrayExtra(UCrop.Options.EXTRA_CROP_COVER_IMAGE);
        if (bytes != null) {
            this.mOverlayView.setCropCoverImage(BitmapFactory.decodeByteArray(bytes, 0, bytes.length));
        }
    }

    private void setupViews(@NonNull Intent intent) {
        this.mStatusBarColor = intent.getIntExtra(UCrop.Options.EXTRA_STATUS_BAR_COLOR, ContextCompat.getColor(this, R.color.ucrop_color_statusbar));
        this.mToolbarColor = intent.getIntExtra(UCrop.Options.EXTRA_TOOL_BAR_COLOR, ContextCompat.getColor(this, R.color.ucrop_color_toolbar));
        this.mToolbarWidgetColor = intent.getIntExtra(UCrop.Options.EXTRA_UCROP_WIDGET_COLOR_TOOLBAR, ContextCompat.getColor(this, R.color.ucrop_color_toolbar_widget));
        this.mToolbarTitle = intent.getStringExtra(UCrop.Options.EXTRA_UCROP_TITLE_TEXT_TOOLBAR);
        this.mToolbarTitle = !TextUtils.isEmpty(this.mToolbarTitle) ? this.mToolbarTitle : getResources().getString(R.string.ucrop_label_edit_photo);
        setupAppBar();
        initiateRootViews();
    }

    private void setupAppBar() {
        setStatusBarColor(this.mStatusBarColor);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(this.mToolbarColor);
        toolbar.setTitleTextColor(this.mToolbarWidgetColor);
        TextView toolbarTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        if (toolbarTitle != null) {
            toolbarTitle.setTextColor(this.mToolbarWidgetColor);
            toolbarTitle.setText(this.mToolbarTitle);
        }
        Drawable stateButtonDrawable = ContextCompat.getDrawable(this, R.drawable.ic_arrow_back).mutate();
        int upIconColor = ContextCompat.getColor(this, R.color.ucrop_color_toolbar_icon);
        stateButtonDrawable.setColorFilter(upIconColor, PorterDuff.Mode.SRC_ATOP);
        toolbar.setNavigationIcon(stateButtonDrawable);
        setSupportActionBar(toolbar);
        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowTitleEnabled(false);
        }
    }

    private void initiateRootViews() {
        this.mUCropView = (UCropView) findViewById(R.id.ucrop);
        this.mGestureCropImageView = this.mUCropView.getCropImageView();
        this.mOverlayView = this.mUCropView.getOverlayView();
        UCropView uCropViewSecondary = (UCropView) findViewById(R.id.ucrop_secondary);
        this.mGestureCropImageView2 = uCropViewSecondary.getCropImageView();
        this.mOverlayView2 = uCropViewSecondary.getOverlayView();
        this.mGestureCropImageView.setTransformImageListener(new TransformImageListenerImp(this.mUCropView));
        this.mGestureCropImageView2.setTransformImageListener(new TransformImageListenerImp(uCropViewSecondary));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (Utilities.ATLEAST_LOLLIPOP) {
            Window window = getWindow();
            window.getAttributes().systemUiVisibility |= 1792;
            window.clearFlags(201326592);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(this.mStatusBarColor);
            window.setNavigationBarColor(this.mToolbarColor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    public void setStatusBarColor(@ColorInt int color) {
        if (Build.VERSION.SDK_INT >= 21 && getWindow() != null) {
            getWindow().setStatusBarColor(color);
        }
    }

    private void setAllowedGestures() {
        this.mGestureCropImageView.setScaleEnabled(true);
        this.mGestureCropImageView.setRotateEnabled(false);
        this.mGestureCropImageView2.setScaleEnabled(true);
        this.mGestureCropImageView2.setRotateEnabled(false);
    }

    private void addBlockingView() {
        if (this.mBlockingView == null) {
            this.mBlockingView = new View(this);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-1, -1);
            lp.addRule(3, R.id.toolbar);
            this.mBlockingView.setLayoutParams(lp);
            this.mBlockingView.setClickable(true);
        }
        ((RelativeLayout) findViewById(R.id.ucrop_photobox)).addView(this.mBlockingView);
    }

    private void cropAndSaveImage() {
        this.mBlockingView.setClickable(true);
        supportInvalidateOptionsMenu();
        this.mGestureCropImageView.cropAndSaveImage(this.mCompressFormat, this.mCompressQuality, this.mOutputUri, new BitmapCropCallback() { // from class: net.oneplus.h2launcher.crop.UCropActivity.1
            @Override // net.oneplus.h2launcher.crop.callback.BitmapCropCallback
            public void onBitmapCropped() {
                BitmapCropCallback cropCallbackSecondary = UCropActivity.this.getCropCallbackSecondary();
                if (cropCallbackSecondary == null) {
                    UCropActivity.this.setResultUri(UCropActivity.this.mOutputUri, UCropActivity.this.mGestureCropImageView.getTargetAspectRatio(), UCropActivity.this.mOverlayView.getCropCoverMaskColor());
                    UCropActivity.this.finish();
                } else {
                    UCropActivity.this.mGestureCropImageView2.cropAndSaveImage(UCropActivity.this.mCompressFormat, UCropActivity.this.mCompressQuality, UCropActivity.this.mOutputUri2, cropCallbackSecondary);
                }
            }

            @Override // net.oneplus.h2launcher.crop.callback.BitmapCropCallback
            public void onCropFailure(@NonNull Exception bitmapCropException) {
                UCropActivity.this.setResultException(bitmapCropException);
                UCropActivity.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BitmapCropCallback getCropCallbackSecondary() {
        if (this.mOutputUri2 == null) {
            return null;
        }
        return new BitmapCropCallback() { // from class: net.oneplus.h2launcher.crop.UCropActivity.2
            @Override // net.oneplus.h2launcher.crop.callback.BitmapCropCallback
            public void onBitmapCropped() {
                float aspectRatio = UCropActivity.this.mGestureCropImageView.getTargetAspectRatio();
                float aspectRatio2 = UCropActivity.this.mGestureCropImageView2.getTargetAspectRatio();
                int maskColor = UCropActivity.this.mOverlayView.getCropCoverMaskColor();
                int maskColor2 = UCropActivity.this.mOverlayView2.getCropCoverMaskColor();
                UCropActivity.this.setResultUri(UCropActivity.this.mOutputUri, UCropActivity.this.mOutputUri2, aspectRatio, aspectRatio2, maskColor, maskColor2);
                UCropActivity.this.finish();
            }

            @Override // net.oneplus.h2launcher.crop.callback.BitmapCropCallback
            public void onCropFailure(@NonNull Exception bitmapCropException) {
                UCropActivity.this.setResultException(bitmapCropException);
                UCropActivity.this.finish();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResultUri(Uri uri, float resultAspectRatio, int maskColor) {
        setResult(-1, new Intent().putExtra(UCrop.EXTRA_INPUT_URI, this.mGestureCropImageView.getImageUri()).putExtra(UCrop.EXTRA_OUTPUT_URI, uri).putExtra(UCrop.EXTRA_OUTPUT_MASK_COLOR, maskColor).putExtra(UCrop.EXTRA_OUTPUT_CROP_ASPECT_RATIO, resultAspectRatio));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResultUri(Uri uri, Uri uri2, float resultAspectRatio, float resultAspectRatio2, int maskColor, int maskColor2) {
        setResult(-1, new Intent().putExtra(UCrop.EXTRA_INPUT_URI, this.mGestureCropImageView.getImageUri()).putExtra(UCrop.EXTRA_OUTPUT_URI, uri).putExtra(UCrop.EXTRA_OUTPUT_MASK_COLOR, maskColor).putExtra(UCrop.EXTRA_OUTPUT_CROP_ASPECT_RATIO, resultAspectRatio).putExtra(UCrop.EXTRA_OUTPUT_URI_SECONDARY, uri2).putExtra(UCrop.EXTRA_OUTPUT_MASK_COLOR_SECONDARY, maskColor2).putExtra(UCrop.EXTRA_OUTPUT_CROP_ASPECT_RATIO_SECONDARY, resultAspectRatio2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResultException(Throwable throwable) {
        setResult(96, new Intent().putExtra(UCrop.EXTRA_ERROR, throwable));
        dismissProgressDialog();
    }

    private void showProgressDialog() {
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
        this.mProgressDialog = new ProgressDialog(this);
        this.mProgressDialog.setMessage(getString(R.string.loading_photo));
        this.mProgressDialog.setIndeterminate(false);
        this.mProgressDialog.setCancelable(false);
        this.mProgressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TransformImageListenerImp implements TransformImageView.TransformImageListener {
        private boolean mImageLoaded = false;
        private UCropView mTargetUCropView;

        public TransformImageListenerImp(UCropView target) {
            this.mTargetUCropView = target;
        }

        @Override // net.oneplus.h2launcher.crop.view.TransformImageView.TransformImageListener
        public void onRotate(float currentAngle) {
        }

        @Override // net.oneplus.h2launcher.crop.view.TransformImageView.TransformImageListener
        public void onScale(float currentScale) {
        }

        @Override // net.oneplus.h2launcher.crop.view.TransformImageView.TransformImageListener
        public void onBitmapLoadComplete(Bitmap bitmap) {
            UCropActivity.this.dismissProgressDialog();
        }

        @Override // net.oneplus.h2launcher.crop.view.TransformImageView.TransformImageListener
        public void onLoadComplete() {
            if (!this.mImageLoaded) {
                this.mImageLoaded = true;
                Runnable loadImageColor = new Runnable() { // from class: net.oneplus.h2launcher.crop.UCropActivity.TransformImageListenerImp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Drawable drawable = TransformImageListenerImp.this.mTargetUCropView.getCropImageView().getDrawable();
                        Bitmap bitmap = ((FastBitmapDrawable) drawable).getBitmap();
                        List<Palette.Swatch> swatches = WallpaperUtils.loadWallpaperSwatches(bitmap);
                        if (swatches != null) {
                            int mainColor = swatches.get(0).getRgb();
                            WallpaperTaskWorker.get().postUI(new MainColorLoadedRunnable(mainColor));
                        }
                    }
                };
                WallpaperTaskWorker.get().post(loadImageColor);
            }
        }

        @Override // net.oneplus.h2launcher.crop.view.TransformImageView.TransformImageListener
        public void onLoadFailure(@NonNull Exception e) {
            Context context = UCropActivity.this.getApplicationContext();
            String message = UCropActivity.this.getString(R.string.cannot_load_photo);
            Toast.makeText(context, message, 0).show();
            UCropActivity.this.setResultException(e);
            UCropActivity.this.finish();
        }

        /* loaded from: classes.dex */
        class MainColorLoadedRunnable implements Runnable {
            private final int mMainColor;

            public MainColorLoadedRunnable(int mainColor) {
                this.mMainColor = mainColor;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (TransformImageListenerImp.this.mTargetUCropView == UCropActivity.this.mUCropView) {
                    View toolbar = UCropActivity.this.findViewById(R.id.toolbar);
                    TransformImageListenerImp.this.mTargetUCropView.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
                    UCropActivity.this.mBlockingView.setClickable(false);
                    UCropActivity.this.supportInvalidateOptionsMenu();
                    UCropActivity.this.setStatusBarColor(this.mMainColor);
                    toolbar.setBackgroundColor(this.mMainColor);
                }
                TransformImageListenerImp.this.mTargetUCropView.getCropImageView().setBackgroundColor(this.mMainColor);
                TransformImageListenerImp.this.mTargetUCropView.getOverlayView().setCropCoverMaskColor(this.mMainColor);
            }
        }
    }

    /* loaded from: classes.dex */
    private class OnUCropFrameLayoutChangeListener implements View.OnLayoutChangeListener {
        private final int mCropPreviewItemHeight;
        private final int mCropPreviewItemWidth;
        private Intent mIntent;

        public OnUCropFrameLayoutChangeListener(Intent intent) {
            this.mIntent = intent;
            Resources res = UCropActivity.this.getResources();
            this.mCropPreviewItemWidth = res.getDimensionPixelSize(R.dimen.cropper_preview_item_width);
            this.mCropPreviewItemHeight = (int) (this.mCropPreviewItemWidth / CropImageView.PORTRAIT_IMAGE_ASPECT_RATIO);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            int width = right - left;
            int height = bottom - top;
            int paddingHorizontal = (width - this.mCropPreviewItemWidth) / 2;
            int paddingVertical = (height - this.mCropPreviewItemHeight) / 2;
            setPaddings(UCropActivity.this.mGestureCropImageView, paddingHorizontal, paddingVertical);
            setPaddings(UCropActivity.this.mGestureCropImageView2, paddingHorizontal, paddingVertical);
            setPaddings(UCropActivity.this.mOverlayView, paddingHorizontal, paddingVertical);
            setPaddings(UCropActivity.this.mOverlayView2, paddingHorizontal, paddingVertical);
            v.removeOnLayoutChangeListener(this);
            if (PermissionUtils.hasGrantedPermission(UCropActivity.this, "android.permission.READ_EXTERNAL_STORAGE")) {
                UCropActivity.this.setImageData(this.mIntent);
            } else {
                PermissionUtils.requestPermission(UCropActivity.this, "android.permission.READ_EXTERNAL_STORAGE", 100);
            }
        }

        private void setPaddings(View target, int horizontal, int vertical) {
            if (target == null) {
                Logger.e(UCropActivity.TAG, "failed to set paddings of target view");
            } else {
                target.setPadding(horizontal, vertical, horizontal, vertical);
            }
        }
    }
}
