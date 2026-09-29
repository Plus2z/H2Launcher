package net.oneplus.h2launcher.customizations;

import android.app.ProgressDialog;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.annotation.Nullable;
import android.support.v7.graphics.Palette;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.oneplus.sdk.wrapper.android.app.OpWallpaperManager;
import java.lang.ref.WeakReference;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.crop.UCrop;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperImageCache;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker;
import net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.UriWallpaperInfo;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class WallpaperCard extends BaseCustomizationCard {
    public static final String ACTION_BLUR_WALLPAPER_SETTINGS_CHANGED = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED";
    public static final int DEFAULT_COMPRESS_QUALITY = 100;
    public static final int FLOW_LAYOUT_NUM_COLUMNS = 3;
    private static final String TAG = WallpaperCard.class.getSimpleName();
    private int mColorOverlay;
    private WallpapersRecyclerView.WallpaperTileInfoFilter mFilter;
    private int mHomeScreenOrientation;
    private LoadUriWallpaperTask mLoadUriWallpaperTask;
    private ProgressDialog mLoadingProgressDialog;
    private View.OnClickListener mOnOrientationButtonClickListener;
    private View mOrientationBox;
    private OptionButton mOrientationLand;
    private OptionButton mOrientationPort;
    private WallpaperTileInfo[] mPreferenceTiles;
    private WallpapersRecyclerView mRecyclerView;
    private WallpaperTileInfo[] mSelectedTiles;
    private View.OnClickListener mThumbnailOnClickListener;
    private WallpaperColorsListener mWallpaperColorsListener;
    private WallpaperPreview mWallpaperPreview;

    /* loaded from: classes.dex */
    public interface WallpaperColorsListener {
        void onWallpaperColorsChanged(WallpaperTileInfo wallpaperTileInfo, List<Palette.Swatch> list);
    }

    public WallpaperCard(Context context) {
        this(context, null, 0);
    }

    public WallpaperCard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WallpaperCard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSelectedTiles = new WallpaperTileInfo[]{null, null};
        this.mPreferenceTiles = new WallpaperTileInfo[]{null, null};
        this.mColorOverlay = 0;
        this.mHomeScreenOrientation = 0;
        this.mThumbnailOnClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View tile) {
                WallpaperTileInfo info = (WallpaperTileInfo) tile.getTag();
                WallpaperCard.this.onClickTile(tile, info, WallpaperCard.this.mWallpaperPreview.getCurrentPage());
                WallpaperCard.this.autoSelectLockWallpaperIfCleared(info);
            }
        };
        this.mOnOrientationButtonClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                WallpaperCard.this.mHomeScreenOrientation = v.getId() == R.id.orientation_land ? 1 : 0;
                WallpaperCard.this.updateOrientationBox();
                WallpaperCard.this.mRecyclerView.applyFilter(WallpaperCard.this.mFilter);
                WallpaperTileInfo current = WallpaperCard.this.mSelectedTiles[WallpaperCard.this.mWallpaperPreview.getCurrentPage()];
                if (current == null) {
                    Logger.d(WallpaperCard.TAG, "last selected tile is null");
                    return;
                }
                String name = current.getName();
                int orientation = WallpaperCard.this.mHomeScreenOrientation;
                WallpaperTileInfo info = WallpaperCard.this.mRecyclerView.findWallpaperTileInfo(name, orientation);
                if (info != null) {
                    WallpaperCard.this.onClickTile(null, info, WallpaperCard.this.mWallpaperPreview.getCurrentPage());
                }
            }
        };
        this.mFilter = new WallpapersRecyclerView.WallpaperTileInfoFilter() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.3
            @Override // net.oneplus.h2launcher.customizations.wallpaper.WallpapersRecyclerView.WallpaperTileInfoFilter
            public boolean filter(WallpaperTileInfo tileInfo) {
                if (WallpaperCard.this.getWallpaperPreview().getCurrentPage() == 1) {
                    return WallpaperTileInfo.Type.GALLERY.equals(tileInfo.getType()) || WallpaperTileInfo.Type.ONEDAYONEPHOTO.equals(tileInfo.getType()) || tileInfo.isLive() || tileInfo.isThirdParty() || tileInfo.getOrientation() == WallpaperCard.this.mHomeScreenOrientation;
                }
                return (tileInfo.isLive() || tileInfo.isThirdParty() || tileInfo.isLandscape()) ? false : true;
            }
        };
        this.mColorOverlay = getResources().getColor(R.color.wallpaper_picker_translucent_gray, null);
        setupContentView(this.mContent);
        reloadCustomizationSettings();
        WallpaperPreview.OnPageChangeListenerAdapter previewItemChangeListener = new WallpaperPreview.OnPageChangeListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.4
            private WallpaperManager mWallpaperManager;

            {
                this.mWallpaperManager = WallpaperManager.getInstance(WallpaperCard.this.getContext().getApplicationContext());
            }

            @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.OnPageChangeListenerAdapter, android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (this.mCurrentPosition != position) {
                    if (!StyleManager.getInstance().isWallpaperScrollable()) {
                        WallpaperCard.this.updateOrientationBox();
                    }
                    WallpaperCard.this.mRecyclerView.applyFilter(WallpaperCard.this.mFilter);
                    WallpaperCard.this.mRecyclerView.scrollToPosition(0);
                    updateWallpaperBackground(position);
                }
                super.onPageSelected(position);
            }

            private void updateWallpaperBackground(int position) {
                WallpaperTileInfo tileInfo = WallpaperCard.this.mSelectedTiles[position];
                Bitmap preview = null;
                if (tileInfo != null) {
                    preview = WallpaperCard.this.getImageFromCache(tileInfo.getPreviewCacheKey(position));
                }
                if (preview == null) {
                    WallpaperPreview.Model model = WallpaperPreview.Model.getInstance(WallpaperCard.this.getContext());
                    WallpaperInfo info = this.mWallpaperManager.getWallpaperInfo();
                    preview = model.loadWallpaperFromCache(WallpaperCard.this.getContext(), position, info);
                }
                if (preview == null) {
                    Logger.w(WallpaperCard.TAG, "cannot get wallpaper preview: position=%d", Integer.valueOf(position));
                } else {
                    WallpapersContainerView.updateWallpaperBackground(preview, true);
                }
            }
        };
        getWallpaperPreview().addOnPageChangeListener(previewItemChangeListener);
    }

    public static Size getDefaultThumbnailSize(Resources res) {
        DisplayMetrics metrics = res.getDisplayMetrics();
        int spacing = res.getDimensionPixelSize(R.dimen.picker_flow_layout_spacing);
        int cardPadding = res.getDimensionPixelSize(R.dimen.customization_card_padding_sides);
        int cardContentPadding = res.getDimensionPixelSize(R.dimen.customization_card_content_padding_sides_small);
        int contentWidth = ((metrics.widthPixels - (cardPadding * 2)) - (cardContentPadding * 2)) - (spacing * 2);
        int size = contentWidth / 3;
        return new Size(size, size);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (((Integer) getTag()).intValue() == getCardContainer().mPager.getCurrentItem()) {
            slideTo(getSlideOffset());
        }
    }

    public View.OnClickListener getOnThumbnailClickListener() {
        return this.mThumbnailOnClickListener;
    }

    public int getColorOverlay() {
        return this.mColorOverlay;
    }

    public int getHomeScreenOrientation() {
        return this.mHomeScreenOrientation;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getContentView() {
        LayoutInflater inflater = LayoutInflater.from(getContext());
        return inflater.inflate(R.layout.customization_wallpaper, (ViewGroup) this, false);
    }

    private void setupContentView(View content) {
        this.mRecyclerView = (WallpapersRecyclerView) content.findViewById(R.id.master_wallpaper_list);
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setWallpaperCard(this);
        }
        if (!StyleManager.getInstance().isWallpaperScrollable()) {
            this.mOrientationBox = content.findViewById(R.id.orientation_box);
            this.mOrientationPort = (OptionButton) content.findViewById(R.id.orientation_port);
            this.mOrientationLand = (OptionButton) content.findViewById(R.id.orientation_land);
            if (this.mOrientationBox != null) {
                this.mOrientationBox.setVisibility(0);
            }
            if (this.mOrientationPort != null) {
                this.mOrientationPort.setOnClickListener(this.mOnOrientationButtonClickListener);
            }
            if (this.mOrientationLand != null) {
                this.mOrientationLand.setOnClickListener(this.mOnOrientationButtonClickListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void reloadCustomizationSettings() {
        WallpaperTileInfo wallpaperTile;
        this.mHomeScreenOrientation = StyleManager.getInstance().isWallpaperScrollable() ? 0 : 1;
        for (int screen = 0; screen < this.mSelectedTiles.length; screen++) {
            clearSelectedTile(screen);
            this.mSelectedTiles[screen] = null;
        }
        Context context = getContext();
        for (int screen2 = 0; screen2 < this.mSelectedTiles.length; screen2++) {
            WallpaperTileInfo[] wallpaperTileInfoArr = this.mPreferenceTiles;
            if (screen2 == 0) {
                wallpaperTile = PreferencesHelper.getLockWallpaperTile(context);
            } else {
                wallpaperTile = PreferencesHelper.getWallpaperTile(context);
            }
            wallpaperTileInfoArr[screen2] = wallpaperTile;
            if (this.mPreferenceTiles[screen2] != null) {
                this.mSelectedTiles[screen2] = this.mPreferenceTiles[screen2];
                if (screen2 == 1) {
                    this.mHomeScreenOrientation = this.mPreferenceTiles[screen2].getOrientation();
                }
            }
        }
        if (!StyleManager.getInstance().isWallpaperScrollable()) {
            updateOrientationBox();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOrientationBox() {
        if (this.mOrientationBox != null) {
            int currentPage = getWallpaperPreview().getCurrentPage();
            boolean enabled = currentPage == 1 && this.mSelectedTiles[1] != null;
            this.mOrientationLand.setClickable(enabled);
            this.mOrientationPort.setClickable(enabled);
            this.mOrientationBox.setAlpha(enabled ? 1.0f : 0.26f);
            updateOrientationButtons();
        }
    }

    private void updateOrientationButtons() {
        this.mOrientationPort.setSelected(this.mHomeScreenOrientation == 0);
        this.mOrientationLand.setSelected(this.mHomeScreenOrientation == 1);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected BaseCustomizationCard.SaveCustomizationTask getSaveCustomizationTask() {
        boolean isBlurWallpaperSettingsChanged;
        cancelLoadUriWallpaperTask();
        final WallpaperTileInfo lockScreenTileInfo = this.mSelectedTiles[0];
        final WallpaperTileInfo homeScreenTileInfo = this.mSelectedTiles[1];
        final boolean isLockScreenWallpaperChanged = (lockScreenTileInfo == null || lockScreenTileInfo.equals(this.mPreferenceTiles[0])) ? false : true;
        final boolean isHomeScreenWallpaperChanged = (homeScreenTileInfo == null || homeScreenTileInfo.equals(this.mPreferenceTiles[1])) ? false : true;
        Logger.d(TAG, "isLockScreenWallpaperChanged=%b, isHomeScreenWallpaperChanged=%b", Boolean.valueOf(isLockScreenWallpaperChanged), Boolean.valueOf(isHomeScreenWallpaperChanged));
        BlurWallpaperSettings last = PreferencesHelper.getBlurWallpaperSettings(getContext());
        BlurWallpaperSettings temp = null;
        if (StyleManager.getInstance().isWallpaperScrollable()) {
            isBlurWallpaperSettingsChanged = isHomeScreenWallpaperChanged;
            if (isBlurWallpaperSettingsChanged) {
                temp = last;
                temp.scrollMode = BlurWallpaperSettings.emptySettings().scrollMode;
                temp.notify = false;
            }
        } else {
            WallpaperPager wallpaperPager = this.mLauncher.getWallpapersView().getPager();
            WallpaperColorCustomizationCard colorCard = wallpaperPager.getWallpaperColorCard();
            if (colorCard == null) {
                Logger.e(TAG, "cannot get wallpaper color card");
                return null;
            }
            temp = colorCard.getBlurWallpaperSettings();
            isBlurWallpaperSettingsChanged = !last.theSameAs(temp);
            if (isBlurWallpaperSettingsChanged) {
                temp.scrollMode = BlurWallpaperSettings.emptySettings().scrollMode;
                temp.notify = !isHomeScreenWallpaperChanged;
            }
        }
        Logger.d(TAG, "isBlurWallpaperSettingsChanged=%b", Boolean.valueOf(isBlurWallpaperSettingsChanged));
        if (!isHomeScreenWallpaperChanged && !isBlurWallpaperSettingsChanged && !isLockScreenWallpaperChanged) {
            return null;
        }
        final BlurWallpaperSettings settings = temp;
        int screen = (isHomeScreenWallpaperChanged || isBlurWallpaperSettingsChanged) ? 1 : 0;
        return new SaveWallpaperCustomizationTask(TAG, screen) { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.5
            @Override // java.lang.Runnable
            public void run() {
                if (settings != null) {
                    PreferencesHelper.setBlurWallpaperSettings(WallpaperCard.this.getContext(), settings);
                    if (settings.notify) {
                        WallpaperCard.this.notifyBlurWallpaperSettingChanged();
                    }
                }
                Context context = WallpaperCard.this.getContext();
                if (isLockScreenWallpaperChanged) {
                    lockScreenTileInfo.onBeforeSave(WallpaperCard.this.mHomeScreenOrientation);
                    lockScreenTileInfo.onSave(context, 0);
                }
                if (homeScreenTileInfo != null && (isHomeScreenWallpaperChanged || Utilities.isGestureButtonEnabled(context))) {
                    homeScreenTileInfo.onBeforeSave(WallpaperCard.this.mHomeScreenOrientation);
                    homeScreenTileInfo.onSave(context, 1);
                }
                if (!StyleManager.getInstance().isWallpaperScrollable() && (homeScreenTileInfo instanceof UriWallpaperInfo)) {
                    WallpaperCard.this.saveSecondaryWallpaperTile(homeScreenTileInfo, 1);
                }
                WallpaperCard.this.saveWallpaperToCache();
                if (StyleManager.isSimplifiedLayout()) {
                    WallpaperCard.this.logAnalytics(settings, homeScreenTileInfo);
                }
            }
        };
    }

    private void cancelLoadUriWallpaperTask() {
        if (Utilities.isTaskUnfinished(this.mLoadUriWallpaperTask)) {
            this.mLoadUriWallpaperTask.cancel(true);
        }
        if (this.mLoadingProgressDialog != null && this.mLoadingProgressDialog.isShowing()) {
            this.mLoadingProgressDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBlurWallpaperSettingChanged() {
        getContext().sendBroadcast(new Intent("net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAnalytics(BlurWallpaperSettings settings, WallpaperTileInfo homeScreenTileInfo) {
        Map<String, String> data = new HashMap<>();
        String wallpaperMode = this.mHomeScreenOrientation == 1 ? "0" : "1";
        data.put(AnalyticHelper.Label.MDM_OPTIONS_H2_WALLPAPER_MODE, wallpaperMode);
        if (homeScreenTileInfo != null) {
            String wallpaperType = null;
            WallpaperTileInfo.Type type = homeScreenTileInfo.getType();
            switch (type) {
                case RESOURCE:
                    wallpaperType = "0";
                    break;
                case FILE:
                    wallpaperType = "1";
                    break;
                default:
                    Logger.d(TAG, "unknown wallpaper type: %s", type);
                    break;
            }
            if (!TextUtils.isEmpty(wallpaperType)) {
                data.put(AnalyticHelper.Label.MDM_OPTIONS_H2_WALLPAPER_TYPE, wallpaperType);
            }
        }
        if (settings != null) {
            String wallpaperBlur = settings.blurEnabled ? "TRUE" : "FALSE";
            data.put(AnalyticHelper.Label.MDM_OPTIONS_H2_WALLPAPER_BLUR, wallpaperBlur);
        }
        WallpaperColor wallpaperColor = PreferencesHelper.getWallpaperColor(getContext());
        if (wallpaperColor != null) {
            String color = wallpaperColor.index == 0 ? "0" : "1";
            data.put(AnalyticHelper.Label.MDM_OPTIONS_H2_WALLPAPER_COLOR, color);
        }
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_H2_TAG, data);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected void trimMemory(int level) {
        Logger.i(TAG, "[Trim Memory] wallpaperCard, level:%d", Integer.valueOf(level));
        if (level == 60) {
            trimPartialData();
            if (this.mWallpaperPreview != null) {
                this.mWallpaperPreview.clearPreviewItemBackground();
            }
            WallpaperImageCache.clear();
        }
    }

    protected void trimPartialData() {
        Logger.i(TAG, "[Trim Memory] trimPartialData");
        if (this.mRecyclerView != null) {
            this.mRecyclerView.trimWallpaperTileData();
        }
        WallpaperImageCache.trimPreviewData();
        if (this.mWallpaperPreview != null) {
            this.mWallpaperPreview.clearPreviewItemBackground();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSecondaryWallpaperTile(WallpaperTileInfo info, int screen) {
        if (info == null) {
            Logger.w(TAG, "invalid secondary wallpaper info");
            return;
        }
        String name = info.getName();
        int orientation = info.getOrientation() == 0 ? 1 : 0;
        WallpaperTileInfo secondary = this.mRecyclerView.findWallpaperTileInfo(name, orientation);
        if (secondary != null && (secondary instanceof UriWallpaperInfo)) {
            secondary.onBeforeSave(this.mHomeScreenOrientation);
            secondary.onSave(getContext(), screen);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveWallpaperToCache() {
        this.mWallpaperPreview.saveWallpaperToCache();
    }

    private boolean shouldApplyColorMaskInPreview(int currentPage, WallpaperTileInfo info) {
        return StyleManager.getInstance().drawWallpaperColorMask() && currentPage == 1 && info.isSelectable();
    }

    public void setWallpaperColorsListener(WallpaperColorsListener listener) {
        this.mWallpaperColorsListener = listener;
    }

    public void performLoadThumbnails() {
        if (!PermissionUtils.hasGrantedPermission(getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
            Launcher launcher = (Launcher) getContext();
            PermissionUtils.requestPermission(launcher, "android.permission.READ_EXTERNAL_STORAGE", 200);
        }
        this.mRecyclerView.loadWallpaperThumbnails();
    }

    public void onReadExternalStoragePermissionGranted() {
        if (this.mRecyclerView != null && this.mRecyclerView.getAdapter() != null) {
            this.mRecyclerView.getAdapter().notifyDataSetChanged();
        }
    }

    public void loadWallpaper(WallpaperPreview wallpaperPreview) {
        Logger.d(TAG, "loadWallpaper");
        this.mWallpaperPreview = wallpaperPreview;
        if (this.mWallpaperPreview != null) {
            this.mWallpaperPreview.clearPreviewItemBackground();
            this.mWallpaperPreview.loadWallpaper(getContext());
        }
    }

    public WallpaperPreview getWallpaperPreview() {
        return this.mLauncher.getWallpapersView().getWallpaperPreview();
    }

    public void setWallpaperPreview(WallpaperPreview wallpaperPreview) {
        this.mWallpaperPreview = wallpaperPreview;
    }

    public void setWallpaper(int screen, String cacheKey, Bitmap wallpaper) {
        if (WallpaperImageCache.getImage(cacheKey) == null) {
            WallpaperImageCache.cacheImage(cacheKey, wallpaper);
        }
        Drawable drawable = new BitmapDrawable(getResources(), wallpaper);
        this.mWallpaperPreview.setPreviewItemBackground(screen, drawable);
        WallpapersContainerView.updateWallpaperBackground(wallpaper, true);
    }

    public Bitmap getImageFromCache(String cacheKey) {
        return WallpaperImageCache.getImage(cacheKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClickTile(View tile, WallpaperTileInfo info, int screen) {
        if (info == null) {
            Logger.w(TAG, "empty wallpaper tile info");
            return;
        }
        if (info.equals(this.mSelectedTiles[screen])) {
            Logger.d(TAG, "same wallpaper tile selected for screen: %d", Integer.valueOf(screen));
            return;
        }
        if (info.isSelectable()) {
            clearSelectedTile(screen);
            selectTile(tile);
            this.mSelectedTiles[screen] = info;
        }
        if (shouldApplyColorMaskInPreview(screen, info)) {
            WallpaperTaskWorker.get().post(new ApplyPreviewWithColorMask(info, screen));
        } else {
            info.onClick(this, screen, true);
        }
        updateOrientationBox();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoSelectLockWallpaperIfCleared(WallpaperTileInfo homeInfo) {
        if (homeInfo != null && this.mSelectedTiles[0] == null) {
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(getContext().getApplicationContext());
            if (OpWallpaperManager.getKeyguardBitmap(wallpaperManager) == null) {
                Logger.d(TAG, "lock screen wallpaper is empty");
                String name = homeInfo.getName();
                WallpaperTileInfo lockInfo = this.mRecyclerView.findWallpaperTileInfo(name, 0);
                if (lockInfo != null) {
                    onClickTile(null, lockInfo, 0);
                } else {
                    Logger.w(TAG, "unable to find lock screen tile for current tile: %s", homeInfo);
                }
            }
        }
    }

    private void selectTile(View tile) {
        if (tile == null) {
            Logger.w(TAG, "invalid wallpaper tile");
            return;
        }
        Selection selection = (Selection) tile.findViewById(R.id.selection);
        if (selection != null) {
            selection.setSelected(true);
        }
    }

    public WallpaperTileInfo getSelectedTile() {
        return getSelectedTile(this.mWallpaperPreview.getCurrentPage());
    }

    protected WallpaperTileInfo getSelectedTile(int index) {
        if (index < 0 || index >= this.mSelectedTiles.length) {
            return null;
        }
        return this.mSelectedTiles[index];
    }

    protected void clearSelectedTile(int currentPage) {
        Selection selection;
        WallpaperTileInfo info = this.mSelectedTiles[currentPage];
        View selectedTile = this.mRecyclerView.findWallpaperTileView(info);
        if (selectedTile != null && (selection = (Selection) selectedTile.findViewById(R.id.selection)) != null) {
            selection.setSelected(false);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getScrollableView() {
        return this.mRecyclerView;
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getBottommostViewInScrollableView() {
        int childCount;
        return (this.mRecyclerView == null || (childCount = this.mRecyclerView.getChildCount()) <= 0) ? super.getBottommostViewInScrollableView() : this.mRecyclerView.getChildAt(childCount - 1);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected void onLeftCustomization() {
        super.onLeftCustomization();
        Logger.d(TAG, "onLeftCustomization");
        WallpaperUtils.purgeCropFiles(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTemporaryWallpaperTile(List<UriWallpaperInfo> uriWallpaperInfos) {
        this.mLoadUriWallpaperTask = new LoadUriWallpaperTask(uriWallpaperInfos);
        this.mLoadUriWallpaperTask.executeOnExecutor(WallpaperTaskWorker.getNormalPriorityExecutor(), new Void[0]);
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        this.mLauncher.startActivityForResult(intent, requestCode);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (data == null) {
            Logger.d(TAG, "invalid data");
            return;
        }
        if (resultCode != -1) {
            Logger.d(TAG, "invalid result code: %d", Integer.valueOf(requestCode));
            return;
        }
        final List<UriWallpaperInfo> uriWallpaperInfos = new ArrayList<>();
        if (requestCode == 10 || requestCode == 25) {
            if (data.getData() != null) {
                Uri uri = data.getData();
                uriWallpaperInfos.add(new UriWallpaperInfo(uri, uri, Integer.MIN_VALUE, 0));
            }
        } else if (requestCode == 15 || requestCode == 16) {
            Uri srcUri = UCrop.getInput(data);
            Uri uri2 = UCrop.getOutput(data);
            int maskColor = UCrop.getOutputMaskColor(data);
            int orientation = UCrop.getOutputCropAspectRatio(data) > 1.0f ? 1 : 0;
            uriWallpaperInfos.add(new UriWallpaperInfo(srcUri, uri2, maskColor, orientation));
            Uri uri22 = UCrop.getOutputSecondary(data);
            if (uri22 != null) {
                int maskColor2 = UCrop.getOutputMaskColorSecondary(data);
                int orientation2 = UCrop.getOutputCropAspectRatioSecondary(data) > 1.0f ? 1 : 0;
                uriWallpaperInfos.add(new UriWallpaperInfo(srcUri, uri22, maskColor2, orientation2));
            }
        }
        Runnable addWallpaperTileRunnable = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.6
            @Override // java.lang.Runnable
            public void run() {
                WallpaperTaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        WallpaperCard.this.addTemporaryWallpaperTile(uriWallpaperInfos);
                    }
                });
            }
        };
        WallpaperTaskWorker.get().post(addWallpaperTileRunnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isMemoryTrimmed() {
        return this.mRecyclerView != null && this.mRecyclerView.isMemoryTrimmed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ApplyPreviewWithColorMask implements Runnable {
        private final int mScreen;
        private final WallpaperTileInfo mWallpaperTileInfo;

        private ApplyPreviewWithColorMask(WallpaperTileInfo wallpaperTileInfo, int screen) {
            this.mWallpaperTileInfo = wallpaperTileInfo;
            this.mScreen = screen;
        }

        @Override // java.lang.Runnable
        public void run() {
            int maskColor = 0;
            Logger.d(WallpaperCard.TAG, "[ApplyPreviewWithColorMask1] info=%s, screen=%d", this.mWallpaperTileInfo, Integer.valueOf(this.mScreen));
            final WallpaperTileInfo info = this.mWallpaperTileInfo;
            final List<Palette.Swatch> swatches = info.loadSwatches(WallpaperCard.this.getContext());
            if (swatches != null && !swatches.isEmpty()) {
                maskColor = swatches.get(0).getRgb();
            }
            WallpaperCard.this.mWallpaperPreview.setMaskColor(maskColor);
            WallpaperTaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.ApplyPreviewWithColorMask.1
                @Override // java.lang.Runnable
                public void run() {
                    Logger.d(WallpaperCard.TAG, "[ApplyPreviewWithColorMask2] info=%s, screen=%d", ApplyPreviewWithColorMask.this.mWallpaperTileInfo, Integer.valueOf(ApplyPreviewWithColorMask.this.mScreen));
                    if (WallpaperCard.this.mWallpaperColorsListener != null) {
                        WallpaperCard.this.mWallpaperColorsListener.onWallpaperColorsChanged(info, swatches);
                    }
                    info.onClick(WallpaperCard.this, ApplyPreviewWithColorMask.this.mScreen, true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class LoadUriWallpaperTask extends AsyncTask<Void, Void, Boolean> {
        private WeakReference<Context> mContextRef;
        private int mScreen;
        private String mSerialNumber;
        private List<UriWallpaperInfo> mUriWallpaperInfos;

        private LoadUriWallpaperTask(List<UriWallpaperInfo> uriWallpaperInfos) {
            if (uriWallpaperInfos == null || uriWallpaperInfos.isEmpty()) {
                throw new InvalidParameterException("Invalid uri wallpaper infos");
            }
            this.mUriWallpaperInfos = uriWallpaperInfos;
            this.mContextRef = new WeakReference<>(WallpaperCard.this.getContext());
            this.mSerialNumber = String.valueOf(System.currentTimeMillis());
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.mScreen = WallpaperCard.this.getWallpaperPreview().getCurrentPage();
            if (WallpaperCard.this.mLoadingProgressDialog != null && WallpaperCard.this.mLoadingProgressDialog.isShowing()) {
                WallpaperCard.this.mLoadingProgressDialog.dismiss();
            }
            WallpaperCard.this.mLoadingProgressDialog = new ProgressDialog(WallpaperCard.this.mLauncher);
            WallpaperCard.this.mLoadingProgressDialog.setMessage(WallpaperCard.this.mLauncher.getString(R.string.loading_photo));
            WallpaperCard.this.mLoadingProgressDialog.setIndeterminate(false);
            WallpaperCard.this.mLoadingProgressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperCard.LoadUriWallpaperTask.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    LoadUriWallpaperTask.this.cancel(true);
                }
            });
            WallpaperCard.this.mLoadingProgressDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... args) {
            boolean allUriInfoLoaded = true;
            Context context = this.mContextRef.get();
            if (context != null) {
                for (UriWallpaperInfo info : this.mUriWallpaperInfos) {
                    info.updateMetaData(this.mSerialNumber);
                    info.loadImage(context, this.mScreen);
                    info.loadSwatches(context);
                    allUriInfoLoaded = allUriInfoLoaded && info.getThumbnail() != null;
                }
            }
            return Boolean.valueOf(allUriInfoLoaded);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean allUriInfoLoaded) {
            if (!isCancelled() && allUriInfoLoaded.booleanValue()) {
                this.mUriWallpaperInfos.get(0).setShouldPerformClickOnBound(true);
                WallpaperCard.this.mRecyclerView.addWallpaperTiles(WallpaperCard.this.mRecyclerView.getPickWallpaperTilesCount(), this.mUriWallpaperInfos);
            }
            if (WallpaperCard.this.mLoadingProgressDialog != null) {
                WallpaperCard.this.mLoadingProgressDialog.dismiss();
                WallpaperCard.this.mLoadingProgressDialog = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class SaveWallpaperCustomizationTask extends BaseCustomizationCard.SaveCustomizationTask {
        private final int mScreen;

        public SaveWallpaperCustomizationTask(String tag, int screen) {
            super(tag);
            this.mScreen = screen;
        }

        public int getScreen() {
            return this.mScreen;
        }
    }
}
