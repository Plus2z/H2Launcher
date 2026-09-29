package net.oneplus.h2launcher.quickpage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.quickpage.QuickPageItem;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.touchguard.RecyclerViewTouchActionGuardManager;
import net.oneplus.h2launcher.quickpage.view.util.ViewGroupUtils;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class QuickPageItemView extends RelativeLayout {
    private static final int SWIPE_THRESHOLD = 20;
    private static final String TAG = QuickPageItemView.class.getSimpleName();
    private int mDownX;
    private int mDownY;
    private boolean mEditing;
    private int mScrollbarWidth;
    private boolean mShouldScroll;
    private RecyclerViewTouchActionGuardManager mTouchGuardManager;

    public QuickPageItemView(Context context) {
        this(context, null, 0);
    }

    public QuickPageItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public QuickPageItemView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setTouchGuardManager(RecyclerViewTouchActionGuardManager touchGuardManager) {
        this.mTouchGuardManager = touchGuardManager;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mScrollbarWidth = getResources().getDimensionPixelSize(R.dimen.container_fastscroll_thumb_min_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.mEditing) {
            Logger.d(TAG, "leave quick page on tapping the item view");
            return false;
        }
        if (!this.mTouchGuardManager.isEnabled()) {
            Logger.d(TAG, "ignore touch event for disabled touch manager");
            return true;
        }
        switch (ev.getAction()) {
            case 0:
                this.mDownX = (int) ev.getRawX();
                this.mDownY = (int) ev.getRawY();
                this.mShouldScroll = ((QuickPageItem) getTag()).hasScrollableContent() && ViewGroupUtils.isEventOnScrollableView(getChildAt(0), this.mDownX, this.mDownY);
                if (this.mShouldScroll && getWidth() - this.mDownX >= this.mScrollbarWidth * 3) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
            case 1:
            case 3:
                this.mTouchGuardManager.setScrollingEnabled(true);
                getParent().requestDisallowInterceptTouchEvent(false);
                this.mShouldScroll = false;
                break;
            case 2:
                float deltaX = ev.getRawX() - this.mDownX;
                float deltaY = ev.getRawY() - this.mDownY;
                if (deltaX != 0.0f && deltaY != 0.0f) {
                    if (deltaX < 0.0f && Math.abs(deltaX) > 20.0f && Math.abs(deltaX) > Math.abs(deltaY)) {
                        this.mTouchGuardManager.setScrollingEnabled(true);
                        getParent().requestDisallowInterceptTouchEvent(false);
                        break;
                    } else if (this.mShouldScroll && !this.mTouchGuardManager.hasItemInteractionStarted() && Math.abs(deltaY) >= 5.0f) {
                        this.mTouchGuardManager.setScrollingEnabled(false);
                        break;
                    } else {
                        getParent().requestDisallowInterceptTouchEvent(false);
                        break;
                    }
                }
                break;
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        return 131072;
    }

    public void setEditable(boolean isEditing) {
        this.mEditing = isEditing;
    }
}
