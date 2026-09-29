package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"CommitPrefEdits"})
/* loaded from: classes.dex */
public class PreferenceManager {
    static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final String PREF_MIGRATION_COMPLETE = "preferences_migration_complete";
    private static final boolean SHOULD_ALWAYS_SEND_REPORTS_DEFAULT = false;
    private final PreferenceStore preferenceStore;

    public static PreferenceManager create(PreferenceStore preferenceStore, CrashlyticsCore kit) {
        if (!preferenceStore.get().getBoolean(PREF_MIGRATION_COMPLETE, false)) {
            PreferenceStore oldStore = new PreferenceStoreImpl(kit);
            boolean migrationRequired = !preferenceStore.get().contains(PREF_ALWAYS_SEND_REPORTS_KEY) && oldStore.get().contains(PREF_ALWAYS_SEND_REPORTS_KEY);
            if (migrationRequired) {
                boolean alwaysSend = oldStore.get().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
                preferenceStore.save(preferenceStore.edit().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, alwaysSend));
            }
            preferenceStore.save(preferenceStore.edit().putBoolean(PREF_MIGRATION_COMPLETE, true));
        }
        return new PreferenceManager(preferenceStore);
    }

    public PreferenceManager(PreferenceStore preferenceStore) {
        this.preferenceStore = preferenceStore;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldAlwaysSendReports(boolean send) {
        this.preferenceStore.save(this.preferenceStore.edit().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, send));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldAlwaysSendReports() {
        return this.preferenceStore.get().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }
}
