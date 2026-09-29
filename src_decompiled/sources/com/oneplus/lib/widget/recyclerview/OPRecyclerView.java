package com.oneplus.lib.widget.recyclerview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class OPRecyclerView extends RecyclerView {
    private final Rect mContentPadding;

    public OPRecyclerView(Context context) {
        super(context);
        this.mContentPadding = new Rect();
        initialize(context, null, 0);
    }

    public OPRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContentPadding = new Rect();
        initialize(context, attrs, 0);
    }

    public OPRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mContentPadding = new Rect();
        initialize(context, attrs, defStyleAttr);
    }

    private void initialize(Context context, AttributeSet attrs, int defStyleAttr) {
        setClipToPadding(false);
    }

    public void addOPItemDecoration(OPItemDecoration decor) {
        addItemDecoration(decor);
        setPadding(0, decor.getSpace(), decor.getSpace(), 0);
    }
}
