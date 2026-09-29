package net.oneplus.h2launcher;

import android.net.Uri;
import android.provider.BaseColumns;
import net.oneplus.h2launcher.config.ProviderConfig;
import net.oneplus.h2launcher.launcherProviderHelper.LauncherProviderUtil;

/* loaded from: classes.dex */
public class LauncherSettings {

    /* loaded from: classes.dex */
    interface BaseLauncherColumns extends ChangeLogColumns {
        public static final String ICON = "icon";
        public static final String ICON_PACKAGE = "iconPackage";
        public static final String ICON_RESOURCE = "iconResource";
        public static final String ICON_TYPE = "iconType";
        public static final int ICON_TYPE_APPLICATION = 2;
        public static final int ICON_TYPE_BITMAP = 1;
        public static final int ICON_TYPE_RESOURCE = 0;
        public static final String INTENT = "intent";
        public static final String ITEM_TYPE = "itemType";
        public static final int ITEM_TYPE_APPLICATION = 0;
        public static final int ITEM_TYPE_DEEP_SHORTCUT = 6;
        public static final int ITEM_TYPE_SHORTCUT = 1;
        public static final String TITLE = "title";
    }

    /* loaded from: classes.dex */
    public interface ChangeLogColumns extends BaseColumns {
        public static final String MODIFIED = "modified";
    }

    /* loaded from: classes.dex */
    public static final class ExternalWidget implements BaseLauncherColumns {
        public static final String ARG_ADD_WIDGET = "add";
        public static final String ARG_REMOVE_WIDGET = "remove";
        public static final String ARG_SEAT_AVAILABLE = "available";
        public static final String COMPONENT = "component";
        public static final String CONTENT = "CONTENT";
        public static final String CONTENT_EXTERNAL = "EXTERNAL";
        public static final String EXTRA_EXTERNAL_ONLY = "external_only";
        public static final String EXTRA_REACH_LIMIT = "reach_limit";
        public static final String EXTRA_SEAT_AVAILABLE = "seat_available";
        public static final String EXTRA_SUCCESS = "success";
        public static final String EXTRA_WIDGET_CLASS = "class";
        public static final String EXTRA_WIDGET_ID = "widget_id";
        public static final String EXTRA_WIDGET_PACKAGE = "package";
        public static final String METHOD_MANAGE_WIDGET = "manageWidget";
        public static final String TYPE = "operationType";
        public static final int TYPE_ADD = 0;
        public static final int TYPE_REMOVE = 1;
        public static final String WIDGET_ID = "widgetId";
        public static final String TABLE_NAME = "widgets";
        public static final Uri CONTENT_URI = Uri.parse("content://" + ProviderConfig.NOTE_AUTHORITY + "/" + TABLE_NAME);
    }

    /* loaded from: classes.dex */
    public static final class Settings {
        public static final Uri CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/settings");
        public static final String EXTRA_DEFAULT_VALUE = "default_value";
        public static final String EXTRA_EXTRACTED_COLORS = "extra_extractedColors";
        public static final String EXTRA_VALUE = "value";
        public static final String EXTRA_WALLPAPER_ID = "extra_wallpaperId";
        public static final String METHOD_GET_BOOLEAN = "get_boolean_setting";
        public static final String METHOD_SET_BOOLEAN = "set_boolean_setting";
        public static final String METHOD_SET_EXTRACTED_COLORS_AND_WALLPAPER_ID = "set_extracted_colors_and_wallpaper_id_setting";
    }

    /* loaded from: classes.dex */
    public static final class WorkspaceScreens implements ChangeLogColumns {
        public static final String SCREEN_RANK = "screenRank";
        public static String sTableName = LauncherProviderUtil.getWorkspaceScreensTable();
        public static Uri CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/" + sTableName);
    }

    /* loaded from: classes.dex */
    public static final class QuickPage implements BaseLauncherColumns {
        public static final String CLASS_NAME = "className";
        public static final String COMPONENT = "component";
        public static final String CONTENT = "content";
        public static final Uri CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/quickPage");
        public static final int FAVORITE_CONTACTS = 1;

        @Deprecated
        public static final int FITNESS = 5;
        public static final int FREQUENT_APPS = 0;
        public static final int NOTE = 4;
        public static final String PACKAGE_NAME = "packageName";
        public static final String REMINDER_ID = "reminderId";
        public static final String REMINDER_TIME = "reminderTime";
        public static final String SIZE = "size";
        public static final String TABLE_NAME = "quickPage";
        public static final String TAG_QUICKPAGE = "quickpage";
        public static final String TYPE = "type";

        @Deprecated
        public static final int WEBSITE = 3;
        public static final int WIDGET = 2;
        public static final String WIDGET_ID = "widgetId";

        public static Uri getContentUri(long id) {
            return Uri.parse("content://" + ProviderConfig.AUTHORITY + "/quickPage/" + id);
        }
    }

    /* loaded from: classes.dex */
    public static final class Favorites implements BaseLauncherColumns {
        public static final String APPWIDGET_ID = "appWidgetId";
        public static final String APPWIDGET_PROVIDER = "appWidgetProvider";
        public static final String CELLX = "cellX";
        public static final String CELLY = "cellY";
        public static final String CONTAINER = "container";
        public static final int CONTAINER_DESKTOP = -100;
        public static final int CONTAINER_HOTSEAT = -101;
        public static final int CONTAINER_ICON_REARRANGEMENT = -102;

        @Deprecated
        static final String DISPLAY_MODE = "displayMode";

        @Deprecated
        public static final String IS_SHORTCUT = "isShortcut";
        public static final int ITEM_TYPE_APPWIDGET = 4;
        public static final int ITEM_TYPE_CUSTOM_APPWIDGET = 5;
        public static final int ITEM_TYPE_DEEP_SHORTCUT = 6;
        public static final int ITEM_TYPE_FOLDER = 2;

        @Deprecated
        static final int ITEM_TYPE_LIVE_FOLDER = 3;

        @Deprecated
        static final int ITEM_TYPE_WIDGET_CLOCK = 1000;

        @Deprecated
        static final int ITEM_TYPE_WIDGET_PHOTO_FRAME = 1002;

        @Deprecated
        static final int ITEM_TYPE_WIDGET_SEARCH = 1001;
        public static final String OPTIONS = "options";
        public static final String PROFILE_ID = "profileId";
        public static final String RANK = "rank";
        public static final String RESTORED = "restored";
        public static final String SCREEN = "screen";
        public static final String SPANX = "spanX";
        public static final String SPANY = "spanY";

        @Deprecated
        static final String URI = "uri";
        public static String sTableName = LauncherProviderUtil.getFavoritesTable();
        public static Uri CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/" + sTableName);

        public static Uri getContentUri(long id) {
            return Uri.parse("content://" + ProviderConfig.AUTHORITY + "/" + sTableName + "/" + id);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static final String containerToString(int container) {
            switch (container) {
                case CONTAINER_ICON_REARRANGEMENT /* -102 */:
                    return "icon_rearrangement";
                case CONTAINER_HOTSEAT /* -101 */:
                    return Stats.CONTAINER_HOTSEAT;
                case -100:
                    return "desktop";
                default:
                    return String.valueOf(container);
            }
        }
    }

    public static void reloadTable() {
        Favorites.sTableName = LauncherProviderUtil.getFavoritesTable();
        Favorites.CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/" + LauncherProviderUtil.getFavoritesTable());
        WorkspaceScreens.sTableName = LauncherProviderUtil.getWorkspaceScreensTable();
        WorkspaceScreens.CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/" + WorkspaceScreens.sTableName);
    }
}
