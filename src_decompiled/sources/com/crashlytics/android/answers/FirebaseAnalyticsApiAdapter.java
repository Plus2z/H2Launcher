package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.Fabric;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FirebaseAnalyticsApiAdapter {
    private final Context context;
    private EventLogger eventLogger;
    private final FirebaseAnalyticsEventMapper eventMapper;

    public FirebaseAnalyticsApiAdapter(Context context) {
        this(context, new FirebaseAnalyticsEventMapper());
    }

    public FirebaseAnalyticsApiAdapter(Context context, FirebaseAnalyticsEventMapper eventMapper) {
        this.context = context;
        this.eventMapper = eventMapper;
    }

    public EventLogger getFirebaseAnalytics() {
        if (this.eventLogger == null) {
            this.eventLogger = AppMeasurementEventLogger.getEventLogger(this.context);
        }
        return this.eventLogger;
    }

    public void processEvent(SessionEvent sessionEvent) {
        EventLogger eventLogger = getFirebaseAnalytics();
        if (eventLogger == null) {
            Fabric.getLogger().d(Answers.TAG, "Firebase analytics logging was enabled, but not available...");
            return;
        }
        FirebaseAnalyticsEvent mappedEvent = this.eventMapper.mapEvent(sessionEvent);
        if (mappedEvent == null) {
            Fabric.getLogger().d(Answers.TAG, "Fabric event was not mappable to Firebase event: " + sessionEvent);
            return;
        }
        eventLogger.logEvent(mappedEvent.getEventName(), mappedEvent.getEventParams());
        if ("levelEnd".equals(sessionEvent.predefinedType)) {
            eventLogger.logEvent("post_score", mappedEvent.getEventParams());
        }
    }
}
