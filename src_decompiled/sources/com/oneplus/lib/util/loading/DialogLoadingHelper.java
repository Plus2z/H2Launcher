package com.oneplus.lib.util.loading;

import android.app.Dialog;

/* loaded from: classes.dex */
public class DialogLoadingHelper extends LoadingHelper {
    Dialog mDialog;

    public DialogLoadingHelper(Dialog dialog) {
        this.mDialog = dialog;
    }

    @Override // com.oneplus.lib.util.loading.LoadingHelper
    protected Object showProgree() {
        if (this.mDialog != null) {
            try {
                this.mDialog.show();
            } catch (Throwable th) {
            }
        }
        return this.mDialog;
    }

    @Override // com.oneplus.lib.util.loading.LoadingHelper
    protected void hideProgree(Object progreeView) {
        if (this.mDialog != null) {
            try {
                this.mDialog.dismiss();
            } catch (Throwable th) {
            }
        }
    }
}
