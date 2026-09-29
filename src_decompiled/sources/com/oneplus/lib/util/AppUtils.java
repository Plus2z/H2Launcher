package com.oneplus.lib.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class AppUtils {
    public static final String SP_KEY_PREV_VER = "prev_install_versionCode";
    private static final String TAG = AppUtils.class.getSimpleName();

    public static void setCurrentVersion(Context context) {
        int versionCode = 0;
        try {
            String packageName = context.getPackageName();
            PackageInfo info = context.getPackageManager().getPackageInfo(packageName, 0);
            versionCode = info.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(TAG, "Get app version code failed! " + e.toString());
        }
        PreferenceUtils.applyInt(context, SP_KEY_PREV_VER, versionCode);
    }

    public static int getPrevVersion(Context context) {
        return PreferenceUtils.getInt(context, SP_KEY_PREV_VER, -1);
    }

    public static int getCurrentVersion(Context context) {
        try {
            String packageName = context.getPackageName();
            PackageInfo info = context.getPackageManager().getPackageInfo(packageName, 0);
            int versionCode = info.versionCode;
            return versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(TAG, "Get app version code failed! " + e.toString());
            return -1;
        }
    }

    public static boolean versionCodeChanged(Context context) {
        return getPrevVersion(context) != getCurrentVersion(context);
    }
}
