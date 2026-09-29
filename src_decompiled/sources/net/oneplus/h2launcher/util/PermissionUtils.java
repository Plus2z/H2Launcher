package net.oneplus.h2launcher.util;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PermissionUtils {
    public static final int STORAGE_PERMISSION_REQUEST = 202;
    private static final String TAG = "PermissionUtils";

    public static void requestPermission(Activity activity, String permission, int request) {
        requestPermission(activity, new String[]{permission}, request);
    }

    public static void requestPermission(Activity activity, String[] permissions, int request) {
        if (permissions != null && permissions.length > 0) {
            try {
                ActivityCompat.requestPermissions(activity, permissions, request);
                return;
            } catch (IllegalStateException e) {
                Log.e(TAG, "requestPermission# failed requesting permission: " + Arrays.toString(permissions) + ", error: " + e);
                return;
            }
        }
        Log.w(TAG, "no permission requested");
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String permission) {
        return activity.shouldShowRequestPermissionRationale(permission);
    }

    public static boolean hasGrantedPermission(Context context, String permission) {
        int permissionType = ContextCompat.checkSelfPermission(context.getApplicationContext(), permission);
        return permissionType == 0;
    }
}
