package com.oneplus.lib.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Map;

/* loaded from: classes.dex */
public class PreferenceUtils {
    private static final String MESSAGEDATA = "messagedata";
    private static final String SIMINFODATA = "siminfodata";

    public static void writeMessageData(Context context, long time, String title, String content, String url, String id) {
        SharedPreferences.Editor editor = context.getSharedPreferences(MESSAGEDATA, 0).edit();
        editor.putString(String.valueOf(time), title + "," + content + "," + url + "," + id);
        editor.apply();
    }

    public static Map<?, ?> getAllMessageData(Context context) {
        SharedPreferences sSharedPreferences = context.getSharedPreferences(MESSAGEDATA, 0);
        return sSharedPreferences.getAll();
    }

    public static void deleteMessageData(Context context, long time) {
        SharedPreferences.Editor editor = context.getSharedPreferences(MESSAGEDATA, 0).edit();
        editor.remove(String.valueOf(time));
        editor.apply();
    }

    public static void writeSimInfoData(Context context, String country, String operator, int index) {
        SharedPreferences.Editor editor = context.getSharedPreferences(SIMINFODATA, 0).edit();
        editor.putString(SIMINFODATA + index, country + "," + operator + ",");
        editor.apply();
    }

    public static String readSimInfoData(Context context, int index) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(SIMINFODATA, 0);
        return sharedPreferences.getString(SIMINFODATA + index, null);
    }

    public static void removeSimInfoData(Context context, int index) {
        SharedPreferences.Editor editor = context.getSharedPreferences(MESSAGEDATA, 0).edit();
        editor.remove(SIMINFODATA);
        editor.apply();
    }

    public static void clearMesData(Context context) {
        SharedPreferences sp = context.getSharedPreferences(MESSAGEDATA, 0);
        SharedPreferences.Editor editor = sp.edit();
        editor.clear();
        editor.apply();
    }

    public static void applyInt(Context context, String key, int value) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.putInt(key, value);
        editor.apply();
    }

    public static int getInt(Context context, String key, int defaultValue) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        return sp.getInt(key, defaultValue);
    }

    public static boolean contains(Context context, String key) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        return sp.contains(key);
    }
}
