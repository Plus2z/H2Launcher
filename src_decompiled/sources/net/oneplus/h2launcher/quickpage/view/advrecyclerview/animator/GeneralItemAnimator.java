package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.inputmethod.T9.HanziToPinyin;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAddAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemChangeAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemMoveAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemRemoveAnimationManager;

/* loaded from: classes.dex */
public abstract class GeneralItemAnimator extends BaseItemAnimator {
    private static final String TAG = "ARVGeneralItemAnimator";
    private ItemAddAnimationManager mAddAnimationsManager;
    private ItemChangeAnimationManager mChangeAnimationsManager;
    private boolean mDebug;
    private ItemMoveAnimationManager mMoveAnimationsManager;
    private ItemRemoveAnimationManager mRemoveAnimationManager;

    protected abstract void onSetup();

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneralItemAnimator() {
        setup();
    }

    private void setup() {
        onSetup();
        if (this.mRemoveAnimationManager == null || this.mAddAnimationsManager == null || this.mChangeAnimationsManager == null || this.mMoveAnimationsManager == null) {
            throw new IllegalStateException("setup incomplete");
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        if (hasPendingAnimations()) {
            onSchedulePendingAnimations();
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder holder) {
        if (this.mDebug) {
            Log.d(TAG, "animateRemove(id = " + holder.getItemId() + ", position = " + holder.getLayoutPosition() + ")");
        }
        return this.mRemoveAnimationManager.addPendingAnimation(holder);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder holder) {
        if (this.mDebug) {
            Log.d(TAG, "animateAdd(id = " + holder.getItemId() + ", position = " + holder.getLayoutPosition() + ")");
        }
        return this.mAddAnimationsManager.addPendingAnimation(holder);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public boolean animateMove(RecyclerView.ViewHolder holder, int fromX, int fromY, int toX, int toY) {
        if (this.mDebug) {
            Log.d(TAG, "animateMove(id = " + holder.getItemId() + ", position = " + holder.getLayoutPosition() + ", fromX = " + fromX + ", fromY = " + fromY + ", toX =" + HanziToPinyin.Token.SEPARATOR + toX + ", toY = " + toY + ")");
        }
        return this.mMoveAnimationsManager.addPendingAnimation(holder, fromX, fromY, toX, toY);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder oldHolder, RecyclerView.ViewHolder newHolder, int fromX, int fromY, int toX, int toY) {
        if (this.mDebug) {
            String oldId = oldHolder != null ? Long.toString(oldHolder.getItemId()) : "-";
            String oldPosition = oldHolder != null ? Long.toString(oldHolder.getLayoutPosition()) : "-";
            String newId = newHolder != null ? Long.toString(newHolder.getItemId()) : "-";
            String newPosition = newHolder != null ? Long.toString(newHolder.getLayoutPosition()) : "-";
            Log.d(TAG, "animateChange(old.id = " + oldId + ", old.position = " + oldPosition + ", new.id = " + newId + ", new.position = " + newPosition + ", fromX = " + fromX + ", fromY = " + fromY + ", toX = " + toX + ", toY = " + toY + ")");
        }
        return this.mChangeAnimationsManager.addPendingAnimation(oldHolder, newHolder, fromX, fromY, toX, toY);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cancelAnimations(RecyclerView.ViewHolder item) {
        ViewCompat.animate(item.itemView).cancel();
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder item) {
        cancelAnimations(item);
        this.mMoveAnimationsManager.endPendingAnimations(item);
        this.mChangeAnimationsManager.endPendingAnimations(item);
        this.mRemoveAnimationManager.endPendingAnimations(item);
        this.mAddAnimationsManager.endPendingAnimations(item);
        this.mMoveAnimationsManager.endDeferredReadyAnimations(item);
        this.mChangeAnimationsManager.endDeferredReadyAnimations(item);
        this.mRemoveAnimationManager.endDeferredReadyAnimations(item);
        this.mAddAnimationsManager.endDeferredReadyAnimations(item);
        if (this.mRemoveAnimationManager.removeFromActive(item) && this.mDebug) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [remove]");
        }
        if (this.mAddAnimationsManager.removeFromActive(item) && this.mDebug) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [add]");
        }
        if (this.mChangeAnimationsManager.removeFromActive(item) && this.mDebug) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [change]");
        }
        if (this.mMoveAnimationsManager.removeFromActive(item) && this.mDebug) {
            throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [move]");
        }
        dispatchFinishedWhenDone();
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return this.mRemoveAnimationManager.isRunning() || this.mAddAnimationsManager.isRunning() || this.mChangeAnimationsManager.isRunning() || this.mMoveAnimationsManager.isRunning();
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public void endAnimations() {
        this.mMoveAnimationsManager.endAllPendingAnimations();
        this.mRemoveAnimationManager.endAllPendingAnimations();
        this.mAddAnimationsManager.endAllPendingAnimations();
        this.mChangeAnimationsManager.endAllPendingAnimations();
        if (isRunning()) {
            this.mMoveAnimationsManager.endAllDeferredReadyAnimations();
            this.mAddAnimationsManager.endAllDeferredReadyAnimations();
            this.mChangeAnimationsManager.endAllDeferredReadyAnimations();
            this.mRemoveAnimationManager.cancelAllStartedAnimations();
            this.mMoveAnimationsManager.cancelAllStartedAnimations();
            this.mAddAnimationsManager.cancelAllStartedAnimations();
            this.mChangeAnimationsManager.cancelAllStartedAnimations();
            dispatchAnimationsFinished();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.BaseItemAnimator
    public boolean debugLogEnabled() {
        return this.mDebug;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.BaseItemAnimator
    public boolean dispatchFinishedWhenDone() {
        if (this.mDebug && !isRunning()) {
            Log.d(TAG, "dispatchFinishedWhenDone()");
        }
        return super.dispatchFinishedWhenDone();
    }

    protected boolean hasPendingAnimations() {
        return this.mRemoveAnimationManager.hasPending() || this.mMoveAnimationsManager.hasPending() || this.mChangeAnimationsManager.hasPending() || this.mAddAnimationsManager.hasPending();
    }

    protected ItemRemoveAnimationManager getRemoveAnimationManager() {
        return this.mRemoveAnimationManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemRemoveAnimationManager(ItemRemoveAnimationManager removeAnimationManager) {
        this.mRemoveAnimationManager = removeAnimationManager;
    }

    protected ItemAddAnimationManager getItemAddAnimationsManager() {
        return this.mAddAnimationsManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemAddAnimationsManager(ItemAddAnimationManager addAnimationsManager) {
        this.mAddAnimationsManager = addAnimationsManager;
    }

    protected ItemChangeAnimationManager getItemChangeAnimationsManager() {
        return this.mChangeAnimationsManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemChangeAnimationsManager(ItemChangeAnimationManager changeAnimationsManager) {
        this.mChangeAnimationsManager = changeAnimationsManager;
    }

    protected ItemMoveAnimationManager getItemMoveAnimationsManager() {
        return this.mMoveAnimationsManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemMoveAnimationsManager(ItemMoveAnimationManager moveAnimationsManager) {
        this.mMoveAnimationsManager = moveAnimationsManager;
    }

    public boolean isDebug() {
        return this.mDebug;
    }

    public void setDebug(boolean debug) {
        this.mDebug = debug;
    }

    protected void onSchedulePendingAnimations() {
        schedulePendingAnimationsByDefaultRule();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void schedulePendingAnimationsByDefaultRule() {
        boolean removalsPending = this.mRemoveAnimationManager.hasPending();
        boolean movesPending = this.mMoveAnimationsManager.hasPending();
        boolean changesPending = this.mChangeAnimationsManager.hasPending();
        boolean additionsPending = this.mAddAnimationsManager.hasPending();
        long removeDuration = removalsPending ? getRemoveDuration() : 0L;
        long moveDuration = movesPending ? getMoveDuration() : 0L;
        long changeDuration = changesPending ? getChangeDuration() : 0L;
        if (removalsPending) {
            this.mRemoveAnimationManager.runPendingAnimations(false, 0L);
        }
        if (movesPending) {
            long deferredDelay = removeDuration;
            this.mMoveAnimationsManager.runPendingAnimations(removalsPending, deferredDelay);
        }
        if (changesPending) {
            long deferredDelay2 = removeDuration;
            this.mChangeAnimationsManager.runPendingAnimations(removalsPending, deferredDelay2);
        }
        if (additionsPending) {
            boolean deferred = removalsPending || movesPending || changesPending;
            long totalDelay = removeDuration + Math.max(moveDuration, changeDuration);
            long deferredDelay3 = deferred ? totalDelay : 0L;
            this.mAddAnimationsManager.runPendingAnimations(deferred, deferredDelay3);
        }
    }
}
