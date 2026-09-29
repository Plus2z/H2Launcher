package com.crashlytics.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.crashlytics.android.CrashlyticsInitProvider;

/* loaded from: classes.dex */
class ManifestEnabledCheckStrategy implements CrashlyticsInitProvider.EnabledCheckStrategy {
    @Override // com.crashlytics.android.CrashlyticsInitProvider.EnabledCheckStrategy
    public boolean isCrashlyticsEnabled(Context context) {
        try {
            String packageName = context.getPackageName();
            ApplicationInfo ai = context.getPackageManager().getApplicationInfo(packageName, 128);
            Bundle bundle = ai.metaData;
            if (bundle != null) {
                return bundle.getBoolean("firebase_crashlytics_collection_enabled", true);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }
}
