package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.BetaSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class Beta extends Kit<Boolean> implements DeviceIdentifierProvider {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final MemoryValueCache<String> deviceTokenCache = new MemoryValueCache<>();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    public static Beta getInstance() {
        return (Beta) Fabric.getKit(Beta.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.Kit
    @TargetApi(14)
    public boolean onPreExecute() {
        Application application = (Application) getContext().getApplicationContext();
        this.updatesController = createUpdatesController(Build.VERSION.SDK_INT, application);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.Kit
    public Boolean doInBackground() {
        Fabric.getLogger().d(TAG, "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = getIdManager();
        String installerPackageName = idManager.getInstallerPackageName();
        String betaDeviceToken = getBetaDeviceToken(context, installerPackageName);
        if (TextUtils.isEmpty(betaDeviceToken)) {
            Fabric.getLogger().d(TAG, "A Beta device token was not found for this app");
            return false;
        }
        Fabric.getLogger().d(TAG, "Beta device token is present, checking for app updates.");
        BetaSettingsData betaSettings = getBetaSettingsData();
        BuildProperties buildProps = loadBuildProperties(context);
        if (canCheckForUpdates(betaSettings, buildProps)) {
            this.updatesController.initialize(context, this, idManager, betaSettings, buildProps, new PreferenceStoreImpl(this), new SystemCurrentTimeProvider(), new DefaultHttpRequestFactory(Fabric.getLogger()));
        }
        return true;
    }

    @TargetApi(14)
    UpdatesController createUpdatesController(int apiLevel, Application application) {
        if (apiLevel < 14) {
            return new ImmediateCheckForUpdatesController();
        }
        ActivityLifecycleManager lifecycleManager = getFabric().getActivityLifecycleManager();
        ExecutorService executorService = getFabric().getExecutorService();
        return new ActivityLifecycleCheckForUpdatesController(lifecycleManager, executorService);
    }

    @Override // io.fabric.sdk.android.services.common.DeviceIdentifierProvider
    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        String installerPackageName = getIdManager().getInstallerPackageName();
        String betaDeviceToken = getBetaDeviceToken(getContext(), installerPackageName);
        Map<IdManager.DeviceIdentifierType, String> ids = new HashMap<>();
        if (!TextUtils.isEmpty(betaDeviceToken)) {
            ids.put(IdManager.DeviceIdentifierType.FONT_TOKEN, betaDeviceToken);
        }
        return ids;
    }

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.2.7.19";
    }

    boolean canCheckForUpdates(BetaSettingsData betaSettings, BuildProperties buildProps) {
        return (betaSettings == null || TextUtils.isEmpty(betaSettings.updateUrl) || buildProps == null) ? false : true;
    }

    private String getBetaDeviceToken(Context context, String installerPackageName) {
        String token = null;
        try {
            String cachedToken = this.deviceTokenCache.get(context, this.deviceTokenLoader);
            token = "".equals(cachedToken) ? null : cachedToken;
        } catch (Exception e) {
            Fabric.getLogger().e(TAG, "Failed to load the Beta device token", e);
        }
        Fabric.getLogger().d(TAG, "Beta device token present: " + (!TextUtils.isEmpty(token)));
        return token;
    }

    private BetaSettingsData getBetaSettingsData() {
        SettingsData settingsData = Settings.getInstance().awaitSettingsData();
        if (settingsData != null) {
            return settingsData.betaSettingsData;
        }
        return null;
    }

    private BuildProperties loadBuildProperties(Context context) {
        InputStream buildPropsStream = null;
        BuildProperties buildProps = null;
        try {
            try {
                buildPropsStream = context.getAssets().open(CRASHLYTICS_BUILD_PROPERTIES);
                if (buildPropsStream != null) {
                    buildProps = BuildProperties.fromPropertiesStream(buildPropsStream);
                    Fabric.getLogger().d(TAG, buildProps.packageName + " build properties: " + buildProps.versionName + " (" + buildProps.versionCode + ") - " + buildProps.buildId);
                }
                if (buildPropsStream != null) {
                    try {
                        buildPropsStream.close();
                    } catch (IOException e) {
                        Fabric.getLogger().e(TAG, "Error closing Beta build properties asset", e);
                    }
                }
            } catch (Throwable th) {
                if (buildPropsStream != null) {
                    try {
                        buildPropsStream.close();
                    } catch (IOException e2) {
                        Fabric.getLogger().e(TAG, "Error closing Beta build properties asset", e2);
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            Fabric.getLogger().e(TAG, "Error reading Beta build properties", e3);
            if (buildPropsStream != null) {
                try {
                    buildPropsStream.close();
                } catch (IOException e4) {
                    Fabric.getLogger().e(TAG, "Error closing Beta build properties asset", e4);
                }
            }
        }
        return buildProps;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
