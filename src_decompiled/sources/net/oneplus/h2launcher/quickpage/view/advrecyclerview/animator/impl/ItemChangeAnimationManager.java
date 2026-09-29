package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import android.util.Log;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.BaseItemAnimator;

/* loaded from: classes.dex */
public abstract class ItemChangeAnimationManager extends BaseItemAnimationManager<ChangeAnimationInfo> {
    private static final String TAG = "ARVItemChangeAnimMgr";

    public abstract boolean addPendingAnimation(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4);

    protected abstract void onCreateChangeAnimationForNewItem(ChangeAnimationInfo changeAnimationInfo);

    protected abstract void onCreateChangeAnimationForOldItem(ChangeAnimationInfo changeAnimationInfo);

    public ItemChangeAnimationManager(BaseItemAnimator itemAnimator) {
        super(itemAnimator);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void dispatchStarting(ChangeAnimationInfo info, RecyclerView.ViewHolder item) {
        if (debugLogEnabled()) {
            Log.d(TAG, "dispatchChangeStarting(" + item + ")");
        }
        this.mItemAnimator.dispatchChangeStarting(item, item == info.oldHolder);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void dispatchFinished(ChangeAnimationInfo info, RecyclerView.ViewHolder item) {
        if (debugLogEnabled()) {
            Log.d(TAG, "dispatchChangeFinished(" + item + ")");
        }
        this.mItemAnimator.dispatchChangeFinished(item, item == info.oldHolder);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public long getDuration() {
        return this.mItemAnimator.getChangeDuration();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void setDuration(long duration) {
        this.mItemAnimator.setChangeDuration(duration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void onCreateAnimation(ChangeAnimationInfo info) {
        if (info.oldHolder != null && info.oldHolder.itemView != null) {
            onCreateChangeAnimationForOldItem(info);
        }
        if (info.newHolder != null && info.newHolder.itemView != null) {
            onCreateChangeAnimationForNewItem(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public boolean endNotStartedAnimation(ChangeAnimationInfo info, RecyclerView.ViewHolder item) {
        if (info.oldHolder != null && (item == null || info.oldHolder == item)) {
            onAnimationEndedBeforeStarted(info, info.oldHolder);
            dispatchFinished(info, info.oldHolder);
            info.clear(info.oldHolder);
        }
        if (info.newHolder != null && (item == null || info.newHolder == item)) {
            onAnimationEndedBeforeStarted(info, info.newHolder);
            dispatchFinished(info, info.newHolder);
            info.clear(info.newHolder);
        }
        return info.oldHolder == null && info.newHolder == null;
    }
}
