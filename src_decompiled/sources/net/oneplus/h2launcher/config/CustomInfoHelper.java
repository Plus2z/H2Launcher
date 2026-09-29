package net.oneplus.h2launcher.config;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.IconCache;
import net.oneplus.h2launcher.IconProvider;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class CustomInfoHelper {
    private static final String TAG = CustomInfoHelper.class.getSimpleName();

    public static void checkComponent(Context context, UserHandleCompat user, List<LauncherActivityInfoCompat> apps) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        List<String> notExistingNames = new ArrayList<>();
        HashSet<String> packageSets = new HashSet<>();
        for (LauncherActivityInfoCompat app : apps) {
            packageSets.add(app.getComponentName().getPackageName());
        }
        String[] projection = {"componentName"};
        String[] selectionArgs = {String.valueOf(userId)};
        Cursor c = context.getContentResolver().query(IconProvider.CUSTOM_LABEL_URI, projection, "profileId = ?", selectionArgs, null);
        if (c != null) {
            if (c.getCount() > 0) {
                while (c.moveToNext()) {
                    int cnIndex = c.getColumnIndexOrThrow("componentName");
                    ComponentName cn = ComponentName.unflattenFromString(c.getString(cnIndex));
                    if (!packageSets.contains(cn.getPackageName())) {
                        notExistingNames.add(c.getString(cnIndex));
                    }
                }
            }
            c.close();
        }
        if (!notExistingNames.isEmpty()) {
            for (String name : notExistingNames) {
                context.getContentResolver().delete(IconProvider.CUSTOM_LABEL_URI, "profileId = ? AND componentName = ?", new String[]{String.valueOf(userId), name});
            }
        }
        notExistingNames.clear();
        String[] projection2 = {"componentName"};
        String[] selectionArgs2 = {String.valueOf(userId), AssetCache.ASSET_PACK_NAME_CUSTOM};
        Cursor c2 = context.getContentResolver().query(IconProvider.ICON_URI, projection2, "profileId = ? AND assetPackName = ? ", selectionArgs2, null);
        if (c2 != null) {
            if (c2.getCount() > 0) {
                while (c2.moveToNext()) {
                    int cnIndex2 = c2.getColumnIndexOrThrow("componentName");
                    ComponentName cn2 = ComponentName.unflattenFromString(c2.getString(cnIndex2));
                    if (!packageSets.contains(cn2.getPackageName())) {
                        notExistingNames.add(c2.getString(cnIndex2));
                    }
                }
            }
            c2.close();
        }
        if (!notExistingNames.isEmpty()) {
            for (String name2 : notExistingNames) {
                context.getContentResolver().delete(IconProvider.ICON_URI, "profileId = ? AND iconType = ? AND componentName = ? ", new String[]{String.valueOf(userId), String.valueOf(3), name2});
            }
        }
    }

    public static void setCustomLabelForComponent(Context context, UserHandleCompat user, String component, String label) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        if (label != null && !label.equals(getDefaultLabelForComponent(context, component))) {
            ContentValues values = new ContentValues();
            values.put("label", label);
            values.put("componentName", component);
            values.put("profileId", Long.valueOf(userId));
            context.getContentResolver().insert(IconProvider.CUSTOM_LABEL_URI, values);
            return;
        }
        context.getContentResolver().delete(IconProvider.CUSTOM_LABEL_URI, "profileId = ? AND componentName = ? ", new String[]{String.valueOf(userId), component});
    }

    public static boolean hasCustomLabelForComponent(Context context, UserHandleCompat user, String component) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        String[] selectionArgs = {String.valueOf(userId), component};
        Cursor c = context.getContentResolver().query(IconProvider.CUSTOM_LABEL_URI, null, "profileId = ? AND componentName = ?", selectionArgs, null);
        boolean result = c != null && c.getCount() > 0;
        if (c != null) {
            c.close();
        }
        return result;
    }

    public static String getCustomLabelForComponent(Context context, UserHandleCompat user, String component) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        String[] selectionArgs = {String.valueOf(userId), component};
        Cursor c = context.getContentResolver().query(IconProvider.CUSTOM_LABEL_URI, null, "profileId = ? AND componentName = ?", selectionArgs, null);
        if (c != null && c.getCount() > 0 && c.moveToFirst()) {
            String label = c.getString(c.getColumnIndex("label"));
            c.close();
            return label;
        }
        if (c != null) {
            c.close();
        }
        String label2 = getDefaultLabelForComponent(context, component);
        return label2;
    }

    public static String getCustomLabelForComponent(Context context, UserHandleCompat user, String component, String defaultLabel) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        String[] selectionArgs = {String.valueOf(userId), component};
        Cursor c = context.getContentResolver().query(IconProvider.CUSTOM_LABEL_URI, null, "profileId = ? AND componentName = ?", selectionArgs, null);
        if (c != null && c.getCount() > 0 && c.moveToFirst()) {
            String label = c.getString(c.getColumnIndex("label"));
            c.close();
            return label;
        }
        if (c != null) {
            c.close();
        }
        return defaultLabel;
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

    public static void setCustomIconForComponent(Context context, UserHandleCompat user, String component, String resPkg, String resName) {
        Drawable drawable;
        Bitmap resizeBitmap;
        Bitmap bitmap = null;
        if (resPkg != null && resName != null && (drawable = getCustomIcon(context, resPkg, resName)) != null && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null && (resizeBitmap = IconCache.checkAndResizeIcon(bitmap)) != null) {
            bitmap = resizeBitmap;
        }
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        if (bitmap == null) {
            String[] selectionArgs = {String.valueOf(userId), component, String.valueOf(3)};
            context.getContentResolver().delete(IconProvider.ICON_URI, "profileId = ? AND componentName = ? AND iconType = ?", selectionArgs);
            return;
        }
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
        ContentValues values = new ContentValues();
        values.put("icon", stream.toByteArray());
        values.put("assetPackName", AssetCache.ASSET_PACK_NAME_CUSTOM);
        values.put("iconType", (Integer) 3);
        values.put("componentName", component);
        values.put("profileId", Long.valueOf(userId));
        context.getContentResolver().insert(IconProvider.ICON_URI, values);
    }

    private static boolean hasCustomIconForComponent(Context context, UserHandleCompat user, String component) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        String[] selectionArgs = {String.valueOf(userId), component, String.valueOf(3)};
        Cursor c = context.getContentResolver().query(IconProvider.ICON_URI, null, "profileId = ? AND componentName = ? AND iconType = ?", selectionArgs, null);
        boolean result = c != null && c.getCount() > 0;
        if (c != null) {
            c.close();
        }
        return result;
    }

    public static Drawable getCustomIcon(Context context, String resPkg, String resName) {
        int resId;
        if (resPkg == null || resName == null) {
            return null;
        }
        try {
            Resources res = context.getPackageManager().getResourcesForApplication(resPkg);
            if (res == null || (resId = res.getIdentifier(resName, DynamicIconDrawableConfig.TYPE, resPkg)) == 0) {
                return null;
            }
            return res.getDrawable(resId, context.getTheme());
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static Drawable getCustomIconForComponent(Context context, UserHandleCompat user, String component) {
        Drawable drawable = null;
        if (hasCustomIconForComponent(context, user, component)) {
            long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
            String[] selectionArgs = {String.valueOf(userId), component, String.valueOf(3)};
            Cursor c = context.getContentResolver().query(IconProvider.ICON_URI, null, "profileId = ? AND componentName = ? AND iconType = ?", selectionArgs, null);
            if (c != null && c.getCount() > 0 && c.moveToFirst()) {
                byte[] data = c.getBlob(c.getColumnIndex("icon"));
                try {
                    Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length, null);
                    drawable = new BitmapDrawable(context.getResources(), bitmap);
                } catch (Exception e) {
                    Logger.w(TAG, e.getMessage());
                }
            }
            if (c != null) {
                c.close();
            }
        }
        if (drawable == null) {
            return getCurrentIconForComponent(context, user, component);
        }
        return drawable;
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

    private static Drawable getDefaultIconForComponent(Context context, String component) {
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

    public static void RemoveCustomLabelForPackage(Context context, UserHandleCompat user, String pkgName) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        context.getContentResolver().delete(IconProvider.CUSTOM_LABEL_URI, "profileId = " + String.valueOf(userId) + " AND componentName like '" + pkgName + "/%'", null);
    }

    public static void RemoveCustomIconForPackage(Context context, UserHandleCompat user, String pkgName) {
        long userId = UserManagerCompat.getInstance(context).getSerialNumberForUser(user);
        context.getContentResolver().delete(IconProvider.ICON_URI, "profileId = " + String.valueOf(userId) + " AND componentName like '" + pkgName + "/%'", null);
    }
}
