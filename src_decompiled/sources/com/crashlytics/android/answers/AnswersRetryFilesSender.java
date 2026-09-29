package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import io.fabric.sdk.android.services.concurrency.internal.DefaultRetryPolicy;
import io.fabric.sdk.android.services.concurrency.internal.ExponentialBackoff;
import io.fabric.sdk.android.services.concurrency.internal.RetryPolicy;
import io.fabric.sdk.android.services.concurrency.internal.RetryState;
import io.fabric.sdk.android.services.events.FilesSender;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
class AnswersRetryFilesSender implements FilesSender {
    private static final int BACKOFF_MS = 1000;
    private static final int BACKOFF_POWER = 8;
    private static final double JITTER_PERCENT = 0.1d;
    private static final int MAX_RETRIES = 5;
    private final SessionAnalyticsFilesSender filesSender;
    private final RetryManager retryManager;

    public static AnswersRetryFilesSender build(SessionAnalyticsFilesSender filesSender) {
        Backoff backoff = new RandomBackoff(new ExponentialBackoff(1000L, 8), JITTER_PERCENT);
        RetryPolicy retryPolicy = new DefaultRetryPolicy(5);
        RetryState retryState = new RetryState(backoff, retryPolicy);
        RetryManager retryManager = new RetryManager(retryState);
        return new AnswersRetryFilesSender(filesSender, retryManager);
    }

    AnswersRetryFilesSender(SessionAnalyticsFilesSender filesSender, RetryManager retryManager) {
        this.filesSender = filesSender;
        this.retryManager = retryManager;
    }

    @Override // io.fabric.sdk.android.services.events.FilesSender
    public boolean send(List<File> files) {
        long currentNanoTime = System.nanoTime();
        if (!this.retryManager.canRetry(currentNanoTime)) {
            return false;
        }
        boolean cleanup = this.filesSender.send(files);
        if (cleanup) {
            this.retryManager.reset();
            return true;
        }
        this.retryManager.recordRetry(currentNanoTime);
        return false;
    }
}
