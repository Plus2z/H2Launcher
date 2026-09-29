package net.oneplus.h2launcher.compat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherAppsCompatVN extends LauncherAppsCompatVL {
    private static final String TAG = "LauncherAppsCompatVN";

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherAppsCompatVN(Context context) {
        super(context);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompatVL, net.oneplus.h2launcher.compat.LauncherAppsCompat
    public boolean isPackageSuspendedForProfile(String packageName, UserHandleCompat user) {
        if (user != null && packageName != null) {
            try {
                Method getApplicationInfoMethod = LauncherApps.class.getMethod("getApplicationInfo", String.class, Integer.TYPE, UserHandle.class);
                ApplicationInfo info = (ApplicationInfo) getApplicationInfoMethod.invoke(this.mLauncherApps, packageName, 0, user.getUser());
                if (info != null) {
                    return (info.flags & LauncherActivityInfoCompat.FLAG_SUSPENDED) != 0;
                }
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodError | NoSuchMethodException | InvocationTargetException e) {
                Logger.e(TAG, "Running on N without getApplicationInfo", e);
            }
        }
        return false;
    }
}
