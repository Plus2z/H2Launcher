package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.ActivityLifecycleManager;

/* loaded from: classes.dex */
class AnswersLifecycleCallbacks extends ActivityLifecycleManager.Callbacks {
    private final SessionAnalyticsManager analyticsManager;
    private final BackgroundManager backgroundManager;

    public AnswersLifecycleCallbacks(SessionAnalyticsManager analyticsManager, BackgroundManager backgroundManager) {
        this.analyticsManager = analyticsManager;
        this.backgroundManager = backgroundManager;
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityStarted(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.START);
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityResumed(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.RESUME);
        this.backgroundManager.onActivityResumed();
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityPaused(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.PAUSE);
        this.backgroundManager.onActivityPaused();
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityStopped(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.STOP);
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // io.fabric.sdk.android.ActivityLifecycleManager.Callbacks
    public void onActivityDestroyed(Activity activity) {
    }
}
