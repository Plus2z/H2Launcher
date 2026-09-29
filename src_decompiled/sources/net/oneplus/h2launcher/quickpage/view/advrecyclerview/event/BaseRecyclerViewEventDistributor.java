package net.oneplus.h2launcher.quickpage.view.advrecyclerview.event;

import android.support.annotation.NonNull;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseRecyclerViewEventDistributor<T> {
    protected List<T> mListeners;
    protected boolean mPerformingClearMethod;
    protected RecyclerView mRecyclerView;
    protected boolean mReleased;

    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    public void release() {
        if (!this.mReleased) {
            this.mReleased = true;
            clear(true);
            onRelease();
        }
    }

    public boolean isReleased() {
        return this.mReleased;
    }

    public void attachRecyclerView(RecyclerView rv) {
        if (rv == null) {
            throw new IllegalArgumentException("RecyclerView cannot be null");
        }
        verifyIsNotReleased("attachRecyclerView()");
        verifyIsNotPerformingClearMethod("attachRecyclerView()");
        onRecyclerViewAttached(rv);
    }

    public boolean add(T listener) {
        return add(listener, -1);
    }

    public boolean add(@NonNull T listener, int index) {
        if (listener == null) {
            throw new IllegalArgumentException("can not specify null for the listener");
        }
        verifyIsNotReleased("add()");
        verifyIsNotPerformingClearMethod("add()");
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        if (!this.mListeners.contains(listener)) {
            if (index < 0) {
                this.mListeners.add(listener);
            } else {
                this.mListeners.add(index, listener);
            }
            if (listener instanceof RecyclerViewEventDistributorListener) {
                ((RecyclerViewEventDistributorListener) listener).onAddedToEventDistributor(this);
                return true;
            }
            return true;
        }
        return true;
    }

    public boolean remove(@NonNull T listener) {
        if (listener == null) {
            throw new IllegalArgumentException("can not specify null for the listener");
        }
        verifyIsNotPerformingClearMethod("remove()");
        verifyIsNotReleased("remove()");
        if (this.mListeners == null) {
            return false;
        }
        boolean removed = this.mListeners.remove(listener);
        if (removed && (listener instanceof RecyclerViewEventDistributorListener)) {
            ((RecyclerViewEventDistributorListener) listener).onRemovedFromEventDistributor(this);
            return removed;
        }
        return removed;
    }

    public void clear() {
        clear(false);
    }

    protected void clear(boolean calledFromRelease) {
        if (!calledFromRelease) {
            verifyIsNotReleased("clear()");
        }
        verifyIsNotPerformingClearMethod("clear()");
        if (this.mListeners != null) {
            try {
                this.mPerformingClearMethod = true;
                int n = this.mListeners.size();
                for (int i = n - 1; i >= 0; i--) {
                    T listener = this.mListeners.remove(i);
                    if (listener instanceof RecyclerViewEventDistributorListener) {
                        ((RecyclerViewEventDistributorListener) listener).onRemovedFromEventDistributor(this);
                    }
                }
            } finally {
                this.mPerformingClearMethod = false;
            }
        }
    }

    public int size() {
        return this.mListeners != null ? this.mListeners.size() : this.mListeners.size();
    }

    public boolean contains(T listener) {
        if (this.mListeners != null) {
            return this.mListeners.contains(listener);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRelease() {
        this.mRecyclerView = null;
        this.mListeners = null;
        this.mPerformingClearMethod = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRecyclerViewAttached(RecyclerView rv) {
        this.mRecyclerView = rv;
    }

    protected void verifyIsNotPerformingClearMethod(String methodName) {
        if (this.mPerformingClearMethod) {
            throw new IllegalStateException(methodName + " can not be called while performing the clear() method");
        }
    }

    protected void verifyIsNotReleased(String methodName) {
        if (this.mReleased) {
            throw new IllegalStateException(methodName + " can not be called after release() method called");
        }
    }
}
