package com.crashlytics.android.core;

/* loaded from: classes.dex */
interface StackTraceTrimmingStrategy {
    StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr);
}
