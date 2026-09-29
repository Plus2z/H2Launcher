package io.fabric.sdk.android.services.events;

/* loaded from: classes.dex */
public interface EventsManager<T> {
    void deleteAllEvents();

    void recordEvent(T t);

    void sendEvents();
}
