package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.BaseItemAnimator;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public abstract class ItemAddAnimationManager extends BaseItemAnimationManager<AddAnimationInfo> {
    private static final String TAG = "ARVItemAddAnimMgr";

    public abstract boolean addPendingAnimation(RecyclerView.ViewHolder viewHolder);

    public ItemAddAnimationManager(BaseItemAnimator itemAnimator) {
        super(itemAnimator);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public long getDuration() {
        return this.mItemAnimator.getAddDuration();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void setDuration(long duration) {
        this.mItemAnimator.setAddDuration(duration);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void dispatchStarting(AddAnimationInfo info, RecyclerView.ViewHolder item) {
        if (debugLogEnabled()) {
            Logger.d(TAG, "dispatchAddStarting(" + item + ")");
        }
        this.mItemAnimator.dispatchAddStarting(item);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public void dispatchFinished(AddAnimationInfo info, RecyclerView.ViewHolder item) {
        if (debugLogEnabled()) {
            Logger.d(TAG, "dispatchAddFinished(" + item + ")");
        }
        this.mItemAnimator.dispatchAddFinished(item);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
    public boolean endNotStartedAnimation(AddAnimationInfo info, RecyclerView.ViewHolder item) {
        if (info.holder == null || !(item == null || info.holder == item)) {
            return false;
        }
        onAnimationEndedBeforeStarted(info, info.holder);
        dispatchFinished(info, info.holder);
        info.clear(info.holder);
        return true;
    }
}
