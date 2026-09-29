package net.oneplus.h2launcher;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public abstract class BaseContainerView extends FrameLayout implements Insettable {
    private static final String TAG = "BaseContainerView";
    protected int mContainerBoundsInset;
    protected Rect mContentPadding;
    private Rect mFixedSearchBarBounds;
    private boolean mHasSearchBar;
    private Rect mInsets;
    private Rect mSearchBarBounds;

    protected abstract void onUpdateBackgroundAndPaddings(Rect rect, Rect rect2);

    public BaseContainerView(Context context) {
        this(context, null);
    }

    public BaseContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BaseContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mInsets = new Rect();
        this.mFixedSearchBarBounds = new Rect();
        this.mSearchBarBounds = new Rect();
        this.mContentPadding = new Rect();
        this.mContainerBoundsInset = getResources().getDimensionPixelSize(R.dimen.container_bounds_inset);
    }

    @Override // net.oneplus.h2launcher.Insettable
    public final void setInsets(Rect insets) {
        this.mInsets.set(insets);
        updateBackgroundAndPaddings();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHasSearchBar() {
        this.mHasSearchBar = true;
    }

    public final void setSearchBarBounds(Rect bounds) {
        if (LauncherAppState.isDogfoodBuild() && !isValidSearchBarBounds(bounds)) {
            Log.e(TAG, "Invalid search bar bounds: " + bounds);
        }
        this.mFixedSearchBarBounds.set(bounds);
        post(new Runnable() { // from class: net.oneplus.h2launcher.BaseContainerView.1
            @Override // java.lang.Runnable
            public void run() {
                BaseContainerView.this.updateBackgroundAndPaddings();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateBackgroundAndPaddings() {
        updateBackgroundAndPaddings(false);
    }

    protected void updateBackgroundAndPaddings(boolean forceBoundsUpdate) {
        Rect padding;
        Rect searchBarBounds = new Rect();
        if (!isValidSearchBarBounds(this.mFixedSearchBarBounds)) {
            padding = new Rect(this.mContainerBoundsInset + this.mInsets.left, this.mHasSearchBar ? 0 : this.mInsets.top + this.mContainerBoundsInset, this.mInsets.right + this.mContainerBoundsInset, this.mInsets.bottom + this.mContainerBoundsInset);
            searchBarBounds.set(this.mInsets.left + this.mContainerBoundsInset, this.mInsets.top + this.mContainerBoundsInset, getMeasuredWidth() - (this.mInsets.right + this.mContainerBoundsInset), 0);
        } else {
            padding = new Rect(this.mFixedSearchBarBounds.left, this.mHasSearchBar ? 0 : this.mInsets.top + this.mContainerBoundsInset, getMeasuredWidth() - this.mFixedSearchBarBounds.right, this.mInsets.bottom + this.mContainerBoundsInset);
            searchBarBounds.set(this.mFixedSearchBarBounds);
        }
        if (forceBoundsUpdate || !padding.equals(this.mContentPadding) || !searchBarBounds.equals(this.mSearchBarBounds)) {
            this.mContentPadding.set(padding);
            this.mSearchBarBounds.set(searchBarBounds);
            onUpdateBackgroundAndPaddings(this.mSearchBarBounds, padding);
        }
    }

    private boolean isValidSearchBarBounds(Rect searchBarBounds) {
        return !searchBarBounds.isEmpty() && searchBarBounds.right <= getMeasuredWidth() && searchBarBounds.bottom <= getMeasuredHeight();
    }
}
