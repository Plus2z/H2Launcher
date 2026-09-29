package net.oneplus.h2launcher.quickpage.view;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import net.oneplus.h2launcher.Insettable;
import net.oneplus.h2launcher.quickpage.QuickPageBaseActivity;

/* loaded from: classes.dex */
public class SettingsDrawerLayout extends DrawerLayout implements Insettable {
    private boolean mDisallowIntercept;

    public SettingsDrawerLayout(Context context) {
        super(context);
    }

    public SettingsDrawerLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SettingsDrawerLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.support.v4.widget.DrawerLayout, android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        this.mDisallowIntercept = disallowIntercept;
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (ev.getPointerCount() > 1 && this.mDisallowIntercept) {
            requestDisallowInterceptTouchEvent(false);
            boolean handled = super.dispatchTouchEvent(ev);
            requestDisallowInterceptTouchEvent(true);
            return handled;
        }
        boolean handled2 = super.dispatchTouchEvent(ev);
        return handled2;
    }

    @Override // net.oneplus.h2launcher.Insettable
    public void setInsets(Rect insets) {
        if (getContext() instanceof QuickPageBaseActivity) {
            QuickPageBaseActivity activity = (QuickPageBaseActivity) getContext();
            activity.setInsets(insets);
        }
    }
}
