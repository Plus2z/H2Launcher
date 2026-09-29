package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable;

import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.RecyclerView.ViewHolder;
import java.util.List;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action.SwipeResultAction;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.WrapperAdapterUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SwipeableItemWrapperAdapter<VH extends RecyclerView.ViewHolder> extends BaseWrapperAdapter<VH> {
    private static final boolean LOCAL_LOGD = false;
    private static final boolean LOCAL_LOGV = false;
    private static final int STATE_FLAG_INITIAL_VALUE = -1;
    private static final String TAG = "ARVSwipeableWrapper";
    private RecyclerViewSwipeManager mSwipeManager;
    private BaseSwipeableItemAdapter mSwipeableItemAdapter;
    private long mSwipingItemId;

    /* loaded from: classes.dex */
    private interface Constants extends SwipeableItemConstants {
    }

    public SwipeableItemWrapperAdapter(RecyclerViewSwipeManager manager, RecyclerView.Adapter<VH> adapter) {
        super(adapter);
        this.mSwipingItemId = -1L;
        this.mSwipeableItemAdapter = getSwipeableItemAdapter(adapter);
        if (this.mSwipeableItemAdapter == null) {
            throw new IllegalArgumentException("adapter does not implement SwipeableItemAdapter");
        }
        if (manager == null) {
            throw new IllegalArgumentException("manager cannot be null");
        }
        this.mSwipeManager = manager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter
    public void onRelease() {
        super.onRelease();
        this.mSwipeableItemAdapter = null;
        this.mSwipeManager = null;
        this.mSwipingItemId = -1L;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter, com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewRecycled(VH holder) {
        super.onViewRecycled(holder);
        if (this.mSwipingItemId != -1 && this.mSwipingItemId == holder.getItemId()) {
            this.mSwipeManager.cancelSwipe();
        }
        if (holder instanceof SwipeableItemViewHolder) {
            if (this.mSwipeManager != null) {
                this.mSwipeManager.cancelPendingAnimations(holder);
            }
            SwipeableItemViewHolder swipeableHolder = (SwipeableItemViewHolder) holder;
            swipeableHolder.setSwipeResult(0);
            swipeableHolder.setAfterSwipeReaction(0);
            swipeableHolder.setSwipeItemHorizontalSlideAmount(0.0f);
            swipeableHolder.setSwipeItemVerticalSlideAmount(0.0f);
            View containerView = swipeableHolder.getSwipeableContainerView();
            if (containerView != null) {
                ViewCompat.animate(containerView).cancel();
                ViewCompat.setTranslationX(containerView, 0.0f);
                ViewCompat.setTranslationY(containerView, 0.0f);
            }
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter, com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        VH vh = (VH) super.onCreateViewHolder(viewGroup, i);
        if (vh instanceof SwipeableItemViewHolder) {
            ((SwipeableItemViewHolder) vh).setSwipeStateFlags(-1);
        }
        return vh;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onBindViewHolder(VH holder, int position, List<Object> payloads) {
        float prevSwipeItemSlideAmount = 0.0f;
        if (holder instanceof SwipeableItemViewHolder) {
            prevSwipeItemSlideAmount = getSwipeItemSlideAmount((SwipeableItemViewHolder) holder, swipeHorizontal());
        }
        if (isSwiping()) {
            int flags = 1;
            if (holder.getItemId() == this.mSwipingItemId) {
                flags = 1 | 2;
            }
            safeUpdateFlags(holder, flags);
            super.onBindViewHolder(holder, position, payloads);
        } else {
            safeUpdateFlags(holder, 0);
            super.onBindViewHolder(holder, position, payloads);
        }
        if (holder instanceof SwipeableItemViewHolder) {
            float swipeItemSlideAmount = getSwipeItemSlideAmount((SwipeableItemViewHolder) holder, swipeHorizontal());
            boolean isSwiping = this.mSwipeManager.isSwiping();
            boolean isAnimationRunning = this.mSwipeManager.isAnimationRunning(holder);
            if (prevSwipeItemSlideAmount != swipeItemSlideAmount || (!isSwiping && !isAnimationRunning)) {
                this.mSwipeManager.applySlideItem(holder, position, prevSwipeItemSlideAmount, swipeItemSlideAmount, swipeHorizontal(), true, isSwiping);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter
    public void onHandleWrappedAdapterChanged() {
        if (isSwiping()) {
            cancelSwipe();
        }
        super.onHandleWrappedAdapterChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter
    public void onHandleWrappedAdapterItemRangeChanged(int positionStart, int itemCount) {
        super.onHandleWrappedAdapterItemRangeChanged(positionStart, itemCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter
    public void onHandleWrappedAdapterItemRangeInserted(int positionStart, int itemCount) {
        int pos;
        if (isSwiping() && (pos = this.mSwipeManager.getSwipingItemPosition()) >= positionStart) {
            this.mSwipeManager.syncSwipingItemPosition(pos + itemCount);
        }
        super.onHandleWrappedAdapterItemRangeInserted(positionStart, itemCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter
    public void onHandleWrappedAdapterItemRangeRemoved(int positionStart, int itemCount) {
        if (isSwiping()) {
            int pos = this.mSwipeManager.getSwipingItemPosition();
            if (checkInRange(pos, positionStart, itemCount)) {
                cancelSwipe();
            } else if (positionStart < pos) {
                this.mSwipeManager.syncSwipingItemPosition(pos - itemCount);
            }
        }
        super.onHandleWrappedAdapterItemRangeRemoved(positionStart, itemCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.BaseWrapperAdapter
    public void onHandleWrappedAdapterRangeMoved(int fromPosition, int toPosition, int itemCount) {
        if (isSwiping()) {
            this.mSwipeManager.syncSwipingItemPosition();
        }
        super.onHandleWrappedAdapterRangeMoved(fromPosition, toPosition, itemCount);
    }

    private void cancelSwipe() {
        if (this.mSwipeManager != null) {
            this.mSwipeManager.cancelSwipe();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSwipeReactionType(RecyclerView.ViewHolder holder, int position, int x, int y) {
        return this.mSwipeableItemAdapter.onGetSwipeReactionType(holder, position, x, y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void onUpdateSlideAmount(RecyclerView.ViewHolder viewHolder, int position, boolean horizontal, float amount, boolean isSwiping, int type) {
        this.mSwipeableItemAdapter.onSetSwipeBackground(viewHolder, position, type);
        SwipeableItemViewHolder swipeableItemViewHolder = (SwipeableItemViewHolder) viewHolder;
        float f = horizontal ? amount : 0.0f;
        if (horizontal) {
            amount = 0.0f;
        }
        swipeableItemViewHolder.onSlideAmountUpdated(f, amount, isSwiping);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void onUpdateSlideAmount(RecyclerView.ViewHolder viewHolder, int position, boolean horizontal, float amount, boolean isSwiping) {
        SwipeableItemViewHolder swipeableItemViewHolder = (SwipeableItemViewHolder) viewHolder;
        float f = horizontal ? amount : 0.0f;
        if (horizontal) {
            amount = 0.0f;
        }
        swipeableItemViewHolder.onSlideAmountUpdated(f, amount, isSwiping);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSwipeItemStarted(RecyclerViewSwipeManager manager, RecyclerView.ViewHolder holder, long id) {
        this.mSwipingItemId = id;
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SwipeResultAction onSwipeItemFinished(RecyclerView.ViewHolder holder, int position, int result) {
        this.mSwipingItemId = -1L;
        return SwipeableItemInternalUtils.invokeOnSwipeItem(this.mSwipeableItemAdapter, holder, position, result);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void onSwipeItemFinished2(RecyclerView.ViewHolder viewHolder, int position, int result, int afterReaction, SwipeResultAction resultAction) {
        ((SwipeableItemViewHolder) viewHolder).setSwipeResult(result);
        ((SwipeableItemViewHolder) viewHolder).setAfterSwipeReaction(afterReaction);
        setSwipeItemSlideAmount((SwipeableItemViewHolder) viewHolder, getSwipeAmountFromAfterReaction(result, afterReaction), swipeHorizontal());
        resultAction.performAction();
        notifyDataSetChanged();
    }

    protected boolean isSwiping() {
        return this.mSwipingItemId != -1;
    }

    private static boolean checkInRange(int pos, int start, int count) {
        return pos >= start && pos < start + count;
    }

    private boolean swipeHorizontal() {
        return this.mSwipeManager.swipeHorizontal();
    }

    private static float getSwipeItemSlideAmount(SwipeableItemViewHolder holder, boolean horizontal) {
        return horizontal ? holder.getSwipeItemHorizontalSlideAmount() : holder.getSwipeItemVerticalSlideAmount();
    }

    private static void setSwipeItemSlideAmount(SwipeableItemViewHolder holder, float amount, boolean horizontal) {
        if (horizontal) {
            holder.setSwipeItemHorizontalSlideAmount(amount);
        } else {
            holder.setSwipeItemVerticalSlideAmount(amount);
        }
    }

    private static float getSwipeAmountFromAfterReaction(int result, int afterReaction) {
        switch (afterReaction) {
            case 0:
            default:
                return 0.0f;
            case 1:
            case 2:
                switch (result) {
                    case 2:
                        return -65536.0f;
                    case 3:
                        return -65537.0f;
                    case 4:
                        return 65536.0f;
                    case 5:
                        return 65537.0f;
                    default:
                        return 0.0f;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void safeUpdateFlags(RecyclerView.ViewHolder viewHolder, int flags) {
        if (viewHolder instanceof SwipeableItemViewHolder) {
            SwipeableItemViewHolder holder2 = (SwipeableItemViewHolder) viewHolder;
            int curFlags = holder2.getSwipeStateFlags();
            if (curFlags == -1 || ((curFlags ^ flags) & Integer.MAX_VALUE) != 0) {
                flags |= Integer.MIN_VALUE;
            }
            ((SwipeableItemViewHolder) viewHolder).setSwipeStateFlags(flags);
        }
    }

    private static BaseSwipeableItemAdapter getSwipeableItemAdapter(RecyclerView.Adapter adapter) {
        return (BaseSwipeableItemAdapter) WrapperAdapterUtils.findWrappedAdapter(adapter, BaseSwipeableItemAdapter.class);
    }
}
