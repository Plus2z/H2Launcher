package com.oneplus.lib.design.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.oneplus.lib.util.MathUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    private static final int INVALID_POINTER = -1;
    private int mActivePointerId;
    private Runnable mFlingRunnable;
    private boolean mIsBeingDragged;
    private int mLastMotionY;
    ScrollerCompat mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public HeaderBehavior() {
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }

    public HeaderBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }

    @Override // com.oneplus.lib.design.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout parent, V child, MotionEvent ev) {
        int pointerIndex;
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(parent.getContext()).getScaledTouchSlop();
        }
        int action = ev.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        switch (MotionEventCompat.getActionMasked(ev)) {
            case 0:
                this.mIsBeingDragged = false;
                int x = (int) ev.getX();
                int y = (int) ev.getY();
                if (canDragView(child) && parent.isPointInChildBounds(child, x, y)) {
                    this.mLastMotionY = y;
                    this.mActivePointerId = ev.getPointerId(0);
                    ensureVelocityTracker();
                    break;
                }
                break;
            case 1:
            case 3:
                this.mIsBeingDragged = false;
                this.mActivePointerId = -1;
                if (this.mVelocityTracker != null) {
                    this.mVelocityTracker.recycle();
                    this.mVelocityTracker = null;
                    break;
                }
                break;
            case 2:
                int activePointerId = this.mActivePointerId;
                if (activePointerId != -1 && (pointerIndex = ev.findPointerIndex(activePointerId)) != -1) {
                    int y2 = (int) ev.getY(pointerIndex);
                    int yDiff = Math.abs(y2 - this.mLastMotionY);
                    if (yDiff > this.mTouchSlop) {
                        this.mIsBeingDragged = true;
                        this.mLastMotionY = y2;
                        break;
                    }
                }
                break;
        }
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.addMovement(ev);
        }
        return this.mIsBeingDragged;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    @Override // com.oneplus.lib.design.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(com.oneplus.lib.design.widget.CoordinatorLayout r15, V r16, android.view.MotionEvent r17) {
        /*
            r14 = this;
            int r1 = r14.mTouchSlop
            if (r1 >= 0) goto L12
            android.content.Context r1 = r15.getContext()
            android.view.ViewConfiguration r1 = android.view.ViewConfiguration.get(r1)
            int r1 = r1.getScaledTouchSlop()
            r14.mTouchSlop = r1
        L12:
            int r1 = android.support.v4.view.MotionEventCompat.getActionMasked(r17)
            switch(r1) {
                case 0: goto L26;
                case 1: goto L96;
                case 2: goto L51;
                case 3: goto Lbf;
                default: goto L19;
            }
        L19:
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            if (r1 == 0) goto L24
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            r0 = r17
            r1.addMovement(r0)
        L24:
            r1 = 1
        L25:
            return r1
        L26:
            float r1 = r17.getX()
            int r12 = (int) r1
            float r1 = r17.getY()
            int r13 = (int) r1
            r0 = r16
            boolean r1 = r15.isPointInChildBounds(r0, r12, r13)
            if (r1 == 0) goto L4f
            r0 = r16
            boolean r1 = r14.canDragView(r0)
            if (r1 == 0) goto L4f
            r14.mLastMotionY = r13
            r1 = 0
            r0 = r17
            int r1 = r0.getPointerId(r1)
            r14.mActivePointerId = r1
            r14.ensureVelocityTracker()
            goto L19
        L4f:
            r1 = 0
            goto L25
        L51:
            int r1 = r14.mActivePointerId
            r0 = r17
            int r11 = r0.findPointerIndex(r1)
            r1 = -1
            if (r11 != r1) goto L5e
            r1 = 0
            goto L25
        L5e:
            r0 = r17
            float r1 = r0.getY(r11)
            int r13 = (int) r1
            int r1 = r14.mLastMotionY
            int r4 = r1 - r13
            boolean r1 = r14.mIsBeingDragged
            if (r1 != 0) goto L7d
            int r1 = java.lang.Math.abs(r4)
            int r2 = r14.mTouchSlop
            if (r1 <= r2) goto L7d
            r1 = 1
            r14.mIsBeingDragged = r1
            if (r4 <= 0) goto L92
            int r1 = r14.mTouchSlop
            int r4 = r4 - r1
        L7d:
            boolean r1 = r14.mIsBeingDragged
            if (r1 == 0) goto L19
            r14.mLastMotionY = r13
            r0 = r16
            int r5 = r14.getMaxDragOffset(r0)
            r6 = 0
            r1 = r14
            r2 = r15
            r3 = r16
            r1.scroll(r2, r3, r4, r5, r6)
            goto L19
        L92:
            int r1 = r14.mTouchSlop
            int r4 = r4 + r1
            goto L7d
        L96:
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            if (r1 == 0) goto Lbf
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            r0 = r17
            r1.addMovement(r0)
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            r2 = 1000(0x3e8, float:1.401E-42)
            r1.computeCurrentVelocity(r2)
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            int r2 = r14.mActivePointerId
            float r10 = android.support.v4.view.VelocityTrackerCompat.getYVelocity(r1, r2)
            r0 = r16
            int r1 = r14.getScrollRangeForDragFling(r0)
            int r8 = -r1
            r9 = 0
            r5 = r14
            r6 = r15
            r7 = r16
            r5.fling(r6, r7, r8, r9, r10)
        Lbf:
            r1 = 0
            r14.mIsBeingDragged = r1
            r1 = -1
            r14.mActivePointerId = r1
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            if (r1 == 0) goto L19
            android.view.VelocityTracker r1 = r14.mVelocityTracker
            r1.recycle()
            r1 = 0
            r14.mVelocityTracker = r1
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oneplus.lib.design.widget.HeaderBehavior.onTouchEvent(com.oneplus.lib.design.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int setHeaderTopBottomOffset(CoordinatorLayout parent, V header, int newOffset) {
        return setHeaderTopBottomOffset(parent, header, newOffset, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int setHeaderTopBottomOffset(CoordinatorLayout parent, V header, int newOffset, int minOffset, int maxOffset) {
        int newOffset2;
        int curOffset = getTopAndBottomOffset();
        if (minOffset == 0 || curOffset < minOffset || curOffset > maxOffset || curOffset == (newOffset2 = MathUtils.constrain(newOffset, minOffset, maxOffset))) {
            return 0;
        }
        setTopAndBottomOffset(newOffset2);
        int consumed = curOffset - newOffset2;
        return consumed;
    }

    int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int scroll(CoordinatorLayout coordinatorLayout, V header, int dy, int minOffset, int maxOffset) {
        return setHeaderTopBottomOffset(coordinatorLayout, header, getTopBottomOffsetForScrollingSibling() - dy, minOffset, maxOffset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean fling(CoordinatorLayout coordinatorLayout, V layout, int minOffset, int maxOffset, float velocityY) {
        if (this.mFlingRunnable != null) {
            layout.removeCallbacks(this.mFlingRunnable);
            this.mFlingRunnable = null;
        }
        if (this.mScroller == null) {
            this.mScroller = ScrollerCompat.create(layout.getContext());
        }
        this.mScroller.fling(0, getTopAndBottomOffset(), 0, Math.round(velocityY), 0, 0, minOffset, maxOffset);
        if (this.mScroller.computeScrollOffset()) {
            this.mFlingRunnable = new FlingRunnable(coordinatorLayout, layout);
            ViewCompat.postOnAnimation(layout, this.mFlingRunnable);
            return true;
        }
        onFlingFinished(coordinatorLayout, layout);
        return false;
    }

    void onFlingFinished(CoordinatorLayout parent, V layout) {
    }

    boolean canDragView(V view) {
        return false;
    }

    int getMaxDragOffset(V view) {
        return -view.getHeight();
    }

    int getScrollRangeForDragFling(V view) {
        return view.getHeight();
    }

    private void ensureVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class FlingRunnable implements Runnable {
        private final V mLayout;
        private final CoordinatorLayout mParent;

        FlingRunnable(CoordinatorLayout parent, V layout) {
            this.mParent = parent;
            this.mLayout = layout;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mLayout != null && HeaderBehavior.this.mScroller != null) {
                if (HeaderBehavior.this.mScroller.computeScrollOffset()) {
                    HeaderBehavior.this.setHeaderTopBottomOffset(this.mParent, this.mLayout, HeaderBehavior.this.mScroller.getCurrY());
                    ViewCompat.postOnAnimation(this.mLayout, this);
                } else {
                    HeaderBehavior.this.onFlingFinished(this.mParent, this.mLayout);
                }
            }
        }
    }
}
