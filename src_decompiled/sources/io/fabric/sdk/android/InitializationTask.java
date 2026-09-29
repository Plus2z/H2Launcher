package io.fabric.sdk.android;

import io.fabric.sdk.android.services.common.TimingMetric;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.PriorityAsyncTask;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import net.oneplus.h2launcher.AssetCache;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class InitializationTask<Result> extends PriorityAsyncTask<Void, Void, Result> {
    private static final String TIMING_METRIC_TAG = "KitInitialization";
    final Kit<Result> kit;

    public InitializationTask(Kit<Result> kit) {
        this.kit = kit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        TimingMetric timingMetric = createAndStartTimingMetric("onPreExecute");
        try {
            try {
                boolean result = this.kit.onPreExecute();
                timingMetric.stopMeasuring();
                if (!result) {
                    cancel(true);
                }
            } catch (UnmetDependencyException ex) {
                throw ex;
            } catch (Exception ex2) {
                Fabric.getLogger().e(Fabric.TAG, "Failure onPreExecute()", ex2);
                timingMetric.stopMeasuring();
                if (0 == 0) {
                    cancel(true);
                }
            }
        } catch (Throwable th) {
            timingMetric.stopMeasuring();
            if (0 == 0) {
                cancel(true);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    public Result doInBackground(Void... voids) {
        TimingMetric timingMetric = createAndStartTimingMetric("doInBackground");
        Result result = null;
        if (!isCancelled()) {
            result = this.kit.doInBackground();
        }
        timingMetric.stopMeasuring();
        return result;
    }

    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    protected void onPostExecute(Result result) {
        this.kit.onPostExecute(result);
        this.kit.initializationCallback.success(result);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    protected void onCancelled(Result result) {
        this.kit.onCancelled(result);
        String message = this.kit.getIdentifier() + " Initialization was cancelled";
        InitializationException exception = new InitializationException(message);
        this.kit.initializationCallback.failure(exception);
    }

    @Override // io.fabric.sdk.android.services.concurrency.PriorityAsyncTask, io.fabric.sdk.android.services.concurrency.PriorityProvider
    public Priority getPriority() {
        return Priority.HIGH;
    }

    private TimingMetric createAndStartTimingMetric(String event) {
        TimingMetric timingMetric = new TimingMetric(this.kit.getIdentifier() + AssetCache.EMPTY_CLASS_NAME + event, TIMING_METRIC_TAG);
        timingMetric.startMeasuring();
        return timingMetric;
    }
}
