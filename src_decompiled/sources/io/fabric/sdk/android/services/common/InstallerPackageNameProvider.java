package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.cache.ValueLoader;

/* loaded from: classes.dex */
public class InstallerPackageNameProvider {
    private static final String NO_INSTALLER_PACKAGE_NAME = "";
    private final ValueLoader<String> installerPackageNameLoader = new ValueLoader<String>() { // from class: io.fabric.sdk.android.services.common.InstallerPackageNameProvider.1
        @Override // io.fabric.sdk.android.services.cache.ValueLoader
        public String load(Context context) throws Exception {
            PackageManager pm = context.getPackageManager();
            String hostAppPackageName = context.getPackageName();
            String installerPackageName = pm.getInstallerPackageName(hostAppPackageName);
            return installerPackageName == null ? "" : installerPackageName;
        }
    };
    private final MemoryValueCache<String> installerPackageNameCache = new MemoryValueCache<>();

    public String getInstallerPackageName(Context appContext) {
        try {
            String name = this.installerPackageNameCache.get(appContext, this.installerPackageNameLoader);
            if ("".equals(name)) {
                return null;
            }
            return name;
        } catch (Exception e) {
            Fabric.getLogger().e(Fabric.TAG, "Failed to determine installer package name", e);
            return null;
        }
    }
}
