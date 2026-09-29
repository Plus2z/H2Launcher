package net.oneplus.h2launcher.quickpage;

import android.view.View;
import net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider;

/* loaded from: classes.dex */
public abstract class QuickPageItem implements AbstractDataProvider.Data {
    protected ActivityCallback mCallback;
    protected int mId;
    protected boolean mPinned;
    protected boolean mVerticalResizable = true;

    /* loaded from: classes.dex */
    public interface ActivityCallback {
        void onItemAdapterChanged();

        void onItemContentChanged(QuickPageItem quickPageItem);

        void onItemSizeChanged();
    }

    public abstract String getContent();

    public abstract View getEmptyView();

    public abstract int getMaxHeight();

    public abstract int getMinHeight();

    public abstract View getParent();

    public abstract int getSize();

    public abstract int getStandardHeight(int i);

    public abstract String getTitle();

    public abstract View getView();

    public abstract boolean hasScrollableContent();

    public abstract boolean isEmpty();

    public abstract void onContainerVisibilityChanged(boolean z);

    public abstract void onItemResizeFinished();

    public abstract void onItemResizeProgress(int i);

    public abstract void onItemViewAttached();

    public abstract void onRemove();

    public abstract void onUiComponentChanged();

    public void onPermissionsChanged() {
    }

    public void onResume() {
    }

    public void onNewIntent() {
    }

    public void setCallback(ActivityCallback callback) {
        this.mCallback = callback;
    }

    public void notifyItemContentChanged() {
        if (this.mCallback != null) {
            this.mCallback.onItemContentChanged(this);
        }
    }

    public void notifyItemAdapterChanged() {
        if (this.mCallback != null) {
            this.mCallback.onItemAdapterChanged();
        }
    }

    public void notifyItemSizeChanged() {
        if (this.mCallback != null) {
            this.mCallback.onItemSizeChanged();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getId() {
        return hashCode();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public boolean isSectionHeader() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public void setPinned(boolean pinned) {
        this.mPinned = pinned;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public boolean isPinned() {
        return this.mPinned;
    }

    public boolean isVerticalResizable() {
        return this.mVerticalResizable;
    }
}
