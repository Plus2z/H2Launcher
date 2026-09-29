package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;

/* loaded from: classes.dex */
public interface DraggableItemAdapter<T extends RecyclerView.ViewHolder> {
    boolean onCheckCanStartDrag(T t, int i, int i2, int i3);

    ItemDraggableRange onGetItemDraggableRange(T t, int i);

    void onMoveItem(int i, int i2);
}
