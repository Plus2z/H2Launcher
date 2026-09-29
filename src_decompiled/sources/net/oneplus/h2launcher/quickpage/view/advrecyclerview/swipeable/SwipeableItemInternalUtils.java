package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.LegacySwipeResultAction;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction;

/* loaded from: classes.dex */
public class SwipeableItemInternalUtils {
    private SwipeableItemInternalUtils() {
    }

    public static SwipeResultAction invokeOnSwipeItem(BaseSwipeableItemAdapter<?> adapter, RecyclerView.ViewHolder holder, int position, int result) {
        if (!(adapter instanceof LegacySwipeableItemAdapter)) {
            return ((SwipeableItemAdapter) adapter).onSwipeItem(holder, position, result);
        }
        int reaction = ((LegacySwipeableItemAdapter) adapter).onSwipeItem(holder, position, result);
        switch (reaction) {
            case 0:
            case 1:
            case 2:
                return new LegacySwipeResultAction((LegacySwipeableItemAdapter) adapter, holder, position, result, reaction);
            default:
                throw new IllegalStateException("Unexpected reaction type: " + reaction);
        }
    }
}
