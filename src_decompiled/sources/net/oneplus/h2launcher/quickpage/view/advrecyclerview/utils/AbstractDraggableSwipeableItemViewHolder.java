package net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils;

import android.view.View;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemViewHolder;

/* loaded from: classes.dex */
public abstract class AbstractDraggableSwipeableItemViewHolder extends AbstractSwipeableItemViewHolder implements DraggableItemViewHolder {
    private int mDragStateFlags;

    public AbstractDraggableSwipeableItemViewHolder(View itemView) {
        super(itemView);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemViewHolder
    public void setDragStateFlags(int flags) {
        this.mDragStateFlags = flags;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemViewHolder
    public int getDragStateFlags() {
        return this.mDragStateFlags;
    }
}
