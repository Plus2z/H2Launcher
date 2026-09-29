package net.oneplus.h2launcher.migrate;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WallpaperPreferenceMigration {
    static final int WALLPAPER_PREFERENCE_VERSION = 1;
    private static final String TAG = WallpaperPreferenceMigration.class.getSimpleName();
    private static final Map<String, String> sOnePlus3TWallpaperResEntryNameMap = new HashMap();

    static {
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_0", "wallpaper_18");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_1", "wallpaper_19");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_2", "wallpaper_20");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_3", "wallpaper_21");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_4", "wallpaper_22");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_5", "wallpaper_23");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_6", "wallpaper_1");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_7", "wallpaper_2");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_8", "wallpaper_3");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_9", "wallpaper_4");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_10", "wallpaper_5");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_11", "wallpaper_16");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_12", "wallpaper_6");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_13", "wallpaper_8");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_14", "wallpaper_9");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_15", "wallpaper_10");
        sOnePlus3TWallpaperResEntryNameMap.put("wallpaper_16", "wallpaper_13");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onUpgrade(Context context, int oldVersion, int newVersion) {
        Logger.d(TAG, "onUpgrade: oldVersion=%d, newVersion=%d", Integer.valueOf(oldVersion), Integer.valueOf(newVersion));
        switch (oldVersion) {
            case 0:
                updateResourceEntryName(context);
                break;
            case 1:
                break;
            default:
                Logger.w(TAG, "wallpaper preference migration failed");
                return;
        }
        Logger.d(TAG, "wallpaper preference migrated successfully");
    }

    private static void updateResourceEntryName(Context context) {
        String device = Utilities.getDeviceTag();
        Logger.d(TAG, "device is %s", device);
        if (device.equals(Utilities.DEVICE_15811)) {
            updateOnePlus3TResourceEntryName(context);
        }
    }

    private static void updateOnePlus3TResourceEntryName(Context context) {
        String tileValue = PreferencesHelper.getRawWallpaperTile(context);
        Logger.d(TAG, "current wallpaper tile info is %s", tileValue);
        if (TextUtils.isEmpty(tileValue)) {
            Logger.d(TAG, "current wallpaper tile is empty, skip update res entry name");
            return;
        }
        String tileValue2 = MigrationManager.correctLauncherPackageName(context, tileValue);
        try {
            JSONObject tile = new JSONObject(tileValue2);
            String typeValue = tile.optString("type");
            WallpaperTileInfo.Type type = WallpaperTileInfo.Type.fromString(typeValue);
            if (!WallpaperTileInfo.Type.RESOURCE.equals(type)) {
                Logger.d(TAG, "no need to update res entry name for type %s, skip migration", type);
                return;
            }
            String name = tile.optString(WallpaperTileInfo.KEY_NAME);
            if (TextUtils.isEmpty(name)) {
                Logger.w(TAG, "empty wallpaper name, skip migration");
                return;
            }
            for (Map.Entry<String, String> entry : sOnePlus3TWallpaperResEntryNameMap.entrySet()) {
                String from = entry.getKey();
                if (name.endsWith(from)) {
                    String to = entry.getValue();
                    WallpaperTileInfo newTile = WallpaperTileInfo.deserialize(context, tileValue2.replace(from, to));
                    if (newTile == null) {
                        Logger.w(TAG, "failed to migrate wallpaper preference");
                        return;
                    } else {
                        PreferencesHelper.setWallpaperTile(context, newTile);
                        return;
                    }
                }
            }
        } catch (JSONException e) {
            Logger.e(TAG, "cannot create wallpaper tile info from JSON, error=" + e);
        }
    }
}
