package com.crashlytics.android.beta;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import net.oneplus.gallery3d.exif.ExifInterface;
import org.json.JSONObject;

/* loaded from: classes.dex */
class CheckForUpdatesRequest extends AbstractSpiCall {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String HEADER_BETA_TOKEN = "X-CRASHLYTICS-BETA-TOKEN";
    static final String INSTANCE = "instance";
    static final String SDK_ANDROID_DIR_TOKEN_TYPE = "3";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    static String createBetaTokenHeaderValueFor(String betaDeviceToken) {
        return "3:" + betaDeviceToken;
    }

    public CheckForUpdatesRequest(Kit kit, String protocolAndHostOverride, String url, HttpRequestFactory requestFactory, CheckForUpdatesResponseTransform responseTransform) {
        super(kit, protocolAndHostOverride, url, requestFactory, HttpMethod.GET);
        this.responseTransform = responseTransform;
    }

    public CheckForUpdatesResponse invoke(String apiKey, String betaDeviceToken, BuildProperties buildProps) {
        HttpRequest httpRequest = null;
        try {
            try {
                Map<String, String> queryParams = getQueryParamsFor(buildProps);
                httpRequest = applyHeadersTo(getHttpRequest(queryParams), apiKey, betaDeviceToken);
                Fabric.getLogger().d(Beta.TAG, "Checking for updates from " + getUrl());
                Fabric.getLogger().d(Beta.TAG, "Checking for updates query params are: " + queryParams);
            } catch (Exception e) {
                Fabric.getLogger().e(Beta.TAG, "Error while checking for updates from " + getUrl(), e);
                if (httpRequest != null) {
                    String requestId = httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID);
                    Fabric.getLogger().d(Fabric.TAG, "Checking for updates request ID: " + requestId);
                }
            }
            if (httpRequest.ok()) {
                Fabric.getLogger().d(Beta.TAG, "Checking for updates was successful");
                JSONObject responseJson = new JSONObject(httpRequest.body());
                CheckForUpdatesResponse fromJson = this.responseTransform.fromJson(responseJson);
            }
            Fabric.getLogger().e(Beta.TAG, "Checking for updates failed. Response code: " + httpRequest.code());
            if (httpRequest != null) {
                String requestId2 = httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID);
                Fabric.getLogger().d(Fabric.TAG, "Checking for updates request ID: " + requestId2);
            }
            return null;
        } finally {
            if (httpRequest != null) {
                String requestId3 = httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID);
                Fabric.getLogger().d(Fabric.TAG, "Checking for updates request ID: " + requestId3);
            }
        }
    }

    private HttpRequest applyHeadersTo(HttpRequest request, String apiKey, String betaDeviceToken) {
        return request.header("Accept", "application/json").header("User-Agent", AbstractSpiCall.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).header(AbstractSpiCall.HEADER_DEVELOPER_TOKEN, "470fa2b4ae81cd56ecbcda9735803434cec591fa").header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, apiKey).header(HEADER_BETA_TOKEN, createBetaTokenHeaderValueFor(betaDeviceToken));
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProps) {
        Map<String, String> queryParams = new HashMap<>();
        queryParams.put(BUILD_VERSION, buildProps.versionCode);
        queryParams.put(DISPLAY_VERSION, buildProps.versionName);
        queryParams.put(INSTANCE, buildProps.buildId);
        queryParams.put(SOURCE, ExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL);
        return queryParams;
    }
}
