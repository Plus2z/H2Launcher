package com.oneplus.lib.util.loading;

import android.app.Dialog;

/* loaded from: classes.dex */
public abstract class DialogLoadingAsyncTask<Param, Progress, Result> extends LoadingAsyncTask<Param, Progress, Result> {
    private Dialog mDialog;

    public DialogLoadingAsyncTask(Dialog dialog) {
        this.mDialog = dialog;
    }

    @Override // com.oneplus.lib.util.loading.LoadingAsyncTask
    protected Object showProgree() {
        if (this.mDialog != null) {
            try {
                this.mDialog.show();
            } catch (Throwable th) {
            }
        }
        return this.mDialog;
    }

    @Override // com.oneplus.lib.util.loading.LoadingAsyncTask
    protected void hideProgree(Object progreeView) {
        if (this.mDialog != null) {
            try {
                this.mDialog.dismiss();
            } catch (Throwable th) {
            }
        }
    }
}
