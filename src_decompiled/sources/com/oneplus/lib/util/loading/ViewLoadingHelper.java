package com.oneplus.lib.util.loading;

import android.view.View;

/* loaded from: classes.dex */
public class ViewLoadingHelper extends LoadingHelper {
    View mProgressView;

    public ViewLoadingHelper(View progressView) {
        this.mProgressView = progressView;
    }

    @Override // com.oneplus.lib.util.loading.LoadingHelper
    protected Object showProgree() {
        if (this.mProgressView != null) {
            this.mProgressView.setVisibility(0);
        }
        return this.mProgressView;
    }

    @Override // com.oneplus.lib.util.loading.LoadingHelper
    protected void hideProgree(Object progreeView) {
        if (this.mProgressView != null) {
            this.mProgressView.setVisibility(8);
        }
    }
}
