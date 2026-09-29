package net.oneplus.h2launcher.oos;

import android.content.Context;
import android.content.res.XmlResourceParser;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class StyleConfigurationLoader extends BaseLoader {
    private static final String ATTR_ADD_EXTRA_WORKSPACE_ITEMS = "add_extra_workspace_items";
    private static final String ATTR_CAPTURE_ENTIRE_SCREEN = "capture_entire_screen";
    private static final String ATTR_CARD_TYPE = "card_type";
    private static final String ATTR_DISALLOW_SAME_ICON_ON_DESKTOP = "disallow_same_icon_on_desktop";
    private static final String ATTR_DRAW_WALLPAPER_COLOR_MASK = "draw_wallpaper_color_mask";
    private static final String ATTR_SCROLLABLE_WALLPAPER = "scrollable_wallpaper";
    private static final String ATTR_SHOW_ALL_APPS = "show_all_apps";
    private static final String ATTR_SHOW_CLEAR_BUTTON = "show_clear_button";
    private static final String ATTR_SHOW_DYNAMIC_ICON = "show_dynamic_icon";
    private static final String ATTR_SHOW_HOT_SEAT = "show_hot_seat";
    private static final String ATTR_SHOW_ICON_REARRANGEMENT = "show_icon_rearrangement";
    private static final String ATTR_SHOW_INTERNAL_CLOCK = "show_internal_clock";
    private static final String ATTR_SHOW_SEARCH_BAR = "show_search_bar";
    private static final String ATTR_SHOW_SEARCH_BAR_IN_OPTIONS = "show_search_bar_in_options";
    private static final String ATTR_SHOW_STANDARD_FOLDER = "show_standard_folder";
    private static final String ATTR_SHOW_WIDGETS_BUTTON = "show_widgets_button";
    private static final String ATTR_SHOW_WIDGETS_CONFIGURABLE = "show_widgets_configurable";
    private static final String ATTR_WORKSPACE_ALLOW_REORDERING_HOME_SCREEN = "workspace_allow_reordering_home_screen";
    private static final String ATTR_WORKSPACE_COLUMNS = "workspace_columns";
    private static final String ATTR_WORKSPACE_ROWS = "workspace_rows";
    private static final String ATTR_WORKSPACE_SCREEN_SCALE_IN_OPTIONS = "workspace_screen_scale_in_options";
    private static final boolean DEBUG = false;
    public static final String H2_SYSTEM_DEFAULT_ICONS = "com.oneplus.iconpack.h2default";
    public static final String O2_SYSTEM_DEFAULT_ICONS = "SYSTEM_DEFAULT_ICONS";
    private static final String TAG = "Launcher.StyleConfigurationLoader";
    private static final String TAG_CONFIGURATION = "configuration";
    private static final String TAG_STYLE = "style";
    private StyleLoaderCallback mCallback;

    public StyleConfigurationLoader(Context context) {
        super(context);
    }

    @Override // net.oneplus.h2launcher.oos.BaseLoader
    public void load(StyleLoaderCallback callback) {
        this.mCallback = callback;
        int xmlResourceId = 0;
        if (StyleManager.isSimplifiedLayout()) {
            xmlResourceId = R.xml.oos_config_h2;
        } else if (StyleManager.isStandardLayout()) {
            xmlResourceId = R.xml.oos_config_o2;
        }
        StyleConfigurationInfo styleConfigurationInfo = new StyleConfigurationInfo();
        try {
            try {
                XmlResourceParser xmlResourceParser = this.mContext.getResources().getXml(xmlResourceId);
                for (int eventType = xmlResourceParser.getEventType(); eventType != 1; eventType = xmlResourceParser.next()) {
                    switch (eventType) {
                        case 2:
                            if (TAG_CONFIGURATION.equals(xmlResourceParser.getName())) {
                                fillStyleConfigurationInfo(styleConfigurationInfo, xmlResourceParser.getAttributeValue(0), xmlResourceParser.nextText());
                                break;
                            } else {
                                break;
                            }
                    }
                }
                if (this.mCallback != null) {
                    this.mCallback.onStyleConfigurationLoaded(styleConfigurationInfo);
                    this.mCallback = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (this.mCallback != null) {
                    this.mCallback.onStyleConfigurationLoaded(styleConfigurationInfo);
                    this.mCallback = null;
                }
            }
        } catch (Throwable th) {
            if (this.mCallback != null) {
                this.mCallback.onStyleConfigurationLoaded(styleConfigurationInfo);
                this.mCallback = null;
            }
            throw th;
        }
    }

    private void fillStyleConfigurationInfo(StyleConfigurationInfo info, String attrName, String value) {
        if (ATTR_SHOW_SEARCH_BAR.equals(attrName)) {
            info.setShowSearchBar(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_INTERNAL_CLOCK.equals(attrName)) {
            info.setShowInternalClock(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_ALL_APPS.equals(attrName)) {
            info.setShowAllApps(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_HOT_SEAT.equals(attrName)) {
            info.setShowHotSeat(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_WORKSPACE_ROWS.equals(attrName)) {
            info.setWorkspaceRows(Integer.parseInt(value));
            return;
        }
        if (ATTR_WORKSPACE_COLUMNS.equals(attrName)) {
            info.setWorkspaceColumns(Integer.parseInt(value));
            return;
        }
        if (ATTR_CARD_TYPE.equals(attrName)) {
            info.setCardType(value);
            return;
        }
        if (ATTR_SHOW_SEARCH_BAR_IN_OPTIONS.equals(attrName)) {
            info.setShowSearchBarInOptions(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_WORKSPACE_SCREEN_SCALE_IN_OPTIONS.equals(attrName)) {
            info.setWorkspaceScreenScaleInOptions(Float.parseFloat(value));
            return;
        }
        if (ATTR_SHOW_WIDGETS_BUTTON.endsWith(attrName)) {
            info.setShowWidgetsButton(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_CLEAR_BUTTON.equals(attrName)) {
            info.setShowClearButton(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_CAPTURE_ENTIRE_SCREEN.equals(attrName)) {
            info.setCaptureEntireScreen(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_DRAW_WALLPAPER_COLOR_MASK.equals(attrName)) {
            info.setDrawWallpaperColorMask(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SCROLLABLE_WALLPAPER.equals(attrName)) {
            info.setScrollableWallpaper(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_ADD_EXTRA_WORKSPACE_ITEMS.equals(attrName)) {
            info.setAddExtraWorkspaceItems(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_DYNAMIC_ICON.equals(attrName)) {
            info.setShowDynamicIcon(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_ICON_REARRANGEMENT.equals(attrName)) {
            info.setShowIconRearrangement(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_SHOW_STANDARD_FOLDER.equals(attrName)) {
            info.setShowStandardFolderIconShape(Boolean.parseBoolean(value));
            return;
        }
        if (ATTR_WORKSPACE_ALLOW_REORDERING_HOME_SCREEN.equals(attrName)) {
            info.setWorkspaceAllowReorderingHomeScreen(Boolean.parseBoolean(value));
        } else if (ATTR_SHOW_WIDGETS_CONFIGURABLE.equals(attrName)) {
            info.setShowWidgetsConfigurable(Boolean.parseBoolean(value));
        } else if (ATTR_DISALLOW_SAME_ICON_ON_DESKTOP.equals(attrName)) {
            info.setDisallowSameIconOnDesktop(Boolean.parseBoolean(value));
        }
    }

    @Override // net.oneplus.h2launcher.oos.BaseLoader
    protected void reload() {
    }
}
