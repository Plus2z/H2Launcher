package net.oneplus.h2launcher;

import android.text.TextUtils;
import android.util.Log;

/* loaded from: classes.dex */
public class BuildInfo {
    private static final boolean DBG = false;
    private static final String TAG = "BuildInfo";

    public boolean isDogfoodBuild() {
        return false;
    }

    public static BuildInfo loadByName(String className) {
        if (TextUtils.isEmpty(className)) {
            return new BuildInfo();
        }
        try {
            Class<?> cls = Class.forName(className);
            return (BuildInfo) cls.newInstance();
        } catch (ClassCastException e) {
            Log.e(TAG, "Bad BuildInfo class", e);
            return new BuildInfo();
        } catch (ClassNotFoundException e2) {
            Log.e(TAG, "Bad BuildInfo class", e2);
            return new BuildInfo();
        } catch (IllegalAccessException e3) {
            Log.e(TAG, "Bad BuildInfo class", e3);
            return new BuildInfo();
        } catch (InstantiationException e4) {
            Log.e(TAG, "Bad BuildInfo class", e4);
            return new BuildInfo();
        }
    }
}
