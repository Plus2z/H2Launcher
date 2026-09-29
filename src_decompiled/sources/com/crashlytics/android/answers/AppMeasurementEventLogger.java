package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Bundle;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class AppMeasurementEventLogger implements EventLogger {
    private static final String ANALYTIC_CLASS = "com.google.android.gms.measurement.AppMeasurement";
    private static final String GET_INSTANCE_METHOD = "getInstance";
    private static final String LOG_METHOD = "logEventInternal";
    private final Object logEventInstance;
    private final Method logEventMethod;

    public static EventLogger getEventLogger(Context context) {
        Object instance;
        Method logEventMethod;
        Class instanceClass = getClass(context);
        if (instanceClass == null || (instance = getInstance(context, instanceClass)) == null || (logEventMethod = getLogEventMethod(context, instanceClass)) == null) {
            return null;
        }
        return new AppMeasurementEventLogger(instance, logEventMethod);
    }

    private static Class getClass(Context context) {
        try {
            return context.getClassLoader().loadClass(ANALYTIC_CLASS);
        } catch (Exception e) {
            return null;
        }
    }

    private static Object getInstance(Context context, Class instanceClass) {
        try {
            Method getInstanceMethod = instanceClass.getDeclaredMethod(GET_INSTANCE_METHOD, Context.class);
            return getInstanceMethod.invoke(instanceClass, context);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method getLogEventMethod(Context context, Class instanceClass) {
        try {
            return instanceClass.getDeclaredMethod(LOG_METHOD, String.class, String.class, Bundle.class);
        } catch (Exception e) {
            return null;
        }
    }

    public AppMeasurementEventLogger(Object logEventInstance, Method logEventMethod) {
        this.logEventInstance = logEventInstance;
        this.logEventMethod = logEventMethod;
    }

    @Override // com.crashlytics.android.answers.EventLogger
    public void logEvent(String eventName, Bundle metadata) {
        logEvent("fab", eventName, metadata);
    }

    @Override // com.crashlytics.android.answers.EventLogger
    public void logEvent(String origin, String eventName, Bundle metadata) {
        try {
            this.logEventMethod.invoke(this.logEventInstance, origin, eventName, metadata);
        } catch (Exception e) {
        }
    }
}
