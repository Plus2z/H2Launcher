package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;
import io.fabric.sdk.android.Fabric;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class DefaultAppMeasurementEventListenerRegistrar implements AppMeasurementEventListenerRegistrar {
    private static final String ANALYTIC_CLASS = "com.google.android.gms.measurement.AppMeasurement";
    private static final String ANALYTIC_CLASS_ON_EVENT_LISTENER = "com.google.android.gms.measurement.AppMeasurement$OnEventListener";
    private static final String CRASH_ORIGIN = "crash";
    private static final String GET_INSTANCE_METHOD = "getInstance";
    private static final String NAME = "name";
    private static final String PARAMETERS = "parameters";
    private static final String REGISTER_METHOD = "registerOnMeasurementEventListener";
    private final CrashlyticsCore crashlyticsCore;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AppMeasurementEventListenerRegistrar instanceFrom(CrashlyticsCore crashlyticsCore) {
        return new DefaultAppMeasurementEventListenerRegistrar(crashlyticsCore);
    }

    private DefaultAppMeasurementEventListenerRegistrar(CrashlyticsCore crashlyticsCore) {
        this.crashlyticsCore = crashlyticsCore;
    }

    @Override // com.crashlytics.android.core.AppMeasurementEventListenerRegistrar
    public boolean register() {
        Class appMeasurementClass = getClass(ANALYTIC_CLASS);
        Object appMeasurementInstance = getInstance(appMeasurementClass);
        return invoke(appMeasurementClass, appMeasurementInstance, REGISTER_METHOD);
    }

    private Class<?> getClass(String clazz) {
        try {
            return this.crashlyticsCore.getContext().getClassLoader().loadClass(clazz);
        } catch (Exception e) {
            return null;
        }
    }

    private Object getInstance(Class<?> instanceClass) {
        try {
            Method getInstanceMethod = instanceClass.getDeclaredMethod(GET_INSTANCE_METHOD, Context.class);
            return getInstanceMethod.invoke(instanceClass, this.crashlyticsCore.getContext());
        } catch (Exception e) {
            Fabric.getLogger().i(CrashlyticsCore.TAG, "Firebase Analytics not present");
            return null;
        }
    }

    private boolean invoke(Class<?> appMeasurementClass, Object appMeasurementInstance, String registerOnMeasurementEventListener) {
        Class<?> onEventListenerClass = getClass(ANALYTIC_CLASS_ON_EVENT_LISTENER);
        try {
            Method method = appMeasurementClass.getDeclaredMethod(registerOnMeasurementEventListener, onEventListenerClass);
            method.invoke(appMeasurementInstance, onEventListenerProxy(onEventListenerClass));
            return true;
        } catch (IllegalAccessException e) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Expected method missing: " + registerOnMeasurementEventListener, e);
            return false;
        } catch (NoSuchMethodException e2) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Expected method missing: " + registerOnMeasurementEventListener, e2);
            return false;
        } catch (InvocationTargetException e3) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Expected method missing: " + registerOnMeasurementEventListener, e3);
            return false;
        }
    }

    private Object onEventListenerProxy(Class appMeasurementEventListenerClass) {
        return Proxy.newProxyInstance(this.crashlyticsCore.getContext().getClassLoader(), new Class[]{appMeasurementEventListenerClass}, new InvocationHandler() { // from class: com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                if (args.length != 4) {
                    throw new RuntimeException("Unexpected AppMeasurement.OnEventListener signature");
                }
                String origin = (String) args[0];
                String name = (String) args[1];
                Bundle params = (Bundle) args[2];
                if (origin != null && !origin.equals(DefaultAppMeasurementEventListenerRegistrar.CRASH_ORIGIN)) {
                    DefaultAppMeasurementEventListenerRegistrar.writeEventToUserLog(DefaultAppMeasurementEventListenerRegistrar.this.crashlyticsCore, name, params);
                    return null;
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeEventToUserLog(CrashlyticsCore crashlyticsCore, String name, Bundle params) {
        try {
            crashlyticsCore.log("$A$:" + serializeEvent(name, params));
        } catch (JSONException e) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Unable to serialize Firebase Analytics event; " + name);
        }
    }

    private static String serializeEvent(String name, Bundle params) throws JSONException {
        JSONObject enclosingObject = new JSONObject();
        JSONObject paramsObject = new JSONObject();
        for (String key : params.keySet()) {
            paramsObject.put(key, params.get(key));
        }
        enclosingObject.put("name", name);
        enclosingObject.put(PARAMETERS, paramsObject);
        return enclosingObject.toString();
    }
}
