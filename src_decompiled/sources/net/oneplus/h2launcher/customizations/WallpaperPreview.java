package net.oneplus.h2launcher.customizations;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.FloatRange;
import android.support.annotation.Nullable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import com.oneplus.sdk.wrapper.android.app.OpWallpaperManager;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperImageCache;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;
import net.oneplus.h2launcher.wallpaper.BlurWallpaper;

/* loaded from: classes.dex */
public class WallpaperPreview extends ViewPager {
    private static final float CARD_SLIDE_SHRINK_FRACTION_WALLPAPER_PREVIEW = 0.148f;
    private static final float CARD_SLIDE_SHRINK_FRACTION_WALLPAPER_PREVIEW_ITEM = 0.12f;
    public static final int HOME_SCREEN = 1;
    public static final String HOME_SCREEN_WALLPAPER = "home_screen_wallpaper";
    public static final int LOCK_SCREEN = 0;
    public static final String LOCK_SCREEN_WALLPAPER = "lock_screen_wallpaper";
    private static final String TAG = WallpaperPreview.class.getSimpleName();
    private static final int[] sIndices = {0, 1};
    private WallpaperPreviewAdapter mAdapter;
    private int mCurrentPage;
    private WallpaperPreviewHelper mHelper;
    private List<WallpaperPreviewItem> mItems;
    private Model mModel;
    private ViewPager.OnPageChangeListener mOnPageChangeListener;
    private Drawable mOverlayCover;
    private View mPreviewTitles;
    private float mPreviewTitlesTranslationX;
    private float mPreviewTitlesTranslationY;
    private boolean mSelectingPage;
    private List<View> mTitles;

    public WallpaperPreview(Context context) {
        this(context, null);
    }

    public WallpaperPreview(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                WallpaperPreview.this.selectPage(position, true);
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }
        };
        WallpaperPreviewHelper.init(context);
        this.mHelper = WallpaperPreviewHelper.getInstance();
        this.mModel = Model.getInstance(context);
        Resources res = getResources();
        this.mOverlayCover = res.getDrawable(R.drawable.wallpaper_preview_item_cover, getContext().getTheme());
        this.mPreviewTitlesTranslationX = res.getDimensionPixelSize(R.dimen.picker_texts_translation_x);
        this.mPreviewTitlesTranslationY = res.getDimensionPixelSize(R.dimen.picker_texts_translation_y);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mCurrentPage = 1;
        this.mItems = new ArrayList();
        this.mItems.add(new WallpaperPreviewItem(getContext(), this, getLockOverlayResId(), 0));
        this.mItems.add(new WallpaperPreviewItem(getContext(), this, R.drawable.home_overlay, 1));
        this.mAdapter = new WallpaperPreviewAdapter();
        setPageMargin(this.mHelper.getWallpaperPreviewPageMarginPx());
        setOverScrollMode(2);
        setAdapter(this.mAdapter);
        setCurrentItem(this.mCurrentPage);
        addOnPageChangeListener(this.mOnPageChangeListener);
        setPivotX(this.mHelper.getWallpaperPreviewWidth() / 2.0f);
        setPivotY(0.0f);
    }

    private int getLockOverlayResId() {
        String deviceTag = Utilities.getDeviceTag();
        char c = 65535;
        switch (deviceTag.hashCode()) {
            case 46886805:
                if (deviceTag.equals(Utilities.DEVICE_15801)) {
                    c = 0;
                    break;
                }
                break;
            case 46886836:
                if (deviceTag.equals(Utilities.DEVICE_15811)) {
                    c = 1;
                    break;
                }
                break;
            case 46916759:
                if (deviceTag.equals(Utilities.DEVICE_16859)) {
                    c = 2;
                    break;
                }
                break;
            case 46946387:
                if (deviceTag.equals(Utilities.DEVICE_17801)) {
                    c = 3;
                    break;
                }
                break;
            case 46946426:
                if (deviceTag.equals(Utilities.DEVICE_17819)) {
                    c = 4;
                    break;
                }
                break;
            case 46976178:
                if (deviceTag.equals(Utilities.DEVICE_18801)) {
                    c = 5;
                    break;
                }
                break;
            case 46976209:
                if (deviceTag.equals(Utilities.DEVICE_18811)) {
                    c = 6;
                    break;
                }
                break;
            case 46976240:
                if (deviceTag.equals(Utilities.DEVICE_18821)) {
                    c = 7;
                    break;
                }
                break;
            case 46976339:
                if (deviceTag.equals(Utilities.DEVICE_18857)) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                return R.drawable.lock_overlay;
            case 3:
                return R.drawable.lock_overlay_17801;
            case 4:
                return R.drawable.lock_overlay_17819;
            case 5:
            case 6:
                return R.drawable.lock_overlay_18801;
            default:
                return R.drawable.lock_overlay_18821;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPreviewTitles(View titles) {
        this.mPreviewTitles = titles;
        this.mTitles = new ArrayList();
        if (this.mPreviewTitles != null) {
            this.mTitles.add(titles.findViewById(R.id.lockscreen_title));
            this.mTitles.add(titles.findViewById(R.id.homescreen_title));
        }
    }

    public void setPreviewCover(Drawable cover, int index) {
        if (this.mItems != null && this.mItems.get(index) != null) {
            this.mItems.get(index).setOverlayCover(cover);
        }
    }

    public Bitmap getPreviewCover(int screen) {
        if (this.mItems == null || this.mItems.get(screen) == null) {
            return null;
        }
        return this.mItems.get(screen).getOverlayCover();
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPreviewItemBackground(final int index, final Drawable drawable) {
        Runnable setBackgroundRunnable = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.2
            @Override // java.lang.Runnable
            public void run() {
                ((WallpaperPreviewItem) WallpaperPreview.this.mItems.get(index)).setPreviewBackground(drawable);
            }
        };
        post(setBackgroundRunnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearPreviewItemBackground() {
        for (WallpaperPreviewItem wallpaperPreviewItem : this.mItems) {
            wallpaperPreviewItem.setPreviewBackground(null);
            if (wallpaperPreviewItem.mIndex == 1) {
                wallpaperPreviewItem.setOverlayCover(this.mOverlayCover);
            }
        }
    }

    public int getMaskColor() {
        return this.mModel.getMaskColor();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setMaskColor(int color) {
        this.mModel.setMaskColor(color);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSlideOffset(float slideOffset) {
        float scale = 1.0f - (CARD_SLIDE_SHRINK_FRACTION_WALLPAPER_PREVIEW * slideOffset);
        setScale(this, scale);
        for (WallpaperPreviewItem item : this.mItems) {
            float scale2 = 1.0f - (CARD_SLIDE_SHRINK_FRACTION_WALLPAPER_PREVIEW_ITEM * slideOffset);
            setScale(item, scale2);
        }
        if (this.mPreviewTitles != null) {
            this.mPreviewTitles.setTranslationY(this.mPreviewTitlesTranslationY * slideOffset);
            for (View title : this.mTitles) {
                float direction = title.getId() == R.id.lockscreen_title ? 1.0f : -1.0f;
                title.setTranslationX(this.mPreviewTitlesTranslationX * direction * slideOffset);
            }
        }
    }

    private void setScale(View view, float scale) {
        view.setScaleX(scale);
        view.setScaleY(scale);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void selectPage(int index, boolean animate) {
        if (!this.mSelectingPage) {
            this.mCurrentPage = index;
            this.mSelectingPage = true;
            if (animate) {
                ValueAnimator va = ValueAnimator.ofFloat(0.0f, 1.0f);
                va.setDuration(500L);
                va.setInterpolator(new PathInterpolator(0.4f, 0.2f, 0.0f, 1.0f));
                va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        float value = ((Float) animation.getAnimatedValue()).floatValue();
                        WallpaperPreview.this.mAdapter.changeSelection(value);
                    }
                });
                va.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        WallpaperPreview.this.mSelectingPage = false;
                    }
                });
                va.start();
                return;
            }
            this.mAdapter.changeSelection(this.mCurrentPage != 1 ? 0.0f : 1.0f);
            this.mSelectingPage = false;
        }
    }

    public void loadWallpaper(final Context context) {
        Context appContext = context.getApplicationContext();
        WallpaperManager manager = WallpaperManager.getInstance(appContext);
        WallpaperInfo info = manager.getWallpaperInfo();
        for (final int index : sIndices) {
            Bitmap bitmap = this.mModel.loadWallpaperFromCache(context, index, info);
            if (bitmap != null) {
                new ApplyPreviewWallpaper(index, bitmap).run();
            } else {
                WallpaperTaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Model.LoadSystemWallpaperCallback callback = new Model.LoadSystemWallpaperCallback() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.5.1
                            @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.Model.LoadSystemWallpaperCallback
                            void onWallpaperLoaded(int index2, Bitmap bitmap2) {
                                new ApplyPreviewWallpaper(index2, bitmap2).run();
                            }

                            @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.Model.LoadSystemWallpaperCallback
                            void onFailure(int index2) {
                                Logger.w(WallpaperPreview.TAG, "failed to load system wallpaper and apply preview wallpaper, index=%d", Integer.valueOf(index2));
                            }
                        };
                        WallpaperPreview.this.mModel.loadSystemWallpaper(context, index, callback);
                    }
                });
            }
        }
    }

    public void saveWallpaperToCache() {
        for (int index = 0; index < this.mItems.size(); index++) {
            Drawable drawable = this.mItems.get(index).getBackgroundDrawable();
            this.mModel.addWallpaperToCache(getContext(), drawable, index);
        }
    }

    /* loaded from: classes.dex */
    protected static class OnPageChangeListenerAdapter implements ViewPager.OnPageChangeListener {
        int mCurrentPosition = -1;

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            this.mCurrentPosition = position;
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }
    }

    /* loaded from: classes.dex */
    public static class Model {
        private static final int WALLPAPER_ID_NONE = -999;
        private static volatile Model sInstance;
        private Runnable mOnWallpaperPreloadFinishRunnable;
        private LoadSystemWallpaperCallback mPreloadWallpaperCallback;
        int mMaskColor = 0;
        private boolean[] mLoadSystemWallpaperFailed = {false, false};
        private int mLockWallpaperId = WALLPAPER_ID_NONE;
        private boolean mUserForeground = true;
        private boolean mPreloadingWallpapers = false;

        private Model(final Context context) {
            this.mPreloadWallpaperCallback = new LoadSystemWallpaperCallback() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.Model.1
                @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.Model.LoadSystemWallpaperCallback
                public void onWallpaperLoaded(int index, Bitmap bitmap) {
                    if (index == 1) {
                        WallpapersContainerView.updateWallpaperBackground(bitmap, false);
                    }
                    if (Model.this.areWallpapersLoaded(context) && Model.this.mOnWallpaperPreloadFinishRunnable != null) {
                        Model.this.mOnWallpaperPreloadFinishRunnable.run();
                        Model.this.mOnWallpaperPreloadFinishRunnable = null;
                    }
                }

                @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.Model.LoadSystemWallpaperCallback
                void onFailure(int index) {
                    Model.this.mLoadSystemWallpaperFailed[index] = true;
                }
            };
        }

        public static Model getInstance(Context context) {
            if (sInstance == null) {
                synchronized (Model.class) {
                    if (sInstance == null && context != null) {
                        sInstance = new Model(context.getApplicationContext());
                    }
                }
            }
            return sInstance;
        }

        public int getMaskColor() {
            return this.mMaskColor;
        }

        public void setMaskColor(int color) {
            this.mMaskColor = color;
        }

        void validateWallpaperPreferences(Context context) {
            int homeWallpaperId;
            int lockWallpaperId;
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
            int prefLockWallpaperId = PreferencesHelper.getWallpaperId(context, 0);
            if (prefLockWallpaperId > 0 && (lockWallpaperId = wallpaperManager.getWallpaperId(2)) != prefLockWallpaperId) {
                Logger.i(WallpaperPreview.TAG, "validateWallpaperPreferences# lock wallpaper id changed: " + prefLockWallpaperId + " -> " + lockWallpaperId);
                invalidateWallpaper(context, 0);
            }
            int prefHomeWallpaperId = PreferencesHelper.getWallpaperId(context, 1);
            if (prefHomeWallpaperId > 0 && (homeWallpaperId = wallpaperManager.getWallpaperId(1)) != prefHomeWallpaperId) {
                Logger.i(WallpaperPreview.TAG, "validateWallpaperPreferences# home wallpaper id changed: " + prefHomeWallpaperId + " -> " + homeWallpaperId);
                invalidateWallpaper(context, 1);
            }
        }

        public void preloadWallpapers(final Context context) {
            validateWallpaperPreferences(context);
            Logger.d(WallpaperPreview.TAG, "[SNDMS-1030] preloadWallpapers");
            Context appContext = context.getApplicationContext();
            WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
            for (final int index : WallpaperPreview.sIndices) {
                this.mLoadSystemWallpaperFailed[index] = false;
                Bitmap bitmap = loadWallpaperFromCache(context, index, info);
                if (bitmap != null) {
                    if (index == 1) {
                        WallpapersContainerView.updateWallpaperBackground(bitmap, false);
                    }
                    Log.d(WallpaperPreview.TAG, "preloadWallpapers# index=" + index + ", bitmap=" + bitmap);
                } else {
                    Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.Model.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.d(WallpaperPreview.TAG, "preloadWallpapers# enter run()");
                            Model.this.mPreloadingWallpapers = true;
                            Model.this.loadSystemWallpaper(context, index, Model.this.mPreloadWallpaperCallback);
                            Model.this.mPreloadingWallpapers = false;
                            Log.d(WallpaperPreview.TAG, "preloadWallpapers# leave run()");
                        }
                    };
                    WallpaperTaskWorker.get().post(r);
                }
            }
        }

        public boolean isPreloadingWallpaper() {
            return this.mPreloadingWallpapers;
        }

        public void setOnWallpaperLoadedCallback(Runnable onWallpaperPreloadFinishRunnable) {
            this.mOnWallpaperPreloadFinishRunnable = onWallpaperPreloadFinishRunnable;
        }

        public boolean areWallpapersLoaded(Context context) {
            boolean loaded = true;
            Context appContext = context.getApplicationContext();
            WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
            for (int index : WallpaperPreview.sIndices) {
                String cacheKey = getCacheKey(index, info);
                Bitmap bitmap = WallpaperImageCache.getImage(cacheKey);
                boolean loadFailed = this.mLoadSystemWallpaperFailed[index];
                loaded &= bitmap != null || loadFailed;
                Logger.d(WallpaperPreview.TAG, "[SNDMS-1030] areWallpapersLoaded: index=%d, cacheKey=%s, bitmap=%s, loadFailed=%b", Integer.valueOf(index), cacheKey, bitmap, Boolean.valueOf(loadFailed));
            }
            Logger.d(WallpaperPreview.TAG, "[SNDMS-1030] areWallpapersLoaded=%b", Boolean.valueOf(loaded));
            return loaded;
        }

        public void invalidateWallpaper(Context context, int index) {
            Context appContext = context.getApplicationContext();
            WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
            WallpaperImageCache.clearImage(getCacheKey(index, info));
            if (index == 1) {
                Logger.d(WallpaperPreview.TAG, "!!! invalidate wallpaper preferences !!!");
                PreferencesHelper.clearBlurWallpaperMaskColor(context);
                PreferencesHelper.clearWallpaperTileAndColor(context);
                WallpaperImageCache.clearImage(getCacheKey(0, info));
                BlurWallpaper.invalidateFileCache(context);
                return;
            }
            if (index == 0) {
                PreferencesHelper.clearLockWallpaperTile(context);
            }
        }

        void addWallpaperToCache(Context context, Drawable drawable, int index) {
            if (drawable != null) {
                Context appContext = context.getApplicationContext();
                WallpaperInfo info = WallpaperManager.getInstance(appContext).getWallpaperInfo();
                String cacheKey = getCacheKey(index, info);
                Bitmap background = ((BitmapDrawable) drawable).getBitmap();
                Bitmap copy = background.copy(background.getConfig(), true);
                WallpaperImageCache.cacheImage(cacheKey, copy);
            }
        }

        private String getCacheKey(int index, WallpaperInfo info) {
            String cacheKey = index == 0 ? WallpaperPreview.LOCK_SCREEN_WALLPAPER : WallpaperPreview.HOME_SCREEN_WALLPAPER;
            if (index == 1 && info != null) {
                return cacheKey + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + info.getComponent().flattenToShortString();
            }
            return cacheKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadSystemWallpaper(Context context, final int index, final LoadSystemWallpaperCallback callback) {
            Bitmap bitmap;
            Context appContext = context.getApplicationContext();
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(appContext);
            WallpaperInfo wallpaperInfo = wallpaperManager.getWallpaperInfo();
            int which = index == 0 ? 2 : 1;
            if (index == 1) {
                bitmap = loadHomeWallpaper(context, wallpaperInfo);
            } else {
                bitmap = OpWallpaperManager.getKeyguardBitmap(wallpaperManager);
                if (bitmap == null) {
                    Logger.d(WallpaperPreview.TAG, "fallback lock screen preview to home screen preview");
                    bitmap = loadHomeWallpaper(context, wallpaperInfo);
                }
            }
            if (bitmap == null) {
                Logger.i(WallpaperPreview.TAG, "failed to load system wallpaper, index:%d", Integer.valueOf(index));
            } else {
                int orientation = WallpaperUtils.resolveWallpaperOrientation(context, bitmap, false);
                ByteArrayOutputStream stream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, stream);
                WallpaperUtils.CreateParams params = new WallpaperUtils.CreateParams(stream.toByteArray(), index, true, orientation);
                Bitmap background = WallpaperUtils.createBackground(context, params);
                String cacheKey = getCacheKey(index, wallpaperInfo);
                boolean success = WallpaperImageCache.cacheImage(cacheKey, background);
                PreferencesHelper.setWallpaperId(context, index, wallpaperManager.getWallpaperId(which));
                Logger.d(WallpaperPreview.TAG, "[SNDMS-1030] loadSystemWallpaper: index=%d, success=%b", Integer.valueOf(index), Boolean.valueOf(success));
            }
            if (callback != null) {
                final Bitmap b = bitmap;
                WallpaperTaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperPreview.Model.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (b != null) {
                            callback.onWallpaperLoaded(index, b);
                        } else {
                            callback.onFailure(index);
                        }
                    }
                });
            }
        }

        Bitmap loadHomeWallpaper(Context context, WallpaperInfo wallpaperInfo) {
            Drawable drawable;
            Context appContext = context.getApplicationContext();
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(appContext);
            if (WallpaperUtils.isLatestOnePlusBlurWallpaper(context)) {
                File f = WallpaperUtils.getOnePlusBlurWallpaperFile(context);
                if (!f.exists()) {
                    Logger.e(WallpaperPreview.TAG, "wallpaper for latest blur wallpaper is empty");
                    return null;
                }
                try {
                    Bitmap bitmap = BitmapFactory.decodeFile(f.getPath(), null);
                    return bitmap;
                } catch (OutOfMemoryError e) {
                    Logger.e(WallpaperPreview.TAG, "failed loading oneplus blur wallpaper file");
                    return null;
                }
            }
            if (WallpaperUtils.isOnePlusLiveWallpaper(context)) {
                Bitmap bitmap2 = WallpaperUtils.getOnePlusLiveWallpaperBitmap(context);
                return bitmap2;
            }
            if (WallpaperUtils.isOnePlusBlurWallpaper(context)) {
                Drawable drawable2 = wallpaperManager.getDrawable();
                if (!(drawable2 instanceof BitmapDrawable)) {
                    return null;
                }
                Bitmap bitmap3 = ((BitmapDrawable) drawable2).getBitmap();
                return bitmap3;
            }
            if (WallpaperUtils.isNormalLiveWallpaper(context)) {
                PackageManager pm = context.getPackageManager();
                if (wallpaperInfo == null || (drawable = wallpaperInfo.loadThumbnail(pm)) == null || !(drawable instanceof BitmapDrawable)) {
                    return null;
                }
                Bitmap bitmap4 = ((BitmapDrawable) drawable).getBitmap();
                return bitmap4;
            }
            Drawable drawable3 = wallpaperManager.getDrawable();
            if (!(drawable3 instanceof BitmapDrawable)) {
                return null;
            }
            Bitmap bitmap5 = ((BitmapDrawable) drawable3).getBitmap();
            return bitmap5;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Bitmap loadWallpaperFromCache(Context context, int index, WallpaperInfo info) {
            String cacheKey = getCacheKey(index, info);
            if (index == 1 && WallpaperUtils.isNormalLiveWallpaper(context) && WallpaperImageCache.getImage(cacheKey) == null) {
                invalidateWallpaper(context, index);
            }
            return WallpaperImageCache.getImage(cacheKey);
        }

        public void setUserForeground(boolean userForeground) {
            this.mUserForeground = userForeground;
        }

        public void updateWallpaperId(Context context) {
            updateWallpaperId(context, false);
        }

        public void updateWallpaperId(Context context, boolean wallpaperIsChanged) {
            if (!this.mUserForeground) {
                Logger.d(WallpaperPreview.TAG, "updateWallpaperId# user is not foreground, skip.");
                return;
            }
            Logger.d(WallpaperPreview.TAG, "updateWallpaperId# wallpaper is changed: %b", Boolean.valueOf(wallpaperIsChanged));
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(context.getApplicationContext());
            int oldLockWallpaperId = this.mLockWallpaperId;
            this.mLockWallpaperId = wallpaperManager.getWallpaperId(2);
            Logger.d(WallpaperPreview.TAG, "updateWallpaperId# lock wallpaper id: " + oldLockWallpaperId + " -> " + this.mLockWallpaperId);
            if (!wallpaperIsChanged) {
                Logger.d(WallpaperPreview.TAG, "updateWallpaperId# only update wallpaper hashes and wallpaper component");
            } else if (oldLockWallpaperId != WALLPAPER_ID_NONE && oldLockWallpaperId != this.mLockWallpaperId) {
                Logger.d(WallpaperPreview.TAG, "updateWallpaperId# lock screen wallpaper changed");
                notifyWallpaperSaved(0);
            }
        }

        private void notifyWallpaperSaved(int screen) {
            WallpapersContainerView wallpapersView;
            LauncherAppState appState = LauncherAppState.getInstanceNoCreate();
            if (appState == null) {
                Logger.e(WallpaperPreview.TAG, "appState is empty");
                return;
            }
            Launcher launcher = appState.getLauncher();
            if (launcher == null) {
                Logger.e(WallpaperPreview.TAG, "launcher is null.");
            } else if (launcher.isWallpapersViewVisible() && (wallpapersView = launcher.getWallpapersView()) != null) {
                wallpapersView.onWallpaperSaved(screen);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static abstract class LoadSystemWallpaperCallback {
            abstract void onFailure(int i);

            abstract void onWallpaperLoaded(int i, Bitmap bitmap);

            LoadSystemWallpaperCallback() {
            }
        }
    }

    /* loaded from: classes.dex */
    private class ApplyPreviewWallpaper implements Runnable {
        private final Bitmap mBitmap;
        private final int mIndex;

        ApplyPreviewWallpaper(int index, Bitmap bitmap) {
            this.mIndex = index;
            this.mBitmap = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mBitmap != null) {
                Drawable wallpaper = new BitmapDrawable(WallpaperPreview.this.getResources(), this.mBitmap);
                WallpaperPreview.this.setPreviewItemBackground(this.mIndex, wallpaper);
                if (this.mIndex == 1) {
                    WallpapersContainerView.updateWallpaperBackground(this.mBitmap, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WallpaperPreviewAdapter extends PagerAdapter {
        private float mCurrentWidth;
        private final float mDifference;
        private final float mPageMargin;
        private final float mPreviewItemWidth;

        WallpaperPreviewAdapter() {
            this.mPreviewItemWidth = WallpaperPreview.this.mHelper.getWallpaperPreviewPageFraction();
            this.mPageMargin = WallpaperPreview.this.mHelper.getWallpaperPreviewPageMarginFraction();
            this.mDifference = this.mPreviewItemWidth - ((1.0f - this.mPreviewItemWidth) - this.mPageMargin);
            this.mCurrentWidth = this.mPreviewItemWidth;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            View view = (View) WallpaperPreview.this.mItems.get(position);
            ViewGroup.LayoutParams params = new ViewGroup.LayoutParams(-1, -1);
            container.addView(view, params);
            return view;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return WallpaperPreview.this.mItems.size();
        }

        @Override // android.support.v4.view.PagerAdapter
        public float getPageWidth(int position) {
            return position == WallpaperPreview.this.mCurrentPage ? this.mCurrentWidth : (1.0f - this.mCurrentWidth) - this.mPageMargin;
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        void changeSelection(@FloatRange(from = 0.0d, to = 1.0d) float animate) {
            this.mCurrentWidth = this.mPreviewItemWidth - (this.mDifference * animate);
            this.mCurrentWidth = (1.0f - this.mCurrentWidth) - this.mPageMargin;
            WallpaperPreview.this.setAdapter(this);
            WallpaperPreview.this.setCurrentItem(WallpaperPreview.this.mCurrentPage);
            for (WallpaperPreviewItem item : WallpaperPreview.this.mItems) {
                boolean isCurrent = item.mIndex == WallpaperPreview.this.mCurrentPage;
                float alpha = isCurrent ? 0.5f + (0.5f * animate) : 1.0f - (0.5f * animate);
                item.setAlpha(alpha);
                item.setTranslationZ(isCurrent ? 1.0f : 0.0f);
                if (WallpaperPreview.this.mTitles != null) {
                    ((View) WallpaperPreview.this.mTitles.get(item.mIndex)).setAlpha(isCurrent ? animate : 1.0f - animate);
                }
            }
        }
    }
}
