package com.crashlytics.android.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* loaded from: classes.dex */
class ManifestUnityVersionProvider implements UnityVersionProvider {
    static final String FABRIC_UNITY_CRASHLYTICS_VERSION_KEY = "io.fabric.unity.crashlytics.version";
    private final Context context;
    private final String packageName;

    public ManifestUnityVersionProvider(Context context, String packageName) {
        this.context = context;
        this.packageName = packageName;
    }

    @Override // com.crashlytics.android.core.UnityVersionProvider
    public String getUnityVersion() {
        PackageManager packageManager = this.context.getPackageManager();
        try {
            ApplicationInfo appInfo = packageManager.getApplicationInfo(this.packageName, 128);
            Bundle metaData = appInfo.metaData;
            if (metaData == null) {
                return null;
            }
            String unityVersion = metaData.getString(FABRIC_UNITY_CRASHLYTICS_VERSION_KEY);
            return unityVersion;
        } catch (Exception e) {
            return null;
        }
    }
}
