package net.oneplus.h2launcher.widget;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class WidgetsRowViewHolder extends RecyclerView.ViewHolder {
    ViewGroup mContent;

    public WidgetsRowViewHolder(ViewGroup v) {
        super(v);
        this.mContent = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroup getContent() {
        return this.mContent;
    }
}
