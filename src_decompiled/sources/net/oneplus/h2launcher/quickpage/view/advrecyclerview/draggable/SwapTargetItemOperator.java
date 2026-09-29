package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Interpolator;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.CustomRecyclerViewUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SwapTargetItemOperator extends BaseDraggableItemDecorator {
    private static final String TAG = "SwapTargetItemOperator";
    private float mCurTranslationPhase;
    private Rect mDraggingItemDecorationOffsets;
    private DraggingItemInfo mDraggingItemInfo;
    private ItemDraggableRange mRange;
    private float mReqTranslationPhase;
    private boolean mStarted;
    private Rect mSwapTargetDecorationOffsets;
    private RecyclerView.ViewHolder mSwapTargetItem;
    private Rect mSwapTargetItemMargins;
    private Interpolator mSwapTargetTranslationInterpolator;
    private int mTranslationX;
    private int mTranslationY;

    public SwapTargetItemOperator(RecyclerView recyclerView, RecyclerView.ViewHolder draggingItem, ItemDraggableRange range, DraggingItemInfo draggingItemInfo) {
        super(recyclerView, draggingItem);
        this.mSwapTargetDecorationOffsets = new Rect();
        this.mSwapTargetItemMargins = new Rect();
        this.mDraggingItemDecorationOffsets = new Rect();
        this.mDraggingItemInfo = draggingItemInfo;
        this.mRange = range;
        CustomRecyclerViewUtils.getDecorationOffsets(this.mRecyclerView.getLayoutManager(), this.mDraggingItemViewHolder.itemView, this.mDraggingItemDecorationOffsets);
    }

    private static float calculateCurrentTranslationPhase(float cur, float req) {
        float tmp = (0.7f * cur) + (0.3f * req);
        return Math.abs(tmp - req) < 0.01f ? req : tmp;
    }

    public void setSwapTargetTranslationInterpolator(Interpolator interpolator) {
        this.mSwapTargetTranslationInterpolator = interpolator;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        RecyclerView.ViewHolder draggingItem = this.mDraggingItemViewHolder;
        if (draggingItem != null && draggingItem.getItemId() == this.mDraggingItemInfo.id) {
            RecyclerView.ViewHolder swapTargetItem = RecyclerViewDragDropManager.findSwapTargetItem(this.mRecyclerView, draggingItem, this.mDraggingItemInfo, this.mTranslationX, this.mTranslationY, this.mRange);
            if (this.mSwapTargetItem != swapTargetItem && this.mSwapTargetItem != null) {
                setItemTranslation(this.mRecyclerView, this.mSwapTargetItem, 0.0f, 0.0f);
            }
            if (swapTargetItem != null) {
                this.mReqTranslationPhase = calculateTranslationPhase(draggingItem, swapTargetItem);
                if (this.mSwapTargetItem != swapTargetItem) {
                    this.mCurTranslationPhase = this.mReqTranslationPhase;
                } else {
                    this.mCurTranslationPhase = calculateCurrentTranslationPhase(this.mCurTranslationPhase, this.mReqTranslationPhase);
                }
                updateSwapTargetTranslation(draggingItem, swapTargetItem, this.mCurTranslationPhase);
            }
            this.mSwapTargetItem = swapTargetItem;
        }
    }

    private float calculateTranslationPhase(RecyclerView.ViewHolder draggingItem, RecyclerView.ViewHolder swapTargetItem) {
        View swapItemView = swapTargetItem.itemView;
        int pos1 = draggingItem.getLayoutPosition();
        int pos2 = swapTargetItem.getLayoutPosition();
        CustomRecyclerViewUtils.getDecorationOffsets(this.mRecyclerView.getLayoutManager(), swapItemView, this.mSwapTargetDecorationOffsets);
        CustomRecyclerViewUtils.getLayoutMargins(swapItemView, this.mSwapTargetItemMargins);
        Rect m2 = this.mSwapTargetItemMargins;
        Rect d2 = this.mSwapTargetDecorationOffsets;
        int h2 = swapItemView.getHeight() + m2.top + m2.bottom + d2.top + d2.bottom;
        int w2 = swapItemView.getWidth() + m2.left + m2.right + d2.left + d2.right;
        float offsetXPx = draggingItem.itemView.getLeft() - this.mTranslationX;
        float phaseX = w2 != 0 ? offsetXPx / w2 : 0.0f;
        float offsetYPx = draggingItem.itemView.getTop() - this.mTranslationY;
        float phaseY = h2 != 0 ? offsetYPx / h2 : 0.0f;
        float translationPhase = 0.0f;
        if (CustomRecyclerViewUtils.getOrientation(this.mRecyclerView) == 1) {
            if (pos1 > pos2) {
                translationPhase = phaseY;
            } else {
                translationPhase = 1.0f + phaseY;
            }
        } else if (CustomRecyclerViewUtils.getOrientation(this.mRecyclerView) == 0) {
            if (pos1 > pos2) {
                translationPhase = phaseX;
            } else {
                translationPhase = 1.0f + phaseX;
            }
        }
        return Math.min(Math.max(translationPhase, 0.0f), 1.0f);
    }

    private void updateSwapTargetTranslation(RecyclerView.ViewHolder draggingItem, RecyclerView.ViewHolder swapTargetItem, float translationPhase) {
        View swapItemView = swapTargetItem.itemView;
        int pos1 = draggingItem.getLayoutPosition();
        int pos2 = swapTargetItem.getLayoutPosition();
        Rect m1 = this.mDraggingItemInfo.margins;
        Rect d1 = this.mDraggingItemDecorationOffsets;
        int h1 = this.mDraggingItemInfo.height + m1.top + m1.bottom + d1.top + d1.bottom;
        int w1 = this.mDraggingItemInfo.width + m1.left + m1.right + d1.left + d1.right;
        switch (CustomRecyclerViewUtils.getOrientation(this.mRecyclerView)) {
            case 0:
                if (pos1 > pos2) {
                    ViewCompat.setTranslationX(swapItemView, w1 * translationPhase);
                    return;
                } else {
                    ViewCompat.setTranslationX(swapItemView, (translationPhase - 1.0f) * w1);
                    return;
                }
            case 1:
                if (pos1 > pos2) {
                    ViewCompat.setTranslationY(swapItemView, h1 * translationPhase);
                    return;
                } else {
                    ViewCompat.setTranslationY(swapItemView, (translationPhase - 1.0f) * h1);
                    return;
                }
            default:
                return;
        }
    }

    public void start() {
        if (!this.mStarted) {
            this.mRecyclerView.addItemDecoration(this, 0);
            this.mStarted = true;
        }
    }

    public void finish(boolean animate) {
        if (this.mStarted) {
            this.mRecyclerView.removeItemDecoration(this);
        }
        RecyclerView.ItemAnimator itemAnimator = this.mRecyclerView.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        this.mRecyclerView.stopScroll();
        if (this.mSwapTargetItem != null) {
            updateSwapTargetTranslation(this.mDraggingItemViewHolder, this.mSwapTargetItem, this.mCurTranslationPhase);
            moveToDefaultPosition(this.mSwapTargetItem.itemView, animate);
            this.mSwapTargetItem = null;
        }
        this.mRange = null;
        this.mDraggingItemViewHolder = null;
        this.mTranslationX = 0;
        this.mTranslationY = 0;
        this.mCurTranslationPhase = 0.0f;
        this.mReqTranslationPhase = 0.0f;
        this.mStarted = false;
        this.mDraggingItemInfo = null;
    }

    public void update(int translationX, int translationY) {
        this.mTranslationX = translationX;
        this.mTranslationY = translationY;
    }
}
