package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.cache.ValueLoader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class DeviceTokenLoader implements ValueLoader<String> {
    private static final String BETA_APP_PACKAGE_NAME = "io.crash.air";
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    @Override // io.fabric.sdk.android.services.cache.ValueLoader
    public String load(Context context) throws Exception {
        long start = System.nanoTime();
        String token = "";
        ZipInputStream zis = null;
        try {
            try {
                try {
                    try {
                        zis = getZipInputStreamOfApkFrom(context, "io.crash.air");
                        token = determineDeviceToken(zis);
                        if (zis != null) {
                            try {
                                zis.close();
                            } catch (IOException e) {
                                Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e);
                            }
                        }
                    } catch (Throwable th) {
                        if (zis != null) {
                            try {
                                zis.close();
                            } catch (IOException e2) {
                                Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e2);
                            }
                        }
                        throw th;
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    Fabric.getLogger().d(Beta.TAG, "Beta by Crashlytics app is not installed");
                    if (zis != null) {
                        try {
                            zis.close();
                        } catch (IOException e4) {
                            Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e4);
                        }
                    }
                }
            } catch (FileNotFoundException e5) {
                Fabric.getLogger().e(Beta.TAG, "Failed to find the APK file", e5);
                if (zis != null) {
                    try {
                        zis.close();
                    } catch (IOException e6) {
                        Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e6);
                    }
                }
            }
        } catch (IOException e7) {
            Fabric.getLogger().e(Beta.TAG, "Failed to read the APK file", e7);
            if (zis != null) {
                try {
                    zis.close();
                } catch (IOException e8) {
                    Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e8);
                }
            }
        }
        long end = System.nanoTime();
        double millis = (end - start) / 1000000.0d;
        Fabric.getLogger().d(Beta.TAG, "Beta device token load took " + millis + "ms");
        return token;
    }

    ZipInputStream getZipInputStreamOfApkFrom(Context context, String packageName) throws PackageManager.NameNotFoundException, FileNotFoundException {
        PackageManager pm = context.getPackageManager();
        ApplicationInfo info = pm.getApplicationInfo(packageName, 0);
        return new ZipInputStream(new FileInputStream(info.sourceDir));
    }

    String determineDeviceToken(ZipInputStream zis) throws IOException {
        ZipEntry entry = zis.getNextEntry();
        if (entry != null) {
            String name = entry.getName();
            if (name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX)) {
                return name.substring(DIRFACTOR_DEVICE_TOKEN_PREFIX.length(), name.length() - 1);
            }
        }
        return "";
    }
}
