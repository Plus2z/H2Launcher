package com.crashlytics.android.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.io.IOException;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class BinaryImagesConverter {
    private static final String DATA_DIR = "/data";
    private final Context context;
    private final FileIdStrategy fileIdStrategy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface FileIdStrategy {
        String createId(File file) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinaryImagesConverter(Context context, FileIdStrategy fileIdStrategy) {
        this.context = context;
        this.fileIdStrategy = fileIdStrategy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] convert(String raw) throws IOException {
        JSONArray binaryImagesJson = parseProcMapsJson(raw);
        byte[] binaryImagesJsonString = generateBinaryImagesJsonString(binaryImagesJson);
        return binaryImagesJsonString;
    }

    private JSONArray parseProcMapsJson(String rawProcMapsString) {
        JSONArray binaryImagesJson = new JSONArray();
        try {
            JSONObject rawObj = new JSONObject(rawProcMapsString);
            JSONArray maps = rawObj.getJSONArray("maps");
            String mapsString = joinMapsEntries(maps);
            String[] mapsEntries = mapsString.split("\\|");
            for (String mapEntryString : mapsEntries) {
                ProcMapEntry mapInfo = ProcMapEntryParser.parse(mapEntryString);
                if (mapInfo != null && isRelevant(mapInfo)) {
                    String path = mapInfo.path;
                    File binFile = getLibraryFile(path);
                    try {
                        String uuid = this.fileIdStrategy.createId(binFile);
                        try {
                            binaryImagesJson.put(createBinaryImageJson(uuid, mapInfo));
                        } catch (JSONException e) {
                            Fabric.getLogger().d(CrashlyticsCore.TAG, "Could not create a binary image json string", e);
                        }
                    } catch (IOException e2) {
                        Fabric.getLogger().d(CrashlyticsCore.TAG, "Could not generate ID for file " + mapInfo.path, e2);
                    }
                }
            }
        } catch (JSONException e3) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Unable to parse proc maps string", e3);
        }
        return binaryImagesJson;
    }

    private File getLibraryFile(String path) {
        File libFile = new File(path);
        if (!libFile.exists()) {
            return correctDataPath(libFile);
        }
        return libFile;
    }

    private File correctDataPath(File missingFile) {
        if (Build.VERSION.SDK_INT < 9) {
            return missingFile;
        }
        if (missingFile.getAbsolutePath().startsWith(DATA_DIR)) {
            try {
                ApplicationInfo ai = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 0);
                missingFile = new File(ai.nativeLibraryDir, missingFile.getName());
            } catch (PackageManager.NameNotFoundException e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error getting ApplicationInfo", e);
            }
        }
        return missingFile;
    }

    private static byte[] generateBinaryImagesJsonString(JSONArray binaryImages) {
        JSONObject binaryImagesObject = new JSONObject();
        try {
            binaryImagesObject.put("binary_images", binaryImages);
            return binaryImagesObject.toString().getBytes();
        } catch (JSONException e) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Binary images string is null", e);
            return new byte[0];
        }
    }

    private static JSONObject createBinaryImageJson(String uuid, ProcMapEntry mapEntry) throws JSONException {
        JSONObject binaryImage = new JSONObject();
        binaryImage.put("base_address", mapEntry.address);
        binaryImage.put(LauncherSettings.QuickPage.SIZE, mapEntry.size);
        binaryImage.put(WallpaperTileInfo.KEY_NAME, mapEntry.path);
        binaryImage.put("uuid", uuid);
        return binaryImage;
    }

    private static String joinMapsEntries(JSONArray array) throws JSONException {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < array.length(); i++) {
            sb.append(array.getString(i));
        }
        return sb.toString();
    }

    private static boolean isRelevant(ProcMapEntry mapEntry) {
        return (mapEntry.perms.indexOf(120) == -1 || mapEntry.path.indexOf(47) == -1) ? false : true;
    }
}
