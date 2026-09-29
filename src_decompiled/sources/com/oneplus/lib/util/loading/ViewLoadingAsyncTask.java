package com.oneplus.lib.util.loading;

import android.view.View;

/* loaded from: classes.dex */
public abstract class ViewLoadingAsyncTask<Param, Progress, Result> extends LoadingAsyncTask<Param, Progress, Result> {
    private View mProgressView;

    public ViewLoadingAsyncTask(View progressView) {
        this.mProgressView = progressView;
    }

    @Override // com.oneplus.lib.util.loading.LoadingAsyncTask
    protected Object showProgree() {
        if (this.mProgressView != null) {
            this.mProgressView.setVisibility(0);
        }
        return this.mProgressView;
    }

    @Override // com.oneplus.lib.util.loading.LoadingAsyncTask
    protected void hideProgree(Object progreeView) {
        if (this.mProgressView != null) {
            this.mProgressView.setVisibility(8);
        }
    }
}
