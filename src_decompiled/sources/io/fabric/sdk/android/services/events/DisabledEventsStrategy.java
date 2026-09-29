package io.fabric.sdk.android.services.events;

/* loaded from: classes.dex */
public class DisabledEventsStrategy<T> implements EventsStrategy<T> {
    @Override // io.fabric.sdk.android.services.events.EventsManager
    public void sendEvents() {
    }

    @Override // io.fabric.sdk.android.services.events.EventsManager
    public void deleteAllEvents() {
    }

    @Override // io.fabric.sdk.android.services.events.EventsManager
    public void recordEvent(T event) {
    }

    @Override // io.fabric.sdk.android.services.events.FileRollOverManager
    public void cancelTimeBasedFileRollOver() {
    }

    @Override // io.fabric.sdk.android.services.events.FileRollOverManager
    public void scheduleTimeBasedRollOverIfNeeded() {
    }

    @Override // io.fabric.sdk.android.services.events.FileRollOverManager
    public boolean rollFileOver() {
        return false;
    }

    @Override // io.fabric.sdk.android.services.events.EventsStrategy
    public FilesSender getFilesSender() {
        return null;
    }
}
