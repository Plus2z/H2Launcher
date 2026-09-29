package net.oneplus.h2launcher.globalsearch;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

/* loaded from: classes.dex */
public class SearchHistoryGridView extends GridView {
    public SearchHistoryGridView(Context context) {
        this(context, null, 0, 0);
    }

    public SearchHistoryGridView(Context context, AttributeSet attrs) {
        this(context, attrs, 0, 0);
    }

    public SearchHistoryGridView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public SearchHistoryGridView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int expandSpec = View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE);
        super.onMeasure(widthMeasureSpec, expandSpec);
    }
}
