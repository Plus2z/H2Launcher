package io.fabric.sdk.android.services.persistence;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class PreferenceStoreStrategy<T> implements PersistenceStrategy<T> {
    private final String key;
    private final SerializationStrategy<T> serializer;
    private final PreferenceStore store;

    public PreferenceStoreStrategy(PreferenceStore store, SerializationStrategy<T> serializer, String preferenceKey) {
        this.store = store;
        this.serializer = serializer;
        this.key = preferenceKey;
    }

    @Override // io.fabric.sdk.android.services.persistence.PersistenceStrategy
    @SuppressLint({"CommitPrefEdits"})
    public void save(T object) {
        this.store.save(this.store.edit().putString(this.key, this.serializer.serialize(object)));
    }

    @Override // io.fabric.sdk.android.services.persistence.PersistenceStrategy
    public T restore() {
        SharedPreferences store = this.store.get();
        return this.serializer.deserialize(store.getString(this.key, null));
    }

    @Override // io.fabric.sdk.android.services.persistence.PersistenceStrategy
    @SuppressLint({"CommitPrefEdits"})
    public void clear() {
        this.store.edit().remove(this.key).commit();
    }
}
