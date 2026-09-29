package net.oneplus.h2launcher;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class SearchBarOverlay extends RelativeLayout implements View.OnTouchListener {
    private static final int[] NORMAL_STATE_SET = new int[0];
    private static final int[] TAP_STATE_SET = {android.R.attr.state_pressed, android.R.attr.state_enabled};

    public SearchBarOverlay(Context context) {
        this(context, null, 0);
    }

    public SearchBarOverlay(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SearchBarOverlay(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewGroup ripples = (ViewGroup) findViewById(R.id.ripples);
        if (ripples != null) {
            int count = ripples.getChildCount();
            for (int index = 0; index < count; index++) {
                View child = ripples.getChildAt(index);
                if (child != null) {
                    child.setOnTouchListener(this);
                }
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        Drawable background = v.getBackground();
        if ((background instanceof RippleDrawable) && Utilities.ATLEAST_LOLLIPOP) {
            final RippleDrawable rippleDrawable = (RippleDrawable) background;
            rippleDrawable.setState(TAP_STATE_SET);
            getHandler().postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.SearchBarOverlay.1
                @Override // java.lang.Runnable
                public void run() {
                    rippleDrawable.setState(SearchBarOverlay.NORMAL_STATE_SET);
                }
            }, ViewConfiguration.getTapTimeout());
            return false;
        }
        return false;
    }
}
