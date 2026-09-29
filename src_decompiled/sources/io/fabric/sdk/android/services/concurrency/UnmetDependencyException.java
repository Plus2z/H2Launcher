package io.fabric.sdk.android.services.concurrency;

/* loaded from: classes.dex */
public class UnmetDependencyException extends RuntimeException {
    public UnmetDependencyException() {
    }

    public UnmetDependencyException(String detailMessage) {
        super(detailMessage);
    }

    public UnmetDependencyException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }

    public UnmetDependencyException(Throwable throwable) {
        super(throwable);
    }
}
