package io.fabric.sdk.android;

import android.util.Log;

/* loaded from: classes.dex */
public class DefaultLogger implements Logger {
    private int logLevel;

    public DefaultLogger(int logLevel) {
        this.logLevel = logLevel;
    }

    public DefaultLogger() {
        this.logLevel = 4;
    }

    @Override // io.fabric.sdk.android.Logger
    public boolean isLoggable(String tag, int level) {
        return this.logLevel <= level;
    }

    @Override // io.fabric.sdk.android.Logger
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // io.fabric.sdk.android.Logger
    public void setLogLevel(int logLevel) {
        this.logLevel = logLevel;
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 3)) {
            Log.d(tag, text, throwable);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 2)) {
            Log.v(tag, text, throwable);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 4)) {
            Log.i(tag, text, throwable);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 5)) {
            Log.w(tag, text, throwable);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 6)) {
            Log.e(tag, text, throwable);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String tag, String text) {
        d(tag, text, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String tag, String text) {
        v(tag, text, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String tag, String text) {
        i(tag, text, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String tag, String text) {
        w(tag, text, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String tag, String text) {
        e(tag, text, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int priority, String tag, String msg) {
        log(priority, tag, msg, false);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int priority, String tag, String msg, boolean forceLog) {
        if (forceLog || isLoggable(tag, priority)) {
            Log.println(priority, tag, msg);
        }
    }
}
