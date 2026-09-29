package io.fabric.sdk.android.services.concurrency.internal;

/* loaded from: classes.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    private final int maxRetries;

    public DefaultRetryPolicy() {
        this(1);
    }

    public DefaultRetryPolicy(int maxRetries) {
        this.maxRetries = maxRetries;
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.RetryPolicy
    public boolean shouldRetry(int retries, Throwable e) {
        return retries < this.maxRetries;
    }
}
