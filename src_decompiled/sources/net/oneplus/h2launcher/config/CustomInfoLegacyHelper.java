package net.oneplus.h2launcher.config;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;

/* loaded from: classes.dex */
public class CustomInfoLegacyHelper {
    public static final String CUSTOM_ICONS_PREFERENCES = "custom_icons_shared_preferences";
    public static final String CUSTOM_LABELS_PREFERENCES = "custom_labels_shared_preferences";
    public static final String RESOURCE_PATH_DIVIDER = ":";

    public static void setCustomLabelForComponent(Context context, String component, String label) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_LABELS_PREFERENCES, 0);
        SharedPreferences.Editor editor = prefs.edit();
        if (label != null && !label.equals(getDefaultLabelForComponent(context, component))) {
            editor.putString(component, label);
        } else {
            editor.remove(component);
        }
        editor.commit();
    }

    public static boolean hasCustomLabelForComponent(Context context, String component) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_LABELS_PREFERENCES, 0);
        return prefs.getString(component, null) != null;
    }

    public static String getCustomLabelForComponent(Context context, String component) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_LABELS_PREFERENCES, 0);
        return prefs.getString(component, getDefaultLabelForComponent(context, component));
    }

    public static String getCustomLabelForComponent(Context context, String component, String defaultLabel) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_LABELS_PREFERENCES, 0);
        return prefs.getString(component, defaultLabel);
    }

    public static String getDefaultLabelForComponent(Context context, String component) {
        PackageManager pm = context.getPackageManager();
        Intent mainIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mainIntent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> appList = pm.queryIntentActivities(mainIntent, 0);
        for (ResolveInfo appInfo : appList) {
            if (appInfo.activityInfo != null) {
                String flattenedComponent = appInfo.activityInfo.packageName + "/" + appInfo.activityInfo.name;
                if (flattenedComponent.equals(component)) {
                    return appInfo.activityInfo.loadLabel(pm).toString();
                }
            }
        }
        return null;
    }

    public static void setCustomIconForComponent(Context context, String component, String resPkg, String resName) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_ICONS_PREFERENCES, 0);
        SharedPreferences.Editor editor = prefs.edit();
        if (resPkg != null && resName != null) {
            editor.putString(component, resPkg + RESOURCE_PATH_DIVIDER + resName);
        } else {
            editor.remove(component);
        }
        editor.commit();
    }

    public static boolean hasCustomIconForComponent(Context context, String component) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_ICONS_PREFERENCES, 0);
        String resPath = prefs.getString(component, null);
        return resPath != null;
    }

    public static Drawable getCustomIconForComponent(Context context, UserHandleCompat user, String component) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_ICONS_PREFERENCES, 0);
        String resPath = prefs.getString(component, null);
        return hasCustomIconForComponent(context, component) ? getCustomIconForComponent(context, user, component, resPath.split(RESOURCE_PATH_DIVIDER)) : getCurrentIconForComponent(context, user, component);
    }

    public static Drawable getCustomIconForComponent(Context context, UserHandleCompat user, String component, String[] resourcePath) {
        int resId;
        if (resourcePath.length < 2) {
            return getCurrentIconForComponent(context, user, component);
        }
        LauncherAppState.getInstance().getAssetCache();
        try {
            Resources res = context.getPackageManager().getResourcesForApplication(resourcePath[0]);
            if (res != null && (resId = res.getIdentifier(resourcePath[1], DynamicIconDrawableConfig.TYPE, resourcePath[0])) != 0) {
                return res.getDrawable(resId, context.getTheme());
            }
            return getCurrentIconForComponent(context, user, component);
        } catch (PackageManager.NameNotFoundException e) {
            return getCurrentIconForComponent(context, user, component);
        }
    }

    public static Drawable getCurrentIconForComponent(Context context, UserHandleCompat user, String component) {
        ComponentName unflattenedComponent = ComponentName.unflattenFromString(component);
        Intent i = context.getPackageManager().getLaunchIntentForPackage(unflattenedComponent.getPackageName());
        AssetCache cache = LauncherAppState.getInstance().getAssetCache();
        Bitmap icon = cache.getIcon(unflattenedComponent, user, true);
        if (icon == null) {
            icon = cache.getIcon(i, user, true);
        }
        return icon != null ? new BitmapDrawable(context.getResources(), icon) : getDefaultIconForComponent(context, component);
    }

    public static Drawable getDefaultIconForComponent(Context context, String component) {
        PackageManager pm = context.getPackageManager();
        Intent mainIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mainIntent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> appList = pm.queryIntentActivities(mainIntent, 0);
        for (ResolveInfo appInfo : appList) {
            if (appInfo.activityInfo != null) {
                String flattenedComponent = appInfo.activityInfo.packageName + "/" + appInfo.activityInfo.name;
                if (flattenedComponent.equals(component)) {
                    return appInfo.activityInfo.loadIcon(pm);
                }
            }
        }
        return null;
    }

    public static void RemoveCustomLabelForPackage(Context context, String PkgName) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_LABELS_PREFERENCES, 0);
        Map<String, ?> allEntries = prefs.getAll();
        for (Map.Entry<String, ?> entry : allEntries.entrySet()) {
            String componentName = entry.getKey();
            String[] componentArray = componentName.split("/");
            if (componentArray != null && componentArray[0].equals(PkgName)) {
                SharedPreferences.Editor editor = prefs.edit();
                editor.remove(componentName);
                editor.commit();
            }
        }
    }

    public static void RemoveCustomIconForPackage(Context context, String PkgName) {
        SharedPreferences prefs = context.getSharedPreferences(CUSTOM_ICONS_PREFERENCES, 0);
        Map<String, ?> allEntries = prefs.getAll();
        for (Map.Entry<String, ?> entry : allEntries.entrySet()) {
            String componentName = entry.getKey();
            String[] componentArray = componentName.split("/");
            if (componentArray != null && componentArray[0].equals(PkgName)) {
                SharedPreferences.Editor editor = prefs.edit();
                editor.remove(componentName);
                editor.commit();
            }
        }
    }

    public static Drawable getCustomIconForComponentForMigrate(Context context, String resPath) {
        int resId;
        String[] resourcePath = resPath.split(RESOURCE_PATH_DIVIDER);
        if (resourcePath.length < 2) {
            return null;
        }
        try {
            Resources res = context.getPackageManager().getResourcesForApplication(resourcePath[0]);
            if (res == null || (resId = res.getIdentifier(resourcePath[1], DynamicIconDrawableConfig.TYPE, resourcePath[0])) == 0) {
                return null;
            }
            return res.getDrawable(resId, context.getTheme());
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
