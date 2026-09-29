package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class ChangeAnimationInfo extends ItemAnimationInfo {
    public int fromX;
    public int fromY;
    public RecyclerView.ViewHolder newHolder;
    public RecyclerView.ViewHolder oldHolder;
    public int toX;
    public int toY;

    public ChangeAnimationInfo(RecyclerView.ViewHolder oldHolder, RecyclerView.ViewHolder newHolder, int fromX, int fromY, int toX, int toY) {
        this.oldHolder = oldHolder;
        this.newHolder = newHolder;
        this.fromX = fromX;
        this.fromY = fromY;
        this.toX = toX;
        this.toY = toY;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo
    public RecyclerView.ViewHolder getAvailableViewHolder() {
        return this.oldHolder != null ? this.oldHolder : this.newHolder;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo
    public void clear(RecyclerView.ViewHolder item) {
        if (this.oldHolder == item) {
            this.oldHolder = null;
        }
        if (this.newHolder == item) {
            this.newHolder = null;
        }
        if (this.oldHolder == null && this.newHolder == null) {
            this.fromX = 0;
            this.fromY = 0;
            this.toX = 0;
            this.toY = 0;
        }
    }

    public String toString() {
        return "ChangeInfo{, oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
    }
}
