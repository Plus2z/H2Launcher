package net.oneplus.h2launcher.internalwidget.clock;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.CustomAppWidget;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ClockWidget implements CustomAppWidget {
    private static final String CLOCK_STYLE = "clock_style";
    private static final String SETTINGS_NAME_KEYGUARD_CLOCK_STYLE = "keyguard_clock_widget";
    public static final String TAG = ClockWidget.class.getSimpleName();
    private static ClockWidget sInstance;
    private SparseArray<WeakReference<ViewGroup>> mClockCache;
    private int mClockStyle;
    private Context mContext;
    private ViewGroup mCustomWidgetRoot;
    private int mKeyguardClockStyle;
    public LauncherAppWidgetProviderInfo mProviderInfo;
    private SharedPreferences mSharedPrefs;
    private boolean mAddingClockView = false;
    private final int[] mClockLayouts = {R.layout.clock_widget_digital_vertical, R.layout.clock_widget_digital_horizontal, R.layout.clock_widget_analog, R.layout.clock_widget_digital_horizontal_small, R.layout.clock_widget_digital_circle, R.layout.clock_widget_digital_vertical_red_one, R.layout.clock_widget_none};
    private final String[] mClockLayoutNames = {"digital_vertical", "default", "analog", "digital_horizontal_small", "digital_circle", "digital_vertical_red_one", "blank"};
    private final int[] mClockPreviewImage = new int[0];
    private final int[] mClockThumbnail = {R.drawable.time_02_thumb, R.drawable.time_01_thumb, R.drawable.time_03_thumb, R.drawable.time_04_thumb, R.drawable.time_05_thumb, R.drawable.time_06_thumb, 0};
    private final int[] mKeyguardClockPreviewImage = {R.drawable.time_01_preview, R.drawable.time_02_preview, R.drawable.time_03_preview, 0, 0, 0, 0};

    public static void init(Context context) {
        if (sInstance == null) {
            sInstance = new ClockWidget(context);
        }
    }

    public static ClockWidget getInstance() {
        return sInstance;
    }

    public void release() {
        if (this.mClockCache != null) {
            this.mClockCache.clear();
        }
        sInstance = null;
    }

    public ClockWidget(Context context) {
        Logger.d(TAG, "ClockWidget init");
        this.mContext = context;
        this.mSharedPrefs = context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        this.mClockStyle = this.mSharedPrefs.getInt(CLOCK_STYLE, 0);
        this.mProviderInfo = new LauncherAppWidgetProviderInfo(context, this);
        this.mProviderInfo.canReorder = false;
        this.mKeyguardClockStyle = PreferencesHelper.getKeyguardClockStyle(context);
        this.mClockCache = new SparseArray<>();
    }

    public int getCount() {
        return this.mClockLayouts.length;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public String getLabel() {
        return "Clock Widget";
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getPreviewImage() {
        if (this.mClockStyle < this.mClockPreviewImage.length) {
            return this.mClockPreviewImage[this.mClockStyle];
        }
        Logger.e(TAG, "preview image index is out of bound.");
        return 0;
    }

    public int getPreviewImage(int index) {
        if (index < this.mClockPreviewImage.length) {
            return this.mClockPreviewImage[index];
        }
        Logger.e(TAG, "preview image index is out of bound.");
        return 0;
    }

    public int getKeyguardPreviewImage() {
        return getKeyguardPreviewImage(this.mKeyguardClockStyle);
    }

    public int getKeyguardPreviewImage(int index) {
        if (index < this.mKeyguardClockPreviewImage.length) {
            return this.mKeyguardClockPreviewImage[index];
        }
        Logger.e(TAG, "keyguard preview image index is out of bound.");
        return 0;
    }

    public int getThumbnail() {
        if (this.mClockStyle < this.mClockThumbnail.length) {
            return this.mClockThumbnail[this.mClockStyle];
        }
        Logger.e(TAG, "thumbnail index is out of bound.");
        return 0;
    }

    public int getThumbnail(int index) {
        if (this.mClockStyle < this.mClockThumbnail.length) {
            return this.mClockThumbnail[index];
        }
        Logger.e(TAG, "thumbnail index is out of bound.");
        return 0;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getIcon() {
        return 0;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getWidgetLayout() {
        return getWidgetLayout(this.mClockStyle);
    }

    public int getWidgetLayout(int clockStyle) {
        if (clockStyle < this.mClockLayouts.length) {
            return this.mClockLayouts[clockStyle];
        }
        Logger.e(TAG, "mClockStyle is out of bound.");
        return 0;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getSpanX() {
        return 4;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getSpanY() {
        return 2;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getMinSpanX() {
        return 4;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getMinSpanY() {
        return 2;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public int getResizeMode() {
        return 0;
    }

    @Override // net.oneplus.h2launcher.CustomAppWidget
    public LauncherAppWidgetProviderInfo getProviderInfo() {
        return this.mProviderInfo;
    }

    public void setClockWidgetRoot(ViewGroup root) {
        Logger.d(TAG, "setClockWidgetRoot:%s", root);
        this.mCustomWidgetRoot = root;
    }

    public ViewGroup getClockWidgetRoot() {
        return this.mCustomWidgetRoot;
    }

    public void previewClockStyle(int clockStyle, boolean updateWallpaperPreview) {
        manageClockLayout(clockStyle, updateWallpaperPreview);
    }

    public boolean previewingClockStyle() {
        return this.mAddingClockView || ((Launcher) this.mContext).isWallpaperPreviewUpdating();
    }

    public void setClockStyle(int clockStyle) {
        Logger.d(TAG, "clockStyle:" + clockStyle + ", mClockStyle:" + this.mClockStyle);
        this.mClockStyle = clockStyle;
        this.mProviderInfo.initialLayout = getWidgetLayout();
        LauncherModel.updateClockWidgetProviderInfo(getWidgetLayout());
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        editor.putInt(CLOCK_STYLE, this.mClockStyle);
        editor.apply();
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_H2_TAG, AnalyticHelper.Label.MDM_OPTIONS_TIME_WIDGET_HOME, this.mClockLayoutNames[this.mClockStyle]);
    }

    public void setKeyguardClockStyle(int keyguardClockStyle) {
        this.mKeyguardClockStyle = keyguardClockStyle;
        PreferencesHelper.setKeyguardClockStyle(this.mContext, this.mKeyguardClockStyle);
        Settings.Global.putInt(this.mContext.getContentResolver(), SETTINGS_NAME_KEYGUARD_CLOCK_STYLE, keyguardClockStyle);
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_H2_TAG, AnalyticHelper.Label.MDM_OPTIONS_TIME_WIDGET_LOCK, this.mClockLayoutNames[this.mKeyguardClockStyle]);
    }

    private void manageClockLayout(int clockStyle, boolean updateWallpaperPreview) {
        if (getClockWidgetRoot() != null) {
            WeakReference<ViewGroup> wr = this.mClockCache.get(clockStyle);
            ViewGroup vg = null;
            if (wr != null) {
                ViewGroup vg2 = wr.get();
                vg = vg2;
            }
            if (vg != null) {
                ViewGroup parent = (ViewGroup) vg.getParent();
                if (parent != null) {
                    Logger.d(TAG, "clock view already have parent, remove it! parent:%s", parent);
                    parent.removeView(vg);
                }
                Logger.d(TAG, "cached clock view, style:%d", Integer.valueOf(clockStyle));
                this.mCustomWidgetRoot.removeAllViews();
                this.mCustomWidgetRoot.addView(vg);
            } else {
                Logger.d(TAG, "new clock view, style:%d", Integer.valueOf(clockStyle));
                LayoutInflater inflater = LayoutInflater.from(this.mContext);
                this.mCustomWidgetRoot.removeAllViews();
                ViewGroup vg3 = (ViewGroup) inflater.inflate(getWidgetLayout(clockStyle), (ViewGroup) null);
                this.mCustomWidgetRoot.addView(vg3);
                this.mClockCache.put(clockStyle, new WeakReference<>(vg3));
            }
            if (updateWallpaperPreview) {
                this.mAddingClockView = true;
                this.mCustomWidgetRoot.addOnLayoutChangeListener(new OnCustomWidgetRootLayoutChangeListener());
            }
        }
    }

    public int getClockStyle() {
        return this.mClockStyle;
    }

    public int getKeyguardClockStyle() {
        return this.mKeyguardClockStyle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class OnCustomWidgetRootLayoutChangeListener implements View.OnLayoutChangeListener {
        private OnCustomWidgetRootLayoutChangeListener() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            ClockWidget.this.mAddingClockView = false;
            v.removeOnLayoutChangeListener(this);
            View child = ClockWidget.this.mCustomWidgetRoot.getChildAt(0);
            if (child != null) {
                ((ClockViewGroup) child).updateShadowImmediately();
            }
            LauncherAppState.getInstance().getLauncher().updateWallpaperPreview();
        }
    }
}
