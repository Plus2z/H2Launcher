package net.oneplus.h2launcher;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class LauncherFiles {
    public static final String DEVICE_PREFERENCES_KEY = "net.oneplus.launcher.device.prefs";
    public static final String NOTE_WIDGET_DB = "note_widget.db";
    public static final String SHARED_PREFERENCES_KEY = "net.oneplus.h2launcher.prefs";
    public static final String WALLPAPER_CROP_PREFERENCES_KEY = "net.oneplus.h2launcher.WallpaperCropActivity";
    private static final String XML = ".xml";
    public static final String DEFAULT_WALLPAPER_THUMBNAIL = "default_thumb2.jpg";
    public static final String DEFAULT_WALLPAPER_THUMBNAIL_OLD = "default_thumb.jpg";
    public static final String LAUNCHER_DB = "launcher.db";
    public static final String WALLPAPER_IMAGES_DB = "saved_wallpaper_images.db";
    public static final String WIDGET_PREVIEWS_DB = "widgetpreviews.db";
    public static final String MANAGED_USER_PREFERENCES_KEY = "net.oneplus.h2launcher.managedusers.prefs";
    public static final String APP_ICONS_DB = "app_icons.db";
    public static final String LAUNCHES_LOG = "launches.log";
    public static final String STATS_LOG = "stats.log";
    public static final String STATS_SIMPLIFIED_LOG = "stats_simplified.log";
    public static final String STATS_STANDARD_LOG = "stats_standard.log";
    public static final List<String> ALL_FILES = Collections.unmodifiableList(Arrays.asList(DEFAULT_WALLPAPER_THUMBNAIL, DEFAULT_WALLPAPER_THUMBNAIL_OLD, LAUNCHER_DB, "net.oneplus.h2launcher.prefs.xml", "net.oneplus.h2launcher.WallpaperCropActivity.xml", WALLPAPER_IMAGES_DB, WIDGET_PREVIEWS_DB, MANAGED_USER_PREFERENCES_KEY, APP_ICONS_DB, LAUNCHES_LOG, STATS_LOG, STATS_SIMPLIFIED_LOG, STATS_STANDARD_LOG));
    public static final List<String> OBSOLETE_FILES = Collections.unmodifiableList(Arrays.asList("launcher.preferences", "PackageInstallerCompatV16.queue"));
}
