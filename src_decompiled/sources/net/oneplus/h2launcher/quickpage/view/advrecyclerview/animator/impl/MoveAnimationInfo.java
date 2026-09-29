package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class MoveAnimationInfo extends ItemAnimationInfo {
    public int fromX;
    public int fromY;
    public RecyclerView.ViewHolder holder;
    public int toX;
    public int toY;

    public MoveAnimationInfo(RecyclerView.ViewHolder holder, int fromX, int fromY, int toX, int toY) {
        this.holder = holder;
        this.fromX = fromX;
        this.fromY = fromY;
        this.toX = toX;
        this.toY = toY;
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
        return "MoveAnimationInfo{holder=" + this.holder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
    }
}
