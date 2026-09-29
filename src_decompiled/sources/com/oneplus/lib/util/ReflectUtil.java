package com.oneplus.lib.util;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ReflectUtil {
    public static boolean isFeatureSupported(String featureName) {
        try {
            Class cla = Class.forName("android.util.OpFeatures");
            Method method = cla.getDeclaredMethod("isSupport", int[].class);
            Field field = cla.getDeclaredField(featureName);
            method.setAccessible(true);
            field.setAccessible(true);
            boolean isSupport = ((Boolean) method.invoke(null, new int[]{field.getInt(null)})).booleanValue();
            return isSupport;
        } catch (Exception e) {
            Log.i("isFeatureSupported", featureName + " is not supported");
            return false;
        }
    }
}
