package net.oneplus.h2launcher;

import android.content.Context;
import android.util.AttributeSet;

public class Workspace extends PagedView {
    public Workspace(Context context) { super(context); }
    public Workspace(Context context, AttributeSet attrs) { super(context, attrs); }
    public int numCustomPages() { return 0; }
    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {}
}
