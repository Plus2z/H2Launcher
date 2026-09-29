package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;

/* loaded from: classes.dex */
public interface BaseSwipeableItemAdapter<T extends RecyclerView.ViewHolder> {
    int onGetSwipeReactionType(T t, int i, int i2, int i3);

    void onSetSwipeBackground(T t, int i, int i2);
}
