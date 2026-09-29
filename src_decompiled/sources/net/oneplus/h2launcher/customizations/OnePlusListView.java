package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.ListView;

/* loaded from: classes.dex */
public class OnePlusListView extends ListView {
    private AbsListView.OnScrollListener mOnScrollListener;

    public OnePlusListView(Context context) {
        super(context);
    }

    public OnePlusListView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public OnePlusListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l) {
        super.setOnScrollListener(l);
        this.mOnScrollListener = l;
    }

    public AbsListView.OnScrollListener getOnScrollListener() {
        return this.mOnScrollListener;
    }
}
