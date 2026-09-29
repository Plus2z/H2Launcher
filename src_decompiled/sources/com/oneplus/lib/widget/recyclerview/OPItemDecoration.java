package com.oneplus.lib.widget.recyclerview;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class OPItemDecoration extends RecyclerView.ItemDecoration {
    protected int mSpace;

    public OPItemDecoration(int space) {
        this.mSpace = space;
    }

    public void setSpace(int space) {
        this.mSpace = space;
    }

    public int getSpace() {
        return this.mSpace;
    }
}
