package io.fabric.sdk.android.services.events;

import java.io.IOException;

/* loaded from: classes.dex */
public interface FileRollOverManager {
    void cancelTimeBasedFileRollOver();

    boolean rollFileOver() throws IOException;

    void scheduleTimeBasedRollOverIfNeeded();
}
