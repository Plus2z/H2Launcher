package net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import com.oneplus.lib.widget.recyclerview.GridLayoutManager;
import com.oneplus.lib.widget.recyclerview.LinearLayoutManager;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import com.oneplus.lib.widget.recyclerview.StaggeredGridLayoutManager;

/* loaded from: classes.dex */
public class CustomRecyclerViewUtils {
    public static final int LAYOUT_TYPE_GRID_HORIZONTAL = 2;
    public static final int LAYOUT_TYPE_GRID_VERTICAL = 3;
    public static final int LAYOUT_TYPE_LINEAR_HORIZONTAL = 0;
    public static final int LAYOUT_TYPE_LINEAR_VERTICAL = 1;
    public static final int LAYOUT_TYPE_STAGGERED_GRID_HORIZONTAL = 4;
    public static final int LAYOUT_TYPE_STAGGERED_GRID_VERTICAL = 5;
    public static final int LAYOUT_TYPE_UNKNOWN = -1;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_UNKNOWN = -1;
    public static final int ORIENTATION_VERTICAL = 1;

    public static RecyclerView.ViewHolder findChildViewHolderUnderWithoutTranslation(@NonNull RecyclerView rv, float x, float y) {
        View child = findChildViewUnderWithoutTranslation(rv, x, y);
        if (child != null) {
            return rv.getChildViewHolder(child);
        }
        return null;
    }

    public static int getLayoutType(@NonNull RecyclerView rv) {
        return getLayoutType(rv.getLayoutManager());
    }

    public static int getLayoutType(@Nullable RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof GridLayoutManager) {
            if (((GridLayoutManager) layoutManager).getOrientation() == 0) {
                return 2;
            }
            return 3;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).getOrientation() == 0) {
                return 0;
            }
            return 1;
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 0) {
                return 4;
            }
            return 5;
        }
        return -1;
    }

    private static View findChildViewUnderWithoutTranslation(@NonNull ViewGroup parent, float x, float y) {
        int count = parent.getChildCount();
        for (int i = count - 1; i >= 0; i--) {
            View child = parent.getChildAt(i);
            if (x >= child.getLeft() && x <= child.getRight() && y >= child.getTop() && y <= child.getBottom()) {
                return child;
            }
        }
        return null;
    }

    public static RecyclerView.ViewHolder findChildViewHolderUnderWithTranslation(@NonNull RecyclerView rv, float x, float y) {
        View child = rv.findChildViewUnder(x, y);
        if (child != null) {
            return rv.getChildViewHolder(child);
        }
        return null;
    }

    public static Rect getLayoutMargins(View v, Rect outMargins) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            outMargins.left = marginLayoutParams.leftMargin;
            outMargins.right = marginLayoutParams.rightMargin;
            outMargins.top = marginLayoutParams.topMargin;
            outMargins.bottom = marginLayoutParams.bottomMargin;
        } else {
            outMargins.bottom = 0;
            outMargins.top = 0;
            outMargins.right = 0;
            outMargins.left = 0;
        }
        return outMargins;
    }

    public static Rect getDecorationOffsets(@NonNull RecyclerView.LayoutManager layoutManager, View view, Rect outDecorations) {
        outDecorations.left = layoutManager.getLeftDecorationWidth(view);
        outDecorations.right = layoutManager.getRightDecorationWidth(view);
        outDecorations.top = layoutManager.getTopDecorationHeight(view);
        outDecorations.bottom = layoutManager.getBottomDecorationHeight(view);
        return outDecorations;
    }

    public static Rect getViewBounds(@NonNull View v, @NonNull Rect outBounds) {
        outBounds.left = v.getLeft();
        outBounds.right = v.getRight();
        outBounds.top = v.getTop();
        outBounds.bottom = v.getBottom();
        return outBounds;
    }

    public static int findFirstVisibleItemPosition(@NonNull RecyclerView rv) {
        RecyclerView.LayoutManager layoutManager = rv.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        return -1;
    }

    public static int findLastVisibleItemPosition(@NonNull RecyclerView rv) {
        RecyclerView.LayoutManager layoutManager = rv.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        return -1;
    }

    public static int findFirstCompletelyVisibleItemPosition(@NonNull RecyclerView rv) {
        RecyclerView.LayoutManager layoutManager = rv.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        return -1;
    }

    public static int findLastCompletelyVisibleItemPosition(@NonNull RecyclerView rv) {
        RecyclerView.LayoutManager layoutManager = rv.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        return -1;
    }

    public static int getSynchronizedPosition(@NonNull RecyclerView.ViewHolder holder) {
        int pos1 = holder.getLayoutPosition();
        int pos2 = holder.getAdapterPosition();
        if (pos1 == pos2) {
            return pos1;
        }
        return -1;
    }

    public static int getSpanCount(@NonNull RecyclerView rv) {
        RecyclerView.LayoutManager layoutManager = rv.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        }
        return 1;
    }

    public static int getOrientation(@NonNull RecyclerView rv) {
        RecyclerView.LayoutManager layoutManager = rv.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getOrientation();
        }
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getOrientation();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getOrientation();
        }
        return -1;
    }
}
