package net.oneplus.h2launcher.quickpage.view.advrecyclerview.event;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class RecyclerViewRecyclerEventDistributor extends BaseRecyclerViewEventDistributor<RecyclerView.RecyclerListener> {
    private InternalRecyclerListener mInternalRecyclerListener = new InternalRecyclerListener(this);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.event.BaseRecyclerViewEventDistributor
    public void onRecyclerViewAttached(RecyclerView rv) {
        super.onRecyclerViewAttached(rv);
        rv.setRecyclerListener(this.mInternalRecyclerListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.event.BaseRecyclerViewEventDistributor
    public void onRelease() {
        super.onRelease();
        if (this.mInternalRecyclerListener != null) {
            this.mInternalRecyclerListener.release();
            this.mInternalRecyclerListener = null;
        }
    }

    void handleOnViewRecycled(RecyclerView.ViewHolder holder) {
        if (this.mListeners != null) {
            for (T listener : this.mListeners) {
                listener.onViewRecycled(holder);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class InternalRecyclerListener implements RecyclerView.RecyclerListener {
        private WeakReference<RecyclerViewRecyclerEventDistributor> mRefDistributor;

        public InternalRecyclerListener(RecyclerViewRecyclerEventDistributor distributor) {
            this.mRefDistributor = new WeakReference<>(distributor);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.RecyclerListener
        public void onViewRecycled(RecyclerView.ViewHolder holder) {
            RecyclerViewRecyclerEventDistributor distributor = this.mRefDistributor.get();
            if (distributor != null) {
                distributor.handleOnViewRecycled(holder);
            }
        }

        public void release() {
            this.mRefDistributor.clear();
        }
    }
}
