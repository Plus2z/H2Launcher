package io.fabric.sdk.android.services.concurrency;

/* loaded from: classes.dex */
public interface PriorityProvider<T> extends Comparable<T> {
    Priority getPriority();
}
