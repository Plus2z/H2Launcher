package io.fabric.sdk.android.services.persistence;

/* loaded from: classes.dex */
public interface PersistenceStrategy<T> {
    void clear();

    T restore();

    void save(T t);
}
