package com.crashlytics.android.answers;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SessionEventMetadata {
    public final String advertisingId;
    public final String androidId;
    public final String appBundleId;
    public final String appVersionCode;
    public final String appVersionName;
    public final String betaDeviceToken;
    public final String buildId;
    public final String deviceModel;
    public final String executionId;
    public final String installationId;
    public final Boolean limitAdTrackingEnabled;
    public final String osVersion;
    private String stringRepresentation;

    public SessionEventMetadata(String appBundleId, String executionId, String installationId, String androidId, String advertisingId, Boolean limitAdTrackingEnabled, String betaDeviceToken, String buildId, String osVersion, String deviceModel, String appVersionCode, String appVersionName) {
        this.appBundleId = appBundleId;
        this.executionId = executionId;
        this.installationId = installationId;
        this.androidId = androidId;
        this.advertisingId = advertisingId;
        this.limitAdTrackingEnabled = limitAdTrackingEnabled;
        this.betaDeviceToken = betaDeviceToken;
        this.buildId = buildId;
        this.osVersion = osVersion;
        this.deviceModel = deviceModel;
        this.appVersionCode = appVersionCode;
        this.appVersionName = appVersionName;
    }

    public String toString() {
        if (this.stringRepresentation == null) {
            StringBuilder sb = new StringBuilder().append("appBundleId=").append(this.appBundleId).append(", executionId=").append(this.executionId).append(", installationId=").append(this.installationId).append(", androidId=").append(this.androidId).append(", advertisingId=").append(this.advertisingId).append(", limitAdTrackingEnabled=").append(this.limitAdTrackingEnabled).append(", betaDeviceToken=").append(this.betaDeviceToken).append(", buildId=").append(this.buildId).append(", osVersion=").append(this.osVersion).append(", deviceModel=").append(this.deviceModel).append(", appVersionCode=").append(this.appVersionCode).append(", appVersionName=").append(this.appVersionName);
            this.stringRepresentation = sb.toString();
        }
        return this.stringRepresentation;
    }
}
