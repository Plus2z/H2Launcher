package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.LegacySwipeableItemAdapter;

/* loaded from: classes.dex */
public class LegacySwipeResultAction<VH extends RecyclerView.ViewHolder> extends SwipeResultAction {
    LegacySwipeableItemAdapter<VH> mAdapter;
    VH mHolder;
    int mPosition;
    int mReaction;
    int mResult;

    public LegacySwipeResultAction(LegacySwipeableItemAdapter<VH> adapter, VH holder, int position, int result, int reaction) {
        super(reaction);
        this.mAdapter = adapter;
        this.mHolder = holder;
        this.mPosition = position;
        this.mResult = result;
        this.mReaction = reaction;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction
    protected void onPerformAction() {
        this.mAdapter.onPerformAfterSwipeReaction(this.mHolder, this.mPosition, this.mResult, this.mReaction);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction
    public void onCleanUp() {
        super.onCleanUp();
        this.mAdapter = null;
        this.mHolder = null;
    }
}
