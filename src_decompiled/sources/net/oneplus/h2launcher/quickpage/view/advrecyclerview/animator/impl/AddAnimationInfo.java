package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class AddAnimationInfo extends ItemAnimationInfo {
    public RecyclerView.ViewHolder holder;

    public AddAnimationInfo(RecyclerView.ViewHolder holder) {
        this.holder = holder;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo
    public RecyclerView.ViewHolder getAvailableViewHolder() {
        return this.holder;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo
    public void clear(RecyclerView.ViewHolder item) {
        if (this.holder == null) {
            this.holder = null;
        }
    }

    public String toString() {
        return "AddAnimationInfo{holder=" + this.holder + '}';
    }
}
