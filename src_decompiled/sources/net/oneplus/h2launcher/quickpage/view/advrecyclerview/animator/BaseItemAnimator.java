package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public abstract class BaseItemAnimator extends RecyclerView.ItemAnimator {
    private ItemAnimatorListener mListener;

    /* loaded from: classes.dex */
    public interface ItemAnimatorListener {
        void onAddFinished(RecyclerView.ViewHolder viewHolder);

        void onChangeFinished(RecyclerView.ViewHolder viewHolder);

        void onMoveFinished(RecyclerView.ViewHolder viewHolder);

        void onRemoveFinished(RecyclerView.ViewHolder viewHolder);
    }

    public void setListener(ItemAnimatorListener listener) {
        this.mListener = listener;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onAddStarting(RecyclerView.ViewHolder item) {
        onAddStartingImpl(item);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onAddFinished(RecyclerView.ViewHolder item) {
        onAddFinishedImpl(item);
        if (this.mListener != null) {
            this.mListener.onAddFinished(item);
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onChangeStarting(RecyclerView.ViewHolder item, boolean oldItem) {
        onChangeStartingItem(item, oldItem);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onChangeFinished(RecyclerView.ViewHolder item, boolean oldItem) {
        onChangeFinishedImpl(item, oldItem);
        if (this.mListener != null) {
            this.mListener.onChangeFinished(item);
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onMoveStarting(RecyclerView.ViewHolder item) {
        onMoveStartingImpl(item);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onMoveFinished(RecyclerView.ViewHolder item) {
        onMoveFinishedImpl(item);
        if (this.mListener != null) {
            this.mListener.onMoveFinished(item);
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onRemoveStarting(RecyclerView.ViewHolder item) {
        onRemoveStartingImpl(item);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public final void onRemoveFinished(RecyclerView.ViewHolder item) {
        onRemoveFinishedImpl(item);
        if (this.mListener != null) {
            this.mListener.onRemoveFinished(item);
        }
    }

    protected void onAddStartingImpl(RecyclerView.ViewHolder item) {
    }

    protected void onAddFinishedImpl(RecyclerView.ViewHolder item) {
    }

    protected void onChangeStartingItem(RecyclerView.ViewHolder item, boolean oldItem) {
    }

    protected void onChangeFinishedImpl(RecyclerView.ViewHolder item, boolean oldItem) {
    }

    protected void onMoveStartingImpl(RecyclerView.ViewHolder item) {
    }

    protected void onMoveFinishedImpl(RecyclerView.ViewHolder item) {
    }

    protected void onRemoveStartingImpl(RecyclerView.ViewHolder item) {
    }

    protected void onRemoveFinishedImpl(RecyclerView.ViewHolder item) {
    }

    public boolean dispatchFinishedWhenDone() {
        if (isRunning()) {
            return false;
        }
        dispatchAnimationsFinished();
        return true;
    }

    public boolean debugLogEnabled() {
        return false;
    }
}
