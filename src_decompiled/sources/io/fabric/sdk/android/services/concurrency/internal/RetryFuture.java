package io.fabric.sdk.android.services.concurrency.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
class RetryFuture<T> extends AbstractFuture<T> implements Runnable {
    private final RetryThreadPoolExecutor executor;
    RetryState retryState;
    private final AtomicReference<Thread> runner = new AtomicReference<>();
    private final Callable<T> task;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RetryFuture(Callable<T> task, RetryState retryState, RetryThreadPoolExecutor executor) {
        this.task = task;
        this.retryState = retryState;
        this.executor = executor;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!isDone()) {
            try {
                if (this.runner.compareAndSet(null, Thread.currentThread())) {
                    T result = this.task.call();
                    set(result);
                }
            } catch (Throwable exception) {
                if (getRetryPolicy().shouldRetry(getRetryCount(), exception)) {
                    long delay = getBackoff().getDelayMillis(getRetryCount());
                    this.retryState = this.retryState.nextRetryState();
                    this.executor.schedule(this, delay, TimeUnit.MILLISECONDS);
                } else {
                    setException(exception);
                }
            } finally {
                this.runner.getAndSet(null);
            }
        }
    }

    private RetryPolicy getRetryPolicy() {
        return this.retryState.getRetryPolicy();
    }

    private Backoff getBackoff() {
        return this.retryState.getBackoff();
    }

    private int getRetryCount() {
        return this.retryState.getRetryCount();
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.AbstractFuture
    protected void interruptTask() {
        Thread thread = this.runner.getAndSet(null);
        if (thread != null) {
            thread.interrupt();
        }
    }
}
