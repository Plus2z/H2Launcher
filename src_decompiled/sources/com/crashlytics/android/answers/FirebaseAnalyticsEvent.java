package com.crashlytics.android.answers;

import android.os.Bundle;

/* loaded from: classes.dex */
public class FirebaseAnalyticsEvent {
    private final String eventName;
    private final Bundle eventParams;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseAnalyticsEvent(String eventName, Bundle eventParams) {
        this.eventName = eventName;
        this.eventParams = eventParams;
    }

    public String getEventName() {
        return this.eventName;
    }

    public Bundle getEventParams() {
        return this.eventParams;
    }
}
