package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.events.EventsStorage;
import io.fabric.sdk.android.services.events.GZIPQueueFileEventStorage;
import io.fabric.sdk.android.services.persistence.FileStore;
import java.io.File;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AnswersFilesManagerProvider {
    static final String SESSION_ANALYTICS_FILE_NAME = "session_analytics.tap";
    static final String SESSION_ANALYTICS_TO_SEND_DIR = "session_analytics_to_send";
    final Context context;
    final FileStore fileStore;

    public AnswersFilesManagerProvider(Context context, FileStore fileStore) {
        this.context = context;
        this.fileStore = fileStore;
    }

    public SessionAnalyticsFilesManager getAnalyticsFilesManager() throws IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
        }
        SessionEventTransform transform = new SessionEventTransform();
        SystemCurrentTimeProvider timeProvider = new SystemCurrentTimeProvider();
        File sdkDirectory = this.fileStore.getFilesDir();
        EventsStorage storage = new GZIPQueueFileEventStorage(this.context, sdkDirectory, SESSION_ANALYTICS_FILE_NAME, SESSION_ANALYTICS_TO_SEND_DIR);
        return new SessionAnalyticsFilesManager(this.context, transform, timeProvider, storage);
    }
}
