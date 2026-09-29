package io.fabric.sdk.android;

/* loaded from: classes.dex */
public class SilentLogger implements Logger {
    private int logLevel = 7;

    @Override // io.fabric.sdk.android.Logger
    public boolean isLoggable(String tag, int level) {
        return false;
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String tag, String text, Throwable throwable) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String tag, String text, Throwable throwable) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String tag, String text, Throwable throwable) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String tag, String text, Throwable throwable) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String tag, String text, Throwable throwable) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void d(String tag, String text) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void v(String tag, String text) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void i(String tag, String text) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void w(String tag, String text) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void e(String tag, String text) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int priority, String tag, String msg) {
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int priority, String tag, String msg, boolean forceLog) {
    }

    @Override // io.fabric.sdk.android.Logger
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // io.fabric.sdk.android.Logger
    public void setLogLevel(int logLevel) {
    }
}
