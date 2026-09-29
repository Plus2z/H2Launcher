package net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils;

import android.view.ViewGroup;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class BaseWrapperAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    private static final boolean LOCAL_LOGD = false;
    private static final String TAG = "ARVBaseWrapperAdapter";
    private BridgeObserver mBridgeObserver = new BridgeObserver(this);
    private RecyclerView.Adapter<VH> mWrappedAdapter;

    public BaseWrapperAdapter(RecyclerView.Adapter<VH> adapter) {
        this.mWrappedAdapter = adapter;
        this.mWrappedAdapter.registerAdapterDataObserver(this.mBridgeObserver);
        super.setHasStableIds(this.mWrappedAdapter.hasStableIds());
    }

    public void release() {
        onRelease();
        if (this.mWrappedAdapter != null && this.mBridgeObserver != null) {
            this.mWrappedAdapter.unregisterAdapterDataObserver(this.mBridgeObserver);
        }
        this.mWrappedAdapter = null;
        this.mBridgeObserver = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRelease() {
    }

    public RecyclerView.Adapter<VH> getWrappedAdapter() {
        return this.mWrappedAdapter;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mWrappedAdapter.onAttachedToRecyclerView(recyclerView);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mWrappedAdapter.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewAttachedToWindow(VH holder) {
        this.mWrappedAdapter.onViewAttachedToWindow(holder);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewDetachedFromWindow(VH holder) {
        this.mWrappedAdapter.onViewDetachedFromWindow(holder);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewRecycled(VH holder) {
        this.mWrappedAdapter.onViewRecycled(holder);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void setHasStableIds(boolean hasStableIds) {
        super.setHasStableIds(hasStableIds);
        this.mWrappedAdapter.setHasStableIds(hasStableIds);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup parent, int viewType) {
        return this.mWrappedAdapter.onCreateViewHolder(parent, viewType);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onBindViewHolder(VH holder, int position) {
        this.mWrappedAdapter.onBindViewHolder(holder, position);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemCount() {
        return this.mWrappedAdapter.getItemCount();
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public long getItemId(int position) {
        return this.mWrappedAdapter.getItemId(position);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.mWrappedAdapter.getItemViewType(position);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleWrappedAdapterChanged() {
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleWrappedAdapterItemRangeChanged(int positionStart, int itemCount) {
        notifyItemRangeChanged(positionStart, itemCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleWrappedAdapterItemRangeInserted(int positionStart, int itemCount) {
        notifyItemRangeInserted(positionStart, itemCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleWrappedAdapterItemRangeRemoved(int positionStart, int itemCount) {
        notifyItemRangeRemoved(positionStart, itemCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onHandleWrappedAdapterRangeMoved(int fromPosition, int toPosition, int itemCount) {
        if (itemCount != 1) {
            throw new IllegalStateException("itemCount should be always 1  (actual: " + itemCount + ")");
        }
        notifyItemMoved(fromPosition, toPosition);
    }

    final void onWrappedAdapterChanged() {
        onHandleWrappedAdapterChanged();
    }

    final void onWrappedAdapterItemRangeChanged(int positionStart, int itemCount) {
        onHandleWrappedAdapterItemRangeChanged(positionStart, itemCount);
    }

    final void onWrappedAdapterItemRangeInserted(int positionStart, int itemCount) {
        onHandleWrappedAdapterItemRangeInserted(positionStart, itemCount);
    }

    final void onWrappedAdapterItemRangeRemoved(int positionStart, int itemCount) {
        onHandleWrappedAdapterItemRangeRemoved(positionStart, itemCount);
    }

    final void onWrappedAdapterRangeMoved(int fromPosition, int toPosition, int itemCount) {
        onHandleWrappedAdapterRangeMoved(fromPosition, toPosition, itemCount);
    }

    /* loaded from: classes.dex */
    private static final class BridgeObserver<VH extends RecyclerView.ViewHolder> extends RecyclerView.AdapterDataObserver {
        private WeakReference<BaseWrapperAdapter<VH>> mRefHolder;

        public BridgeObserver(BaseWrapperAdapter<VH> holder) {
            this.mRefHolder = new WeakReference<>(holder);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.AdapterDataObserver
        public void onChanged() {
            BaseWrapperAdapter<VH> holder = this.mRefHolder.get();
            if (holder != null) {
                holder.onWrappedAdapterChanged();
            }
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            BaseWrapperAdapter<VH> holder = this.mRefHolder.get();
            if (holder != null) {
                holder.onWrappedAdapterItemRangeChanged(positionStart, itemCount);
            }
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            BaseWrapperAdapter<VH> holder = this.mRefHolder.get();
            if (holder != null) {
                holder.onWrappedAdapterItemRangeInserted(positionStart, itemCount);
            }
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            BaseWrapperAdapter<VH> holder = this.mRefHolder.get();
            if (holder != null) {
                holder.onWrappedAdapterItemRangeRemoved(positionStart, itemCount);
            }
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            BaseWrapperAdapter<VH> holder = this.mRefHolder.get();
            if (holder != null) {
                holder.onWrappedAdapterRangeMoved(fromPosition, toPosition, itemCount);
            }
        }
    }
}
