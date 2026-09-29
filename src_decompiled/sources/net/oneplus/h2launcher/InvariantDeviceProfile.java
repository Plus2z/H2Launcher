package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.oneplus.sdk.utils.OpFeatures;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class InvariantDeviceProfile {
    private static final float ICON_SIZE_DEFINED_IN_APP_DP = 48.0f;
    private final String TAG;
    int defaultLayoutId;
    public int fillResIconDpi;
    public int hotseatAllAppsRank;
    float hotseatIconSize;
    int iconBitmapSize;
    float iconSize;
    float iconTextSize;
    public DeviceProfile landscapeProfile;
    int minAllAppsPredictionColumns;
    float minHeightDps;
    float minWidthDps;
    String name;
    public int numColumns;
    public int numFolderColumns;
    public int numFolderRows;
    public int numHotseatIcons;
    public int numRows;
    public DeviceProfile portraitProfile;
    private static float STANDARD_ICON_SIZE_DP = 56.0f;
    private static float SIMPLIFIED_ICON_SIZE_DP = 54.0f;
    private static float KNEARESTNEIGHBOR = 3.0f;
    private static float WEIGHT_POWER = 5.0f;
    private static float WEIGHT_EFFICIENT = 100000.0f;

    public InvariantDeviceProfile() {
        this.TAG = InvariantDeviceProfile.class.getSimpleName();
    }

    public InvariantDeviceProfile(InvariantDeviceProfile p) {
        this(p.name, p.minWidthDps, p.minHeightDps, p.numRows, p.numColumns, p.numFolderRows, p.numFolderColumns, p.minAllAppsPredictionColumns, p.iconSize, p.iconTextSize, p.numHotseatIcons, p.hotseatIconSize, p.defaultLayoutId);
    }

    InvariantDeviceProfile(String n, float w, float h, int r, int c, int fr, int fc, int maapc, float is, float its, int hs, float his, int dlId) {
        this.TAG = InvariantDeviceProfile.class.getSimpleName();
        if (hs % 2 == 0) {
            throw new RuntimeException("All Device Profiles must have an odd number of hotseat spaces");
        }
        this.name = n;
        this.minWidthDps = w;
        this.minHeightDps = h;
        this.numRows = r;
        this.numColumns = c;
        this.numFolderRows = fr;
        this.numFolderColumns = fc;
        this.minAllAppsPredictionColumns = maapc;
        this.iconSize = is;
        this.iconTextSize = its;
        this.numHotseatIcons = hs;
        this.hotseatIconSize = his;
        this.defaultLayoutId = dlId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(17)
    public InvariantDeviceProfile(Context context) {
        this.TAG = InvariantDeviceProfile.class.getSimpleName();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        Display display = wm.getDefaultDisplay();
        DisplayMetrics dm = new DisplayMetrics();
        display.getMetrics(dm);
        Point smallestSize = new Point();
        Point largestSize = new Point();
        display.getCurrentSizeRange(smallestSize, largestSize);
        this.minWidthDps = Utilities.dpiFromPx(Math.min(smallestSize.x, smallestSize.y), dm);
        this.minHeightDps = Utilities.dpiFromPx(Math.min(largestSize.x, largestSize.y), dm);
        InvariantDeviceProfile closestProfile = getPredefinedDeviceProfiles(context);
        this.numRows = closestProfile.numRows;
        this.numColumns = closestProfile.numColumns;
        this.numHotseatIcons = closestProfile.numHotseatIcons;
        this.hotseatAllAppsRank = this.numHotseatIcons / 2;
        this.defaultLayoutId = closestProfile.defaultLayoutId;
        this.numFolderRows = closestProfile.numFolderRows;
        this.numFolderColumns = closestProfile.numFolderColumns;
        this.minAllAppsPredictionColumns = closestProfile.minAllAppsPredictionColumns;
        this.iconSize = closestProfile.iconSize;
        this.iconBitmapSize = Utilities.pxFromDp(this.iconSize, dm);
        this.iconTextSize = closestProfile.iconTextSize;
        this.hotseatIconSize = closestProfile.hotseatIconSize;
        this.fillResIconDpi = getLauncherIconDensity(this.iconBitmapSize);
        Logger.d(this.TAG, "[InvariantDeviceProfile] simplified = " + StyleManager.isSimplifiedLayout() + ", OP_FEATURE_SKU_GLOBAL = " + OpFeatures.isSupport(1) + ", name = " + closestProfile.name + ", numRows = " + this.numRows + ", numColumns = " + this.numColumns);
        applyPartnerDeviceProfileOverrides(context, dm);
        Point realSize = new Point();
        display.getRealSize(realSize);
        int smallSide = Math.min(realSize.x, realSize.y);
        int largeSide = Math.max(realSize.x, realSize.y);
        this.landscapeProfile = new DeviceProfile(context, this, smallestSize, largestSize, largeSide, smallSide, true);
        this.portraitProfile = new DeviceProfile(context, this, smallestSize, largestSize, smallSide, largeSide, false);
    }

    InvariantDeviceProfile getPredefinedDeviceProfiles(Context context) {
        int defaultLayoutId;
        int defaultLayoutId2;
        if (Utilities.isLessOrEqualDefaultDensity(context)) {
            if (StyleManager.isSimplifiedLayout()) {
                if (OpFeatures.isSupport(1)) {
                    Logger.d(this.TAG, "WORKSPACE_XML - default_layout_simplified_4x5_based_o2");
                    defaultLayoutId2 = R.xml.default_layout_simplified_4x5_based_o2;
                } else {
                    String device = Utilities.getDeviceTag();
                    char c = 65535;
                    switch (device.hashCode()) {
                        case 46916759:
                            if (device.equals(Utilities.DEVICE_16859)) {
                                c = 0;
                                break;
                            }
                            break;
                        case 46946387:
                            if (device.equals(Utilities.DEVICE_17801)) {
                                c = 1;
                                break;
                            }
                            break;
                        case 46946426:
                            if (device.equals(Utilities.DEVICE_17819)) {
                                c = 2;
                                break;
                            }
                            break;
                        case 46976240:
                            if (device.equals(Utilities.DEVICE_18821)) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_4x5_no_all_apps_16859");
                            defaultLayoutId2 = R.xml.default_workspace_4x5_no_all_apps_16859;
                            break;
                        case 1:
                        case 2:
                            Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_4x5_no_all_apps_17801");
                            defaultLayoutId2 = R.xml.default_workspace_4x5_no_all_apps_17801;
                            break;
                        case 3:
                            Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_4x5_no_all_apps_18821");
                            defaultLayoutId2 = R.xml.default_workspace_4x5_no_all_apps_18821;
                            break;
                        default:
                            Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_4x5_no_all_apps");
                            defaultLayoutId2 = R.xml.default_workspace_4x5_no_all_apps;
                            break;
                    }
                }
                return new InvariantDeviceProfile("Small dpi", 406.0f, 694.0f, 5, 4, 4, 4, 4, 64.0f, 14.4f, 5, 56.0f, defaultLayoutId2);
            }
            Logger.d(this.TAG, "WORKSPACE_XML - " + (OpFeatures.isSupport(0) ? "default_layout_standard_5x5_based_h2" : "default_workspace_5x5"));
            int defaultLayoutId3 = OpFeatures.isSupport(0) ? R.xml.default_layout_standard_5x5_based_h2 : R.xml.default_workspace_5x5;
            return new InvariantDeviceProfile("Small dpi", 406.0f, 694.0f, 5, 5, 4, 4, 4, 64.0f, 14.4f, 5, 56.0f, defaultLayoutId3);
        }
        if (StyleManager.isSimplifiedLayout()) {
            if (OpFeatures.isSupport(1)) {
                Logger.d(this.TAG, "WORKSPACE_XML - default_layout_simplified_based_o2");
                defaultLayoutId = R.xml.default_layout_simplified_based_o2;
            } else {
                String device2 = Utilities.getDeviceTag();
                char c2 = 65535;
                switch (device2.hashCode()) {
                    case 46916759:
                        if (device2.equals(Utilities.DEVICE_16859)) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 46946387:
                        if (device2.equals(Utilities.DEVICE_17801)) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 46946426:
                        if (device2.equals(Utilities.DEVICE_17819)) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 46976240:
                        if (device2.equals(Utilities.DEVICE_18821)) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_3x5_no_all_apps_16859");
                        defaultLayoutId = R.xml.default_workspace_3x5_no_all_apps_16859;
                        break;
                    case 1:
                    case 2:
                        Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_3x5_no_all_apps_17801");
                        defaultLayoutId = R.xml.default_workspace_3x5_no_all_apps_17801;
                        break;
                    case 3:
                        Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_3x5_no_all_apps_18821");
                        defaultLayoutId = R.xml.default_workspace_3x5_no_all_apps_18821;
                        break;
                    default:
                        Logger.d(this.TAG, "WORKSPACE_XML - default_workspace_3x5_no_all_apps");
                        defaultLayoutId = R.xml.default_workspace_3x5_no_all_apps;
                        break;
                }
            }
            return new InvariantDeviceProfile("Default or Large dpi", 335.0f, 567.0f, StyleManager.getInstance().getWorkspaceRows(), StyleManager.getInstance().getWorkspaceColumns(), 4, 4, 4, SIMPLIFIED_ICON_SIZE_DP, 13.0f, 5, 56.0f, defaultLayoutId);
        }
        Logger.d(this.TAG, "WORKSPACE_XML - " + (OpFeatures.isSupport(0) ? "default_layout_standard_based_h2" : "default_workspace_4x5"));
        int defaultLayoutId4 = OpFeatures.isSupport(0) ? R.xml.default_layout_standard_based_h2 : R.xml.default_workspace_4x5;
        return new InvariantDeviceProfile("Default or Large dpi", 335.0f, 567.0f, StyleManager.getInstance().getWorkspaceRows(), StyleManager.getInstance().getWorkspaceColumns(), 4, 4, 4, STANDARD_ICON_SIZE_DP, 13.0f, 5, 56.0f, defaultLayoutId4);
    }

    private int getLauncherIconDensity(int requiredSize) {
        int[] densityBuckets = {120, 160, 213, ShortcutInfo.FLAG_RESTORED_APP_TYPE, 320, 480, 640};
        int density = 640;
        for (int i = densityBuckets.length - 1; i >= 0; i--) {
            float expectedSize = (ICON_SIZE_DEFINED_IN_APP_DP * densityBuckets[i]) / 160.0f;
            if (expectedSize >= requiredSize) {
                density = densityBuckets[i];
            }
        }
        return density;
    }

    private void applyPartnerDeviceProfileOverrides(Context context, DisplayMetrics dm) {
        Partner p = Partner.get(context.getPackageManager());
        if (p != null) {
            p.applyInvariantDeviceProfileOverrides(this, dm);
        }
    }

    float dist(float x0, float y0, float x1, float y1) {
        return (float) Math.hypot(x1 - x0, y1 - y0);
    }

    ArrayList<InvariantDeviceProfile> findClosestDeviceProfiles(final float width, final float height, ArrayList<InvariantDeviceProfile> points) {
        Collections.sort(points, new Comparator<InvariantDeviceProfile>() { // from class: net.oneplus.h2launcher.InvariantDeviceProfile.1
            @Override // java.util.Comparator
            public int compare(InvariantDeviceProfile a, InvariantDeviceProfile b) {
                return (int) (InvariantDeviceProfile.this.dist(width, height, a.minWidthDps, a.minHeightDps) - InvariantDeviceProfile.this.dist(width, height, b.minWidthDps, b.minHeightDps));
            }
        });
        return points;
    }

    InvariantDeviceProfile invDistWeightedInterpolate(float width, float height, ArrayList<InvariantDeviceProfile> points) {
        float weights = 0.0f;
        InvariantDeviceProfile p = points.get(0);
        if (dist(width, height, p.minWidthDps, p.minHeightDps) == 0.0f) {
            return p;
        }
        InvariantDeviceProfile out = new InvariantDeviceProfile();
        for (int i = 0; i < points.size() && i < KNEARESTNEIGHBOR; i++) {
            InvariantDeviceProfile p2 = new InvariantDeviceProfile(points.get(i));
            float w = weight(width, height, p2.minWidthDps, p2.minHeightDps, WEIGHT_POWER);
            weights += w;
            out.add(p2.multiply(w));
        }
        return out.multiply(1.0f / weights);
    }

    private void add(InvariantDeviceProfile p) {
        this.iconSize += p.iconSize;
        this.iconTextSize += p.iconTextSize;
        this.hotseatIconSize += p.hotseatIconSize;
    }

    private InvariantDeviceProfile multiply(float w) {
        this.iconSize *= w;
        this.iconTextSize *= w;
        this.hotseatIconSize *= w;
        return this;
    }

    private float weight(float x0, float y0, float x1, float y1, float pow) {
        float d = dist(x0, y0, x1, y1);
        if (Float.compare(d, 0.0f) == 0) {
            return Float.POSITIVE_INFINITY;
        }
        return (float) (WEIGHT_EFFICIENT / Math.pow(d, pow));
    }

    public DeviceProfile getDeviceProfile(Context context) {
        return context.getResources().getConfiguration().orientation == 2 ? this.landscapeProfile : this.portraitProfile;
    }
}
