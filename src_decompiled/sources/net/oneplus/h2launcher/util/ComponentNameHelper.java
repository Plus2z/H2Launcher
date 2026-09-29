package net.oneplus.h2launcher.util;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;

/* loaded from: classes.dex */
public class ComponentNameHelper {
    public static ComponentName getBroadcastReceiverComponent(ResolveInfo info) {
        ActivityInfo activityInfo = info.activityInfo;
        if (activityInfo == null) {
            return null;
        }
        return new ComponentName(activityInfo.packageName, activityInfo.name);
    }

    public static boolean isSamePackage(String component, String packageName) {
        String componentPackage = ComponentName.unflattenFromString(component).getPackageName();
        return componentPackage.equals(packageName);
    }

    public static boolean isSameComponent(String str1, String str2) {
        return isSameComponent(str1 != null ? ComponentName.unflattenFromString(str1) : null, str2);
    }

    public static boolean isSameComponent(ResolveInfo info, String str) {
        ComponentName comp = getBroadcastReceiverComponent(info);
        return isSameComponent(comp, str);
    }

    public static boolean isSameComponent(ComponentName comp1, String str) {
        ComponentName comp2 = str != null ? ComponentName.unflattenFromString(str) : null;
        return ((comp1 == null && comp2 == null) || comp1 == null || comp2 == null || !comp1.equals(comp2)) ? false : true;
    }

    public static boolean isSameComponent(ComponentName comp, String packageName, String className) {
        if (packageName == null || className == null) {
            return comp == null;
        }
        ComponentName component = new ComponentName(packageName, className);
        return comp != null && comp.equals(component);
    }
}
