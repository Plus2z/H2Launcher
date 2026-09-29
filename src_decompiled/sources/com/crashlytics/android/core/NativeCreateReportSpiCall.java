package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;

/* loaded from: classes.dex */
class NativeCreateReportSpiCall extends AbstractSpiCall implements CreateReportSpiCall {
    private static final String APP_META_FILE_MULTIPART_PARAM = "app_meta_file";
    private static final String BINARY_IMAGES_FILE_MULTIPART_PARAM = "binary_images_file";
    private static final String DEVICE_META_FILE_MULTIPART_PARAM = "device_meta_file";
    private static final String GZIP_FILE_CONTENT_TYPE = "application/octet-stream";
    private static final String KEYS_FILE_MULTIPART_PARAM = "keys_file";
    private static final String LOGS_FILE_MULTIPART_PARAM = "logs_file";
    private static final String METADATA_FILE_MULTIPART_PARAM = "crash_meta_file";
    private static final String MINIDUMP_FILE_MULTIPART_PARAM = "minidump_file";
    private static final String OS_META_FILE_MULTIPART_PARAM = "os_meta_file";
    private static final String REPORT_IDENTIFIER_PARAM = "report_id";
    private static final String SESSION_META_FILE_MULTIPART_PARAM = "session_meta_file";
    private static final String USER_META_FILE_MULTIPART_PARAM = "user_meta_file";

    public NativeCreateReportSpiCall(Kit kit, String protocolAndHostOverride, String url, HttpRequestFactory requestFactory) {
        super(kit, protocolAndHostOverride, url, requestFactory, HttpMethod.POST);
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest requestData) {
        HttpRequest httpRequest = getHttpRequest();
        HttpRequest httpRequest2 = applyMultipartDataTo(applyHeadersTo(httpRequest, requestData.apiKey), requestData.report);
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int statusCode = httpRequest2.code();
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Result was: " + statusCode);
        return ResponseParser.parse(statusCode) == 0;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String apiKey) {
        httpRequest.header("User-Agent", AbstractSpiCall.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, apiKey);
        return httpRequest;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        httpRequest.part(REPORT_IDENTIFIER_PARAM, report.getIdentifier());
        for (File f : report.getFiles()) {
            if (f.getName().equals("minidump")) {
                httpRequest.part(MINIDUMP_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("metadata")) {
                httpRequest.part(METADATA_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("binaryImages")) {
                httpRequest.part(BINARY_IMAGES_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals(SettingsJsonConstants.SESSION_KEY)) {
                httpRequest.part(SESSION_META_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("app")) {
                httpRequest.part(APP_META_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("device")) {
                httpRequest.part(DEVICE_META_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("os")) {
                httpRequest.part(OS_META_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("user")) {
                httpRequest.part(USER_META_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("logs")) {
                httpRequest.part(LOGS_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            } else if (f.getName().equals("keys")) {
                httpRequest.part(KEYS_FILE_MULTIPART_PARAM, f.getName(), GZIP_FILE_CONTENT_TYPE, f);
            }
        }
        return httpRequest;
    }
}
