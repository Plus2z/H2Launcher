package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class RemoveAnimationInfo extends ItemAnimationInfo {
    public RecyclerView.ViewHolder holder;

    public RemoveAnimationInfo(RecyclerView.ViewHolder holder) {
        this.holder = holder;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo
    public RecyclerView.ViewHolder getAvailableViewHolder() {
        return this.holder;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo
    public void clear(RecyclerView.ViewHolder item) {
        if (this.holder == item) {
            this.holder = null;
        }
    }

    public String toString() {
        return "RemoveAnimationInfo{holder=" + this.holder + '}';
    }
}
