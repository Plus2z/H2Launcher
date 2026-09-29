package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DefaultCachedSettingsIo implements CachedSettingsIo {
    private final Kit kit;

    public DefaultCachedSettingsIo(Kit kit) {
        this.kit = kit;
    }

    @Override // io.fabric.sdk.android.services.settings.CachedSettingsIo
    public JSONObject readCachedSettings() {
        Fabric.getLogger().d(Fabric.TAG, "Reading cached settings...");
        FileInputStream fis = null;
        JSONObject toReturn = null;
        try {
            try {
                File settingsFile = new File(new FileStoreImpl(this.kit).getFilesDir(), Settings.SETTINGS_CACHE_FILENAME);
                if (settingsFile.exists()) {
                    FileInputStream fis2 = new FileInputStream(settingsFile);
                    try {
                        String settingsStr = CommonUtils.streamToString(fis2);
                        toReturn = new JSONObject(settingsStr);
                        fis = fis2;
                    } catch (Exception e) {
                        e = e;
                        fis = fis2;
                        Fabric.getLogger().e(Fabric.TAG, "Failed to fetch cached settings", e);
                        CommonUtils.closeOrLog(fis, "Error while closing settings cache file.");
                        return toReturn;
                    } catch (Throwable th) {
                        th = th;
                        fis = fis2;
                        CommonUtils.closeOrLog(fis, "Error while closing settings cache file.");
                        throw th;
                    }
                } else {
                    Fabric.getLogger().d(Fabric.TAG, "No cached settings found.");
                }
                CommonUtils.closeOrLog(fis, "Error while closing settings cache file.");
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        return toReturn;
    }

    @Override // io.fabric.sdk.android.services.settings.CachedSettingsIo
    public void writeCachedSettings(long expiresAtMillis, JSONObject settingsJson) {
        FileWriter writer;
        Fabric.getLogger().d(Fabric.TAG, "Writing settings to cache file...");
        if (settingsJson != null) {
            FileWriter writer2 = null;
            try {
                try {
                    settingsJson.put(SettingsJsonConstants.EXPIRES_AT_KEY, expiresAtMillis);
                    writer = new FileWriter(new File(new FileStoreImpl(this.kit).getFilesDir(), Settings.SETTINGS_CACHE_FILENAME));
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                writer.write(settingsJson.toString());
                writer.flush();
                CommonUtils.closeOrLog(writer, "Failed to close settings writer.");
            } catch (Exception e2) {
                e = e2;
                writer2 = writer;
                Fabric.getLogger().e(Fabric.TAG, "Failed to cache settings", e);
                CommonUtils.closeOrLog(writer2, "Failed to close settings writer.");
            } catch (Throwable th2) {
                th = th2;
                writer2 = writer;
                CommonUtils.closeOrLog(writer2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
