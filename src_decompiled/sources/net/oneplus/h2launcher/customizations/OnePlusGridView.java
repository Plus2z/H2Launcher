package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

/* loaded from: classes.dex */
public class OnePlusGridView extends GridView {
    public OnePlusGridView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public OnePlusGridView(Context context) {
        super(context);
    }

    public OnePlusGridView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int expandSpec = View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE);
        super.onMeasure(widthMeasureSpec, expandSpec);
    }
}
