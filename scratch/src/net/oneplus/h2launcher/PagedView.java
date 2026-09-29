package net.oneplus.h2launcher;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

public abstract class PagedView extends ViewGroup {
    public PagedView(Context context) { super(context); }
    public PagedView(Context context, AttributeSet attrs) { super(context, attrs); }
    public int getScrollForPage(int index) { return 0; }
}
