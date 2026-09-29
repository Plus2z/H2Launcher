package net.oneplus.h2launcher.util;

import android.content.Context;
import android.graphics.Color;
import android.provider.Settings;

/* loaded from: classes.dex */
public class ThemeUtils {
    public static int getThemeColor(Context context, int defaultColorResource) {
        int blackMode = Settings.System.getInt(context.getContentResolver(), "oem_black_mode", 0);
        switch (blackMode) {
            case 0:
                return getThemeWhiteAccentColor(context, defaultColorResource);
            case 1:
                return getThemeBlackAccentColor(context, defaultColorResource);
            default:
                return context.getColor(defaultColorResource);
        }
    }

    public static int getThemeWhiteAccentColor(Context context, int defaultResourceId) {
        return getThemeAccentColor(context, defaultResourceId, "oem_white_mode_accent_color");
    }

    public static int getThemeBlackAccentColor(Context context, int defaultResourceId) {
        return getThemeAccentColor(context, defaultResourceId, "oem_black_mode_accent_color");
    }

    private static int getThemeAccentColor(Context context, int defaultResourceId, String colorKey) {
        String color = Settings.System.getString(context.getContentResolver(), colorKey);
        return color == null ? context.getColor(defaultResourceId) : Color.parseColor(color);
    }
}
