package net.oneplus.h2launcher.crop;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public class UCrop {
    public static final String EXTRA_ASPECT_RATIO_SET = "net.oneplus.h2launcher.AspectRatioSet";
    public static final String EXTRA_ASPECT_RATIO_X = "net.oneplus.h2launcher.AspectRatioX";
    public static final String EXTRA_ASPECT_RATIO_Y = "net.oneplus.h2launcher.AspectRatioY";
    public static final String EXTRA_ERROR = "net.oneplus.h2launcher.Error";
    public static final String EXTRA_INPUT_URI = "net.oneplus.h2launcher.InputUri";
    public static final String EXTRA_MAX_SIZE_SET = "net.oneplus.h2launcher.MaxSizeSet";
    public static final String EXTRA_MAX_SIZE_X = "net.oneplus.h2launcher.MaxSizeX";
    public static final String EXTRA_MAX_SIZE_Y = "net.oneplus.h2launcher.MaxSizeY";
    public static final String EXTRA_OUTPUT_CROP_ASPECT_RATIO = "net.oneplus.h2launcher.CropAspectRatio";
    public static final String EXTRA_OUTPUT_CROP_ASPECT_RATIO_SECONDARY = "net.oneplus.h2launcher.CropAspectRatioSecondary";
    public static final String EXTRA_OUTPUT_MASK_COLOR = "net.oneplus.h2launcher.OutputMaskColor";
    public static final String EXTRA_OUTPUT_MASK_COLOR_SECONDARY = "net.oneplus.h2launcher.OutputMaskColorSecondary";
    public static final String EXTRA_OUTPUT_URI = "net.oneplus.h2launcher.OutputUri";
    public static final String EXTRA_OUTPUT_URI_SECONDARY = "net.oneplus.h2launcher.OutputUriSecondary";
    private static final String EXTRA_PREFIX = "net.oneplus.h2launcher";
    public static final int REQUEST_CROP = 69;
    public static final int RESULT_ERROR = 96;
    private Intent mCropIntent = new Intent();
    private Bundle mCropOptionsBundle = new Bundle();

    public static UCrop of(@NonNull Uri source, @NonNull Uri destination) {
        return new UCrop(source, destination);
    }

    private UCrop(@NonNull Uri source, @NonNull Uri destination) {
        this.mCropOptionsBundle.putParcelable(EXTRA_INPUT_URI, source);
        this.mCropOptionsBundle.putParcelable(EXTRA_OUTPUT_URI, destination);
    }

    public static UCrop of(@NonNull Uri source, @NonNull Uri destination, @NonNull Uri destinationSecondary) {
        return new UCrop(source, destination, destinationSecondary);
    }

    private UCrop(@NonNull Uri source, @NonNull Uri destination, @NonNull Uri destinationSecondary) {
        this.mCropOptionsBundle.putParcelable(EXTRA_INPUT_URI, source);
        this.mCropOptionsBundle.putParcelable(EXTRA_OUTPUT_URI, destination);
        this.mCropOptionsBundle.putParcelable(EXTRA_OUTPUT_URI_SECONDARY, destinationSecondary);
    }

    public UCrop withAspectRatio(float x, float y) {
        this.mCropOptionsBundle.putBoolean(EXTRA_ASPECT_RATIO_SET, true);
        this.mCropOptionsBundle.putFloat(EXTRA_ASPECT_RATIO_X, x);
        this.mCropOptionsBundle.putFloat(EXTRA_ASPECT_RATIO_Y, y);
        return this;
    }

    public UCrop useSourceImageAspectRatio() {
        this.mCropOptionsBundle.putBoolean(EXTRA_ASPECT_RATIO_SET, true);
        this.mCropOptionsBundle.putInt(EXTRA_ASPECT_RATIO_X, 0);
        this.mCropOptionsBundle.putInt(EXTRA_ASPECT_RATIO_Y, 0);
        return this;
    }

    public UCrop withMaxResultSize(@IntRange(from = 100) int width, @IntRange(from = 100) int height) {
        this.mCropOptionsBundle.putBoolean(EXTRA_MAX_SIZE_SET, true);
        this.mCropOptionsBundle.putInt(EXTRA_MAX_SIZE_X, width);
        this.mCropOptionsBundle.putInt(EXTRA_MAX_SIZE_Y, height);
        return this;
    }

    public UCrop withOptions(@NonNull Options options) {
        this.mCropOptionsBundle.putAll(options.getOptionBundle());
        return this;
    }

    public void start(@NonNull Activity activity) {
        start(activity, 69);
    }

    public void start(@NonNull Activity activity, int requestCode) {
        activity.startActivityForResult(getIntent(activity), requestCode);
    }

    public void start(@NonNull Context context, @NonNull Fragment fragment) {
        start(context, fragment, 69);
    }

    public void start(@NonNull Context context, @NonNull android.support.v4.app.Fragment fragment) {
        start(context, fragment, 69);
    }

    @TargetApi(11)
    public void start(@NonNull Context context, @NonNull Fragment fragment, int requestCode) {
        fragment.startActivityForResult(getIntent(context), requestCode);
    }

    public void start(@NonNull Context context, @NonNull android.support.v4.app.Fragment fragment, int requestCode) {
        fragment.startActivityForResult(getIntent(context), requestCode);
    }

    public Intent getIntent(@NonNull Context context) {
        this.mCropIntent.setClass(context, UCropActivity.class);
        this.mCropIntent.putExtras(this.mCropOptionsBundle);
        return this.mCropIntent;
    }

    @Nullable
    public static Uri getInput(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra(EXTRA_INPUT_URI);
    }

    @Nullable
    public static Uri getOutput(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra(EXTRA_OUTPUT_URI);
    }

    @Nullable
    public static Uri getOutputSecondary(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra(EXTRA_OUTPUT_URI_SECONDARY);
    }

    public static int getOutputMaskColor(@NonNull Intent intent) {
        return intent.getIntExtra(EXTRA_OUTPUT_MASK_COLOR, Integer.MIN_VALUE);
    }

    public static int getOutputMaskColorSecondary(@NonNull Intent intent) {
        return intent.getIntExtra(EXTRA_OUTPUT_MASK_COLOR_SECONDARY, Integer.MIN_VALUE);
    }

    public static float getOutputCropAspectRatio(@NonNull Intent intent) {
        return intent.getFloatExtra(EXTRA_OUTPUT_CROP_ASPECT_RATIO, 1.0f);
    }

    public static float getOutputCropAspectRatioSecondary(@NonNull Intent intent) {
        return intent.getFloatExtra(EXTRA_OUTPUT_CROP_ASPECT_RATIO_SECONDARY, 1.0f);
    }

    @Nullable
    public static Throwable getError(@NonNull Intent result) {
        return (Throwable) result.getSerializableExtra(EXTRA_ERROR);
    }

    /* loaded from: classes.dex */
    public static class Options {
        public static final String EXTRA_COMPRESSION_FORMAT_NAME = "net.oneplus.h2launcher.CompressionFormatName";
        public static final String EXTRA_COMPRESSION_QUALITY = "net.oneplus.h2launcher.CompressionQuality";
        public static final String EXTRA_CROP_COVER_IMAGE = "net.oneplus.h2launcher.CropCoverImage";
        public static final String EXTRA_CROP_FRAME_COLOR = "net.oneplus.h2launcher.CropFrameColor";
        public static final String EXTRA_CROP_FRAME_STROKE_WIDTH = "net.oneplus.h2launcher.CropFrameStrokeWidth";
        public static final String EXTRA_CROP_GRID_COLOR = "net.oneplus.h2launcher.CropGridColor";
        public static final String EXTRA_CROP_GRID_COLUMN_COUNT = "net.oneplus.h2launcher.CropGridColumnCount";
        public static final String EXTRA_CROP_GRID_ROW_COUNT = "net.oneplus.h2launcher.CropGridRowCount";
        public static final String EXTRA_CROP_GRID_STROKE_WIDTH = "net.oneplus.h2launcher.CropGridStrokeWidth";
        public static final String EXTRA_DIMMED_LAYER_COLOR = "net.oneplus.h2launcher.DimmedLayerColor";
        public static final String EXTRA_HIDE_BOTTOM_CONTROLS = "net.oneplus.h2launcher.HideBottomControls";
        public static final String EXTRA_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION = "net.oneplus.h2launcher.ImageToCropBoundsAnimDuration";
        public static final String EXTRA_MAX_BITMAP_SIZE = "net.oneplus.h2launcher.MaxBitmapSize";
        public static final String EXTRA_MAX_SCALE_MULTIPLIER = "net.oneplus.h2launcher.MaxScaleMultiplier";
        public static final String EXTRA_OVAL_DIMMED_LAYER = "net.oneplus.h2launcher.OvalDimmedLayer";
        public static final String EXTRA_SHOW_CROP_COVER_COLOR_MASK = "net.oneplus.h2launcher.ShowCropCoverColorMask";
        public static final String EXTRA_SHOW_CROP_FRAME = "net.oneplus.h2launcher.ShowCropFrame";
        public static final String EXTRA_SHOW_CROP_GRID = "net.oneplus.h2launcher.ShowCropGrid";
        public static final String EXTRA_STATUS_BAR_COLOR = "net.oneplus.h2launcher.StatusBarColor";
        public static final String EXTRA_TOOL_BAR_COLOR = "net.oneplus.h2launcher.ToolbarColor";
        public static final String EXTRA_UCROP_TITLE_TEXT_TOOLBAR = "net.oneplus.h2launcher.UcropToolbarTitleText";
        public static final String EXTRA_UCROP_WIDGET_COLOR_TOOLBAR = "net.oneplus.h2launcher.UcropToolbarWidgetColor";
        private final Bundle mOptionBundle = new Bundle();

        @NonNull
        public Bundle getOptionBundle() {
            return this.mOptionBundle;
        }

        public void setCompressionFormat(@NonNull Bitmap.CompressFormat format) {
            this.mOptionBundle.putString(EXTRA_COMPRESSION_FORMAT_NAME, format.name());
        }

        public void setCompressionQuality(@IntRange(from = 0) int compressQuality) {
            this.mOptionBundle.putInt(EXTRA_COMPRESSION_QUALITY, compressQuality);
        }

        public void setMaxScaleMultiplier(@FloatRange(from = 1.0d, fromInclusive = false) float maxScaleMultiplier) {
            this.mOptionBundle.putFloat(EXTRA_MAX_SCALE_MULTIPLIER, maxScaleMultiplier);
        }

        public void setImageToCropBoundsAnimDuration(@IntRange(from = 100) int durationMillis) {
            this.mOptionBundle.putInt(EXTRA_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION, durationMillis);
        }

        public void setMaxBitmapSize(@IntRange(from = 100) int maxBitmapSize) {
            this.mOptionBundle.putInt(EXTRA_MAX_BITMAP_SIZE, maxBitmapSize);
        }

        public void setDimmedLayerColor(@ColorInt int color) {
            this.mOptionBundle.putInt(EXTRA_DIMMED_LAYER_COLOR, color);
        }

        public void setOvalDimmedLayer(boolean isOval) {
            this.mOptionBundle.putBoolean(EXTRA_OVAL_DIMMED_LAYER, isOval);
        }

        public void setShowCropFrame(boolean show) {
            this.mOptionBundle.putBoolean(EXTRA_SHOW_CROP_FRAME, show);
        }

        public void setCropFrameColor(@ColorInt int color) {
            this.mOptionBundle.putInt(EXTRA_CROP_FRAME_COLOR, color);
        }

        public void setCropFrameStrokeWidth(@IntRange(from = 0) int width) {
            this.mOptionBundle.putInt(EXTRA_CROP_FRAME_STROKE_WIDTH, width);
        }

        public void setShowCropGrid(boolean show) {
            this.mOptionBundle.putBoolean(EXTRA_SHOW_CROP_GRID, show);
        }

        public void setCropGridRowCount(@IntRange(from = 0) int count) {
            this.mOptionBundle.putInt(EXTRA_CROP_GRID_ROW_COUNT, count);
        }

        public void setCropGridColumnCount(@IntRange(from = 0) int count) {
            this.mOptionBundle.putInt(EXTRA_CROP_GRID_COLUMN_COUNT, count);
        }

        public void setCropGridColor(@ColorInt int color) {
            this.mOptionBundle.putInt(EXTRA_CROP_GRID_COLOR, color);
        }

        public void setCropGridStrokeWidth(@IntRange(from = 0) int width) {
            this.mOptionBundle.putInt(EXTRA_CROP_GRID_STROKE_WIDTH, width);
        }

        public void setCropCoverImage(@NonNull Bitmap bitmap) {
            ByteArrayOutputStream bs = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, bs);
            this.mOptionBundle.putByteArray(EXTRA_CROP_COVER_IMAGE, bs.toByteArray());
        }

        public void setShowCropCoverColorMask(boolean show) {
            this.mOptionBundle.putBoolean(EXTRA_SHOW_CROP_COVER_COLOR_MASK, show);
        }

        public void setToolbarColor(@ColorInt int color) {
            this.mOptionBundle.putInt(EXTRA_TOOL_BAR_COLOR, color);
        }

        public void setStatusBarColor(@ColorInt int color) {
            this.mOptionBundle.putInt(EXTRA_STATUS_BAR_COLOR, color);
        }

        public void setToolbarWidgetColor(@ColorInt int color) {
            this.mOptionBundle.putInt(EXTRA_UCROP_WIDGET_COLOR_TOOLBAR, color);
        }

        public void setToolbarTitle(@Nullable String text) {
            this.mOptionBundle.putString(EXTRA_UCROP_TITLE_TEXT_TOOLBAR, text);
        }

        public void setHideBottomControls(boolean hide) {
            this.mOptionBundle.putBoolean(EXTRA_HIDE_BOTTOM_CONTROLS, hide);
        }
    }
}
