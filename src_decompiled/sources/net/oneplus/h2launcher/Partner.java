package net.oneplus.h2launcher;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import com.oneplus.sdk.utils.OpFeatures;
import java.io.File;
import net.oneplus.h2launcher.oos.StyleManager;

/* loaded from: classes.dex */
public class Partner {
    private static final String ACTION_PARTNER_CUSTOMIZATION = "net.oneplus.h2launcher.action.PARTNER_CUSTOMIZATION";
    public static final String RES_DEFAULT_LAYOUT_SIMPLIFIED = "partner_default_layout_simplified";
    public static final String RES_DEFAULT_LAYOUT_SIMPLIFIED_4x5 = "partner_default_layout_simplified_4x5";
    public static final String RES_DEFAULT_LAYOUT_SIMPLIFIED_4x5_BASED_O2 = "partner_default_layout_simplified_4x5_based_o2";
    public static final String RES_DEFAULT_LAYOUT_SIMPLIFIED_BASED_O2 = "partner_default_layout_simplified_based_o2";
    public static final String RES_DEFAULT_LAYOUT_STANDARD = "partner_default_layout_standard";
    public static final String RES_DEFAULT_LAYOUT_STANDARD_5x5 = "partner_default_layout_standard_5x5";
    public static final String RES_DEFAULT_LAYOUT_STANDARD_5x5_BASED_H2 = "partner_default_layout_standard_5x5_based_h2";
    public static final String RES_DEFAULT_LAYOUT_STANDARD_BASED_H2 = "partner_default_layout_standard_based_h2";
    public static final String RES_DEFAULT_WALLPAPER_HIDDEN = "default_wallpapper_hidden";
    public static final String RES_FOLDER = "partner_folder";
    public static final String RES_GRID_ICON_SIZE_DP = "grid_icon_size_dp";
    public static final String RES_GRID_NUM_COLUMNS = "grid_num_columns";
    public static final String RES_GRID_NUM_ROWS = "grid_num_rows";
    public static final String RES_REQUIRE_FIRST_RUN_FLOW = "requires_first_run_flow";
    public static final String RES_SYSTEM_WALLPAPER_DIR = "system_wallpaper_directory";
    public static final String RES_WALLPAPERS = "partner_wallpapers";
    static final String TAG = "Launcher.Partner";
    private static Partner sPartner;
    private static boolean sSearched = false;
    private final String mPackageName;
    private final Resources mResources;

    public static synchronized Partner get(PackageManager pm) {
        Partner partner;
        synchronized (Partner.class) {
            if (!sSearched) {
                Pair<String, Resources> apkInfo = Utilities.findSystemApk(ACTION_PARTNER_CUSTOMIZATION, pm);
                if (apkInfo != null) {
                    sPartner = new Partner((String) apkInfo.first, (Resources) apkInfo.second);
                }
                sSearched = true;
            }
            partner = sPartner;
        }
        return partner;
    }

    private Partner(String packageName, Resources res) {
        this.mPackageName = packageName;
        this.mResources = res;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public Resources getResources() {
        return this.mResources;
    }

    public boolean hasDefaultLayout() {
        int defaultLayout = getResources().getIdentifier(getIdentifierName(), "xml", getPackageName());
        return defaultLayout != 0;
    }

    public String getIdentifierName() {
        Context context = LauncherAppState.getInstance().getContext();
        if (Utilities.isLessOrEqualDefaultDensity(context)) {
            if (StyleManager.isSimplifiedLayout()) {
                if (OpFeatures.isSupport(1)) {
                    return RES_DEFAULT_LAYOUT_SIMPLIFIED_4x5_BASED_O2;
                }
                return RES_DEFAULT_LAYOUT_SIMPLIFIED_4x5;
            }
            if (OpFeatures.isSupport(0)) {
                return RES_DEFAULT_LAYOUT_STANDARD_5x5_BASED_H2;
            }
            return RES_DEFAULT_LAYOUT_STANDARD_5x5;
        }
        if (StyleManager.isSimplifiedLayout()) {
            if (OpFeatures.isSupport(1)) {
                return RES_DEFAULT_LAYOUT_SIMPLIFIED_BASED_O2;
            }
            return RES_DEFAULT_LAYOUT_SIMPLIFIED;
        }
        if (OpFeatures.isSupport(0)) {
            return RES_DEFAULT_LAYOUT_STANDARD_BASED_H2;
        }
        return RES_DEFAULT_LAYOUT_STANDARD;
    }

    public boolean hasFolder() {
        int folder = getResources().getIdentifier(RES_FOLDER, "xml", getPackageName());
        return folder != 0;
    }

    public boolean hideDefaultWallpaper() {
        int resId = getResources().getIdentifier(RES_DEFAULT_WALLPAPER_HIDDEN, "bool", getPackageName());
        return resId != 0 && getResources().getBoolean(resId);
    }

    public File getWallpaperDirectory() {
        int resId = getResources().getIdentifier(RES_SYSTEM_WALLPAPER_DIR, "string", getPackageName());
        if (resId != 0) {
            return new File(getResources().getString(resId));
        }
        return null;
    }

    public boolean requiresFirstRunFlow() {
        int resId = getResources().getIdentifier(RES_REQUIRE_FIRST_RUN_FLOW, "bool", getPackageName());
        return resId != 0 && getResources().getBoolean(resId);
    }

    public void applyInvariantDeviceProfileOverrides(InvariantDeviceProfile inv, DisplayMetrics dm) {
        int numRows = -1;
        int numColumns = -1;
        float iconSize = -1.0f;
        try {
            int resId = getResources().getIdentifier(RES_GRID_NUM_ROWS, "integer", getPackageName());
            if (resId > 0) {
                numRows = getResources().getInteger(resId);
            }
            int resId2 = getResources().getIdentifier(RES_GRID_NUM_COLUMNS, "integer", getPackageName());
            if (resId2 > 0) {
                numColumns = getResources().getInteger(resId2);
            }
            int resId3 = getResources().getIdentifier(RES_GRID_ICON_SIZE_DP, "dimen", getPackageName());
            if (resId3 > 0) {
                int px = getResources().getDimensionPixelSize(resId3);
                iconSize = Utilities.dpiFromPx(px, dm);
            }
            if (numRows > 0 && numColumns > 0) {
                inv.numRows = numRows;
                inv.numColumns = numColumns;
            }
            if (iconSize > 0.0f) {
                inv.iconSize = iconSize;
            }
        } catch (Resources.NotFoundException ex) {
            Log.e(TAG, "Invalid Partner grid resource!", ex);
        }
    }
}
