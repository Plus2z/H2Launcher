package net.oneplus.h2launcher.customizations.wallpaper;

import java.util.Locale;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BlurWallpaperSettings {
    private static final String KEY_BLUR_ENABLED = "blur_enabled";
    private static final String KEY_MASK_COLOR = "mask_color";
    private static final String KEY_NOTIFY = "notify";
    private static final String KEY_ORIENTATION = "orientation";
    private static final String KEY_SCROLL_MODE = "scroll_mode";
    private static final int SCROLL_MODE_CUSTOMIZED = 1;
    private static final int SCROLL_MODE_ORIGINAL = 0;
    private static final String TAG = BlurWallpaperSettings.class.getSimpleName();
    public int orientation;
    public int scrollMode;
    public boolean notify = false;
    public boolean blurEnabled = false;
    public int maskColor = 0;

    private BlurWallpaperSettings() {
        this.orientation = StyleManager.isStandardLayout() ? 0 : 1;
        this.scrollMode = StyleManager.getInstance().isWallpaperScrollable() ? 0 : 1;
    }

    public static BlurWallpaperSettings emptySettings() {
        return new BlurWallpaperSettings();
    }

    public static BlurWallpaperSettings deserialize(String settingsValue) {
        BlurWallpaperSettings settings = new BlurWallpaperSettings();
        try {
            JSONObject settingsObject = new JSONObject(settingsValue);
            settings.notify = settingsObject.optBoolean(KEY_NOTIFY, settings.notify);
            settings.blurEnabled = settingsObject.optBoolean(KEY_BLUR_ENABLED, settings.blurEnabled);
            settings.maskColor = settingsObject.optInt(KEY_MASK_COLOR, settings.maskColor);
            settings.orientation = settingsObject.optInt(KEY_ORIENTATION, settings.orientation);
            settings.scrollMode = settingsObject.optInt(KEY_SCROLL_MODE, settings.scrollMode);
        } catch (JSONException e) {
            Logger.e(TAG, "cannot create blur wallpaper settings from JSON, error=%s", e);
        }
        return settings;
    }

    public String serialize() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put(KEY_MASK_COLOR, this.maskColor);
            jsonObject.put(KEY_ORIENTATION, this.orientation);
            jsonObject.put(KEY_BLUR_ENABLED, this.blurEnabled);
            jsonObject.put(KEY_NOTIFY, this.notify);
            jsonObject.put(KEY_SCROLL_MODE, this.scrollMode);
        } catch (JSONException e) {
            Logger.e(TAG, "cannot create blur wallpaper settings JSON, error=%s", e);
        }
        return jsonObject.toString();
    }

    public String toString() {
        return String.format(Locale.US, "blurEnabled=%b, maskColor=%s, orientation=%d, scrollMode=%d", Boolean.valueOf(this.blurEnabled), Integer.toHexString(this.maskColor), Integer.valueOf(this.orientation), Integer.valueOf(this.scrollMode));
    }

    public boolean theSameAs(BlurWallpaperSettings another) {
        return this.blurEnabled == another.blurEnabled && this.orientation == another.orientation && this.maskColor == another.maskColor;
    }
}
