package com.crashlytics.android.core;

/* loaded from: classes.dex */
class MiddleOutStrategy implements StackTraceTrimmingStrategy {
    private final int trimmedSize;

    public MiddleOutStrategy(int trimmedSize) {
        this.trimmedSize = trimmedSize;
    }

    @Override // com.crashlytics.android.core.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stacktrace) {
        if (stacktrace.length > this.trimmedSize) {
            int backHalf = this.trimmedSize / 2;
            int frontHalf = this.trimmedSize - backHalf;
            StackTraceElement[] trimmed = new StackTraceElement[this.trimmedSize];
            System.arraycopy(stacktrace, 0, trimmed, 0, frontHalf);
            System.arraycopy(stacktrace, stacktrace.length - backHalf, trimmed, frontHalf, backHalf);
            return trimmed;
        }
        return stacktrace;
    }
}
