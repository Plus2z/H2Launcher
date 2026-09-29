package net.oneplus.h2launcher.iconrearrangement;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class IconRearrangementRecyclerView extends RecyclerView {
    private int mItemWidth;
    private int mScreenContainViewCount;
    private boolean mScrollToLast;

    public IconRearrangementRecyclerView(Context context) {
        this(context, null, 0);
    }

    public IconRearrangementRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IconRearrangementRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mScrollToLast = false;
        this.mItemWidth = context.getResources().getDimensionPixelOffset(R.dimen.icon_rearrangement_item_width);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (this.mScrollToLast) {
            this.mScrollToLast = false;
            int targetPos = getAdapter().getItemCount() - 1;
            smoothScrollToPosition(targetPos);
        }
    }

    public void setScrollToLast(boolean scrollToLast) {
        this.mScrollToLast = scrollToLast;
    }
}
