package net.oneplus.h2launcher.util;

import android.content.Context;
import com.oneplus.sdk.utils.OpAppTracker;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class AnalyticHelper {
    private static AnalyticHelper sInstance;
    private final boolean SUPPORT_MDM = true;
    private OpAppTracker mAppTracker;

    /* loaded from: classes.dex */
    public static class Label {
        public static final String MDM_ACTIONS_ICON_ALIGN = "icon_align";
        public static final String MDM_ACTIONS_ICON_ALIGN_BACK = "icon_align_back";
        public static final String MDM_ACTIONS_ICON_REARRANGE = "icon_rearrange";
        public static final String MDM_ACTIONS_ICON_REARRANGE_FOLDER = "icon_rearrange_folder";
        public static final String MDM_OPTIONS_GESTURE_ICON_PACK = "icon_pack";
        public static final String MDM_OPTIONS_GESTURE_ICON_SIZE = "icon_size";
        public static final String MDM_OPTIONS_GESTURE_QUICK_NOTIFY = "g_quick_notification";
        public static final String MDM_OPTIONS_GESTURE_QUICK_SEARCH = "g_quick_search";
        public static final String MDM_OPTIONS_GESTURE_SHELF = "g_shelf";
        public static final String MDM_OPTIONS_H2_WALLPAPER_BLUR = "wallpaper_blur";
        public static final String MDM_OPTIONS_H2_WALLPAPER_COLOR = "wallpaper_color";
        public static final String MDM_OPTIONS_H2_WALLPAPER_MODE = "wallpaper_mode";
        public static final String MDM_OPTIONS_H2_WALLPAPER_TYPE = "wallpaper_type";
        public static final String MDM_OPTIONS_H2_WIDGET = "h2_widget";
        public static final String MDM_OPTIONS_LAYOUT_SWITCH = "layout_switch";
        public static final String MDM_OPTIONS_SEARCH_BAR = "search_bar";
        public static final String MDM_OPTIONS_TIME_WIDGET_HOME = "time_widget_home";
        public static final String MDM_OPTIONS_TIME_WIDGET_LOCK = "time_widget_lock";
        public static final String MDM_SHELF = "shelf";
        public static final String MDM_SHELF_CARD_ADDED = "board_add";
        public static final String MDM_SHELF_CARD_REMOVED = "board_remove";
        public static final String MDM_SHELF_FREQUENT_APP_SIZE = "fa_board_size";
        public static final String MDM_SHELF_FREQUENT_CONTACTS_SIZE = "fc_board_size";
        public static final String MDM_SHELF_GREETINGS = "grt";
        public static final String MDM_SHELF_TILE_COUNT = "tile_count";
        public static final String MDM_SHELF_TILE_HEIGHT_ADJUSTED = "tile_height";
        public static final String MDM_SHELF_WEATHER_ENTRY = "shelf_weather_click";
        public static final String MDM_SHELF_WEATHER_STATUS = "shelf_weather";
        public static final String MDM_SHELF_WIDGET_ADDED = "widget_add";
        public static final String MDM_SHELF_WIDGET_COUNT = "widget_count";
        public static final String MDM_SHELF_WIDGET_REMOVED = "widget_remove";
    }

    /* loaded from: classes.dex */
    public static class Tag {
        public static final String MDM_ACTIONS_TAG = "launcher.actions";
        public static final String MDM_OPTIONS_H2_TAG = "launcher.options.h2";
        public static final String MDM_OPTIONS_TAG = "launcher.options";
        public static final String MDM_SHELF_TAG = "launcher.shelf";
    }

    private AnalyticHelper(Context context) {
        this.mAppTracker = null;
        this.mAppTracker = new OpAppTracker(context);
    }

    public static void init(Context context) {
        if (sInstance == null) {
            sInstance = new AnalyticHelper(context);
        }
    }

    public static AnalyticHelper get() {
        return sInstance;
    }

    public final void putAnalytics(String tag, String label, String value) {
        Map<String, String> mdmData = new HashMap<>();
        mdmData.put(label, value);
        this.mAppTracker.onEvent(tag, mdmData);
    }

    public final void putAnalytics(String tag, Map<String, String> mdmData) {
        if (mdmData != null && mdmData.size() > 0) {
            this.mAppTracker.onEvent(tag, mdmData);
        }
    }

    private void dump(String tag, Map<String, String> data) {
        Logger.i("MDM", "Tag:%s", tag);
        Set keys = data.keySet();
        for (String label : keys) {
            String value = data.get(label);
            Logger.d("MDM", "label:%s,value:%s", label, value);
        }
    }
}
