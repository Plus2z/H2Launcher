package com.crashlytics.android.beta;

import android.annotation.SuppressLint;
import android.content.Context;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.settings.BetaSettingsData;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
abstract class AbstractCheckForUpdatesController implements UpdatesController {
    static final long LAST_UPDATE_CHECK_DEFAULT = 0;
    static final String LAST_UPDATE_CHECK_KEY = "last_update_check";
    private static final long MILLIS_PER_SECOND = 1000;
    private Beta beta;
    private BetaSettingsData betaSettings;
    private BuildProperties buildProps;
    private Context context;
    private CurrentTimeProvider currentTimeProvider;
    private final AtomicBoolean externallyReady;
    private HttpRequestFactory httpRequestFactory;
    private IdManager idManager;
    private final AtomicBoolean initialized;
    private long lastCheckTimeMillis;
    private PreferenceStore preferenceStore;

    public AbstractCheckForUpdatesController() {
        this(false);
    }

    public AbstractCheckForUpdatesController(boolean externallyReady) {
        this.initialized = new AtomicBoolean();
        this.lastCheckTimeMillis = 0L;
        this.externallyReady = new AtomicBoolean(externallyReady);
    }

    @Override // com.crashlytics.android.beta.UpdatesController
    public void initialize(Context context, Beta beta, IdManager idManager, BetaSettingsData betaSettings, BuildProperties buildProps, PreferenceStore preferenceStore, CurrentTimeProvider currentTimeProvider, HttpRequestFactory httpRequestFactory) {
        this.context = context;
        this.beta = beta;
        this.idManager = idManager;
        this.betaSettings = betaSettings;
        this.buildProps = buildProps;
        this.preferenceStore = preferenceStore;
        this.currentTimeProvider = currentTimeProvider;
        this.httpRequestFactory = httpRequestFactory;
        if (signalInitialized()) {
            checkForUpdates();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean signalExternallyReady() {
        this.externallyReady.set(true);
        return this.initialized.get();
    }

    boolean signalInitialized() {
        this.initialized.set(true);
        return this.externallyReady.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"CommitPrefEdits"})
    public void checkForUpdates() {
        synchronized (this.preferenceStore) {
            if (this.preferenceStore.get().contains(LAST_UPDATE_CHECK_KEY)) {
                this.preferenceStore.save(this.preferenceStore.edit().remove(LAST_UPDATE_CHECK_KEY));
            }
        }
        long currentTimeMillis = this.currentTimeProvider.getCurrentTimeMillis();
        long updateCheckDelayMillis = this.betaSettings.updateSuspendDurationSeconds * MILLIS_PER_SECOND;
        Fabric.getLogger().d(Beta.TAG, "Check for updates delay: " + updateCheckDelayMillis);
        Fabric.getLogger().d(Beta.TAG, "Check for updates last check time: " + getLastCheckTimeMillis());
        long nextCheckTimeMillis = getLastCheckTimeMillis() + updateCheckDelayMillis;
        Fabric.getLogger().d(Beta.TAG, "Check for updates current time: " + currentTimeMillis + ", next check time: " + nextCheckTimeMillis);
        if (currentTimeMillis >= nextCheckTimeMillis) {
            try {
                performUpdateCheck();
                return;
            } finally {
                setLastCheckTimeMillis(currentTimeMillis);
            }
        }
        Fabric.getLogger().d(Beta.TAG, "Check for updates next check time was not passed");
    }

    private void performUpdateCheck() {
        Fabric.getLogger().d(Beta.TAG, "Performing update check");
        String apiKey = new ApiKey().getValue(this.context);
        String betaDeviceToken = this.idManager.getDeviceIdentifiers().get(IdManager.DeviceIdentifierType.FONT_TOKEN);
        CheckForUpdatesRequest request = new CheckForUpdatesRequest(this.beta, this.beta.getOverridenSpiEndpoint(), this.betaSettings.updateUrl, this.httpRequestFactory, new CheckForUpdatesResponseTransform());
        request.invoke(apiKey, betaDeviceToken, this.buildProps);
    }

    void setLastCheckTimeMillis(long time) {
        this.lastCheckTimeMillis = time;
    }

    long getLastCheckTimeMillis() {
        return this.lastCheckTimeMillis;
    }
}
