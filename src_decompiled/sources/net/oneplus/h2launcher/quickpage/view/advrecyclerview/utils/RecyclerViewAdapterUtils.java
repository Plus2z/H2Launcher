package net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils;

import android.support.annotation.Nullable;
import android.view.View;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class RecyclerViewAdapterUtils {
    private RecyclerViewAdapterUtils() {
    }

    public static RecyclerView getParentRecyclerView(@Nullable View view) {
        if (view == null) {
            return null;
        }
        Object parent = view.getParent();
        if (parent instanceof RecyclerView) {
            return (RecyclerView) parent;
        }
        if (parent instanceof View) {
            return getParentRecyclerView((View) parent);
        }
        return null;
    }

    public static View getParentViewHolderItemView(@Nullable View view) {
        if (view == null) {
            return null;
        }
        Object parent = view.getParent();
        if (!(parent instanceof RecyclerView)) {
            if (parent instanceof View) {
                return getParentViewHolderItemView((View) parent);
            }
            return null;
        }
        return view;
    }

    public static RecyclerView.ViewHolder getViewHolder(@Nullable View view) {
        RecyclerView rv = getParentRecyclerView(view);
        View rvChild = getParentViewHolderItemView(view);
        if (rv == null || rvChild == null) {
            return null;
        }
        return rv.getChildViewHolder(rvChild);
    }
}
