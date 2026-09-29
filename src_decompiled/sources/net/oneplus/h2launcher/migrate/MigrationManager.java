package net.oneplus.h2launcher.migrate;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.io.File;
import java.util.Map;
import net.oneplus.h2launcher.LauncherFiles;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class MigrationManager {
    private static final String COM_ONEPLUS_LAUNCHER_DEFAULT_PREFERENCES_KEY = "com.oneplus.launcher_preferences";
    public static final String COM_ONEPLUS_LAUNCHER_DEFAULT_SHARED_PREFERENCE_NAME = "com.oneplus.launcher_preferences";
    private static final String COM_ONEPLUS_LAUNCHER_MANAGED_USER_PREFERENCES_KEY = "com.oneplus.launcher.managedusers.prefs";
    private static final String COM_ONEPLUS_LAUNCHER_SHARED_PREFERENCES_KEY = "com.oneplus.launcher.prefs";
    public static final String HYDROGEN_CUSTOM_WALLPAPER_FILENAME_INFIX = "temp_img_filename";
    public static final String HYDROGEN_CUSTOM_WALLPAPER_THUMBNAIL_FILENAME_INFIX = "temp_thumb_filename";
    public static final String HYDROGEN_LAUNCHER_DEFAULT_SHARED_PREFERENCE_NAME = "com.oneplus.hydrogen.launcher_preferences";
    public static final String HYDROGEN_RESOURCE_WALLPAPER_FILENAME = "current_wallpaper";
    public static final int HYDROGEN_WALLPAPER_TYPE_CUSTOM = 1;
    public static final int HYDROGEN_WALLPAPER_TYPE_RESOURCE = 0;
    public static final String KEY_HYDROGEN_WALLPAPER = "widget_wallpaper";
    public static final String KEY_HYDROGEN_WALLPAPER_TYPE = "res_type";
    private static final String LAUNCHER3_DEFAULT_PREFERENCES_KEY = "com.android.launcher3_preferences";
    private static final String LAUNCHER3_MANAGED_USER_PREFERENCES_KEY = "com.android.launcher3.managedusers.prefs";
    private static final String LAUNCHER3_SHARED_PREFERENCES_KEY = "com.android.launcher3.prefs";
    private static final String PKG_NAME_COM_ONEPLUS_LAUNCHER = "com.oneplus.launcher";
    private static final String SHARED_PREFS = "/shared_prefs/";
    private static final String TAG = "MigrationManager";
    private static final String XML = ".xml";

    public static void MigrationPref(Context context) {
        migrationDefaultPrefs(context);
        migrationManagedUsersPrefs(context);
        migrationPrefs(context);
    }

    public static void MigrationComOnePlusPref(Context context) {
        migrationComOnePlusDefaultPrefs(context);
        migrationComOnePlusManagedUsersPrefs(context);
        migrationComOnePlusPrefs(context);
    }

    public static String correctLauncherPackageName(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            Logger.e(TAG, "Invalid context instance or invalid str parameter");
            return str;
        }
        if (str.contains(PKG_NAME_COM_ONEPLUS_LAUNCHER)) {
            String corrected = str.replace(PKG_NAME_COM_ONEPLUS_LAUNCHER, context.getPackageName());
            Logger.d(TAG, "[correctLauncherPackageName] %s -> %s", str, corrected);
            return corrected;
        }
        return str;
    }

    public static void migrateWallpaperPreference(Context context) {
        int version = PreferencesHelper.getWallpaperPreferenceVersion(context);
        if (version != 1) {
            WallpaperPreferenceMigration.onUpgrade(context, version, 1);
            PreferencesHelper.setWallpaperPreferenceVersion(context, 1);
        }
    }

    public static void migrateBlurWallpaper(Context context) {
        BlurWallpaperMigration.performMigration(context);
    }

    private static void migrationDefaultPrefs(Context context) {
        SharedPreferences old = context.getSharedPreferences(LAUNCHER3_DEFAULT_PREFERENCES_KEY, 0);
        SharedPreferences newPref = PreferenceManager.getDefaultSharedPreferences(context);
        copyPref(old, newPref);
        deletePref(context, LAUNCHER3_DEFAULT_PREFERENCES_KEY);
    }

    private static void migrationPrefs(Context context) {
        SharedPreferences old = context.getSharedPreferences(LAUNCHER3_SHARED_PREFERENCES_KEY, 0);
        SharedPreferences newPref = context.getSharedPreferences(LauncherFiles.SHARED_PREFERENCES_KEY, 0);
        copyPref(old, newPref);
        deletePref(context, LAUNCHER3_SHARED_PREFERENCES_KEY);
    }

    private static void migrationManagedUsersPrefs(Context context) {
        SharedPreferences old = context.getSharedPreferences(LAUNCHER3_MANAGED_USER_PREFERENCES_KEY, 0);
        SharedPreferences newPref = context.getSharedPreferences(LauncherFiles.MANAGED_USER_PREFERENCES_KEY, 0);
        copyPref(old, newPref);
        deletePref(context, LAUNCHER3_MANAGED_USER_PREFERENCES_KEY);
    }

    private static void migrationComOnePlusDefaultPrefs(Context context) {
        SharedPreferences old = context.getSharedPreferences("com.oneplus.launcher_preferences", 0);
        SharedPreferences newPref = PreferenceManager.getDefaultSharedPreferences(context);
        copyPref(old, newPref);
        deletePref(context, "com.oneplus.launcher_preferences");
    }

    private static void migrationComOnePlusPrefs(Context context) {
        SharedPreferences old = context.getSharedPreferences(COM_ONEPLUS_LAUNCHER_SHARED_PREFERENCES_KEY, 0);
        SharedPreferences newPref = context.getSharedPreferences(LauncherFiles.SHARED_PREFERENCES_KEY, 0);
        copyPref(old, newPref);
        deletePref(context, COM_ONEPLUS_LAUNCHER_SHARED_PREFERENCES_KEY);
    }

    private static void migrationComOnePlusManagedUsersPrefs(Context context) {
        SharedPreferences old = context.getSharedPreferences(COM_ONEPLUS_LAUNCHER_MANAGED_USER_PREFERENCES_KEY, 0);
        SharedPreferences newPref = context.getSharedPreferences(LauncherFiles.MANAGED_USER_PREFERENCES_KEY, 0);
        copyPref(old, newPref);
        deletePref(context, COM_ONEPLUS_LAUNCHER_MANAGED_USER_PREFERENCES_KEY);
    }

    private static void copyPref(SharedPreferences oldPref, SharedPreferences newPref) {
        SharedPreferences.Editor edit = newPref.edit();
        for (Map.Entry<String, ?> entry : oldPref.getAll().entrySet()) {
            Object v = entry.getValue();
            String key = entry.getKey();
            if (v instanceof Boolean) {
                edit.putBoolean(key, ((Boolean) v).booleanValue());
            } else if (v instanceof Float) {
                edit.putFloat(key, ((Float) v).floatValue());
            } else if (v instanceof Integer) {
                edit.putInt(key, ((Integer) v).intValue());
            } else if (v instanceof Long) {
                edit.putLong(key, ((Long) v).longValue());
            } else if (v instanceof String) {
                edit.putString(key, (String) v);
            }
        }
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void deletePref(Context context, String name) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(context.getFilesDir().getParent()).append(SHARED_PREFS).append(name).append(XML);
        try {
            File deletePrefFile = new File(stringBuilder.toString());
            if (deletePrefFile.exists()) {
                deletePrefFile.delete();
            }
        } catch (Exception e) {
            Logger.d(TAG, " e " + e);
        }
    }
}
