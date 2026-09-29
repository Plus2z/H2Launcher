package net.oneplus.h2launcher.quickpage.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class FlowIconTextView extends TextView {
    private static final String TAG = "FlowIconTextView";
    private int mDesiredHeight;
    private int mDesiredWidth;
    private PorterDuffColorFilter mHighlightFilter;

    public FlowIconTextView(Context context) {
        this(context, null, 0);
    }

    public FlowIconTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FlowIconTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mHighlightFilter = new PorterDuffColorFilter(context.getResources().getColor(R.color.quick_page_frequent_app_highlight, null), PorterDuff.Mode.SRC_ATOP);
        this.mDesiredWidth = getResources().getDrawable(R.drawable.default_avatar, null).getIntrinsicWidth();
        this.mDesiredHeight = getResources().getDrawable(R.drawable.default_avatar, null).getIntrinsicHeight();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        Paint.FontMetricsInt f = getPaint().getFontMetricsInt();
        int textHeight = f.bottom - f.top;
        int padding = (this.mDesiredHeight - this.mDesiredWidth) - textHeight;
        setCompoundDrawablePadding(padding);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!isEnabled()) {
            return false;
        }
        switch (event.getAction()) {
            case 0:
                if (getCompoundDrawables()[1] == null) {
                    return true;
                }
                getCompoundDrawables()[1].setColorFilter(this.mHighlightFilter);
                return true;
            case 1:
            case 3:
                if (getCompoundDrawables()[1] == null) {
                    return true;
                }
                getCompoundDrawables()[1].setColorFilter(null);
                return true;
            case 2:
            default:
                return true;
        }
    }
}
