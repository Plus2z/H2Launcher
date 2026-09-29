package io.fabric.sdk.android.services.settings;

/* loaded from: classes.dex */
public interface SettingsController {
    SettingsData loadSettingsData();

    SettingsData loadSettingsData(SettingsCacheBehavior settingsCacheBehavior);
}
