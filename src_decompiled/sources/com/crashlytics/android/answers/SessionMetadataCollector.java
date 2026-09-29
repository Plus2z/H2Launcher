package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SessionMetadataCollector {
    private final Context context;
    private final IdManager idManager;
    private final String versionCode;
    private final String versionName;

    public SessionMetadataCollector(Context context, IdManager idManager, String versionCode, String versionName) {
        this.context = context;
        this.idManager = idManager;
        this.versionCode = versionCode;
        this.versionName = versionName;
    }

    public SessionEventMetadata getMetadata() {
        Map<IdManager.DeviceIdentifierType, String> deviceIdentifiers = this.idManager.getDeviceIdentifiers();
        String appBundleId = this.idManager.getAppIdentifier();
        String installationId = this.idManager.getAppInstallIdentifier();
        String androidId = deviceIdentifiers.get(IdManager.DeviceIdentifierType.ANDROID_ID);
        String advertisingId = deviceIdentifiers.get(IdManager.DeviceIdentifierType.ANDROID_ADVERTISING_ID);
        Boolean limitAdTrackingEnabled = this.idManager.isLimitAdTrackingEnabled();
        String betaDeviceToken = deviceIdentifiers.get(IdManager.DeviceIdentifierType.FONT_TOKEN);
        String buildId = CommonUtils.resolveBuildId(this.context);
        String osVersion = this.idManager.getOsVersionString();
        String deviceModel = this.idManager.getModelName();
        String executionId = UUID.randomUUID().toString();
        return new SessionEventMetadata(appBundleId, executionId, installationId, androidId, advertisingId, limitAdTrackingEnabled, betaDeviceToken, buildId, osVersion, deviceModel, this.versionCode, this.versionName);
    }
}
