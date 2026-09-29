package net.oneplus.h2launcher.customizations.timewidget;

/* loaded from: classes.dex */
public class TimeWidgetTileInfo {
    public int clockStyle;
    public int keyguardPreviewResId;
    public int previewResId;
    public int thumbnailResId;

    public boolean canApplyToLockScreen() {
        return this.keyguardPreviewResId != 0;
    }
}
