package net.oneplus.h2launcher;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.util.AttributeSet;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;

/* loaded from: classes.dex */
public class LauncherRootView extends InsettableFrameLayout {
    public LauncherRootView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect insets) {
        if (insets.top != 0) {
            boolean isFirstInit = this.mInsets.equals(new Rect());
            boolean isInsetChange = !this.mInsets.equals(insets);
            setInsets(insets);
            if (isInsetChange) {
                if (!isFirstInit) {
                    notifyBlurWallpaperSettingChanged();
                }
                Launcher launcher = LauncherAppState.getInstance().getLauncher();
                launcher.getDeviceProfile().updateInsets(insets);
                launcher.getDeviceProfile().layout(launcher);
                launcher.getWorkspace().requestLayout();
            }
        }
        return true;
    }

    private void notifyBlurWallpaperSettingChanged() {
        BlurWallpaperSettings settings = PreferencesHelper.getBlurWallpaperSettings(getContext());
        settings.notify = true;
        PreferencesHelper.setBlurWallpaperSettings(getContext(), settings);
        getContext().sendBroadcast(new Intent("net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"));
    }
}
