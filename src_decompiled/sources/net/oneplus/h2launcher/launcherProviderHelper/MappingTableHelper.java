package net.oneplus.h2launcher.launcherProviderHelper;

import android.content.ComponentName;
import android.content.Context;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MappingTableHelper {
    public static final String APP_CM_MAPPING_JSON = "appCnMapping.json";
    public static final String KEY_APP = "app";
    public static final String KEY_DST = "dst";
    public static final String KEY_SRC = "src";
    private static final String TAG = "MappingTableHelper";
    public static final String VALUE_DELETE = "delete";

    public static HashMap<ComponentName, ComponentName> createAppMappingTable(Context context) {
        String json = loadJSONFromAsset(context);
        HashMap<ComponentName, ComponentName> hashMapping = new HashMap<>();
        if (json != null) {
            try {
                JSONObject obj = new JSONObject(json);
                JSONArray jsonArray = obj.getJSONArray("app");
                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONObject appObj = jsonArray.getJSONObject(i);
                    String srcName = appObj.optString(KEY_SRC, null);
                    String dstName = appObj.optString(KEY_DST, null);
                    ComponentName srcCn = null;
                    ComponentName dstCn = null;
                    if (srcName != null) {
                        srcCn = ComponentName.unflattenFromString(srcName);
                    }
                    if (dstName != null) {
                        dstCn = ComponentName.unflattenFromString(dstName);
                    } else if (dstName == VALUE_DELETE) {
                        dstCn = null;
                    }
                    if (srcCn != null) {
                        hashMapping.put(srcCn, dstCn);
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return hashMapping;
    }

    private static String loadJSONFromAsset(Context context) {
        try {
            InputStream is = context.getAssets().open(APP_CM_MAPPING_JSON);
            int size = is.available();
            byte[] buffer = new byte[size];
            is.read(buffer);
            is.close();
            String json = new String(buffer, HttpRequest.CHARSET_UTF8);
            return json;
        } catch (IOException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
