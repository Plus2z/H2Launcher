package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction;

/* loaded from: classes.dex */
public interface SwipeableItemAdapter<T extends RecyclerView.ViewHolder> extends BaseSwipeableItemAdapter<T> {
    SwipeResultAction onSwipeItem(T t, int i, int i2);
}
