package com.crashlytics.android.answers;

import android.app.Activity;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
final class SessionEvent {
    static final String ACTIVITY_KEY = "activity";
    static final String EXCEPTION_NAME_KEY = "exceptionName";
    static final String INSTALLED_AT_KEY = "installedAt";
    static final String SESSION_ID_KEY = "sessionId";
    public final Map<String, Object> customAttributes;
    public final String customType;
    public final Map<String, String> details;
    public final Map<String, Object> predefinedAttributes;
    public final String predefinedType;
    public final SessionEventMetadata sessionEventMetadata;
    private String stringRepresentation;
    public final long timestamp;
    public final Type type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum Type {
        START,
        RESUME,
        PAUSE,
        STOP,
        CRASH,
        INSTALL,
        CUSTOM,
        PREDEFINED
    }

    public static Builder lifecycleEventBuilder(Type type, Activity activity) {
        Map<String, String> details = Collections.singletonMap(ACTIVITY_KEY, activity.getClass().getName());
        return new Builder(type).details(details);
    }

    public static Builder installEventBuilder(long installedAt) {
        return new Builder(Type.INSTALL).details(Collections.singletonMap(INSTALLED_AT_KEY, String.valueOf(installedAt)));
    }

    public static Builder crashEventBuilder(String sessionId) {
        Map<String, String> details = Collections.singletonMap(SESSION_ID_KEY, sessionId);
        return new Builder(Type.CRASH).details(details);
    }

    public static Builder crashEventBuilder(String sessionId, String exceptionName) {
        return crashEventBuilder(sessionId).customAttributes(Collections.singletonMap(EXCEPTION_NAME_KEY, exceptionName));
    }

    public static Builder customEventBuilder(CustomEvent event) {
        return new Builder(Type.CUSTOM).customType(event.getCustomType()).customAttributes(event.getCustomAttributes());
    }

    public static Builder predefinedEventBuilder(PredefinedEvent<?> event) {
        return new Builder(Type.PREDEFINED).predefinedType(event.getPredefinedType()).predefinedAttributes(event.getPredefinedAttributes()).customAttributes(event.getCustomAttributes());
    }

    private SessionEvent(SessionEventMetadata sessionEventMetadata, long timestamp, Type type, Map<String, String> details, String customType, Map<String, Object> customAttributes, String predefinedType, Map<String, Object> predefinedAttributes) {
        this.sessionEventMetadata = sessionEventMetadata;
        this.timestamp = timestamp;
        this.type = type;
        this.details = details;
        this.customType = customType;
        this.customAttributes = customAttributes;
        this.predefinedType = predefinedType;
        this.predefinedAttributes = predefinedAttributes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Builder {
        final Type type;
        final long timestamp = System.currentTimeMillis();
        Map<String, String> details = null;
        String customType = null;
        Map<String, Object> customAttributes = null;
        String predefinedType = null;
        Map<String, Object> predefinedAttributes = null;

        public Builder(Type type) {
            this.type = type;
        }

        public Builder details(Map<String, String> details) {
            this.details = details;
            return this;
        }

        public Builder customType(String customType) {
            this.customType = customType;
            return this;
        }

        public Builder customAttributes(Map<String, Object> customAttributes) {
            this.customAttributes = customAttributes;
            return this;
        }

        public Builder predefinedType(String predefinedType) {
            this.predefinedType = predefinedType;
            return this;
        }

        public Builder predefinedAttributes(Map<String, Object> predefinedAttributes) {
            this.predefinedAttributes = predefinedAttributes;
            return this;
        }

        public SessionEvent build(SessionEventMetadata sessionEventMetadata) {
            return new SessionEvent(sessionEventMetadata, this.timestamp, this.type, this.details, this.customType, this.customAttributes, this.predefinedType, this.predefinedAttributes);
        }
    }

    public String toString() {
        if (this.stringRepresentation == null) {
            StringBuilder sb = new StringBuilder().append("[").append(getClass().getSimpleName()).append(": ").append("timestamp=").append(this.timestamp).append(", type=").append(this.type).append(", details=").append(this.details).append(", customType=").append(this.customType).append(", customAttributes=").append(this.customAttributes).append(", predefinedType=").append(this.predefinedType).append(", predefinedAttributes=").append(this.predefinedAttributes).append(", metadata=[").append(this.sessionEventMetadata).append("]]");
            this.stringRepresentation = sb.toString();
        }
        return this.stringRepresentation;
    }
}
