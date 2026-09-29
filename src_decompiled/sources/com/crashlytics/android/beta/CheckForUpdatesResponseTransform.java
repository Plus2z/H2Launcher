package com.crashlytics.android.beta;

import java.io.IOException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class CheckForUpdatesResponseTransform {
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String IDENTIFIER = "identifier";
    static final String INSTANCE_IDENTIFIER = "instance_identifier";
    static final String URL = "url";
    static final String VERSION_STRING = "version_string";

    public CheckForUpdatesResponse fromJson(JSONObject json) throws IOException {
        if (json == null) {
            return null;
        }
        String url = json.optString("url", null);
        String versionString = json.optString(VERSION_STRING, null);
        String buildVersion = json.optString(BUILD_VERSION, null);
        String displayVersion = json.optString(DISPLAY_VERSION, null);
        String packageName = json.optString("identifier", null);
        String instanceId = json.optString(INSTANCE_IDENTIFIER, null);
        return new CheckForUpdatesResponse(url, versionString, displayVersion, buildVersion, packageName, instanceId);
    }
}
