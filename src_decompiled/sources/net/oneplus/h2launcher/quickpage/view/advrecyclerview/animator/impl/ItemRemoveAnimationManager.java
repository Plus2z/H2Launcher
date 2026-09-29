package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import android.util.Log;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.BaseItemAnimator;

/* loaded from: classes.dex */
public abstract class ItemRemoveAnimationManager extends BaseItemAnimationManager<RemoveAnimationInfo> {
    private static final String TAG = "ARVItemRemoveAnimMgr";

    public abstract boolean addPendingAnimation(RecyclerView.ViewHolder viewHolder);

    public ItemRemoveAnimationManager(BaseItemAnimator itemAnimator) {
        super(itemAnimator);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public long getDuration() {
        return this.mItemAnimator.getRemoveDuration();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void setDuration(long duration) {
        this.mItemAnimator.setRemoveDuration(duration);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void dispatchStarting(RemoveAnimationInfo info, RecyclerView.ViewHolder item) {
        if (debugLogEnabled()) {
            Log.d(TAG, "dispatchRemoveStarting(" + item + ")");
        }
        this.mItemAnimator.dispatchRemoveStarting(item);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void dispatchFinished(RemoveAnimationInfo info, RecyclerView.ViewHolder item) {
        if (debugLogEnabled()) {
            Log.d(TAG, "dispatchRemoveFinished(" + item + ")");
        }
        this.mItemAnimator.dispatchRemoveFinished(item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public boolean endNotStartedAnimation(RemoveAnimationInfo info, RecyclerView.ViewHolder item) {
        if (info.holder == null || !(item == null || info.holder == item)) {
            return false;
        }
        onAnimationEndedBeforeStarted(info, info.holder);
        dispatchFinished(info, info.holder);
        info.clear(info.holder);
        return true;
    }
}
