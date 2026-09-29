package net.oneplus.h2launcher.customizations;

import android.view.View;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.ScrollView;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.customizations.OnePlusScrollView;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ScrollableViewHelper {
    private static final String TAG = ScrollableViewHelper.class.getSimpleName();
    private OnScrollListener mOnScrollListener;

    /* loaded from: classes.dex */
    public interface OnScrollListener {
        void onScroll(int i);
    }

    public int getScrollableViewScrollPosition(View scrollableView, boolean isSlidingUp) {
        if (scrollableView == null) {
            return 0;
        }
        if (scrollableView instanceof ScrollView) {
            if (isSlidingUp) {
                return scrollableView.getScrollY();
            }
            ScrollView sv = (ScrollView) scrollableView;
            View child = sv.getChildAt(0);
            return child.getBottom() - (sv.getHeight() + sv.getScrollY());
        }
        if ((scrollableView instanceof ListView) && ((ListView) scrollableView).getChildCount() > 0) {
            ListView lv = (ListView) scrollableView;
            if (lv.getAdapter() == null) {
                return 0;
            }
            if (isSlidingUp) {
                View firstChild = lv.getChildAt(0);
                return (lv.getFirstVisiblePosition() * firstChild.getHeight()) - firstChild.getTop();
            }
            View lastChild = lv.getChildAt(lv.getChildCount() - 1);
            return ((((lv.getAdapter().getCount() - lv.getLastVisiblePosition()) - 1) * lastChild.getHeight()) + lastChild.getBottom()) - lv.getBottom();
        }
        if ((scrollableView instanceof RecyclerView) && ((RecyclerView) scrollableView).getChildCount() > 0) {
            RecyclerView rv = (RecyclerView) scrollableView;
            RecyclerView.LayoutManager lm = rv.getLayoutManager();
            if (rv.getAdapter() == null) {
                return 0;
            }
            if (isSlidingUp) {
                View firstChild2 = rv.getChildAt(0);
                return (rv.getChildLayoutPosition(firstChild2) * lm.getDecoratedMeasuredHeight(firstChild2)) - lm.getDecoratedTop(firstChild2);
            }
            View lastChild2 = rv.getChildAt(rv.getChildCount() - 1);
            return (((rv.getAdapter().getItemCount() - 1) * lm.getDecoratedMeasuredHeight(lastChild2)) + lm.getDecoratedBottom(lastChild2)) - rv.getBottom();
        }
        if (!(scrollableView instanceof GridView) || ((GridView) scrollableView).getChildCount() <= 0) {
            return 0;
        }
        GridView gv = (GridView) scrollableView;
        int numColumns = gv.getNumColumns();
        int rows = gv.getFirstVisiblePosition() / numColumns;
        if (!isSlidingUp) {
            return 0;
        }
        View firstChild3 = gv.getChildAt(0);
        return (firstChild3.getHeight() * rows) - firstChild3.getTop();
    }

    public void monitorTopScrolled(View scrollableView, OnScrollListener onScrollListener) {
        this.mOnScrollListener = onScrollListener;
        if (scrollableView instanceof OnePlusScrollView) {
            OnePlusScrollView onePlusScrollView = (OnePlusScrollView) scrollableView;
            onePlusScrollView.setOnScrollListener(new OnScrollViewScrollListener());
        } else {
            if (scrollableView instanceof OnePlusListView) {
                OnePlusListView onePlusListView = (OnePlusListView) scrollableView;
                OnListViewScrollListener listener = new OnListViewScrollListener(onePlusListView.getOnScrollListener());
                onePlusListView.setOnScrollListener(listener);
                return;
            }
            Logger.w(TAG, "Unsupported scrollable view type: " + scrollableView.getClass().getSimpleName());
        }
    }

    /* loaded from: classes.dex */
    private final class OnScrollViewScrollListener implements OnePlusScrollView.OnScrollListener {
        private OnScrollViewScrollListener() {
        }

        @Override // net.oneplus.h2launcher.customizations.OnePlusScrollView.OnScrollListener
        public void onScrollChanged(OnePlusScrollView scrollView, int l, int t, int oldl, int oldt) {
            if (ScrollableViewHelper.this.mOnScrollListener != null) {
                ScrollableViewHelper.this.mOnScrollListener.onScroll(t);
            }
        }
    }

    /* loaded from: classes.dex */
    private final class OnListViewScrollListener implements AbsListView.OnScrollListener {
        private final AbsListView.OnScrollListener mOriginalOnScrollListener;

        private OnListViewScrollListener(AbsListView.OnScrollListener originalScrollListener) {
            this.mOriginalOnScrollListener = originalScrollListener;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView view, int scrollState) {
            if (this.mOriginalOnScrollListener != null) {
                this.mOriginalOnScrollListener.onScrollStateChanged(view, scrollState);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            if (this.mOriginalOnScrollListener != null) {
                this.mOriginalOnScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
            }
            if (ScrollableViewHelper.this.mOnScrollListener != null) {
                int scrollY = ScrollableViewHelper.this.getScrollableViewScrollPosition(view, true);
                ScrollableViewHelper.this.mOnScrollListener.onScroll(scrollY);
            }
        }
    }
}
