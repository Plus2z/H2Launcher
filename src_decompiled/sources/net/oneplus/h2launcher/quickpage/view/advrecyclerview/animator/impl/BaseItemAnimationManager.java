package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.BaseItemAnimator;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAnimationInfo;

/* loaded from: classes.dex */
public abstract class BaseItemAnimationManager<T extends ItemAnimationInfo> {
    protected BaseItemAnimator mItemAnimator;
    protected List<T> mPending = new ArrayList();
    protected List<RecyclerView.ViewHolder> mActive = new ArrayList();
    protected List<List<T>> mDeferredReadySets = new ArrayList();

    public abstract void dispatchFinished(T t, RecyclerView.ViewHolder viewHolder);

    public abstract void dispatchStarting(T t, RecyclerView.ViewHolder viewHolder);

    protected abstract boolean endNotStartedAnimation(T t, RecyclerView.ViewHolder viewHolder);

    public abstract long getDuration();

    protected abstract void onAnimationCancel(T t, RecyclerView.ViewHolder viewHolder);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onAnimationEndedBeforeStarted(T t, RecyclerView.ViewHolder viewHolder);

    protected abstract void onAnimationEndedSuccessfully(T t, RecyclerView.ViewHolder viewHolder);

    protected abstract void onCreateAnimation(T t);

    public abstract void setDuration(long j);

    public BaseItemAnimationManager(BaseItemAnimator itemAnimator) {
        this.mItemAnimator = itemAnimator;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean debugLogEnabled() {
        return this.mItemAnimator.debugLogEnabled();
    }

    public boolean hasPending() {
        return !this.mPending.isEmpty();
    }

    public boolean isRunning() {
        return (this.mPending.isEmpty() && this.mActive.isEmpty() && this.mDeferredReadySets.isEmpty()) ? false : true;
    }

    public boolean removeFromActive(RecyclerView.ViewHolder item) {
        return this.mActive.remove(item);
    }

    public void cancelAllStartedAnimations() {
        List<RecyclerView.ViewHolder> active = this.mActive;
        for (int i = active.size() - 1; i >= 0; i--) {
            View view = active.get(i).itemView;
            ViewCompat.animate(view).cancel();
        }
    }

    public void runPendingAnimations(boolean deferred, long deferredDelay) {
        final List<T> ready = new ArrayList<>();
        ready.addAll(this.mPending);
        this.mPending.clear();
        if (deferred) {
            this.mDeferredReadySets.add(ready);
            Runnable process = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = ready.iterator();
                    while (it.hasNext()) {
                        BaseItemAnimationManager.this.createAnimation((ItemAnimationInfo) it.next());
                    }
                    ready.clear();
                    BaseItemAnimationManager.this.mDeferredReadySets.remove(ready);
                }
            };
            View view = ready.get(0).getAvailableViewHolder().itemView;
            ViewCompat.postOnAnimationDelayed(view, process, deferredDelay);
            return;
        }
        for (T info : ready) {
            createAnimation(info);
        }
        ready.clear();
    }

    public void endPendingAnimations(RecyclerView.ViewHolder item) {
        List<T> pending = this.mPending;
        for (int i = pending.size() - 1; i >= 0; i--) {
            T info = pending.get(i);
            if (endNotStartedAnimation(info, item) && item != null) {
                pending.remove(i);
            }
        }
        if (item == null) {
            pending.clear();
        }
    }

    public void endAllPendingAnimations() {
        endPendingAnimations(null);
    }

    public void endDeferredReadyAnimations(RecyclerView.ViewHolder item) {
        for (int i = this.mDeferredReadySets.size() - 1; i >= 0; i--) {
            List<T> ready = this.mDeferredReadySets.get(i);
            for (int j = ready.size() - 1; j >= 0; j--) {
                T info = ready.get(j);
                if (endNotStartedAnimation(info, item) && item != null) {
                    ready.remove(j);
                }
            }
            if (item == null) {
                ready.clear();
            }
            if (ready.isEmpty()) {
                this.mDeferredReadySets.remove(ready);
            }
        }
    }

    public void endAllDeferredReadyAnimations() {
        endDeferredReadyAnimations(null);
    }

    void createAnimation(T info) {
        onCreateAnimation(info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void endAnimation(RecyclerView.ViewHolder holder) {
        this.mItemAnimator.endAnimation(holder);
    }

    protected void dispatchFinishedWhenDone() {
        this.mItemAnimator.dispatchFinishedWhenDone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void enqueuePendingAnimationInfo(T info) {
        if (info == null) {
            throw new IllegalStateException("info is null");
        }
        this.mPending.add(info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startActiveItemAnimation(T info, RecyclerView.ViewHolder holder, ViewPropertyAnimatorCompat animator) {
        animator.setListener(new BaseAnimatorListener(this, info, holder, animator));
        addActiveAnimationTarget(holder);
        animator.start();
    }

    private void addActiveAnimationTarget(RecyclerView.ViewHolder item) {
        if (item == null) {
            throw new IllegalStateException("item is null");
        }
        this.mActive.add(item);
    }

    /* loaded from: classes.dex */
    protected static class BaseAnimatorListener implements ViewPropertyAnimatorListener {
        private ItemAnimationInfo mAnimationInfo;
        private ViewPropertyAnimatorCompat mAnimator;
        private RecyclerView.ViewHolder mHolder;
        private BaseItemAnimationManager mManager;

        public BaseAnimatorListener(BaseItemAnimationManager manager, ItemAnimationInfo info, RecyclerView.ViewHolder holder, ViewPropertyAnimatorCompat animator) {
            this.mManager = manager;
            this.mAnimationInfo = info;
            this.mHolder = holder;
            this.mAnimator = animator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            this.mManager.dispatchStarting(this.mAnimationInfo, this.mHolder);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            BaseItemAnimationManager baseItemAnimationManager = this.mManager;
            ItemAnimationInfo info = this.mAnimationInfo;
            RecyclerView.ViewHolder holder = this.mHolder;
            this.mAnimator.setListener(null);
            this.mManager = null;
            this.mAnimationInfo = null;
            this.mHolder = null;
            this.mAnimator = null;
            baseItemAnimationManager.onAnimationEndedSuccessfully(info, holder);
            baseItemAnimationManager.dispatchFinished(info, holder);
            info.clear(holder);
            baseItemAnimationManager.mActive.remove(holder);
            baseItemAnimationManager.dispatchFinishedWhenDone();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.mManager.onAnimationCancel(this.mAnimationInfo, this.mHolder);
        }
    }
}
