package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.Arrays;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class DragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final Interpolator sInterpolator = new Interpolator() { // from class: net.oneplus.h2launcher.customizations.DragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float t) {
            float t2 = t - 1.0f;
            return (t2 * t2 * t2 * t2 * t2) + 1.0f;
        }
    };
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private final float mMaxVelocity;
    private final float mMinVelocity;
    private ViewGroup mParentView;
    private boolean mReleaseInProgress;
    private Scroller mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private final Runnable mSetIdleRunnable = new Runnable() { // from class: net.oneplus.h2launcher.customizations.DragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            DragHelper.this.setDragState(0);
        }
    };
    private int mActivePointerId = -1;

    private DragHelper(Context context, Callback callback) {
        this.mCallback = callback;
        ViewConfiguration vc = ViewConfiguration.get(context);
        this.mTouchSlop = vc.getScaledTouchSlop();
        this.mMaxVelocity = vc.getScaledMaximumFlingVelocity();
        this.mMinVelocity = vc.getScaledMinimumFlingVelocity();
        this.mScroller = new Scroller(context, sInterpolator);
    }

    public static DragHelper create(ViewGroup parent, Callback callback) {
        DragHelper dragHelper = new DragHelper(parent.getContext(), callback);
        dragHelper.mParentView = parent;
        return dragHelper;
    }

    public static DragHelper create(ViewGroup forParent, float sensitivity, Callback cb) {
        DragHelper helper = create(forParent, cb);
        helper.mTouchSlop = (int) (helper.mTouchSlop * (1.0f / sensitivity));
        return helper;
    }

    public boolean shouldInterceptTouchEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (action == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(event);
        switch (action) {
            case 0:
                float x = event.getX();
                float y = event.getY();
                int pointerId = event.getPointerId(0);
                saveInitialMotion(x, y, pointerId);
                View toCapture = findTopChildUnder((int) x, (int) y);
                if (toCapture == this.mCapturedView && this.mDragState == 2) {
                    tryCaptureViewForDrag(toCapture, pointerId);
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.mDragState == 1) {
                    releaseViewForPointerUp();
                }
                cancel();
                break;
            case 2:
                int pointerCount = event.getPointerCount();
                for (int i = 0; i < pointerCount && this.mInitialMotionX != null && this.mInitialMotionY != null; i++) {
                    int pointerId2 = event.getPointerId(i);
                    if (pointerId2 < this.mInitialMotionX.length && pointerId2 < this.mInitialMotionY.length) {
                        float dy = event.getY(i) - this.mInitialMotionY[pointerId2];
                        View toCapture2 = findTopChildUnder((int) this.mInitialMotionX[pointerId2], (int) this.mInitialMotionY[pointerId2]);
                        if (toCapture2 != null && checkTouchSlop(toCapture2, dy) && tryCaptureViewForDrag(toCapture2, pointerId2)) {
                        }
                    }
                }
                saveLastMotion(event);
                break;
        }
        return this.mDragState == 1;
    }

    public void processTouchEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (action == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(event);
        switch (action) {
            case 0:
                float x = event.getX();
                float y = event.getY();
                int pointerId = event.getPointerId(0);
                View toCapture = findTopChildUnder((int) x, (int) y);
                saveInitialMotion(x, y, pointerId);
                tryCaptureViewForDrag(toCapture, pointerId);
                return;
            case 1:
                if (this.mDragState == 1) {
                    releaseViewForPointerUp();
                }
                cancel();
                return;
            case 2:
                if (this.mDragState == 1) {
                    int index = event.findPointerIndex(this.mActivePointerId);
                    float y2 = event.getY(index);
                    int idy = (int) (y2 - this.mLastMotionY[this.mActivePointerId]);
                    View card = this.mCapturedView.findViewById(R.id.card);
                    if (card != null) {
                        dragTo(card, card.getTop() + idy, idy);
                    }
                    saveLastMotion(event);
                    return;
                }
                int pointerCount = event.getPointerCount();
                for (int i = 0; i < pointerCount; i++) {
                    int pointerId2 = event.getPointerId(i);
                    float y3 = event.getY(i);
                    float dy = y3 - this.mInitialMotionY[pointerId2];
                    View toCapture2 = findTopChildUnder((int) this.mInitialMotionX[pointerId2], (int) this.mInitialMotionY[pointerId2]);
                    if (checkTouchSlop(toCapture2, dy) && tryCaptureViewForDrag(toCapture2, pointerId2)) {
                        saveLastMotion(event);
                        return;
                    }
                }
                saveLastMotion(event);
                return;
            case 3:
                if (this.mDragState == 1) {
                    dispatchViewReleased(0.0f);
                }
                cancel();
                return;
            default:
                return;
        }
    }

    private void ensureMotionHistorySizeForId(int pointerId) {
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= pointerId) {
            float[] imx = new float[pointerId + 1];
            float[] imy = new float[pointerId + 1];
            float[] lmx = new float[pointerId + 1];
            float[] lmy = new float[pointerId + 1];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, 0, imx, 0, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, 0, imy, 0, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, 0, lmx, 0, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, 0, lmy, 0, this.mLastMotionY.length);
            }
            this.mInitialMotionX = imx;
            this.mInitialMotionY = imy;
            this.mLastMotionX = lmx;
            this.mLastMotionY = lmy;
        }
    }

    private void saveInitialMotion(float x, float y, int pointerId) {
        ensureMotionHistorySizeForId(pointerId);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[pointerId] = x;
        fArr[pointerId] = x;
        float[] fArr2 = this.mInitialMotionY;
        this.mLastMotionY[pointerId] = y;
        fArr2[pointerId] = y;
    }

    private void saveLastMotion(MotionEvent event) {
        int pointerCount = event.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = event.getPointerId(i);
            float x = event.getX(i);
            float y = event.getY(i);
            if (this.mLastMotionX != null && this.mLastMotionY != null && this.mLastMotionX.length > pointerId && this.mLastMotionY.length > pointerId) {
                this.mLastMotionX[pointerId] = x;
                this.mLastMotionY[pointerId] = y;
            }
        }
    }

    private void clearMotionHistory() {
        if (this.mInitialMotionX != null) {
            Arrays.fill(this.mInitialMotionX, 0.0f);
            Arrays.fill(this.mInitialMotionY, 0.0f);
            Arrays.fill(this.mLastMotionX, 0.0f);
            Arrays.fill(this.mLastMotionY, 0.0f);
        }
    }

    private boolean checkTouchSlop(View child, float dy) {
        if (child == null) {
            return false;
        }
        boolean checkVertical = this.mCallback.getViewVerticalDragRange(child) > 0;
        return checkVertical && Math.abs(dy) > ((float) this.mTouchSlop);
    }

    boolean tryCaptureViewForDrag(View toCapture, int pointerId) {
        if (toCapture == this.mCapturedView && this.mActivePointerId == pointerId) {
            return true;
        }
        if (toCapture != null) {
            this.mActivePointerId = pointerId;
            captureChildView(toCapture, pointerId);
            return true;
        }
        return false;
    }

    public void captureChildView(View childView, int activePointerId) {
        if (childView.getParent() != this.mParentView) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
        }
        this.mCapturedView = childView;
        this.mActivePointerId = activePointerId;
        setDragState(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragState(int state) {
        if (this.mDragState != state) {
            this.mDragState = state;
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public View findTopChildUnder(int x, int y) {
        int childCount = this.mParentView.getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            View child = this.mParentView.getChildAt(i);
            if (x >= child.getLeft() && x < child.getRight() && y >= child.getTop() && y < child.getBottom()) {
                return child;
            }
        }
        return null;
    }

    public void slideTo(View view, int top) {
        int oldTop = view.getTop();
        int clampedY = this.mCallback.clampViewPositionVertical(view, top);
        int clampedDy = clampedY - oldTop;
        if (clampedDy != 0) {
            view.offsetTopAndBottom(clampedDy);
            this.mCallback.onViewPositionChanged(view, clampedY, clampedDy);
        }
    }

    private void dragTo(View view, int top, int dy) {
        int clampedY = top;
        int oldTop = view.getTop();
        if (dy != 0) {
            clampedY = this.mCallback.clampViewPositionVertical(view, top);
            int clampedDy = clampedY - oldTop;
            view.offsetTopAndBottom(clampedDy);
        }
        if (dy != 0) {
            int clampedDy2 = clampedY - oldTop;
            this.mCallback.onViewPositionChanged(view, clampedY, clampedDy2);
        }
    }

    private int clampMag(int value, int absMin, int absMax) {
        int absValue = Math.abs(value);
        if (absValue < absMin) {
            return 0;
        }
        return absValue > absMax ? value <= 0 ? -absMax : absMax : value;
    }

    private float clampMag(float value, float absMin, float absMax) {
        float absValue = Math.abs(value);
        if (absValue < absMin) {
            return 0.0f;
        }
        return absValue > absMax ? value <= 0.0f ? -absMax : absMax : value;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        float yVel = clampMag(this.mVelocityTracker.getYVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity);
        dispatchViewReleased(yVel);
    }

    private void dispatchViewReleased(float yVel) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, yVel);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    public boolean continueSettling(boolean deferCallbacks) {
        View card;
        if (this.mCapturedView == null || (card = this.mCapturedView.findViewById(R.id.card)) == null) {
            return false;
        }
        if (this.mDragState == 2) {
            boolean keepGoing = this.mScroller.computeScrollOffset();
            int y = this.mScroller.getCurrY();
            int dy = y - card.getTop();
            if (!keepGoing && dy != 0) {
                this.mCapturedView.setTop(0);
                return true;
            }
            if (dy != 0) {
                card.offsetTopAndBottom(dy);
                this.mCallback.onViewPositionChanged(card, y, dy);
            }
            if (keepGoing && y == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                keepGoing = this.mScroller.isFinished();
            }
            if (!keepGoing) {
                if (deferCallbacks) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(0);
                }
            }
        }
        return this.mDragState == 2;
    }

    public void stopSettling() {
        if (this.mDragState == 2) {
            this.mScroller.abortAnimation();
            setDragState(0);
        }
    }

    public boolean smoothSlideViewTo(View child, int finalTop) {
        this.mCapturedView = child;
        this.mActivePointerId = -1;
        return forceSettleCapturedViewAt(finalTop, 0);
    }

    public boolean settleCapturedViewAt(int finalTop) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        int yVel = (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId);
        if (yVel > this.mMaxVelocity) {
            yVel = (int) this.mMaxVelocity;
        }
        return forceSettleCapturedViewAt(finalTop, yVel);
    }

    private boolean forceSettleCapturedViewAt(int finalTop, int yVel) {
        View card = this.mCapturedView.findViewById(R.id.card);
        if (card == null) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        int startLeft = card.getLeft();
        int startTop = card.getTop();
        int dy = finalTop - startTop;
        if (dy == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        int duration = computeSettleDuration(card, dy, yVel);
        this.mScroller.startScroll(startLeft, startTop, 0, dy, duration);
        setDragState(2);
        return true;
    }

    private int computeSettleDuration(View child, int dy, int yVel) {
        return computeAxisDuration(dy, clampMag(yVel, (int) this.mMinVelocity, yVel), this.mCallback.getViewVerticalDragRange(child));
    }

    private int computeAxisDuration(int delta, int velocity, int motionRange) {
        int duration;
        if (delta == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        int halfWidth = width / 2;
        float distanceRatio = Math.min(1.0f, Math.abs(delta) / width);
        float distance = halfWidth + (halfWidth * distanceInfluenceForSnapDuration(distanceRatio));
        int velocity2 = Math.abs(velocity);
        if (velocity2 > 0) {
            duration = Math.round(1000.0f * Math.abs(distance / velocity2)) * 4;
        } else {
            float range = Math.abs(delta) / motionRange;
            duration = (int) ((range + 1.0f) * 256.0f);
        }
        return Math.min(duration, 600);
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    public void cancel() {
        this.mActivePointerId = -1;
        clearMotionHistory();
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public boolean isDragging() {
        return this.mDragState == 1;
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void onViewPositionChanged(View view, int i, int i2);

        public void onViewReleased(View releasedChild, float yVel) {
        }

        public int getViewVerticalDragRange(View child) {
            return 0;
        }

        public int clampViewPositionVertical(View child, int top) {
            return 0;
        }
    }
}
