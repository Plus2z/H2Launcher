package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_EMAIL = "userEmail";
    private static final String KEY_USER_ID = "userId";
    private static final String KEY_USER_NAME = "userName";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName(HttpRequest.CHARSET_UTF8);
    private final File filesDir;

    public MetaDataStore(File filesDir) {
        this.filesDir = filesDir;
    }

    public void writeUserData(String sessionId, UserMetaData data) {
        String userDataString;
        Writer writer;
        File f = getUserDataFileForSession(sessionId);
        Writer writer2 = null;
        try {
            try {
                userDataString = userDataToJson(data);
                writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f), UTF_8));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            writer.write(userDataString);
            writer.flush();
            CommonUtils.closeOrLog(writer, "Failed to close user metadata file.");
            writer2 = writer;
        } catch (Exception e2) {
            e = e2;
            writer2 = writer;
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Error serializing user metadata.", e);
            CommonUtils.closeOrLog(writer2, "Failed to close user metadata file.");
        } catch (Throwable th2) {
            th = th2;
            writer2 = writer;
            CommonUtils.closeOrLog(writer2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public UserMetaData readUserData(String sessionId) {
        UserMetaData userMetaData;
        InputStream is;
        File f = getUserDataFileForSession(sessionId);
        if (!f.exists()) {
            return UserMetaData.EMPTY;
        }
        InputStream is2 = null;
        try {
            try {
                is = new FileInputStream(f);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            userMetaData = jsonToUserData(CommonUtils.streamToString(is));
            CommonUtils.closeOrLog(is, "Failed to close user metadata file.");
        } catch (Exception e2) {
            e = e2;
            is2 = is;
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
            CommonUtils.closeOrLog(is2, "Failed to close user metadata file.");
            userMetaData = UserMetaData.EMPTY;
            return userMetaData;
        } catch (Throwable th2) {
            th = th2;
            is2 = is;
            CommonUtils.closeOrLog(is2, "Failed to close user metadata file.");
            throw th;
        }
        return userMetaData;
    }

    public void writeKeyData(String sessionId, Map<String, String> keyData) {
        String keyDataString;
        Writer writer;
        File f = getKeysFileForSession(sessionId);
        Writer writer2 = null;
        try {
            try {
                keyDataString = keysDataToJson(keyData);
                writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f), UTF_8));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            writer.write(keyDataString);
            writer.flush();
            CommonUtils.closeOrLog(writer, "Failed to close key/value metadata file.");
            writer2 = writer;
        } catch (Exception e2) {
            e = e2;
            writer2 = writer;
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Error serializing key/value metadata.", e);
            CommonUtils.closeOrLog(writer2, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            th = th2;
            writer2 = writer;
            CommonUtils.closeOrLog(writer2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public Map<String, String> readKeyData(String sessionId) {
        Map<String, String> emptyMap;
        InputStream is;
        File f = getKeysFileForSession(sessionId);
        if (!f.exists()) {
            return Collections.emptyMap();
        }
        InputStream is2 = null;
        try {
            try {
                is = new FileInputStream(f);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            emptyMap = jsonToKeysData(CommonUtils.streamToString(is));
            CommonUtils.closeOrLog(is, "Failed to close user metadata file.");
        } catch (Exception e2) {
            e = e2;
            is2 = is;
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
            CommonUtils.closeOrLog(is2, "Failed to close user metadata file.");
            emptyMap = Collections.emptyMap();
            return emptyMap;
        } catch (Throwable th2) {
            th = th2;
            is2 = is;
            CommonUtils.closeOrLog(is2, "Failed to close user metadata file.");
            throw th;
        }
        return emptyMap;
    }

    public File getUserDataFileForSession(String sessionId) {
        return new File(this.filesDir, sessionId + USERDATA_SUFFIX + METADATA_EXT);
    }

    public File getKeysFileForSession(String sessionId) {
        return new File(this.filesDir, sessionId + KEYDATA_SUFFIX + METADATA_EXT);
    }

    private static UserMetaData jsonToUserData(String json) throws JSONException {
        JSONObject dataObj = new JSONObject(json);
        String id = valueOrNull(dataObj, KEY_USER_ID);
        String name = valueOrNull(dataObj, KEY_USER_NAME);
        String email = valueOrNull(dataObj, KEY_USER_EMAIL);
        return new UserMetaData(id, name, email);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.crashlytics.android.core.MetaDataStore$1] */
    private static String userDataToJson(final UserMetaData userData) throws JSONException {
        return new JSONObject() { // from class: com.crashlytics.android.core.MetaDataStore.1
            {
                put(MetaDataStore.KEY_USER_ID, UserMetaData.this.id);
                put(MetaDataStore.KEY_USER_NAME, UserMetaData.this.name);
                put(MetaDataStore.KEY_USER_EMAIL, UserMetaData.this.email);
            }
        }.toString();
    }

    private static Map<String, String> jsonToKeysData(String json) throws JSONException {
        JSONObject dataObj = new JSONObject(json);
        Map<String, String> keyData = new HashMap<>();
        Iterator<String> keyIter = dataObj.keys();
        while (keyIter.hasNext()) {
            String key = keyIter.next();
            keyData.put(key, valueOrNull(dataObj, key));
        }
        return keyData;
    }

    private static String keysDataToJson(Map<String, String> keyData) throws JSONException {
        return new JSONObject(keyData).toString();
    }

    private static String valueOrNull(JSONObject json, String key) {
        if (json.isNull(key)) {
            return null;
        }
        return json.optString(key, null);
    }
}
