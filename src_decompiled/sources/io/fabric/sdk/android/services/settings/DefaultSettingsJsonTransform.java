package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DefaultSettingsJsonTransform implements SettingsJsonTransform {
    @Override // io.fabric.sdk.android.services.settings.SettingsJsonTransform
    public SettingsData buildFromJson(CurrentTimeProvider currentTimeProvider, JSONObject json) throws JSONException {
        int settingsVersion = json.optInt(SettingsJsonConstants.SETTINGS_VERSION, 0);
        int cacheDuration = json.optInt(SettingsJsonConstants.CACHE_DURATION_KEY, 3600);
        AppSettingsData appData = buildAppDataFrom(json.getJSONObject("app"));
        SessionSettingsData settingsData = buildSessionDataFrom(json.getJSONObject(SettingsJsonConstants.SESSION_KEY));
        PromptSettingsData promptData = buildPromptDataFrom(json.getJSONObject(SettingsJsonConstants.PROMPT_KEY));
        FeaturesSettingsData featureData = buildFeaturesSessionDataFrom(json.getJSONObject(SettingsJsonConstants.FEATURES_KEY));
        AnalyticsSettingsData analyticsData = buildAnalyticsSessionDataFrom(json.getJSONObject(SettingsJsonConstants.ANALYTICS_KEY));
        BetaSettingsData betaData = buildBetaSettingsDataFrom(json.getJSONObject("beta"));
        long expiresAtMillis = getExpiresAtFrom(currentTimeProvider, cacheDuration, json);
        return new SettingsData(expiresAtMillis, appData, settingsData, promptData, featureData, analyticsData, betaData, settingsVersion, cacheDuration);
    }

    @Override // io.fabric.sdk.android.services.settings.SettingsJsonTransform
    public JSONObject toJson(SettingsData settingsData) throws JSONException {
        return new JSONObject().put(SettingsJsonConstants.EXPIRES_AT_KEY, settingsData.expiresAtMillis).put(SettingsJsonConstants.CACHE_DURATION_KEY, settingsData.cacheDuration).put(SettingsJsonConstants.SETTINGS_VERSION, settingsData.settingsVersion).put(SettingsJsonConstants.FEATURES_KEY, toFeaturesJson(settingsData.featuresData)).put(SettingsJsonConstants.ANALYTICS_KEY, toAnalyticsJson(settingsData.analyticsSettingsData)).put("beta", toBetaJson(settingsData.betaSettingsData)).put("app", toAppJson(settingsData.appData)).put(SettingsJsonConstants.SESSION_KEY, toSessionJson(settingsData.sessionData)).put(SettingsJsonConstants.PROMPT_KEY, toPromptJson(settingsData.promptData));
    }

    private AppSettingsData buildAppDataFrom(JSONObject json) throws JSONException {
        String identifier = json.getString(SettingsJsonConstants.APP_IDENTIFIER_KEY);
        String status = json.getString("status");
        String url = json.getString("url");
        String reportsUrl = json.getString(SettingsJsonConstants.APP_REPORTS_URL_KEY);
        String ndkReportsUrl = json.getString(SettingsJsonConstants.APP_NDK_REPORTS_URL_KEY);
        boolean updateRequired = json.optBoolean(SettingsJsonConstants.APP_UPDATE_REQUIRED_KEY, false);
        AppIconSettingsData icon = null;
        if (json.has("icon") && json.getJSONObject("icon").has(SettingsJsonConstants.ICON_HASH_KEY)) {
            icon = buildIconDataFrom(json.getJSONObject("icon"));
        }
        return new AppSettingsData(identifier, status, url, reportsUrl, ndkReportsUrl, updateRequired, icon);
    }

    private AppIconSettingsData buildIconDataFrom(JSONObject iconJson) throws JSONException {
        String hash = iconJson.getString(SettingsJsonConstants.ICON_HASH_KEY);
        int width = iconJson.getInt(SettingsJsonConstants.ICON_WIDTH_KEY);
        int height = iconJson.getInt(SettingsJsonConstants.ICON_HEIGHT_KEY);
        return new AppIconSettingsData(hash, width, height);
    }

    private FeaturesSettingsData buildFeaturesSessionDataFrom(JSONObject json) {
        boolean promptEnabled = json.optBoolean(SettingsJsonConstants.FEATURES_PROMPT_ENABLED_KEY, false);
        boolean collectLoggedExceptions = json.optBoolean(SettingsJsonConstants.FEATURES_COLLECT_LOGGED_EXCEPTIONS_KEY, true);
        boolean collectReports = json.optBoolean(SettingsJsonConstants.FEATURES_COLLECT_REPORTS_KEY, true);
        boolean collectAnalytics = json.optBoolean(SettingsJsonConstants.FEATURES_COLLECT_ANALYTICS_KEY, false);
        boolean firebaseCrashlyticsEnabled = json.optBoolean(SettingsJsonConstants.FEATURES_FIREBASE_CRASHLYTICS_ENABLED_KEY, false);
        return new FeaturesSettingsData(promptEnabled, collectLoggedExceptions, collectReports, collectAnalytics, firebaseCrashlyticsEnabled);
    }

    private AnalyticsSettingsData buildAnalyticsSessionDataFrom(JSONObject json) {
        String url = json.optString("url", SettingsJsonConstants.ANALYTICS_URL_DEFAULT);
        int flushSecs = json.optInt(SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_KEY, SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT);
        int maxByteSizePerFile = json.optInt(SettingsJsonConstants.ANALYTICS_MAX_BYTE_SIZE_PER_FILE_KEY, 8000);
        int maxFileCountPerSend = json.optInt(SettingsJsonConstants.ANALYTICS_MAX_FILE_COUNT_PER_SEND_KEY, 1);
        int maxPendingSendFileCount = json.optInt(SettingsJsonConstants.ANALYTICS_MAX_PENDING_SEND_FILE_COUNT_KEY, 100);
        boolean googleAnalyticsEventWritingEnabled = json.optBoolean(SettingsJsonConstants.ANALYTICS_FORWARD_TO_GOOGLE_ANALYTICS_KEY, false);
        boolean includePurchaseEventsInForwardedEvents = json.optBoolean(SettingsJsonConstants.ANALYTICS_INCLUDE_PURCHASE_EVENTS_IN_FORWARDED_EVENTS_KEY, false);
        boolean trackCustomEvents = json.optBoolean(SettingsJsonConstants.ANALYTICS_TRACK_CUSTOM_EVENTS_KEY, true);
        boolean trackPredefinedEvents = json.optBoolean(SettingsJsonConstants.ANALYTICS_TRACK_PREDEFINED_EVENTS_KEY, true);
        int samplingRate = json.optInt(SettingsJsonConstants.ANALYTICS_SAMPLING_RATE_KEY, 1);
        boolean flushOnBackground = json.optBoolean(SettingsJsonConstants.ANALYTICS_FLUSH_ON_BACKGROUND_KEY, true);
        return new AnalyticsSettingsData(url, flushSecs, maxByteSizePerFile, maxFileCountPerSend, maxPendingSendFileCount, googleAnalyticsEventWritingEnabled, includePurchaseEventsInForwardedEvents, trackCustomEvents, trackPredefinedEvents, samplingRate, flushOnBackground);
    }

    private SessionSettingsData buildSessionDataFrom(JSONObject json) throws JSONException {
        int logBufferSize = json.optInt(SettingsJsonConstants.SETTINGS_LOG_BUFFER_SIZE_KEY, SettingsJsonConstants.SETTINGS_LOG_BUFFER_SIZE_DEFAULT);
        int maxChainedExceptionDepth = json.optInt(SettingsJsonConstants.SETTINGS_MAX_CHAINED_EXCEPTION_DEPTH_KEY, 8);
        int maxCustomExceptionEvents = json.optInt(SettingsJsonConstants.SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_KEY, 64);
        int maxCustomKeyValuePairs = json.optInt(SettingsJsonConstants.SETTINGS_MAX_CUSTOM_KEY_VALUE_PAIRS_KEY, 64);
        int identifierMask = json.optInt(SettingsJsonConstants.SETTINGS_IDENTIFIER_MASK_KEY, 255);
        boolean sendSessionWithoutCrash = json.optBoolean(SettingsJsonConstants.SETTINGS_SEND_SESSION_WITHOUT_CRASH_KEY, false);
        int maxCompleteSessionsCount = json.optInt(SettingsJsonConstants.SETTINGS_MAX_COMPLETE_SESSIONS_COUNT_KEY, 4);
        return new SessionSettingsData(logBufferSize, maxChainedExceptionDepth, maxCustomExceptionEvents, maxCustomKeyValuePairs, identifierMask, sendSessionWithoutCrash, maxCompleteSessionsCount);
    }

    private PromptSettingsData buildPromptDataFrom(JSONObject json) throws JSONException {
        String title = json.optString("title", SettingsJsonConstants.PROMPT_TITLE_DEFAULT);
        String message = json.optString("message", SettingsJsonConstants.PROMPT_MESSAGE_DEFAULT);
        String sendButtonTitle = json.optString(SettingsJsonConstants.PROMPT_SEND_BUTTON_TITLE_KEY, SettingsJsonConstants.PROMPT_SEND_BUTTON_TITLE_DEFAULT);
        boolean showCancelButton = json.optBoolean(SettingsJsonConstants.PROMPT_SHOW_CANCEL_BUTTON_KEY, true);
        String cancelButtonTitle = json.optString(SettingsJsonConstants.PROMPT_CANCEL_BUTTON_TITLE_KEY, SettingsJsonConstants.PROMPT_CANCEL_BUTTON_TITLE_DEFAULT);
        boolean showAlwaysSendButton = json.optBoolean(SettingsJsonConstants.PROMPT_SHOW_ALWAYS_SEND_BUTTON_KEY, true);
        String alwaysSendButtonTitle = json.optString(SettingsJsonConstants.PROMPT_ALWAYS_SEND_BUTTON_TITLE_KEY, SettingsJsonConstants.PROMPT_ALWAYS_SEND_BUTTON_TITLE_DEFAULT);
        return new PromptSettingsData(title, message, sendButtonTitle, showCancelButton, cancelButtonTitle, showAlwaysSendButton, alwaysSendButtonTitle);
    }

    private BetaSettingsData buildBetaSettingsDataFrom(JSONObject json) throws JSONException {
        String updateUrl = json.optString(SettingsJsonConstants.BETA_UPDATE_ENDPOINT, SettingsJsonConstants.BETA_UPDATE_ENDPOINT_DEFAULT);
        int updateSuspendDurationSeconds = json.optInt(SettingsJsonConstants.BETA_UPDATE_SUSPEND_DURATION, 3600);
        return new BetaSettingsData(updateUrl, updateSuspendDurationSeconds);
    }

    private long getExpiresAtFrom(CurrentTimeProvider currentTimeProvider, long cacheDurationSeconds, JSONObject json) throws JSONException {
        if (json.has(SettingsJsonConstants.EXPIRES_AT_KEY)) {
            long expiresAtMillis = json.getLong(SettingsJsonConstants.EXPIRES_AT_KEY);
            return expiresAtMillis;
        }
        long currentTimeMillis = currentTimeProvider.getCurrentTimeMillis();
        long expiresAtMillis2 = currentTimeMillis + (1000 * cacheDurationSeconds);
        return expiresAtMillis2;
    }

    private JSONObject toAppJson(AppSettingsData appData) throws JSONException {
        JSONObject json = new JSONObject().put(SettingsJsonConstants.APP_IDENTIFIER_KEY, appData.identifier).put("status", appData.status).put("url", appData.url).put(SettingsJsonConstants.APP_REPORTS_URL_KEY, appData.reportsUrl).put(SettingsJsonConstants.APP_NDK_REPORTS_URL_KEY, appData.ndkReportsUrl).put(SettingsJsonConstants.APP_UPDATE_REQUIRED_KEY, appData.updateRequired);
        if (appData.icon != null) {
            json.put("icon", toIconJson(appData.icon));
        }
        return json;
    }

    private JSONObject toIconJson(AppIconSettingsData icon) throws JSONException {
        return new JSONObject().put(SettingsJsonConstants.ICON_HASH_KEY, icon.hash).put(SettingsJsonConstants.ICON_WIDTH_KEY, icon.width).put(SettingsJsonConstants.ICON_HEIGHT_KEY, icon.height);
    }

    private JSONObject toFeaturesJson(FeaturesSettingsData features) throws JSONException {
        return new JSONObject().put(SettingsJsonConstants.FEATURES_COLLECT_LOGGED_EXCEPTIONS_KEY, features.collectLoggedException).put(SettingsJsonConstants.FEATURES_COLLECT_REPORTS_KEY, features.collectReports).put(SettingsJsonConstants.FEATURES_COLLECT_ANALYTICS_KEY, features.collectAnalytics);
    }

    private JSONObject toSessionJson(SessionSettingsData data) throws JSONException {
        return new JSONObject().put(SettingsJsonConstants.SETTINGS_LOG_BUFFER_SIZE_KEY, data.logBufferSize).put(SettingsJsonConstants.SETTINGS_MAX_CHAINED_EXCEPTION_DEPTH_KEY, data.maxChainedExceptionDepth).put(SettingsJsonConstants.SETTINGS_MAX_CUSTOM_EXCEPTION_EVENTS_KEY, data.maxCustomExceptionEvents).put(SettingsJsonConstants.SETTINGS_MAX_CUSTOM_KEY_VALUE_PAIRS_KEY, data.maxCustomKeyValuePairs).put(SettingsJsonConstants.SETTINGS_IDENTIFIER_MASK_KEY, data.identifierMask).put(SettingsJsonConstants.SETTINGS_SEND_SESSION_WITHOUT_CRASH_KEY, data.sendSessionWithoutCrash);
    }

    private JSONObject toAnalyticsJson(AnalyticsSettingsData data) throws JSONException {
        return new JSONObject().put("url", data.analyticsURL).put(SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_KEY, data.flushIntervalSeconds).put(SettingsJsonConstants.ANALYTICS_MAX_BYTE_SIZE_PER_FILE_KEY, data.maxByteSizePerFile).put(SettingsJsonConstants.ANALYTICS_MAX_FILE_COUNT_PER_SEND_KEY, data.maxFileCountPerSend).put(SettingsJsonConstants.ANALYTICS_MAX_PENDING_SEND_FILE_COUNT_KEY, data.maxPendingSendFileCount);
    }

    private JSONObject toBetaJson(BetaSettingsData data) throws JSONException {
        return new JSONObject().put(SettingsJsonConstants.BETA_UPDATE_ENDPOINT, data.updateUrl).put(SettingsJsonConstants.BETA_UPDATE_SUSPEND_DURATION, data.updateSuspendDurationSeconds);
    }

    private JSONObject toPromptJson(PromptSettingsData data) throws JSONException {
        return new JSONObject().put("title", data.title).put("message", data.message).put(SettingsJsonConstants.PROMPT_SEND_BUTTON_TITLE_KEY, data.sendButtonTitle).put(SettingsJsonConstants.PROMPT_SHOW_CANCEL_BUTTON_KEY, data.showCancelButton).put(SettingsJsonConstants.PROMPT_CANCEL_BUTTON_TITLE_KEY, data.cancelButtonTitle).put(SettingsJsonConstants.PROMPT_SHOW_ALWAYS_SEND_BUTTON_KEY, data.showAlwaysSendButton).put(SettingsJsonConstants.PROMPT_ALWAYS_SEND_BUTTON_TITLE_KEY, data.alwaysSendButtonTitle);
    }
}
