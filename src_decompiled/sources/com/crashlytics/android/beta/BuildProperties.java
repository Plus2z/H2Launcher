package com.crashlytics.android.beta;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* loaded from: classes.dex */
class BuildProperties {
    private static final String BUILD_ID = "build_id";
    private static final String PACKAGE_NAME = "package_name";
    private static final String VERSION_CODE = "version_code";
    private static final String VERSION_NAME = "version_name";
    public final String buildId;
    public final String packageName;
    public final String versionCode;
    public final String versionName;

    BuildProperties(String versionCode, String versionName, String buildId, String packageName) {
        this.versionCode = versionCode;
        this.versionName = versionName;
        this.buildId = buildId;
        this.packageName = packageName;
    }

    public static BuildProperties fromProperties(Properties props) {
        String versionCode = props.getProperty(VERSION_CODE);
        String versionName = props.getProperty(VERSION_NAME);
        String buildId = props.getProperty(BUILD_ID);
        String packageName = props.getProperty("package_name");
        return new BuildProperties(versionCode, versionName, buildId, packageName);
    }

    public static BuildProperties fromPropertiesStream(InputStream is) throws IOException {
        Properties props = new Properties();
        props.load(is);
        return fromProperties(props);
    }
}
