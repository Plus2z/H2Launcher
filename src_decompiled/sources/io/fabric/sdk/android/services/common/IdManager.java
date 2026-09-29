package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class IdManager {
    private static final String BAD_ANDROID_ID = "9774d56d682e549c";
    public static final String COLLECT_DEVICE_IDENTIFIERS = "com.crashlytics.CollectDeviceIdentifiers";
    public static final String COLLECT_USER_IDENTIFIERS = "com.crashlytics.CollectUserIdentifiers";
    public static final String DEFAULT_VERSION_NAME = "0.0";
    static final String PREFKEY_ADVERTISING_ID = "crashlytics.advertising.id";
    private static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    AdvertisingInfo advertisingInfo;
    AdvertisingInfoProvider advertisingInfoProvider;
    private final Context appContext;
    private final String appIdentifier;
    private final String appInstallIdentifier;
    private final boolean collectHardwareIds;
    private final boolean collectUserIds;
    boolean fetchedAdvertisingInfo;
    FirebaseInfo firebaseInfo;
    private final ReentrantLock installationIdLock = new ReentrantLock();
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private final Collection<Kit> kits;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    /* loaded from: classes.dex */
    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);

        public final int protobufIndex;

        DeviceIdentifierType(int pbufIndex) {
            this.protobufIndex = pbufIndex;
        }
    }

    public IdManager(Context appContext, String appIdentifier, String appInstallIdentifier, Collection<Kit> kits) {
        if (appContext == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (appIdentifier == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        if (kits == null) {
            throw new IllegalArgumentException("kits must not be null");
        }
        this.appContext = appContext;
        this.appIdentifier = appIdentifier;
        this.appInstallIdentifier = appInstallIdentifier;
        this.kits = kits;
        this.installerPackageNameProvider = new InstallerPackageNameProvider();
        this.advertisingInfoProvider = new AdvertisingInfoProvider(appContext);
        this.firebaseInfo = new FirebaseInfo();
        this.collectHardwareIds = CommonUtils.getBooleanResourceValue(appContext, COLLECT_DEVICE_IDENTIFIERS, true);
        if (!this.collectHardwareIds) {
            Fabric.getLogger().d(Fabric.TAG, "Device ID collection disabled for " + appContext.getPackageName());
        }
        this.collectUserIds = CommonUtils.getBooleanResourceValue(appContext, COLLECT_USER_IDENTIFIERS, true);
        if (!this.collectUserIds) {
            Fabric.getLogger().d(Fabric.TAG, "User information collection disabled for " + appContext.getPackageName());
        }
    }

    @Deprecated
    public String createIdHeaderValue(String apiKey, String packageName) {
        return "";
    }

    public boolean canCollectUserIds() {
        return this.collectUserIds;
    }

    private String formatId(String id) {
        if (id == null) {
            return null;
        }
        return ID_PATTERN.matcher(id).replaceAll("").toLowerCase(Locale.US);
    }

    public String getAppInstallIdentifier() {
        String appInstallId = this.appInstallIdentifier;
        if (appInstallId == null) {
            SharedPreferences prefs = CommonUtils.getSharedPrefs(this.appContext);
            checkAdvertisingIdRotation(prefs);
            String appInstallId2 = prefs.getString(PREFKEY_INSTALLATION_UUID, null);
            if (appInstallId2 == null) {
                return createInstallationUUID(prefs);
            }
            return appInstallId2;
        }
        return appInstallId;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getOsVersionString() {
        return getOsDisplayVersionString() + "/" + getOsBuildVersionString();
    }

    public String getOsDisplayVersionString() {
        return removeForwardSlashesIn(Build.VERSION.RELEASE);
    }

    public String getOsBuildVersionString() {
        return removeForwardSlashesIn(Build.VERSION.INCREMENTAL);
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", removeForwardSlashesIn(Build.MANUFACTURER), removeForwardSlashesIn(Build.MODEL));
    }

    private String removeForwardSlashesIn(String s) {
        return s.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    @SuppressLint({"CommitPrefEdits"})
    private String createInstallationUUID(SharedPreferences prefs) {
        this.installationIdLock.lock();
        try {
            String uuid = prefs.getString(PREFKEY_INSTALLATION_UUID, null);
            if (uuid == null) {
                uuid = formatId(UUID.randomUUID().toString());
                prefs.edit().putString(PREFKEY_INSTALLATION_UUID, uuid).commit();
            }
            return uuid;
        } finally {
            this.installationIdLock.unlock();
        }
    }

    private void checkAdvertisingIdRotation(SharedPreferences prefs) {
        AdvertisingInfo newAdInfo = getAdvertisingInfo();
        if (newAdInfo != null) {
            flushInstallationIdIfNecessary(prefs, newAdInfo.advertisingId);
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    private void flushInstallationIdIfNecessary(SharedPreferences prefs, String advertisingId) {
        this.installationIdLock.lock();
        try {
            if (!TextUtils.isEmpty(advertisingId)) {
                String oldId = prefs.getString(PREFKEY_ADVERTISING_ID, null);
                if (TextUtils.isEmpty(oldId)) {
                    prefs.edit().putString(PREFKEY_ADVERTISING_ID, advertisingId).commit();
                } else if (!oldId.equals(advertisingId)) {
                    prefs.edit().remove(PREFKEY_INSTALLATION_UUID).putString(PREFKEY_ADVERTISING_ID, advertisingId).commit();
                }
            }
        } finally {
            this.installationIdLock.unlock();
        }
    }

    public Map<DeviceIdentifierType, String> getDeviceIdentifiers() {
        Map<DeviceIdentifierType, String> ids = new HashMap<>();
        for (Object obj : this.kits) {
            if (obj instanceof DeviceIdentifierProvider) {
                DeviceIdentifierProvider idProvider = (DeviceIdentifierProvider) obj;
                Map<DeviceIdentifierType, String> kitIds = idProvider.getDeviceIdentifiers();
                for (Map.Entry<DeviceIdentifierType, String> entry : kitIds.entrySet()) {
                    putNonNullIdInto(ids, entry.getKey(), entry.getValue());
                }
            }
        }
        String advertisingId = getAdvertisingId();
        if (TextUtils.isEmpty(advertisingId)) {
            putNonNullIdInto(ids, DeviceIdentifierType.ANDROID_ID, getAndroidId());
        } else {
            putNonNullIdInto(ids, DeviceIdentifierType.ANDROID_ADVERTISING_ID, advertisingId);
        }
        return Collections.unmodifiableMap(ids);
    }

    public String getInstallerPackageName() {
        return this.installerPackageNameProvider.getInstallerPackageName(this.appContext);
    }

    public Boolean isLimitAdTrackingEnabled() {
        if (!shouldCollectHardwareIds()) {
            return null;
        }
        Boolean toReturn = explicitCheckLimitAdTracking();
        return toReturn;
    }

    public String getAdvertisingId() {
        AdvertisingInfo advertisingInfo;
        if (!shouldCollectHardwareIds() || (advertisingInfo = getAdvertisingInfo()) == null || advertisingInfo.limitAdTrackingEnabled) {
            return null;
        }
        String toReturn = advertisingInfo.advertisingId;
        return toReturn;
    }

    private void putNonNullIdInto(Map<DeviceIdentifierType, String> idMap, DeviceIdentifierType idKey, String idValue) {
        if (idValue != null) {
            idMap.put(idKey, idValue);
        }
    }

    public String getAndroidId() {
        boolean shouldLimitAdTracking = Boolean.TRUE.equals(explicitCheckLimitAdTracking());
        if (!shouldCollectHardwareIds() || shouldLimitAdTracking) {
            return null;
        }
        String androidId = Settings.Secure.getString(this.appContext.getContentResolver(), "android_id");
        if (BAD_ANDROID_ID.equals(androidId)) {
            return null;
        }
        String toReturn = formatId(androidId);
        return toReturn;
    }

    @Deprecated
    public String getTelephonyId() {
        return null;
    }

    @Deprecated
    public String getWifiMacAddress() {
        return null;
    }

    @Deprecated
    public String getBluetoothMacAddress() {
        return null;
    }

    @Deprecated
    public String getSerialNumber() {
        return null;
    }

    protected boolean shouldCollectHardwareIds() {
        return this.collectHardwareIds && !this.firebaseInfo.isFirebaseCrashlyticsEnabled(this.appContext);
    }

    synchronized AdvertisingInfo getAdvertisingInfo() {
        if (!this.fetchedAdvertisingInfo) {
            this.advertisingInfo = this.advertisingInfoProvider.getAdvertisingInfo();
            this.fetchedAdvertisingInfo = true;
        }
        return this.advertisingInfo;
    }

    private Boolean explicitCheckLimitAdTracking() {
        AdvertisingInfo advertisingInfo = getAdvertisingInfo();
        if (advertisingInfo != null) {
            return Boolean.valueOf(advertisingInfo.limitAdTrackingEnabled);
        }
        return null;
    }
}
