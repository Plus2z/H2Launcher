package net.oneplus.h2launcher.customizations.wallpaper;

import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WallpaperColor {
    private static final boolean DEFAULT_BLUR_ENABLED = BlurWallpaperSettings.emptySettings().blurEnabled;
    public static final int INVALID_COLOR = Integer.MIN_VALUE;
    public static final int INVALID_INDEX = Integer.MIN_VALUE;
    private static final String KEY_BLUR_ENABLED = "blur_enabled";
    private static final String KEY_INDEX = "index";
    private static final String KEY_RGB = "rgb";
    public boolean blurEnabled;
    public int index;
    public int rgb;

    public WallpaperColor(int index, int rgb) {
        this.blurEnabled = DEFAULT_BLUR_ENABLED;
        this.rgb = rgb;
        this.index = index;
    }

    public WallpaperColor(int index, int rgb, boolean blurEnabled) {
        this.blurEnabled = DEFAULT_BLUR_ENABLED;
        this.rgb = rgb;
        this.index = index;
        this.blurEnabled = blurEnabled;
    }

    public void setBlurEnabled(boolean blurEnabled) {
        this.blurEnabled = blurEnabled;
    }

    public String toString() {
        return String.format(Locale.US, "rgb=%s, index=%d", Integer.toHexString(this.rgb), Integer.valueOf(this.index));
    }

    public boolean equals(Object o) {
        if (!(o instanceof WallpaperColor)) {
            return false;
        }
        if (o == this) {
            return true;
        }
        WallpaperColor rhs = (WallpaperColor) o;
        return this.rgb == rhs.rgb && this.index == rhs.index && this.blurEnabled == rhs.blurEnabled;
    }

    public static WallpaperColor deserialize(String colorValue) {
        try {
            JSONObject color = new JSONObject(colorValue);
            int index = color.optInt(KEY_INDEX, Integer.MIN_VALUE);
            int rgb = color.optInt(KEY_RGB, Integer.MIN_VALUE);
            boolean blurEnabled = color.optBoolean(KEY_BLUR_ENABLED, DEFAULT_BLUR_ENABLED);
            if (index == Integer.MIN_VALUE || rgb == Integer.MIN_VALUE) {
                return null;
            }
            return new WallpaperColor(index, rgb, blurEnabled);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String serialize() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put(KEY_INDEX, this.index);
            jsonObject.put(KEY_RGB, this.rgb);
            jsonObject.put(KEY_BLUR_ENABLED, this.blurEnabled);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jsonObject.toString();
    }
}
