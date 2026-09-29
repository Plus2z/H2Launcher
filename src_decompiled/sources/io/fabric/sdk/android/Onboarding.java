package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.settings.AppRequestData;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import io.fabric.sdk.android.services.settings.CreateAppSpiCall;
import io.fabric.sdk.android.services.settings.IconRequest;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import io.fabric.sdk.android.services.settings.UpdateAppSpiCall;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Onboarding extends Kit<Boolean> {
    private static final String BINARY_BUILD_TYPE = "binary";
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private String applicationLabel;
    private String installerPackageName;
    private final Future<Map<String, KitInfo>> kitsFinder;
    private PackageInfo packageInfo;
    private PackageManager packageManager;
    private String packageName;
    private final Collection<Kit> providedKits;
    private final HttpRequestFactory requestFactory = new DefaultHttpRequestFactory();
    private String targetAndroidSdkVersion;
    private String versionCode;
    private String versionName;

    public Onboarding(Future<Map<String, KitInfo>> kitsFinder, Collection<Kit> providedKits) {
        this.kitsFinder = kitsFinder;
        this.providedKits = providedKits;
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.4.2.22";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.Kit
    public boolean onPreExecute() {
        boolean z = false;
        try {
            this.installerPackageName = getIdManager().getInstallerPackageName();
            this.packageManager = getContext().getPackageManager();
            this.packageName = getContext().getPackageName();
            this.packageInfo = this.packageManager.getPackageInfo(this.packageName, 0);
            this.versionCode = Integer.toString(this.packageInfo.versionCode);
            this.versionName = this.packageInfo.versionName == null ? IdManager.DEFAULT_VERSION_NAME : this.packageInfo.versionName;
            this.applicationLabel = this.packageManager.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.targetAndroidSdkVersion = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            z = true;
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Fabric.getLogger().e(Fabric.TAG, "Failed init", e);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.Kit
    public Boolean doInBackground() {
        Map<String, KitInfo> scannedKits;
        String iconHash = CommonUtils.getAppIconHashOrNull(getContext());
        boolean appConfigured = false;
        SettingsData settingsData = retrieveSettingsData();
        if (settingsData != null) {
            try {
                if (this.kitsFinder != null) {
                    scannedKits = this.kitsFinder.get();
                } else {
                    scannedKits = new HashMap<>();
                }
                Map<String, KitInfo> mergedKits = mergeKits(scannedKits, this.providedKits);
                appConfigured = performAutoConfigure(iconHash, settingsData.appData, mergedKits.values());
            } catch (Exception e) {
                Fabric.getLogger().e(Fabric.TAG, "Error performing auto configuration.", e);
            }
        }
        return Boolean.valueOf(appConfigured);
    }

    private SettingsData retrieveSettingsData() {
        try {
            Settings.getInstance().initialize(this, this.idManager, this.requestFactory, this.versionCode, this.versionName, getOverridenSpiEndpoint()).loadSettingsData();
            return Settings.getInstance().awaitSettingsData();
        } catch (Exception e) {
            Fabric.getLogger().e(Fabric.TAG, "Error dealing with settings", e);
            return null;
        }
    }

    Map<String, KitInfo> mergeKits(Map<String, KitInfo> scannedKits, Collection<Kit> providedKits) {
        for (Kit kit : providedKits) {
            if (!scannedKits.containsKey(kit.getIdentifier())) {
                scannedKits.put(kit.getIdentifier(), new KitInfo(kit.getIdentifier(), kit.getVersion(), BINARY_BUILD_TYPE));
            }
        }
        return scannedKits;
    }

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    private boolean performAutoConfigure(String iconHash, AppSettingsData appSettings, Collection<KitInfo> sdkKits) {
        if (AppSettingsData.STATUS_NEW.equals(appSettings.status)) {
            if (performCreateApp(iconHash, appSettings, sdkKits)) {
                boolean properlyConfigured = Settings.getInstance().loadSettingsSkippingCache();
                return properlyConfigured;
            }
            Fabric.getLogger().e(Fabric.TAG, "Failed to create app with Crashlytics service.", null);
            return false;
        }
        if (AppSettingsData.STATUS_CONFIGURED.equals(appSettings.status)) {
            boolean properlyConfigured2 = Settings.getInstance().loadSettingsSkippingCache();
            return properlyConfigured2;
        }
        if (!appSettings.updateRequired) {
            return true;
        }
        Fabric.getLogger().d(Fabric.TAG, "Server says an update is required - forcing a full App update.");
        performUpdateApp(iconHash, appSettings, sdkKits);
        return true;
    }

    private boolean performCreateApp(String iconHash, AppSettingsData appSettings, Collection<KitInfo> sdkKits) {
        AppRequestData requestData = buildAppRequest(IconRequest.build(getContext(), iconHash), sdkKits);
        return new CreateAppSpiCall(this, getOverridenSpiEndpoint(), appSettings.url, this.requestFactory).invoke(requestData);
    }

    private boolean performUpdateApp(String iconHash, AppSettingsData appSettings, Collection<KitInfo> sdkKits) {
        return performUpdateApp(appSettings, IconRequest.build(getContext(), iconHash), sdkKits);
    }

    private boolean performUpdateApp(AppSettingsData appSettings, IconRequest iconRequest, Collection<KitInfo> sdkKits) {
        AppRequestData requestData = buildAppRequest(iconRequest, sdkKits);
        return new UpdateAppSpiCall(this, getOverridenSpiEndpoint(), appSettings.url, this.requestFactory).invoke(requestData);
    }

    private AppRequestData buildAppRequest(IconRequest iconRequest, Collection<KitInfo> sdkKits) {
        Context context = getContext();
        String apiKey = new ApiKey().getValue(context);
        String buildId = CommonUtils.resolveBuildId(context);
        String instanceId = CommonUtils.createInstanceIdFrom(buildId);
        int source = DeliveryMechanism.determineFrom(this.installerPackageName).getId();
        String appIdentifier = getIdManager().getAppIdentifier();
        return new AppRequestData(apiKey, appIdentifier, this.versionName, this.versionCode, instanceId, this.applicationLabel, source, this.targetAndroidSdkVersion, "0", iconRequest, sdkKits);
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
