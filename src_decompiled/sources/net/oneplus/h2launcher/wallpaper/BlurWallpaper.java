package net.oneplus.h2launcher.wallpaper;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.service.wallpaper.WallpaperService;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceHolder;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.ConcurrentLinkedQueue;
import net.oneplus.h2launcher.CustomizationSettingsFragment;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementAddFolderIcon;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BlurWallpaper extends WallpaperService {
    public static final String ACTION_BLUR_WALLPAPER_SETTINGS_CHANGED = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED";
    public static final String ACTION_BLUR_WALLPAPER_WALLPAPER_CHANGED = "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED";
    public static final String ACTION_FIRST_FRAME_DRAWN = "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN";
    public static final String ACTION_SHELF_ENABLED_CHANGED = "net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED";
    private static final String BLUR_WALLPAPER_NAME = "blur_wallpaper";
    public static final String BUTTONS_SHOW_ON_SCREEN_NAVKEYS = "buttons_show_on_screen_navkeys";
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_CHANGE_WALLPAPER = true;
    public static final String EXTRA_SHELF_ENABLED = "net.oneplus.h2launcher.extra.SHELF_ENABLED";
    private static final boolean FIXED_SIZED_SURFACE = true;
    private static final String KEY_BLUR_ENABLED = "blur_enabled";
    private static final String KEY_MASK_COLOR = "mask_color";
    private static final String KEY_NOTIFY = "notify";
    private static final String KEY_ORIENTATION = "orientation";
    private static final String KEY_SCROLL_MODE = "scroll_mode";
    private static final int SCROLL_MODE_CUSTOMIZED = 1;
    private static final int SCROLL_MODE_ORIGINAL = 0;
    private static final String SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS = "oneplus_blur_wallpaper_settings";
    private static final String TAG = BlurWallpaper.class.getSimpleName();
    private static final String WALLPAPER_NAME = "wallpaper";
    public static final int WALLPAPER_ORIENTATION_LANDSCAPE = 1;
    public static final int WALLPAPER_ORIENTATION_PORTRAIT = 0;
    public static final int WALLPAPER_ORIENTATION_UNKNOWN = -1;
    private Context mContext;
    private DrawableEngine mEngine;
    private Handler mHandler;
    private boolean mIsHwAccelerated;
    private StyleManager mStyleManager;
    private int mReDrawCount = 0;
    private boolean mHasNavigationBar = false;
    private boolean isShelfenable = true;

    /* loaded from: classes.dex */
    public enum WallpaperType {
        BLUR,
        CLEAR,
        NONE
    }

    static /* synthetic */ int access$510(BlurWallpaper x0) {
        int i = x0.mReDrawCount;
        x0.mReDrawCount = i - 1;
        return i;
    }

    @Override // android.service.wallpaper.WallpaperService, android.app.Service
    @SuppressLint({"ServiceCast"})
    public void onCreate() {
        super.onCreate();
        Logger.d(TAG, "onCreate#");
        StyleManager.init(getApplicationContext());
        this.mStyleManager = StyleManager.getInstance();
        this.mContext = getApplicationContext();
        this.mHasNavigationBar = isHasNavigationBar();
        this.mHandler = new Handler();
        deleteFilCache(this.mContext);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        if (this.mEngine != null && this.mHasNavigationBar != isHasNavigationBar()) {
            this.mHasNavigationBar = isHasNavigationBar();
            this.mEngine.refresh();
        }
        if (this.mEngine != null) {
            this.mEngine.updateConfig();
        }
        super.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks2
    public void onTrimMemory(int level) {
        if (this.mEngine != null) {
            this.mEngine.trimMemory(level);
        }
    }

    @Override // android.service.wallpaper.WallpaperService
    public WallpaperService.Engine onCreateEngine() {
        this.mEngine = new DrawableEngine();
        return this.mEngine;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHasNavigationBar() {
        if (this.mContext == null) {
            this.mContext = getApplicationContext();
        }
        return Settings.System.getInt(this.mContext.getContentResolver(), "buttons_show_on_screen_navkeys", 0) == 1;
    }

    @Override // android.service.wallpaper.WallpaperService, android.app.Service
    public void onDestroy() {
        Logger.d(TAG, "onDestroy#");
        super.onDestroy();
    }

    /* loaded from: classes.dex */
    class DrawableEngine extends WallpaperService.Engine {
        private static final int ALPHA_MULTIPLE = 2;
        private static final int MSG_CHANGE_WALLPAPER = 500;
        private final float BLUR_SCALE;
        private final String KEY_OFFSET;
        private final int MSG_DO_BLUR;
        private final int MSG_DRAW_FRAME;
        private final int MSG_DRAW_LANDSCAPE;
        private final int MSG_UPDATE_WALLPAPER;
        private final int PENDING_THRESHOLD;
        private final int POSITION_HOME;
        private final int POSITION_HOME_RIGHT;
        private final int POSITION_UNKNOWN;
        private final String TAG;
        private boolean isRTL;
        int mBackgroundHeight;
        int mBackgroundWidth;
        Bitmap mBlurBackground;
        private BroadcastReceiver mBlurWallpaperReceiver;
        int mColorMaskColor;
        private Context mContext;
        private int mCurrentOffSetPixel;
        WallpaperType mCurrentWallpaperType;
        private Display mDefaultDisplay;
        private int mDisplayHeight;
        private int mDisplayWidth;
        Bitmap mFinalBlurAlphaBackground;
        Bitmap mFinalBlurBackground;
        boolean mForceDrawFrame;
        private SharedPreferences mGestureSharedPrefs;
        private Handler mHandler;
        Bitmap mHomeBackground;
        boolean mIsBlur;
        private boolean mIsWallpaperUpdated;
        Bitmap mLandscapeBackground;
        private int mLastOffSetPixel;
        private int mLastOnePageOffsetPixel;
        private int mLastPosition;
        Rect[] mLastRectArray;
        private int mLastRequestedHeight;
        private int mLastRequestedWidth;
        int mLastRotation;
        int mLastSurfaceHeight;
        int mLastSurfaceWidth;
        int mLastXOffsetPixel;
        int mLastYTranslation;
        private int mNavigationBarHeight;
        boolean mOffsetsChanged;
        private int mOnePageOffsetPixel;
        int mOrientation;
        Bitmap mOriginalWallpaper;
        private int mPendingTaskSize;
        Rect[] mRectArray;
        float mScale;
        int mScrollMode;
        private ConcurrentLinkedQueue<Integer> mTaskLinkedList;
        boolean mVisible;
        float mXOffset;
        int mXOffsetPixel;
        float mXOffsetStep;
        float mXOffsetStepPixel;
        float mYOffset;

        static /* synthetic */ int access$310(DrawableEngine x0) {
            int i = x0.mPendingTaskSize;
            x0.mPendingTaskSize = i - 1;
            return i;
        }

        DrawableEngine() {
            super(BlurWallpaper.this);
            this.TAG = BlurWallpaper.TAG + ".Engine";
            this.mOrientation = -1;
            this.mColorMaskColor = 0;
            this.mScrollMode = 1;
            this.mIsBlur = true;
            this.mRectArray = new Rect[2];
            this.mLastRectArray = new Rect[2];
            this.mBackgroundWidth = -1;
            this.mBackgroundHeight = -1;
            this.mLastSurfaceWidth = -1;
            this.mLastSurfaceHeight = -1;
            this.mLastRotation = -1;
            this.mXOffset = 0.5f;
            this.mYOffset = 0.5f;
            this.mScale = 1.0f;
            this.mXOffsetStep = 0.5f;
            this.mXOffsetStepPixel = 0.0f;
            this.mVisible = true;
            this.mXOffsetPixel = -1;
            this.mLastXOffsetPixel = -1;
            this.mHandler = null;
            this.MSG_UPDATE_WALLPAPER = 100;
            this.MSG_DO_BLUR = 200;
            this.MSG_DRAW_FRAME = 300;
            this.MSG_DRAW_LANDSCAPE = IconRearrangementAddFolderIcon.TEXTVIEW_ALPHA_ANIMATION_DRUATION;
            this.KEY_OFFSET = "key_offset";
            this.mPendingTaskSize = 0;
            this.PENDING_THRESHOLD = 1;
            this.mDisplayWidth = -1;
            this.mDisplayHeight = -1;
            this.mLastRequestedWidth = -1;
            this.mLastRequestedHeight = -1;
            this.mOnePageOffsetPixel = 1;
            this.mCurrentOffSetPixel = 0;
            this.mLastOffSetPixel = 0;
            this.BLUR_SCALE = 0.6f;
            this.mCurrentWallpaperType = WallpaperType.NONE;
            this.mBlurWallpaperReceiver = new BlurWallpaperSettingsReceiver();
            this.mNavigationBarHeight = -1;
            this.mIsWallpaperUpdated = false;
            this.isRTL = false;
            this.POSITION_UNKNOWN = -100;
            this.POSITION_HOME = 1;
            this.POSITION_HOME_RIGHT = 2;
            this.mLastPosition = -100;
            this.mLastOnePageOffsetPixel = 1;
        }

        void trimMemory(int level) {
            Logger.d(this.TAG, "trimMemory");
            if (level >= 60) {
                if (this.mHomeBackground != null) {
                    this.mHomeBackground.recycle();
                    this.mHomeBackground = null;
                }
                if (this.mBlurBackground != null) {
                    this.mBlurBackground.recycle();
                    this.mBlurBackground = null;
                }
                if (this.mFinalBlurBackground != null) {
                    this.mFinalBlurBackground.recycle();
                    this.mFinalBlurBackground = null;
                }
                if (this.mLandscapeBackground != null) {
                    this.mLandscapeBackground.recycle();
                    this.mLandscapeBackground = null;
                }
                if (this.mOriginalWallpaper != null) {
                    this.mOriginalWallpaper.recycle();
                    this.mOriginalWallpaper = null;
                }
                if (this.mFinalBlurAlphaBackground != null) {
                    this.mFinalBlurAlphaBackground.recycle();
                    this.mFinalBlurAlphaBackground = null;
                }
                this.mBackgroundWidth = -1;
                this.mBackgroundHeight = -1;
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onCreate(SurfaceHolder surfaceHolder) {
            Logger.d(this.TAG, "onCreate#");
            super.onCreate(surfaceHolder);
            setOffsetNotificationsEnabled(true);
            this.mContext = BlurWallpaper.this.getApplicationContext();
            registerBlurWallpaperSettingsReceiver(this.mContext);
            this.mGestureSharedPrefs = BlurWallpaper.this.getSharedPreferences(CustomizationSettingsFragment.GESTURE_SETTINGS, 0);
            Point displaySize = Utilities.getScreenDimensions(this.mContext, true);
            this.mDisplayWidth = displaySize.y > displaySize.x ? displaySize.x : displaySize.y;
            this.mDisplayHeight = displaySize.y > displaySize.x ? displaySize.y : displaySize.x;
            this.mTaskLinkedList = new ConcurrentLinkedQueue<>();
            this.mNavigationBarHeight = getNavigationBarHeight(this.mContext);
            if (this.mNavigationBarHeight < 0) {
                this.mNavigationBarHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.navigation_bar_height);
            }
            this.mHandler = new Handler(BlurWallpaper.this.getMainLooper()) { // from class: net.oneplus.h2launcher.wallpaper.BlurWallpaper.DrawableEngine.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    switch (msg.what) {
                        case 100:
                            DrawableEngine.this.updateWallpaperLocked();
                            return;
                        case 200:
                            DrawableEngine.this.mPendingTaskSize = DrawableEngine.this.mTaskLinkedList.size();
                            while (DrawableEngine.this.mPendingTaskSize > 1) {
                                DrawableEngine.access$310(DrawableEngine.this);
                                ((Integer) DrawableEngine.this.mTaskLinkedList.peek()).intValue();
                                if (DrawableEngine.this.mTaskLinkedList.size() != 0) {
                                    DrawableEngine.this.mTaskLinkedList.remove();
                                }
                            }
                            if (DrawableEngine.this.mTaskLinkedList.size() == 0) {
                                if (BlurWallpaper.this.mReDrawCount > 0) {
                                    DrawableEngine.this.mCurrentOffSetPixel = DrawableEngine.this.mXOffsetPixel * (-1);
                                    Logger.d(DrawableEngine.this.TAG, "workaround to redraw and currentOffSetPixel: %d", Integer.valueOf(DrawableEngine.this.mCurrentOffSetPixel));
                                } else {
                                    return;
                                }
                            } else {
                                DrawableEngine.this.mCurrentOffSetPixel = ((Integer) DrawableEngine.this.mTaskLinkedList.peek()).intValue();
                                DrawableEngine.this.mTaskLinkedList.remove();
                            }
                            Bitmap resultBitmap = DrawableEngine.this.mHomeBackground;
                            if (DrawableEngine.this.mCurrentOffSetPixel == 0) {
                                if (!DrawableEngine.this.mCurrentWallpaperType.equals(WallpaperType.CLEAR) || BlurWallpaper.this.mReDrawCount > 0) {
                                    SurfaceHolder sh = DrawableEngine.this.getSurfaceHolder();
                                    Rect[] rectArray = DrawableEngine.this.calcRect(DrawableEngine.this.mHomeBackground, resultBitmap, DrawableEngine.this.mCurrentOffSetPixel);
                                    if (!DrawableEngine.this.compareRectEqual(rectArray[0], rectArray[1]) || DrawableEngine.this.mLastOffSetPixel != DrawableEngine.this.mCurrentOffSetPixel) {
                                        DrawableEngine.this.drawWallpaperWithCanvas(sh, DrawableEngine.this.mHomeBackground, resultBitmap, rectArray[0], rectArray[1], DrawableEngine.this.mCurrentOffSetPixel);
                                    }
                                }
                                DrawableEngine.this.mCurrentWallpaperType = WallpaperType.CLEAR;
                            } else {
                                SurfaceHolder sh2 = DrawableEngine.this.getSurfaceHolder();
                                if (DrawableEngine.this.mCurrentOffSetPixel > 0) {
                                    Rect[] rectArray2 = DrawableEngine.this.calcRect(DrawableEngine.this.mHomeBackground, DrawableEngine.this.mFinalBlurBackground, DrawableEngine.this.mCurrentOffSetPixel);
                                    if (DrawableEngine.this.isNeedDrawOnNonHomePage(rectArray2[0], rectArray2[1], DrawableEngine.this.mCurrentOffSetPixel)) {
                                        DrawableEngine.this.drawWallpaperWithCanvas(sh2, DrawableEngine.this.mHomeBackground, DrawableEngine.this.mFinalBlurBackground, rectArray2[0], rectArray2[1], DrawableEngine.this.mCurrentOffSetPixel);
                                    }
                                }
                                DrawableEngine.this.mCurrentWallpaperType = WallpaperType.BLUR;
                            }
                            DrawableEngine.this.mLastOffSetPixel = DrawableEngine.this.mCurrentOffSetPixel;
                            return;
                        case 300:
                            DrawableEngine.this.drawFrame();
                            if (DrawableEngine.this.mIsWallpaperUpdated) {
                                Intent intent = new Intent("net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN");
                                BlurWallpaper.this.sendBroadcast(intent);
                            }
                            DrawableEngine.this.mIsWallpaperUpdated = false;
                            return;
                        case IconRearrangementAddFolderIcon.TEXTVIEW_ALPHA_ANIMATION_DRUATION /* 400 */:
                            SurfaceHolder sh3 = DrawableEngine.this.getSurfaceHolder();
                            DrawableEngine.this.drawWallpaperWithCanvas(sh3, DrawableEngine.this.mLandscapeBackground);
                            DrawableEngine.this.mLastRectArray = new Rect[2];
                            return;
                        case 500:
                            Logger.d(DrawableEngine.this.TAG, "MSG_CHANGE_WALLPAPER");
                            Intent intent2 = new Intent("net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED");
                            BlurWallpaper.this.sendBroadcast(intent2);
                            return;
                        default:
                            return;
                    }
                }
            };
            sendHandlerMessage(100);
        }

        private int getNavigationBarHeight(Context context) {
            Resources resources = context.getResources();
            int resourceId = resources.getIdentifier("navigation_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
            if (resourceId > 0) {
                return resources.getDimensionPixelSize(resourceId);
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isNeedDrawOnNonHomePage(Rect srcHomeRect, Rect srcNonHomeRect, int currentOffsetPixel) {
            return isOriginalScrollMode() ? !compareRectEqual(srcHomeRect, srcNonHomeRect) : isNeedRedrawForBlurOff(currentOffsetPixel) || !compareRectEqual(srcHomeRect, srcNonHomeRect);
        }

        private boolean isNeedRedrawForBlurOff(int currentOffsetPixel) {
            int cur_position;
            if (this.mLastOnePageOffsetPixel != this.mOnePageOffsetPixel) {
                Logger.d(this.TAG, "mOnePageOffsetPixel change need redraw");
                this.mLastPosition = -100;
            }
            if (currentOffsetPixel < this.mOnePageOffsetPixel) {
                cur_position = 1;
            } else {
                cur_position = 2;
            }
            boolean needDraw = currentOffsetPixel < this.mOnePageOffsetPixel || this.mLastPosition != cur_position;
            this.mLastPosition = cur_position;
            this.mLastOnePageOffsetPixel = this.mOnePageOffsetPixel;
            return needDraw;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean compareRectEqual(Rect srcHomeRect, Rect srcNonHomeRect) {
            boolean isEqual = false;
            if (BlurWallpaper.this.mReDrawCount > 0) {
                Logger.d(this.TAG, "compareRectEqual mReDrawCount = " + BlurWallpaper.this.mReDrawCount);
                BlurWallpaper.access$510(BlurWallpaper.this);
                return false;
            }
            if (this.mLastRectArray[0] == null || this.mLastRectArray[1] == null) {
                this.mLastRectArray[0] = new Rect(srcHomeRect);
                this.mLastRectArray[1] = new Rect(srcNonHomeRect);
                return false;
            }
            if (this.mLastRectArray[0] != null && srcHomeRect != null && this.mLastRectArray[1] != null && srcNonHomeRect != null) {
                isEqual = this.mLastRectArray[0].left == srcHomeRect.left && this.mLastRectArray[0].top == srcHomeRect.top && this.mLastRectArray[0].width() == srcHomeRect.width() && this.mLastRectArray[0].height() == srcHomeRect.height() && this.mLastRectArray[1].left == srcNonHomeRect.left && this.mLastRectArray[1].top == srcNonHomeRect.top && this.mLastRectArray[1].width() == srcNonHomeRect.width() && this.mLastRectArray[1].height() == srcNonHomeRect.height();
            }
            this.mLastRectArray[0] = new Rect(srcHomeRect);
            this.mLastRectArray[1] = new Rect(srcNonHomeRect);
            return isEqual;
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onDestroy() {
            super.onDestroy();
            Logger.d(this.TAG, "onDestroy#");
            trimMemory(60);
            this.mOrientation = -1;
            this.mColorMaskColor = 0;
            unregisterBlurWallpaperSettingsReceiver(this.mContext);
            this.mHandler.removeCallbacksAndMessages(null);
            this.mHandler = null;
            BlurWallpaper.deleteFilCache(this.mContext);
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onVisibilityChanged(boolean visible) {
            if (this.mVisible != visible) {
                this.mVisible = visible;
                if (visible) {
                    sendHandlerMessage(300);
                }
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onOffsetsChanged(float xOffset, float yOffset, float xOffsetStep, float yOffsetStep, int xPixels, int yPixels) {
            if (this.mXOffset != xOffset || this.mYOffset != yOffset || this.mXOffsetPixel != xPixels) {
                this.mXOffset = xOffset;
                this.mYOffset = yOffset;
                if (!this.isRTL) {
                    this.mXOffsetPixel = xPixels;
                } else {
                    this.mXOffsetPixel = (this.mDisplayWidth + xPixels) * (-1);
                }
                if (xOffsetStep < 0.0f) {
                    xOffsetStep *= -1.0f;
                }
                this.mXOffsetStep = xOffsetStep;
                this.mOffsetsChanged = true;
                this.mOnePageOffsetPixel = (int) (this.mDisplayWidth * xOffsetStep);
            }
            sendHandlerMessage(300);
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            Logger.d(this.TAG, "onSurfaceChanged# (w, h): (%d, %d)", Integer.valueOf(width), Integer.valueOf(height));
            super.onSurfaceChanged(holder, format, width, height);
            sendHandlerMessage(300);
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceDestroyed(SurfaceHolder holder) {
            super.onSurfaceDestroyed(holder);
            this.mLastSurfaceHeight = -1;
            this.mLastSurfaceWidth = -1;
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceCreated(SurfaceHolder holder) {
            super.onSurfaceCreated(holder);
            this.mLastSurfaceHeight = -1;
            this.mLastSurfaceWidth = -1;
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        public void onSurfaceRedrawNeeded(SurfaceHolder holder) {
            Logger.d(this.TAG, "onSurfaceRedrawNeeded#");
            super.onSurfaceRedrawNeeded(holder);
            BlurWallpaper.this.mReDrawCount = 2;
            sendHandlerMessage(300);
        }

        void drawFrame() {
            SurfaceHolder sh = getSurfaceHolder();
            Rect frame = sh.getSurfaceFrame();
            int dw = frame.width();
            int dh = frame.height();
            boolean surfaceDimensionsChanged = (dw == this.mLastSurfaceWidth && dh == this.mLastSurfaceHeight) ? false : true;
            if (1 == 0 && !this.mOffsetsChanged && !this.mForceDrawFrame) {
                Logger.d(this.TAG, "Suppressed drawFrame since redraw is not needed and offsets have not changed.");
                return;
            }
            if (this.mHomeBackground == null) {
                Logger.d(this.TAG, "Reloading bitmap: mHomeBackground, bgw, bgh, dw, dh = " + this.mHomeBackground + ", " + (this.mHomeBackground == null ? 0 : this.mHomeBackground.getWidth()) + ", " + (this.mHomeBackground == null ? 0 : this.mHomeBackground.getHeight()) + ", " + dw + ", " + dh);
                updateWallpaperLocked();
                if (this.mHomeBackground == null) {
                    return;
                }
            }
            this.mOffsetsChanged = false;
            if (surfaceDimensionsChanged) {
                this.mLastSurfaceWidth = dw;
                this.mLastSurfaceHeight = dh;
            }
            if (1 != 0 || this.mLastXOffsetPixel != this.mXOffsetPixel || this.mForceDrawFrame) {
                this.mLastXOffsetPixel = this.mXOffsetPixel;
                this.mForceDrawFrame = false;
                this.mCurrentWallpaperType = WallpaperType.NONE;
                if (dw > dh) {
                    sendHandlerMessage(IconRearrangementAddFolderIcon.TEXTVIEW_ALPHA_ANIMATION_DRUATION);
                } else {
                    this.mTaskLinkedList.add(Integer.valueOf(this.mXOffsetPixel * (-1)));
                    sendHandlerMessage(200);
                }
            }
        }

        public float getDensity(Context context) {
            DisplayMetrics metrics = context.getResources().getDisplayMetrics();
            return metrics.density;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateWallpaperLocked() {
            Logger.d(this.TAG, "updateWallpaperLocked#");
            Throwable exception = null;
            try {
                this.isRTL = Utilities.isRtl(BlurWallpaper.this.getResources());
                BitmapBlur.clearCacheBitmap();
                this.mBackgroundWidth = -1;
                this.mBackgroundHeight = -1;
                this.mOriginalWallpaper = null;
                if (this.mContext == null) {
                    this.mContext = BlurWallpaper.this.getApplicationContext();
                }
                getSettingProviderData(this.mContext);
                createHomePageWallpaper();
                createLandScapeWallpaper();
                createBlurWallpaper();
                this.mBackgroundWidth = this.mHomeBackground.getWidth();
                this.mBackgroundHeight = this.mHomeBackground.getHeight();
                if (this.mBlurBackground != null && this.mBlurBackground != this.mFinalBlurBackground) {
                    this.mBlurBackground.recycle();
                    this.mBlurBackground = null;
                }
                if (this.mOriginalWallpaper != null && this.mOriginalWallpaper != this.mLandscapeBackground && this.mOriginalWallpaper != this.mHomeBackground && this.mOriginalWallpaper != this.mFinalBlurBackground) {
                    this.mOriginalWallpaper.recycle();
                    this.mOriginalWallpaper = null;
                }
                this.mIsWallpaperUpdated = true;
            } catch (OutOfMemoryError e) {
                exception = e;
            } catch (RuntimeException e2) {
                exception = e2;
            }
            if (exception != null) {
                this.mHomeBackground = null;
                this.mBackgroundWidth = -1;
                this.mBackgroundHeight = -1;
                Logger.w(this.TAG, "Unable to load wallpaper!", exception);
                BitmapBlur.clearCacheBitmap();
            }
        }

        private void createBlurWallpaper() {
            File fileBlur = new File(new File(BlurWallpaper.this.getFilesDir(), BlurWallpaper.BLUR_WALLPAPER_NAME).getAbsolutePath());
            if (fileBlur.exists()) {
                long start = System.currentTimeMillis();
                BitmapFactory.Options options = new BitmapFactory.Options();
                this.mFinalBlurBackground = BitmapFactory.decodeFile(fileBlur.getPath(), options);
                long diff = System.currentTimeMillis() - start;
                Logger.d(this.TAG, "mFinalBlurBackground decode spend " + diff);
                if (this.mFinalBlurBackground != null) {
                    Logger.d(this.TAG, "mFinalBlurBackground# use file cache");
                    return;
                }
            }
            int blurWallpaperWidth = (int) Math.ceil(this.mHomeBackground.getWidth() * 0.6f);
            int blurWallpaperHeight = (int) Math.ceil(this.mHomeBackground.getHeight() * 0.6f);
            this.mBlurBackground = Bitmap.createScaledBitmap(this.mHomeBackground, blurWallpaperWidth, blurWallpaperHeight, false);
            int num = (int) (99.0f / 25.0f);
            BitmapBlur.clearCacheBitmap();
            BitmapBlur.createCacheBlurBitmap(this.mContext, this.mBlurBackground, num);
            if (isOriginalScrollMode()) {
                this.mFinalBlurBackground = cropWallpaperDoubleWidth(getOrCreateOriginalWallpaper());
                saveBitmapAsFile();
                return;
            }
            if (this.mIsBlur) {
                if (this.mOrientation == 1) {
                    Bitmap wallpaper = getOrCreateOriginalWallpaper();
                    float scale = (this.mDisplayHeight / wallpaper.getHeight()) * 0.6f;
                    int blurWallpaperWidth2 = (int) (wallpaper.getWidth() * scale);
                    int blurWallpaperHeight2 = (int) (this.mDisplayHeight * 0.6f);
                    long start2 = System.currentTimeMillis();
                    this.mBlurBackground = Bitmap.createScaledBitmap(wallpaper, blurWallpaperWidth2, blurWallpaperHeight2, true);
                    long diff2 = System.currentTimeMillis() - start2;
                    Logger.d(this.TAG, "createScaledBitmap# " + diff2);
                    long start3 = System.currentTimeMillis();
                    BitmapBlur.clearCacheBitmap();
                    int num2 = (int) (99.0f / 25.0f);
                    BitmapBlur.createCacheBlurBitmap(this.mContext, this.mBlurBackground, num2);
                    long diff3 = System.currentTimeMillis() - start3;
                    Logger.d(this.TAG, "createCacheBlurBitmap# " + diff3);
                    long start4 = System.currentTimeMillis();
                    this.mFinalBlurBackground = BitmapBlur.stageBlur(this.mContext, this.mBlurBackground, 99.0f);
                    this.mFinalBlurBackground = Bitmap.createScaledBitmap(this.mFinalBlurBackground, (int) Math.ceil(blurWallpaperWidth2 / 0.6f), (int) Math.ceil(blurWallpaperHeight2 / 0.6f), true);
                    this.mFinalBlurAlphaBackground = Bitmap.createBitmap(this.mFinalBlurBackground.getWidth(), this.mFinalBlurBackground.getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(this.mFinalBlurAlphaBackground);
                    Paint a = new Paint();
                    a.setAlpha(242);
                    canvas.drawColor(this.mColorMaskColor);
                    canvas.drawBitmap(this.mFinalBlurBackground, 0.0f, 0.0f, a);
                    this.mFinalBlurBackground = this.mFinalBlurAlphaBackground;
                    long diff4 = System.currentTimeMillis() - start4;
                    Logger.d(this.TAG, "BitmapBlur# stageBlur: " + diff4);
                } else {
                    long start5 = System.currentTimeMillis();
                    this.mBlurBackground = Bitmap.createScaledBitmap(this.mHomeBackground, blurWallpaperWidth, blurWallpaperHeight, true);
                    this.mFinalBlurBackground = BitmapBlur.stageBlur(this.mContext, this.mBlurBackground, 99.0f);
                    long diff5 = System.currentTimeMillis() - start5;
                    Logger.d(this.TAG, "portrait createBitmap spend " + diff5);
                }
            } else {
                this.mFinalBlurBackground = Bitmap.createBitmap(this.mDisplayWidth, this.mDisplayHeight, Bitmap.Config.ARGB_8888);
                new Canvas(this.mFinalBlurBackground).drawColor(this.mColorMaskColor);
            }
            saveBitmapAsFile();
        }

        private void saveBitmapAsFile() {
            Thread thread = new Thread(new Runnable() { // from class: net.oneplus.h2launcher.wallpaper.BlurWallpaper.DrawableEngine.2
                @Override // java.lang.Runnable
                public void run() {
                    BlurWallpaper.deleteFilCache(DrawableEngine.this.mContext);
                    if (DrawableEngine.this.mFinalBlurBackground != null) {
                        WallpaperUtils.saveBitmapAsFile(DrawableEngine.this.mContext, BlurWallpaper.BLUR_WALLPAPER_NAME, DrawableEngine.this.mFinalBlurBackground);
                    }
                }
            });
            thread.start();
        }

        private Bitmap getOrCreateOriginalWallpaper() {
            if (this.mOriginalWallpaper != null) {
                Logger.d(this.TAG, "getOrCreateOriginalWallpaper use cache");
                return this.mOriginalWallpaper;
            }
            Logger.d(this.TAG, "getOrCreateOriginalWallpaper# +");
            Bitmap wallpaper = BitmapFactory.decodeFile(new File(BlurWallpaper.this.getFilesDir(), "wallpaper").getAbsolutePath(), new BitmapFactory.Options());
            if (wallpaper == null) {
                Logger.d(this.TAG, "getOrCreateOriginalWallpaper# wallpaper is null");
                int wallpaperResId = getDefaultWallpaper();
                if (wallpaperResId == -1) {
                    wallpaperResId = R.drawable.wallpaper_0;
                }
                wallpaper = BitmapFactory.decodeResource(BlurWallpaper.this.getResources(), wallpaperResId);
            }
            this.mOriginalWallpaper = wallpaper;
            return this.mOriginalWallpaper;
        }

        private int getDefaultWallpaper() {
            Resources resources = BlurWallpaper.this.getResources();
            if (resources != null) {
                int wallpaperEntriesResId = BlurWallpaper.this.mStyleManager.getResourceId(StyleConstant.PORTRAIT_WALLPAPERS);
                int[] entries = WallpaperUtils.getWallpaperResourceIds(resources, wallpaperEntriesResId);
                if (entries == null || entries.length <= 0) {
                    Logger.w(this.TAG, "getDefaultWallpaper# entries is empty!");
                    return -1;
                }
                int wallpaperResId = entries[0];
                if (wallpaperResId == 0) {
                    Logger.w(this.TAG, "getDefaultWallpaper# can't find resource id for default wallpaper");
                    return -1;
                }
                return wallpaperResId;
            }
            Logger.w(this.TAG, "getDefaultWallpaper# resources is null");
            return -1;
        }

        private void createLandScapeWallpaper() {
            if (this.mOriginalWallpaper == null) {
                getOrCreateOriginalWallpaper();
            }
            this.mLandscapeBackground = cropLandscapeWallpaperInCenter(this.mOriginalWallpaper);
        }

        private void createHomePageWallpaper() {
            Bitmap temp = null;
            if (this.mOriginalWallpaper == null || this.mOriginalWallpaper.isRecycled()) {
                getOrCreateOriginalWallpaper();
            }
            if (isOriginalScrollMode()) {
                if (!this.isRTL) {
                    this.mHomeBackground = cropWallpaperInLeft(this.mOriginalWallpaper);
                    return;
                } else {
                    this.mHomeBackground = cropWallpaperInRight(this.mOriginalWallpaper);
                    return;
                }
            }
            if (this.mOrientation == 1) {
                temp = Bitmap.createBitmap(this.mDisplayWidth, this.mDisplayHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(temp);
                Rect src = new Rect(0, 0, this.mOriginalWallpaper.getWidth(), this.mOriginalWallpaper.getHeight());
                Rect dst = new Rect(0, 0, this.mDisplayWidth, (int) (this.mDisplayWidth / WallpaperUtils.getLandscapeWallpaperAspectRatio()));
                canvas.drawBitmap(this.mOriginalWallpaper, src, dst, (Paint) null);
            } else if (this.mOrientation == 0) {
                temp = cropWallpaperInCenter(this.mOriginalWallpaper);
            }
            if (temp != null) {
                this.mHomeBackground = paintWallpaperColorMask(temp, this.mColorMaskColor, this.mOrientation);
                if (this.mHomeBackground != temp && this.mOriginalWallpaper != temp) {
                    temp.recycle();
                }
            }
        }

        public Bitmap paintWallpaperColorMask(Bitmap bitmap, int maskColor, int orientation) {
            if (maskColor != 0) {
                float screenHeightScale = 1.0f;
                Context context = BlurWallpaper.this.getApplicationContext();
                Point realDisplaySize = Utilities.getScreenDimensions(context, true);
                if (BlurWallpaper.this.isHasNavigationBar()) {
                    screenHeightScale = (realDisplaySize.y - this.mNavigationBarHeight) / realDisplaySize.y;
                }
                Bitmap masked = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                int w = masked.getWidth();
                int h = masked.getHeight();
                Canvas canvas = new Canvas(masked);
                Paint paint = new Paint();
                if (orientation == 0) {
                    LinearGradient gradient = new LinearGradient(0.0f, 0.41f * h * screenHeightScale, 0.0f, 0.66f * h * screenHeightScale, getTransparentColor(maskColor), maskColor, Shader.TileMode.CLAMP);
                    paint.setShader(gradient);
                    canvas.drawPaint(paint);
                } else {
                    float aspectRatio = WallpaperUtils.getLandscapeWallpaperAspectRatio();
                    int top = (int) ((w / aspectRatio) * screenHeightScale);
                    Rect rect = new Rect(0, top, w, h);
                    paint.setColor(maskColor);
                    canvas.drawRect(rect, paint);
                }
                return masked;
            }
            return bitmap;
        }

        private int getTransparentColor(int color) {
            int red = Color.red(color);
            int green = Color.green(color);
            int blue = Color.blue(color);
            return Color.argb(0, red, green, blue);
        }

        private Bitmap cropLandscapeWallpaperInCenter(Bitmap srcBitmap) {
            int surfaceWidth = this.mDisplayHeight;
            int surfaceHeight = this.mDisplayWidth;
            int srcWidth = srcBitmap.getWidth();
            int srcHeight = srcBitmap.getHeight();
            int surfaceWidth2 = Math.min(surfaceWidth, srcBitmap.getWidth());
            int surfaceHeight2 = Math.min(surfaceHeight, srcBitmap.getHeight());
            int x = (srcBitmap.getWidth() / 2) - (surfaceWidth2 / 2);
            int y = (srcBitmap.getHeight() / 2) - (surfaceHeight2 / 2);
            if (srcWidth == surfaceWidth2 && srcHeight == surfaceHeight2) {
                Bitmap duplicateBitmap = srcBitmap.copy(srcBitmap.getConfig(), true);
                Bitmap bitmap = Bitmap.createBitmap(duplicateBitmap, x, y, surfaceWidth2, surfaceHeight2);
                return bitmap;
            }
            Bitmap bitmap2 = Bitmap.createBitmap(srcBitmap, x, y, surfaceWidth2, surfaceHeight2);
            return bitmap2;
        }

        private Bitmap cropWallpaperInCenter(Bitmap srcBitmap) {
            int surfaceWidth = this.mDisplayWidth;
            int surfaceHeight = this.mDisplayHeight;
            int srcWidth = srcBitmap.getWidth();
            int srcHeight = srcBitmap.getHeight();
            if (srcWidth > this.mDisplayWidth && srcHeight > this.mDisplayHeight && srcWidth == 1440 && srcHeight == 3120) {
                surfaceWidth = srcWidth;
                surfaceHeight = srcHeight;
            }
            int surfaceWidth2 = Math.min(surfaceWidth, srcBitmap.getWidth());
            int surfaceHeight2 = Math.min(surfaceHeight, srcBitmap.getHeight());
            int x = (srcBitmap.getWidth() / 2) - (surfaceWidth2 / 2);
            int y = (srcBitmap.getHeight() / 2) - (surfaceHeight2 / 2);
            return Bitmap.createBitmap(srcBitmap, x, y, surfaceWidth2, surfaceHeight2);
        }

        private Bitmap cropWallpaperDoubleWidth(Bitmap srcBitmap) {
            int surfaceWidth = this.mDisplayWidth * 2;
            int surfaceHeight = this.mDisplayHeight;
            srcBitmap.getWidth();
            srcBitmap.getHeight();
            return Bitmap.createBitmap(srcBitmap, 0, 0, Math.min(surfaceWidth, srcBitmap.getWidth()), Math.min(surfaceHeight, srcBitmap.getHeight()));
        }

        private Bitmap cropWallpaperInLeft(Bitmap srcBitmap) {
            int surfaceWidth = this.mDisplayWidth;
            int surfaceHeight = this.mDisplayHeight;
            srcBitmap.getWidth();
            srcBitmap.getHeight();
            return Bitmap.createBitmap(srcBitmap, 0, 0, Math.min(surfaceWidth, srcBitmap.getWidth()), Math.min(surfaceHeight, srcBitmap.getHeight()));
        }

        private Bitmap cropWallpaperInRight(Bitmap srcBitmap) {
            int surfaceWidth = this.mDisplayWidth;
            int surfaceHeight = this.mDisplayHeight;
            srcBitmap.getWidth();
            srcBitmap.getHeight();
            int surfaceWidth2 = Math.min(surfaceWidth, srcBitmap.getWidth());
            return Bitmap.createBitmap(srcBitmap, srcBitmap.getWidth() - surfaceWidth2, 0, surfaceWidth2, Math.min(surfaceHeight, srcBitmap.getHeight()));
        }

        private void getSettingProviderData(Context context) {
            this.mOrientation = 0;
            this.mColorMaskColor = -16777216;
            this.mIsBlur = true;
            this.mScrollMode = 1;
            ContentResolver contentResolver = context.getContentResolver();
            String settingsValue = Settings.Global.getString(contentResolver, BlurWallpaper.SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS);
            if (TextUtils.isEmpty(settingsValue)) {
                Logger.d(this.TAG, "empty global settings value, name=%s", BlurWallpaper.SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS);
                return;
            }
            try {
                JSONObject settings = new JSONObject(settingsValue);
                this.mOrientation = settings.optInt(BlurWallpaper.KEY_ORIENTATION, 0);
                this.mColorMaskColor = settings.optInt(BlurWallpaper.KEY_MASK_COLOR, -16777216);
                this.mIsBlur = settings.optBoolean(BlurWallpaper.KEY_BLUR_ENABLED, true);
                this.mScrollMode = settings.optInt(BlurWallpaper.KEY_SCROLL_MODE, 1);
            } catch (JSONException e) {
                Logger.e(this.TAG, "cannot create wallpaper tile info from JSON, error=" + e);
            }
        }

        private boolean isOriginalScrollMode() {
            return this.mScrollMode == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isProviderNotify(Context context) {
            boolean notified = true;
            ContentResolver contentResolver = context.getContentResolver();
            String settingsValue = Settings.Global.getString(contentResolver, BlurWallpaper.SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS);
            if (TextUtils.isEmpty(settingsValue)) {
                Logger.d(this.TAG, "empty global settings value, name=%s", BlurWallpaper.SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS);
                return true;
            }
            try {
                JSONObject settings = new JSONObject(settingsValue);
                notified = settings.optBoolean(BlurWallpaper.KEY_NOTIFY, true);
            } catch (JSONException e) {
                Logger.e(this.TAG, "cannot create wallpaper tile info from JSON, error=" + e);
            }
            return notified;
        }

        private void registerBlurWallpaperSettingsReceiver(Context context) {
            IntentFilter filter = new IntentFilter("net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED");
            filter.addAction("net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED");
            context.registerReceiver(this.mBlurWallpaperReceiver, filter);
        }

        private void unregisterBlurWallpaperSettingsReceiver(Context context) {
            context.unregisterReceiver(this.mBlurWallpaperReceiver);
        }

        protected void refresh() {
            this.mForceDrawFrame = true;
            this.mCurrentWallpaperType = WallpaperType.NONE;
            this.mLastRectArray = new Rect[2];
            BlurWallpaper.deleteFilCache(this.mContext);
            sendHandlerMessage(100);
            sendHandlerMessage(300);
        }

        protected void updateConfig() {
            if (this.isRTL != Utilities.isRtl(BlurWallpaper.this.getResources())) {
                this.isRTL = Utilities.isRtl(BlurWallpaper.this.getResources());
                refresh();
            }
        }

        private void sendHandlerMessage(int msg) {
            if (this.mHandler != null) {
                this.mHandler.obtainMessage(msg).sendToTarget();
            }
        }

        @Override // android.service.wallpaper.WallpaperService.Engine
        protected void dump(String prefix, FileDescriptor fd, PrintWriter out, String[] args) {
            super.dump(prefix, fd, out, args);
            out.print(prefix);
            out.println("ImageWallpaper.DrawableEngine:");
            out.print(prefix);
            out.print(" mHomeBackground=");
            out.print(this.mHomeBackground);
            out.print(" mBackgroundWidth=");
            out.print(this.mBackgroundWidth);
            out.print(" mBackgroundHeight=");
            out.println(this.mBackgroundHeight);
            out.print(prefix);
            out.print(" mLastRotation=");
            out.print(this.mLastRotation);
            out.print(" mLastSurfaceWidth=");
            out.print(this.mLastSurfaceWidth);
            out.print(" mLastSurfaceHeight=");
            out.println(this.mLastSurfaceHeight);
            out.print(prefix);
            out.print(" mXOffset=");
            out.print(this.mXOffset);
            out.print(" mYOffset=");
            out.println(this.mYOffset);
            out.print(prefix);
            out.print(" mVisible=");
            out.print(this.mVisible);
            out.print(" mOffsetsChanged=");
            out.println(this.mOffsetsChanged);
            out.print(" mLastYTranslation=");
            out.print(this.mLastYTranslation);
            out.print(" mScale=");
            out.println(this.mScale);
            out.print(prefix);
            out.print(" mLastRequestedWidth=");
            out.print(this.mLastRequestedWidth);
            out.print(" mLastRequestedHeight=");
            out.println(this.mLastRequestedHeight);
            out.print(prefix);
            out.println(" DisplayInfo at last updateSurfaceSize:");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Rect[] calcRect(Bitmap homeBitmap, Bitmap nonHomeBitmap, int offSet) {
            if (this.mRectArray[0] == null) {
                this.mRectArray[0] = new Rect();
            }
            if (this.mRectArray[1] == null) {
                this.mRectArray[1] = new Rect();
            }
            if (nonHomeBitmap != null && homeBitmap != null) {
                if (offSet < 0) {
                    Logger.d(this.TAG, " no shelf ~~~~~~~~~~~~~~~~~~~~~~~~");
                }
                if (isOriginalScrollMode()) {
                    this.mRectArray[0].set(0, 0, homeBitmap.getWidth(), homeBitmap.getHeight());
                    if (this.mDisplayWidth * 2 <= nonHomeBitmap.getWidth()) {
                        if (!this.isRTL) {
                            this.mRectArray[1].set(offSet, 0, this.mDisplayWidth + offSet, this.mDisplayHeight);
                        } else {
                            this.mRectArray[1].set((nonHomeBitmap.getWidth() - this.mDisplayWidth) - offSet, 0, nonHomeBitmap.getWidth() - offSet, this.mDisplayHeight);
                        }
                    } else {
                        this.mRectArray[1].set(0, 0, this.mDisplayWidth, this.mDisplayHeight);
                    }
                    return this.mRectArray;
                }
                if (this.mOrientation == 1 && this.mIsBlur) {
                    this.mRectArray[0].set(0, 0, homeBitmap.getWidth(), homeBitmap.getHeight());
                    if (!this.isRTL) {
                        this.mRectArray[1].set(offSet, 0, this.mDisplayWidth + offSet, this.mDisplayHeight);
                    } else {
                        this.mRectArray[1].set((nonHomeBitmap.getWidth() - this.mDisplayWidth) - offSet, 0, nonHomeBitmap.getWidth() - offSet, this.mDisplayHeight);
                    }
                } else {
                    this.mRectArray[0].set(0, 0, homeBitmap.getWidth(), homeBitmap.getHeight());
                    this.mRectArray[1].set(0, 0, nonHomeBitmap.getWidth(), nonHomeBitmap.getHeight());
                }
            }
            return this.mRectArray;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void drawWallpaperWithCanvas(SurfaceHolder sh, Bitmap bitmap) {
            Surface sf = sh.getSurface();
            if (!sf.isValid()) {
                Logger.d(this.TAG, "surface not ready ");
                return;
            }
            Canvas c = sf.lockHardwareCanvas();
            if (c != null) {
                if (bitmap != null) {
                    try {
                        Rect frame = sh.getSurfaceFrame();
                        int dw = frame.width();
                        int dh = frame.height();
                        Rect dest = new Rect(0, 0, dw, dh);
                        c.drawBitmap(bitmap, (Rect) null, dest, (Paint) null);
                    } catch (Throwable th) {
                        try {
                            sf.unlockCanvasAndPost(c);
                        } catch (IllegalStateException e) {
                            e.printStackTrace();
                        }
                        throw th;
                    }
                }
                try {
                    sf.unlockCanvasAndPost(c);
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void drawWallpaperWithCanvas(SurfaceHolder sh, Bitmap homeBitmap, Bitmap nonHomeBitmap, Rect homeSrcRect, Rect nonHomeSrcRect, int offSet) {
            Surface sf = sh.getSurface();
            if (!sf.isValid()) {
                Logger.d(this.TAG, "surface not ready ");
                return;
            }
            Canvas c = sf.lockHardwareCanvas();
            if (c != null) {
                if (nonHomeBitmap != null && homeBitmap != null) {
                    try {
                        Rect dest = new Rect(0, 0, this.mDisplayWidth, this.mDisplayHeight);
                        if (offSet > 0 && isOriginalScrollMode()) {
                            c.drawBitmap(nonHomeBitmap, nonHomeSrcRect, dest, (Paint) null);
                        } else {
                            if (offSet < 0) {
                                offSet *= -1;
                            }
                            int alpha = ((int) ((offSet / this.mOnePageOffsetPixel) * 255.0f)) * 2;
                            Paint alphaPaint = new Paint();
                            if (alpha >= 255) {
                                alpha = 255;
                            } else {
                                c.drawBitmap(homeBitmap, homeSrcRect, dest, (Paint) null);
                            }
                            alphaPaint.setAlpha(alpha);
                            c.drawBitmap(nonHomeBitmap, nonHomeSrcRect, dest, alphaPaint);
                        }
                    } catch (Throwable th) {
                        try {
                            sf.unlockCanvasAndPost(c);
                        } catch (IllegalStateException e) {
                            e.printStackTrace();
                        }
                        throw th;
                    }
                }
                try {
                    sf.unlockCanvasAndPost(c);
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private class BlurWallpaperSettingsReceiver extends BroadcastReceiver {
        private BlurWallpaperSettingsReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Logger.d(BlurWallpaper.TAG, "onReceive# action: %s", intent.getAction());
            if (BlurWallpaper.this.mEngine == null) {
                Logger.d(BlurWallpaper.TAG, "onReceive# engine is null");
            } else if ("net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED".equals(intent.getAction()) && BlurWallpaper.this.mEngine.isProviderNotify(context)) {
                BlurWallpaper.this.mEngine.refresh();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteFilCache(Context context) {
        System.currentTimeMillis();
        File dir = context.getFilesDir();
        File fileBlur = new File(new File(dir, BLUR_WALLPAPER_NAME).getAbsolutePath());
        boolean success = fileBlur.delete();
        Logger.d(TAG, "delete " + fileBlur.getAbsolutePath() + " success " + success);
    }

    public static void invalidateFileCache(Context context) {
        deleteFilCache(context);
    }
}
