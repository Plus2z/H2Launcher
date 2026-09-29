package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;

/* loaded from: classes.dex */
public interface Dependency<T> {
    void addDependency(T t);

    boolean areDependenciesMet();

    Collection<T> getDependencies();
}
