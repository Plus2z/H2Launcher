package android.support.v4.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v4.app.RemoteInputCompatBase;
import java.util.HashMap;
import java.util.Map;

@RequiresApi(20)
/* loaded from: classes.dex */
class RemoteInputCompatApi20 {
    private static final String EXTRA_DATA_TYPE_RESULTS_DATA = "android.remoteinput.dataTypeResultsData";

    RemoteInputCompatApi20() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RemoteInputCompatBase.RemoteInput[] toCompat(android.app.RemoteInput[] srcArray, RemoteInputCompatBase.RemoteInput.Factory factory) {
        if (srcArray == null) {
            return null;
        }
        RemoteInputCompatBase.RemoteInput[] result = factory.newArray(srcArray.length);
        for (int i = 0; i < srcArray.length; i++) {
            android.app.RemoteInput src = srcArray[i];
            result[i] = factory.build(src.getResultKey(), src.getLabel(), src.getChoices(), src.getAllowFreeFormInput(), src.getExtras(), null);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static android.app.RemoteInput[] fromCompat(RemoteInputCompatBase.RemoteInput[] srcArray) {
        if (srcArray == null) {
            return null;
        }
        android.app.RemoteInput[] result = new android.app.RemoteInput[srcArray.length];
        for (int i = 0; i < srcArray.length; i++) {
            RemoteInputCompatBase.RemoteInput src = srcArray[i];
            result[i] = new RemoteInput.Builder(src.getResultKey()).setLabel(src.getLabel()).setChoices(src.getChoices()).setAllowFreeFormInput(src.getAllowFreeFormInput()).addExtras(src.getExtras()).build();
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle getResultsFromIntent(Intent intent) {
        return android.app.RemoteInput.getResultsFromIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Uri> getDataResultsFromIntent(Intent intent, String remoteInputResultKey) {
        String mimeType;
        Intent clipDataIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntent == null) {
            return null;
        }
        Map<String, Uri> results = new HashMap<>();
        Bundle extras = clipDataIntent.getExtras();
        for (String key : extras.keySet()) {
            if (key.startsWith(EXTRA_DATA_TYPE_RESULTS_DATA) && (mimeType = key.substring(EXTRA_DATA_TYPE_RESULTS_DATA.length())) != null && !mimeType.isEmpty()) {
                Bundle bundle = clipDataIntent.getBundleExtra(key);
                String uriStr = bundle.getString(remoteInputResultKey);
                if (uriStr != null && !uriStr.isEmpty()) {
                    results.put(mimeType, Uri.parse(uriStr));
                }
            }
        }
        if (results.isEmpty()) {
            results = null;
        }
        return results;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] remoteInputs, Intent intent, Bundle results) {
        Bundle existingTextResults = getResultsFromIntent(intent);
        if (existingTextResults == null) {
            existingTextResults = results;
        } else {
            existingTextResults.putAll(results);
        }
        for (RemoteInputCompatBase.RemoteInput input : remoteInputs) {
            Map<String, Uri> existingDataResults = getDataResultsFromIntent(intent, input.getResultKey());
            RemoteInputCompatBase.RemoteInput[] arr = {input};
            android.app.RemoteInput.addResultsToIntent(fromCompat(arr), intent, existingTextResults);
            if (existingDataResults != null) {
                addDataResultToIntent(input, intent, existingDataResults);
            }
        }
    }

    public static void addDataResultToIntent(RemoteInputCompatBase.RemoteInput remoteInput, Intent intent, Map<String, Uri> results) {
        Intent clipDataIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntent == null) {
            clipDataIntent = new Intent();
        }
        for (Map.Entry<String, Uri> entry : results.entrySet()) {
            String mimeType = entry.getKey();
            Uri uri = entry.getValue();
            if (mimeType != null) {
                Bundle resultsBundle = clipDataIntent.getBundleExtra(getExtraResultsKeyForData(mimeType));
                if (resultsBundle == null) {
                    resultsBundle = new Bundle();
                }
                resultsBundle.putString(remoteInput.getResultKey(), uri.toString());
                clipDataIntent.putExtra(getExtraResultsKeyForData(mimeType), resultsBundle);
            }
        }
        intent.setClipData(ClipData.newIntent("android.remoteinput.results", clipDataIntent));
    }

    private static String getExtraResultsKeyForData(String mimeType) {
        return EXTRA_DATA_TYPE_RESULTS_DATA + mimeType;
    }

    private static Intent getClipDataIntentFromIntent(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription clipDescription = clipData.getDescription();
        if (clipDescription.hasMimeType("text/vnd.android.intent") && clipDescription.getLabel().equals("android.remoteinput.results")) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }
}
