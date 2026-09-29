package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.internal.RetryState;

/* loaded from: classes.dex */
class RetryManager {
    private static final long NANOSECONDS_IN_MS = 1000000;
    long lastRetry;
    private RetryState retryState;

    public RetryManager(RetryState retryState) {
        if (retryState == null) {
            throw new NullPointerException("retryState must not be null");
        }
        this.retryState = retryState;
    }

    public boolean canRetry(long timeNanos) {
        long delayInNanos = NANOSECONDS_IN_MS * this.retryState.getRetryDelay();
        return timeNanos - this.lastRetry >= delayInNanos;
    }

    public void recordRetry(long timeNanos) {
        this.lastRetry = timeNanos;
        this.retryState = this.retryState.nextRetryState();
    }

    public void reset() {
        this.lastRetry = 0L;
        this.retryState = this.retryState.initialRetryState();
    }
}
