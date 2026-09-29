package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import io.fabric.sdk.android.services.concurrency.internal.RetryPolicy;
import io.fabric.sdk.android.services.concurrency.internal.RetryThreadPoolExecutor;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class ExecutorUtils {
    private static final long DEFAULT_TERMINATION_TIMEOUT = 2;

    private ExecutorUtils() {
    }

    public static ExecutorService buildSingleThreadExecutorService(String name) {
        ThreadFactory threadFactory = getNamedThreadFactory(name);
        ExecutorService executor = Executors.newSingleThreadExecutor(threadFactory);
        addDelayedShutdownHook(name, executor);
        return executor;
    }

    public static RetryThreadPoolExecutor buildRetryThreadPoolExecutor(String name, int corePoolSize, RetryPolicy retryPolicy, Backoff backoff) {
        ThreadFactory threadFactory = getNamedThreadFactory(name);
        RetryThreadPoolExecutor executor = new RetryThreadPoolExecutor(corePoolSize, threadFactory, retryPolicy, backoff);
        addDelayedShutdownHook(name, executor);
        return executor;
    }

    public static ScheduledExecutorService buildSingleThreadScheduledExecutorService(String name) {
        ThreadFactory threadFactory = getNamedThreadFactory(name);
        ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor(threadFactory);
        addDelayedShutdownHook(name, executor);
        return executor;
    }

    public static final ThreadFactory getNamedThreadFactory(final String threadNameTemplate) {
        final AtomicLong count = new AtomicLong(1L);
        return new ThreadFactory() { // from class: io.fabric.sdk.android.services.common.ExecutorUtils.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(final Runnable runnable) {
                Thread thread = Executors.defaultThreadFactory().newThread(new BackgroundPriorityRunnable() { // from class: io.fabric.sdk.android.services.common.ExecutorUtils.1.1
                    @Override // io.fabric.sdk.android.services.common.BackgroundPriorityRunnable
                    public void onRun() {
                        runnable.run();
                    }
                });
                thread.setName(threadNameTemplate + count.getAndIncrement());
                return thread;
            }
        };
    }

    private static final void addDelayedShutdownHook(String serviceName, ExecutorService service) {
        addDelayedShutdownHook(serviceName, service, 2L, TimeUnit.SECONDS);
    }

    public static final void addDelayedShutdownHook(final String serviceName, final ExecutorService service, final long terminationTimeout, final TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new BackgroundPriorityRunnable() { // from class: io.fabric.sdk.android.services.common.ExecutorUtils.2
            @Override // io.fabric.sdk.android.services.common.BackgroundPriorityRunnable
            public void onRun() {
                try {
                    Fabric.getLogger().d(Fabric.TAG, "Executing shutdown hook for " + serviceName);
                    service.shutdown();
                    if (!service.awaitTermination(terminationTimeout, timeUnit)) {
                        Fabric.getLogger().d(Fabric.TAG, serviceName + " did not shut down in the allocated time. Requesting immediate shutdown.");
                        service.shutdownNow();
                    }
                } catch (InterruptedException e) {
                    Fabric.getLogger().d(Fabric.TAG, String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", serviceName));
                    service.shutdownNow();
                }
            }
        }, "Crashlytics Shutdown Hook for " + serviceName));
    }
}
