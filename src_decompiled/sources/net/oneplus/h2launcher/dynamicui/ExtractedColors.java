package net.oneplus.h2launcher.dynamicui;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.graphics.Palette;
import android.util.Log;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ExtractedColors {
    private static final String COLOR_SEPARATOR = ",";
    public static final int DEFAULT_COLOR = -1;
    public static final int DEFAULT_DARK = -16777216;
    public static final int DEFAULT_LIGHT = -1;
    public static final int HOTSEAT_INDEX = 1;
    public static final int NAVI_BG_INDEX = 3;
    public static final int NAVI_COLOR_NORMAL = 0;
    public static final int NAVI_COLOR_SUPER_DARK = 2;
    public static final int NUM_COLOR_PROFILES = 3;
    private static final String SETTINGS_KEY_NAVI_BG_COLOR = "navi_bg_color";
    public static final int STATUS_BAR_INDEX = 2;
    private static final String TAG = "ExtractedColors";
    private static final int VERSION = 1;
    public static final int VERSION_INDEX = 0;
    private int[] mColors = new int[4];

    public ExtractedColors() {
        this.mColors[0] = 1;
    }

    public void setColorAtIndex(int index, int color) {
        if (index > 0 && index < this.mColors.length) {
            this.mColors[index] = color;
        } else {
            Log.e(TAG, "Attempted to set a color at an invalid index " + index);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String encodeAsString() {
        StringBuilder colorsStringBuilder = new StringBuilder();
        for (int color : this.mColors) {
            colorsStringBuilder.append(color).append(COLOR_SEPARATOR);
        }
        return colorsStringBuilder.toString();
    }

    void decodeFromString(String colorsString) {
        String[] splitColorsString = colorsString.split(COLOR_SEPARATOR);
        this.mColors = new int[splitColorsString.length];
        for (int i = 0; i < this.mColors.length; i++) {
            this.mColors[i] = Integer.parseInt(splitColorsString[i]);
        }
    }

    public void load(Context context) {
        String encodedString = Utilities.getPrefs(context).getString(ExtractionUtils.EXTRACTED_COLORS_PREFERENCE_KEY, "1");
        decodeFromString(encodedString);
        if (this.mColors[0] != 1) {
            ExtractionUtils.startColorExtractionService(context);
        }
    }

    public int getColor(int index, int defaultColor) {
        if (index > 0 && index < this.mColors.length) {
            return this.mColors[index];
        }
        return defaultColor;
    }

    public void updateHotseatPalette(Context context, Palette hotseatPalette) {
        int hotseatColor;
        if (hotseatPalette != null && ExtractionUtils.isSuperLight(hotseatPalette)) {
            hotseatColor = ColorUtils.setAlphaComponent(context.getColor(R.color.super_dark_page_active_indicator_color), 30);
        } else if (hotseatPalette != null && ExtractionUtils.isSuperDark(hotseatPalette)) {
            hotseatColor = ColorUtils.setAlphaComponent(-1, 45);
        } else {
            hotseatColor = ColorUtils.setAlphaComponent(-1, 63);
        }
        setColorAtIndex(1, hotseatColor);
    }

    public void updateNavBarColorToSettings(ContentResolver cr) {
        int color = getColor(3, 0);
        Logger.d(TAG, "H2Launcher updateNavBarColorToSettings = " + color);
        Settings.Global.putInt(cr, SETTINGS_KEY_NAVI_BG_COLOR, color);
    }

    public void updateStatusBarPalette(Palette statusBarPalette) {
        setColorAtIndex(2, ExtractionUtils.isSuperLight(statusBarPalette) ? -1 : -16777216);
    }
}
