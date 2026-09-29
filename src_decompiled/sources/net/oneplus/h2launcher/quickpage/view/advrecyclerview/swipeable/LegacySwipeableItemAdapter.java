package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;

/* loaded from: classes.dex */
public interface LegacySwipeableItemAdapter<T extends RecyclerView.ViewHolder> extends BaseSwipeableItemAdapter<T> {
    void onPerformAfterSwipeReaction(T t, int i, int i2, int i3);

    int onSwipeItem(T t, int i, int i2);
}
