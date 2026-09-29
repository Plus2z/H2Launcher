package com.oneplus.lib.util.loading;

import android.os.AsyncTask;
import com.oneplus.lib.util.loading.LoadingHelper;

/* loaded from: classes.dex */
public abstract class LoadingAsyncTask<Param, Progress, Result> extends AsyncTask<Param, Progress, Result> {
    private LoadingHelper mProgressHelper = new LoadingHelper() { // from class: com.oneplus.lib.util.loading.LoadingAsyncTask.1
        @Override // com.oneplus.lib.util.loading.LoadingHelper
        protected Object showProgree() {
            return LoadingAsyncTask.this.showProgree();
        }

        @Override // com.oneplus.lib.util.loading.LoadingHelper
        protected void hideProgree(Object progreeView) {
            LoadingAsyncTask.this.hideProgree(progreeView);
        }
    };

    protected abstract void hideProgree(Object obj);

    protected abstract Object showProgree();

    public LoadingAsyncTask<Param, Progress, Result> setWillShowProgreeTime(long willShowProgreeTime) {
        this.mProgressHelper.setWillShowProgreeTime(willShowProgreeTime);
        return this;
    }

    public LoadingAsyncTask<Param, Progress, Result> setProgreeMinShowTime(long progreeMinShowTime) {
        this.mProgressHelper.setProgreeMinShowTime(progreeMinShowTime);
        return this;
    }

    protected void onPreExecuteExtend() {
    }

    protected void onPostExecuteExtend(Result result) {
    }

    protected void onCancelledExtend(Result result) {
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        this.mProgressHelper.beginShowProgress();
        onPreExecuteExtend();
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Result result) {
        onFinish(result);
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled(Result result) {
        onFinish(result);
        onCancelledExtend(result);
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled() {
        super.onCancelled();
    }

    private void onFinish(final Result result) {
        this.mProgressHelper.finishShowProgress(new LoadingHelper.FinishShowCallback() { // from class: com.oneplus.lib.util.loading.LoadingAsyncTask.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.oneplus.lib.util.loading.LoadingHelper.FinishShowCallback
            public void finish(boolean shown) {
                if (!LoadingAsyncTask.this.isCancelled()) {
                    LoadingAsyncTask.this.onPostExecuteExtend(result);
                }
            }
        });
    }
}
