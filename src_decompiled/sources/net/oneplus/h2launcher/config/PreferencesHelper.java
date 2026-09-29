package net.oneplus.h2launcher.config;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.Locale;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.ResourceWallpaperInfo;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.migrate.MigrationManager;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class PreferencesHelper {
    public static final String APP_DRAWER_KEY = "app_drawer_key";
    private static final String APP_DRAWER_LARGE = "large";
    private static final int APP_DRAWER_LARGE_SIZE = 5;
    private static final String APP_DRAWER_SMALL = "small";
    private static final int APP_DRAWER_SMALL_SIZE = 3;
    private static final String APP_DRAWER_STANDARD = "standard";
    private static final int APP_DRAWER_STANDARD_SIZE = 4;
    public static final String BUTTONS_SHOW_ON_SCREEN_NAVKEYS = "buttons_show_on_screen_navkeys";
    private static final int DEFAULT_WALLPAPER_PREFERENCE_VERSION = 0;
    public static final String DEV_FORCE_SHOW_NAVBAR = "dev_force_show_navbar";
    private static final String KEYGUARD_CLOCK_STYLE = "pref_lockscreen_clock_style";
    private static final String LAST_MIGRATED_BLUR_WALLPAPER = "pref_migrated_blur_wallpaper";
    public static final String LOCK_WALLPAPER_TILE = "pref_lock_wallpaper_tile";
    public static final String PERMISSIONS_DIALOG = "pref_has_shown_permissions_dialog";
    public static final String QUICK_PAGE = "pref_quick_page";
    public static final String SEARCH_BAR_STYLE = "pref_search_bar_style";
    private static final String SEARCH_BAR_STYLE_DEFAULT = "default";
    private static final String SEARCH_BAR_STYLE_HIDDEN = "hidden";
    private static final String SEARCH_BAR_STYLE_TRANSPARENT = "transparent";
    public static final String SEARCH_BAR_VISIBILITY = "pref_search_bar";
    private static final String SETTINGS_NAME_KEYGUARD_CLOCK_STYLE = "keyguard_clock_widget";
    private static final String SETTINGS_NAME_KEYGUARD_CLOCK_STYLE_COPIED = "keyguard_clock_style_copied";
    private static final String SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS = "oneplus_blur_wallpaper_settings";
    private static final String TAG = PreferencesHelper.class.getSimpleName();
    public static final String WALLPAPER_COLOR = "pref_wallpaper_color";
    private static final String WALLPAPER_ID_HOME = "pref_home_wallpaper_id";
    private static final String WALLPAPER_ID_LOCK = "pref_lock_wallpaper_id";
    private static final int WALLPAPER_ID_NONE = -999;
    private static final String WALLPAPER_PREFERENCE_VERSION = "pref_wallpaper_preference_version";
    public static final String WALLPAPER_SETUP_COMPLETED = "pref_wallpaper_setup_completed";
    private static final String WALLPAPER_TILE = "pref_wallpaper_tile";
    public static final String WEATHER = "pref_weather";
    public static final String WELCOME_TITLE = "pref_welcome_title";
    private PreferenceChangedCallback mCallback;
    private Context mContext;
    private SharedPreferences.OnSharedPreferenceChangeListener mPrefListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: net.oneplus.h2launcher.config.PreferencesHelper.1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences prefs, String key) {
            for (String s : PreferencesHelper.this.mCallback.getWatchedKeys()) {
                if (key.equals(s)) {
                    PreferencesHelper.this.mCallback.onPreferenceChange(key);
                }
            }
        }
    };
    private SharedPreferences mPreferences;
    private boolean mRegistered;

    /* loaded from: classes.dex */
    public interface PreferenceChangedCallback {
        String[] getWatchedKeys();

        void onPreferenceChange(String str);
    }

    /* loaded from: classes.dex */
    public enum SearchBarStyle {
        DEFAULT,
        TRANSPARENT,
        HIDDEN
    }

    /* loaded from: classes.dex */
    public enum AppDrawerSizeCatalog {
        SMALL(3),
        STANDARD(4),
        LARGE(5);

        private int size;

        AppDrawerSizeCatalog(int i) {
            this.size = i;
        }

        public int getAppDrawerSize() {
            return this.size;
        }
    }

    public PreferencesHelper(Context context) {
        this.mContext = context;
        this.mPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    }

    public void setPreferenceChangedCallback(PreferenceChangedCallback callback) {
        this.mCallback = callback;
    }

    public static boolean areSoftwareKeysEnabled(Context context) {
        ContentResolver resolver = context.getContentResolver();
        return Settings.System.getInt(resolver, DEV_FORCE_SHOW_NAVBAR, 0) == 1 || Settings.System.getInt(resolver, "buttons_show_on_screen_navkeys", 0) == 1;
    }

    public static boolean isQuickPageEnabled(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getBoolean(QUICK_PAGE, true);
    }

    public static boolean hasShownPreferenceDialog(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        boolean hasShown = prefs.getBoolean(PERMISSIONS_DIALOG, false);
        if (!hasShown) {
            prefs.edit().putBoolean(PERMISSIONS_DIALOG, true).apply();
        }
        return hasShown;
    }

    public static void setWelcomeTitle(Context context, String title) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().putString(WELCOME_TITLE, title).apply();
    }

    public static String getWelcomeTitle(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String defaultTitle = context.getResources().getString(R.string.quick_page_welcome_title_default);
        return prefs.getString(WELCOME_TITLE, defaultTitle);
    }

    public static boolean isWeatherEnabled(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getBoolean(WEATHER, true);
    }

    public static void setWeatherEnabled(Context context, boolean enabled) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().putBoolean(WEATHER, enabled).apply();
    }

    private static boolean isSearchBarHidden(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getBoolean(SEARCH_BAR_VISIBILITY, false);
    }

    public static boolean isSearchBarStyleTransparent(Context context) {
        return getSearchBarStyle(context).equals(SearchBarStyle.TRANSPARENT);
    }

    public static boolean isSearchBarStyleHidden(Context context) {
        return getSearchBarStyle(context).equals(SearchBarStyle.HIDDEN);
    }

    public static SearchBarStyle getSearchBarStyle(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String style = prefs.getString(SEARCH_BAR_STYLE, "");
        char c = 65535;
        switch (style.hashCode()) {
            case -1726194350:
                if (style.equals(SEARCH_BAR_STYLE_TRANSPARENT)) {
                    c = 1;
                    break;
                }
                break;
            case -1217487446:
                if (style.equals(SEARCH_BAR_STYLE_HIDDEN)) {
                    c = 2;
                    break;
                }
                break;
            case 1544803905:
                if (style.equals(SEARCH_BAR_STYLE_DEFAULT)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return SearchBarStyle.DEFAULT;
            case 1:
                return SearchBarStyle.TRANSPARENT;
            case 2:
                return SearchBarStyle.HIDDEN;
            default:
                String style2 = isSearchBarHidden(context) ? SEARCH_BAR_STYLE_HIDDEN : SEARCH_BAR_STYLE_DEFAULT;
                prefs.edit().putString(SEARCH_BAR_STYLE, style2).apply();
                return style2 == SEARCH_BAR_STYLE_HIDDEN ? SearchBarStyle.HIDDEN : SearchBarStyle.DEFAULT;
        }
    }

    public static void setSearchBarStyle(Context context, SearchBarStyle searchBarStyle) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String style = null;
        switch (searchBarStyle) {
            case DEFAULT:
                style = SEARCH_BAR_STYLE_DEFAULT;
                break;
            case TRANSPARENT:
                style = SEARCH_BAR_STYLE_TRANSPARENT;
                break;
            case HIDDEN:
                style = SEARCH_BAR_STYLE_HIDDEN;
                break;
        }
        if (!TextUtils.isEmpty(style)) {
            prefs.edit().putString(SEARCH_BAR_STYLE, style).apply();
        }
    }

    public static int[] getGridSize(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String size = prefs.getString(APP_DRAWER_KEY, APP_DRAWER_STANDARD);
        char c = 65535;
        switch (size.hashCode()) {
            case 102742843:
                if (size.equals(APP_DRAWER_LARGE)) {
                    c = 2;
                    break;
                }
                break;
            case 109548807:
                if (size.equals(APP_DRAWER_SMALL)) {
                    c = 0;
                    break;
                }
                break;
            case 1312628413:
                if (size.equals(APP_DRAWER_STANDARD)) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return context.getResources().getIntArray(R.array.grid_size_small_dimensions);
            case 1:
                return context.getResources().getIntArray(R.array.grid_size_normal_dimensions);
            case 2:
                return context.getResources().getIntArray(R.array.grid_size_large_dimensions);
            default:
                return null;
        }
    }

    public static String[] getGridEntries(Context context) {
        String[] entries = context.getResources().getStringArray(R.array.grid_size_entries);
        if (entries.length >= 3) {
            String format = context.getResources().getString(R.string.grid_size_format);
            StringBuilder strBuilder = new StringBuilder(entries[0]);
            int[] size = context.getResources().getIntArray(R.array.grid_size_small_dimensions);
            strBuilder.append(String.format(Locale.US, format, Integer.valueOf(size[0]), Integer.valueOf(size[1])));
            entries[0] = strBuilder.toString();
            StringBuilder strBuilder2 = new StringBuilder(entries[2]);
            int[] size2 = context.getResources().getIntArray(R.array.grid_size_large_dimensions);
            strBuilder2.append(String.format(Locale.US, format, Integer.valueOf(size2[0]), Integer.valueOf(size2[1])));
            entries[2] = strBuilder2.toString();
        }
        return entries;
    }

    public static AppDrawerSizeCatalog getAppDrawerSizeCatalog(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String size = prefs.getString(APP_DRAWER_KEY, APP_DRAWER_STANDARD);
        char c = 65535;
        switch (size.hashCode()) {
            case 102742843:
                if (size.equals(APP_DRAWER_LARGE)) {
                    c = 2;
                    break;
                }
                break;
            case 109548807:
                if (size.equals(APP_DRAWER_SMALL)) {
                    c = 0;
                    break;
                }
                break;
            case 1312628413:
                if (size.equals(APP_DRAWER_STANDARD)) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return AppDrawerSizeCatalog.SMALL;
            case 1:
                return AppDrawerSizeCatalog.STANDARD;
            case 2:
                return AppDrawerSizeCatalog.LARGE;
            default:
                return null;
        }
    }

    public static void setAppDrawerSizeCatalog(Context context, AppDrawerSizeCatalog appDrawerSizeCatalog) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String size = null;
        switch (appDrawerSizeCatalog) {
            case SMALL:
                size = APP_DRAWER_SMALL;
                break;
            case STANDARD:
                size = APP_DRAWER_STANDARD;
                break;
            case LARGE:
                size = APP_DRAWER_LARGE;
                break;
        }
        if (!TextUtils.isEmpty(size)) {
            prefs.edit().putString(APP_DRAWER_KEY, size).apply();
        }
    }

    public static void setWallpaperSetupCompleted(Context context) {
        setWallpaperSetupCompleted(context, true);
    }

    public static void setWallpaperSetupCompleted(Context context, boolean completed) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().putBoolean(WALLPAPER_SETUP_COMPLETED, completed).apply();
    }

    public static boolean hasWallpaperSetupCompleted(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getBoolean(WALLPAPER_SETUP_COMPLETED, false);
    }

    public static void setLastMigratedWallpaper(Context context, ComponentName blurWallpaper) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        if (blurWallpaper != null) {
            String blurWallpaperString = blurWallpaper.flattenToString();
            Logger.d(TAG, "[setLastMigratedWallpaper] %s", blurWallpaperString);
            prefs.edit().putString(LAST_MIGRATED_BLUR_WALLPAPER, blurWallpaperString).apply();
        }
    }

    public static ComponentName getLastMigratedWallpaper(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String blurWallpaperString = prefs.getString(LAST_MIGRATED_BLUR_WALLPAPER, "");
        if (TextUtils.isEmpty(blurWallpaperString)) {
            return null;
        }
        return ComponentName.unflattenFromString(blurWallpaperString);
    }

    public static void setLockWallpaperTile(Context context, WallpaperTileInfo tile) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String tileValue = tile.serialize();
        if (!TextUtils.isEmpty(tileValue)) {
            Logger.d(TAG, "[setLockWallpaperTile] %s", tile);
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString(LOCK_WALLPAPER_TILE, tileValue);
            editor.apply();
        }
    }

    public static WallpaperTileInfo getLockWallpaperTile(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String tileValue = prefs.getString(LOCK_WALLPAPER_TILE, "");
        if (TextUtils.isEmpty(tileValue)) {
            Logger.d(TAG, "[getLockWallpaperTile] null");
            return null;
        }
        WallpaperTileInfo info = WallpaperTileInfo.deserialize(context, tileValue);
        Logger.d(TAG, "[getLockWallpaperTile] %s", info);
        return info;
    }

    public static void clearLockWallpaperTile(Context context) {
        Logger.d(TAG, "[clearLockWallpaperTile]");
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().remove(LOCK_WALLPAPER_TILE).apply();
    }

    public static void setWallpaperTile(Context context, WallpaperTileInfo tile) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String tileValue = tile.serialize();
        if (!TextUtils.isEmpty(tileValue)) {
            Logger.d(TAG, "[setWallpaperTile] %s", tile);
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString(WALLPAPER_TILE, tileValue);
            editor.apply();
        }
    }

    public static String getRawWallpaperTile(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getString(WALLPAPER_TILE, "");
    }

    public static WallpaperTileInfo getWallpaperTile(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String tileValue = prefs.getString(WALLPAPER_TILE, "");
        if (TextUtils.isEmpty(tileValue)) {
            Logger.d(TAG, "[getWallpaperTile] null");
            return null;
        }
        WallpaperTileInfo info = WallpaperTileInfo.deserialize(context, tileValue);
        WallpaperTileInfo migrated = migrateWallpaperTileIfNecessary(context, info);
        if (migrated != null) {
            Logger.d(TAG, "migrated: %s", migrated);
            setWallpaperTile(context, migrated);
            info = migrated;
        }
        Logger.d(TAG, "[getWallpaperTile] %s", info);
        return info;
    }

    private static WallpaperTileInfo migrateWallpaperTileIfNecessary(Context context, WallpaperTileInfo info) {
        if (info == null || !WallpaperTileInfo.Type.RESOURCE.equals(info.getType()) || TextUtils.isEmpty(info.getWallpaper()) || !info.getWallpaper().endsWith("_port")) {
            return null;
        }
        String overlayWallpaper = info.getWallpaper();
        String wallpaper = overlayWallpaper.replace("_port", "");
        String correctedOverlayWallpaper = MigrationManager.correctLauncherPackageName(context, overlayWallpaper);
        String correctedWallpaper = MigrationManager.correctLauncherPackageName(context, wallpaper);
        Resources resources = context.getResources();
        int resId = resources.getIdentifier(correctedWallpaper, null, null);
        int overlayResId = resources.getIdentifier(correctedOverlayWallpaper, null, null);
        if (resId == 0 || overlayResId == 0) {
            return null;
        }
        ResourceWallpaperInfo migrated = new ResourceWallpaperInfo(context.getResources(), info.getName(), resId, info.getOrientation());
        migrated.setOverlayResId(overlayResId);
        return migrated;
    }

    public static void setWallpaperColor(Context context, WallpaperColor color) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String colorValue = color.serialize();
        if (!TextUtils.isEmpty(colorValue)) {
            Logger.d(TAG, "[setWallpaperColor] %s", color);
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString(WALLPAPER_COLOR, color.serialize());
            editor.apply();
        }
    }

    public static WallpaperColor getWallpaperColor(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        String colorValue = prefs.getString(WALLPAPER_COLOR, "");
        if (!TextUtils.isEmpty(colorValue)) {
            WallpaperColor color = WallpaperColor.deserialize(colorValue);
            Logger.d(TAG, "[getWallpaperColor] %s", color);
            return color;
        }
        Logger.d(TAG, "[getWallpaperColor] null");
        return null;
    }

    public static void clearWallpaperTileAndColor(Context context) {
        Logger.d(TAG, "[clearWallpaperTileAndColor]");
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().remove(WALLPAPER_TILE).remove(WALLPAPER_COLOR).apply();
    }

    public static void setBlurWallpaperSettings(Context context, BlurWallpaperSettings settings) {
        String settingsValue = settings.serialize();
        if (!settingsValue.isEmpty()) {
            ContentResolver contentResolver = context.getContentResolver();
            Settings.Global.putString(contentResolver, SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS, settingsValue);
            Logger.d(TAG, "[setBlurWallpaperSettings] %s", settings);
        }
    }

    public static BlurWallpaperSettings getBlurWallpaperSettings(Context context) {
        BlurWallpaperSettings settings;
        ContentResolver contentResolver = context.getContentResolver();
        String settingsValue = Settings.Global.getString(contentResolver, SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS);
        if (TextUtils.isEmpty(settingsValue)) {
            Logger.d(TAG, "empty global settings value, name=%s", SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS);
            settings = BlurWallpaperSettings.emptySettings();
        } else {
            settings = BlurWallpaperSettings.deserialize(settingsValue);
        }
        Logger.d(TAG, "[getBlurWallpaperSettings] %s", settings);
        return settings;
    }

    public static void clearBlurWallpaperSettings(Context context) {
        Logger.d(TAG, "[clearBlurWallpaperSettings]");
        ContentResolver contentResolver = context.getContentResolver();
        Settings.Global.putString(contentResolver, SETTINGS_NAME_ONEPLUS_BLUR_WALLPAPER_SETTINGS, "");
    }

    public static void clearBlurWallpaperMaskColor(Context context) {
        BlurWallpaperSettings settings = getBlurWallpaperSettings(context);
        settings.maskColor = 0;
        setBlurWallpaperSettings(context, settings);
    }

    public static void setWallpaperId(Context context, int screen, int wallpaperId) {
        String key = screen == 0 ? WALLPAPER_ID_LOCK : WALLPAPER_ID_HOME;
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putInt(key, wallpaperId);
        editor.apply();
    }

    public static int getWallpaperId(Context context, int screen) {
        String key = screen == 0 ? WALLPAPER_ID_LOCK : WALLPAPER_ID_HOME;
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getInt(key, WALLPAPER_ID_NONE);
    }

    public static int getKeyguardClockStyle(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        int style = prefs.getInt(KEYGUARD_CLOCK_STYLE, -1);
        if (style < 0) {
            ContentResolver resolver = context.getContentResolver();
            boolean copied = Settings.Global.getInt(resolver, SETTINGS_NAME_KEYGUARD_CLOCK_STYLE_COPIED, 0) > 0;
            if (!copied) {
                Logger.d(TAG, "Copy keyguard clock style from global settings");
                setKeyguardClockStyle(context, getKeyguardClockStyleInSettings(context));
                Settings.Global.putInt(resolver, SETTINGS_NAME_KEYGUARD_CLOCK_STYLE_COPIED, 1);
            } else {
                setKeyguardClockStyle(context, 0);
            }
            return getKeyguardClockStyle(context);
        }
        StyleManager.init(context);
        if (StyleManager.isStandardLayout()) {
            return 0;
        }
        return prefs.getInt(KEYGUARD_CLOCK_STYLE, 0);
    }

    public static void setKeyguardClockStyle(Context context, int style) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().putInt(KEYGUARD_CLOCK_STYLE, style).apply();
    }

    public static int getKeyguardClockStyleInSettings(Context context) {
        ContentResolver resolver = context.getContentResolver();
        return Settings.Global.getInt(resolver, SETTINGS_NAME_KEYGUARD_CLOCK_STYLE, 0);
    }

    public static void setKeyguardClockStyleInSettings(Context context, int style) {
        ContentResolver resolver = context.getContentResolver();
        Settings.Global.putInt(resolver, SETTINGS_NAME_KEYGUARD_CLOCK_STYLE, style);
    }

    public static int getWallpaperPreferenceVersion(Context context) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        return prefs.getInt(WALLPAPER_PREFERENCE_VERSION, 0);
    }

    public static void setWallpaperPreferenceVersion(Context context, int version) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        prefs.edit().putInt(WALLPAPER_PREFERENCE_VERSION, version).apply();
    }

    public void startListening() {
        if (this.mCallback == null) {
            throw new IllegalStateException("Callback can't be null!");
        }
        if (this.mContext == null) {
            throw new IllegalStateException("Class has not been initialized");
        }
        if (!this.mRegistered) {
            this.mPreferences.registerOnSharedPreferenceChangeListener(this.mPrefListener);
            this.mRegistered = true;
        }
    }

    public void stopListening() {
        if (this.mRegistered) {
            this.mPreferences.unregisterOnSharedPreferenceChangeListener(this.mPrefListener);
            this.mRegistered = false;
        }
    }
}
