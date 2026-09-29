package net.oneplus.h2launcher.oos;

import android.content.Context;
import android.content.SharedPreferences;
import net.oneplus.h2launcher.CustomizationSettingsFragment;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.oos.StyleConfigurationInfo;
import net.oneplus.h2launcher.oos.StyleResourceInfo;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class StyleManager implements StyleLoaderCallback {
    public static final String LAYOUT_STYLE = "launcher.layout_style";
    public static final int LAYOUT_STYLE_SIMPLIFIED = 1;
    public static final int LAYOUT_STYLE_STANDARD = 0;
    public static final int LAYOUT_STYLE_UNKNOWN = -1;
    private static StyleManager sInstance;
    private static StyleConfigurationInfo sStyleConfigurationInfo;
    private static StyleResourceInfo sStyleResourceInfo;
    private StyleConfigurationLoader mStyleConfigurationLoader;
    private StyleResourceLoader mStyleResourceLoader;
    private static final String TAG = StyleManager.class.getSimpleName();
    private static Context sContext = null;
    public static int sLayoutStyle = -1;

    public static StyleManager getInstance() {
        return sInstance;
    }

    public static void init(Context context) {
        if (sInstance == null) {
            sInstance = new StyleManager(context);
        }
    }

    public StyleManager(Context context) {
        sContext = context;
        this.mStyleConfigurationLoader = new StyleConfigurationLoader(context);
        this.mStyleResourceLoader = new StyleResourceLoader(context);
        this.mStyleConfigurationLoader.load(this);
        this.mStyleResourceLoader.load(this);
    }

    public void reloadStyleConfigurationInfo() {
        if (this.mStyleConfigurationLoader != null) {
            this.mStyleConfigurationLoader.load(this);
        }
    }

    public void reloadStyleResourceInfo() {
        if (this.mStyleResourceLoader != null) {
            this.mStyleResourceLoader.load(this);
        }
    }

    public boolean showSearchBar() {
        return sStyleConfigurationInfo.getShowSearchBar();
    }

    public boolean showInternalClock() {
        return sStyleConfigurationInfo.getShowInternalClock();
    }

    public boolean showAllApps() {
        return sStyleConfigurationInfo.getShowAllApps();
    }

    public boolean showHotSeat() {
        return sStyleConfigurationInfo.getShowHotSeat();
    }

    public boolean showWidgetsButton() {
        boolean showWidgetsButton = sStyleConfigurationInfo.getShowWidgetsButton();
        if (showWidgetsButtonConfigurable()) {
            SharedPreferences gesturePreferences = sContext.getSharedPreferences(CustomizationSettingsFragment.GESTURE_SETTINGS, 0);
            return gesturePreferences.getBoolean(CustomizationSettingsFragment.WIDGETS_ENABLED_SAVED, showWidgetsButton);
        }
        return showWidgetsButton;
    }

    public boolean showWidgetsButtonConfigurable() {
        return sStyleConfigurationInfo.getShowWidgetsConfigurable();
    }

    public boolean showClearButton() {
        return sStyleConfigurationInfo.getShowClearButton();
    }

    public int getWorkspaceRows() {
        return sStyleConfigurationInfo.getWorkspaceRows();
    }

    public int getWorkspaceColumns() {
        return sStyleConfigurationInfo.getWorkspaceColumns();
    }

    public boolean isWorkspaceAllowReorderingHomeScreen() {
        return sStyleConfigurationInfo.getWorkspaceAllowReorderingHomeScreen();
    }

    public boolean needCaptureEntireScreen() {
        return sStyleConfigurationInfo.captureEntireScreen();
    }

    public StyleConfigurationInfo.OptionCards getCardType() {
        return sStyleConfigurationInfo.getCardType();
    }

    public boolean showSearchBarInOptions() {
        return sStyleConfigurationInfo.getShowSearchBarInOptions();
    }

    public float getWorkspaceScreenScaleInOptions() {
        return sStyleConfigurationInfo.getWorkspaceScreenScaleInOptions();
    }

    public boolean drawWallpaperColorMask() {
        return sStyleConfigurationInfo.getDrawWallpaperColorMask();
    }

    public boolean showOnlineSearch() {
        return isO2Device();
    }

    public static boolean isO2Device() {
        return false;
    }

    public boolean isWallpaperScrollable() {
        return sStyleConfigurationInfo.getScrollableWallpaper();
    }

    public boolean showDynamicIcon() {
        return sStyleConfigurationInfo.getShowDynamicIcon();
    }

    public boolean showIconRearrangement() {
        return sStyleConfigurationInfo.getShowIconRearrangement();
    }

    public boolean showStandardFolderIconShape() {
        return sStyleConfigurationInfo.getShowStandardFolderIconShape();
    }

    public boolean addExtraWorkspaceItems() {
        return sStyleConfigurationInfo.getAddExtraWorkspaceItems();
    }

    public boolean disallowSameIconOnDesktop() {
        return sStyleConfigurationInfo.getDisallowSameIconOnDesktop();
    }

    public String getSystemDefaultIcons() {
        return StyleConfigurationLoader.H2_SYSTEM_DEFAULT_ICONS;
    }

    public int getResourceId(String key) throws StyleResourceInfo.ResourceIdNotFoundException {
        return sStyleResourceInfo.getResourceId(key);
    }

    @Override // net.oneplus.h2launcher.oos.StyleLoaderCallback
    public void onStyleConfigurationLoaded(StyleConfigurationInfo styleConfigurationInfo) {
        sStyleConfigurationInfo = styleConfigurationInfo;
    }

    @Override // net.oneplus.h2launcher.oos.StyleLoaderCallback
    public void onStyleResourceLoaded(StyleResourceInfo styleResourceInfo) {
        sStyleResourceInfo = styleResourceInfo;
    }

    public boolean needVerifyApplications() {
        return true;
    }

    public boolean isSupportMemo() {
        return false;
    }

    public int getQuickPageDefaultTiles() {
        return R.xml.quick_page_default_h2;
    }

    public static int getTableType() {
        Logger.d(TAG, "Force use China SKU");
        saveLayoutStyle(1);
        return getLayoutStyle();
    }

    public static boolean isSimplifiedLayout() {
        return true;
    }

    public static boolean isStandardLayout() {
        return false;
    }

    public static int getLayoutStyle() {
        return 1;
    }

    public static void saveLayoutStyle(int style) {
        sLayoutStyle = style;
        SharedPreferences prefs = sContext.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putInt(LAYOUT_STYLE, style);
        editor.apply();
    }
}
