package io.fabric.sdk.android.services.concurrency.internal;

/* loaded from: classes.dex */
public class ExponentialBackoff implements Backoff {
    private static final int DEFAULT_POWER = 2;
    private final long baseTimeMillis;
    private final int power;

    public ExponentialBackoff(long baseTimeMillis) {
        this(baseTimeMillis, 2);
    }

    public ExponentialBackoff(long baseTimeMillis, int power) {
        this.baseTimeMillis = baseTimeMillis;
        this.power = power;
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.Backoff
    public long getDelayMillis(int retries) {
        return (long) (this.baseTimeMillis * Math.pow(this.power, retries));
    }
}
