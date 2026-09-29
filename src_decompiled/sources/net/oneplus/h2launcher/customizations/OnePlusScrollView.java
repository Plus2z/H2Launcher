package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class OnePlusScrollView extends ScrollView {
    private OnScrollListener mOnScrollListener;

    /* loaded from: classes.dex */
    public interface OnScrollListener {
        void onScrollChanged(OnePlusScrollView onePlusScrollView, int i, int i2, int i3, int i4);
    }

    public OnePlusScrollView(Context context) {
        super(context);
    }

    public OnePlusScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public OnePlusScrollView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mOnScrollListener = onScrollListener;
    }

    @Override // android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (this.mOnScrollListener != null) {
            this.mOnScrollListener.onScrollChanged(this, l, t, oldl, oldt);
        }
    }
}
