package io.fabric.sdk.android.services.events;

/* loaded from: classes.dex */
public interface EventsStrategy<T> extends FileRollOverManager, EventsManager<T> {
    FilesSender getFilesSender();
}
