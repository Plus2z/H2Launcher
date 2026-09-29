package net.oneplus.h2launcher;

/* loaded from: classes.dex */
public interface LauncherProviderChangeListener {
    void onAppWidgetHostReset();

    void onExtractedColorsChanged();

    void onLauncherProviderChange();

    void onSettingsChanged(String str, boolean z);
}
