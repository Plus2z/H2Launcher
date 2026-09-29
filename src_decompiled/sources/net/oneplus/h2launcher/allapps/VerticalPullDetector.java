package net.oneplus.h2launcher.allapps;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class VerticalPullDetector {
    private static final boolean DBG = false;
    public static final int DIRECTION_BOTH = 3;
    public static final int DIRECTION_DOWN = 2;
    public static final int DIRECTION_UP = 1;
    public static final float RELEASE_VELOCITY_PX_MS = 1.0f;
    public static final float SCROLL_VELOCITY_DAMPENING_RC = 15.915494f;
    private static final String TAG = "VerticalPullDetector";
    private long mCurrentMillis;
    private float mDisplacementX;
    private float mDisplacementY;
    private float mDownX;
    private float mDownY;
    private boolean mIgnoreSlopWhenSettling;
    private float mLastDisplacement;
    private float mLastY;
    Listener mListener;
    private int mScrollConditions;
    private ScrollState mState = ScrollState.IDLE;
    private float mSubtractDisplacement;
    private float mTouchSlop;
    private float mVelocity;

    /* loaded from: classes.dex */
    public interface Listener {
        boolean onDrag(float f, float f2);

        void onDragEnd(float f, boolean z);

        void onDragStart(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum ScrollState {
        IDLE,
        DRAGGING,
        SETTLING
    }

    private void setState(ScrollState newState) {
        if (newState == ScrollState.DRAGGING) {
            initializeDragging();
            if (this.mState == ScrollState.IDLE) {
                reportDragStart(false);
            } else if (this.mState == ScrollState.SETTLING) {
                reportDragStart(true);
            }
        }
        if (newState == ScrollState.SETTLING) {
            reportDragEnd();
        }
        this.mState = newState;
    }

    public boolean isDraggingOrSettling() {
        return this.mState == ScrollState.DRAGGING || this.mState == ScrollState.SETTLING;
    }

    public boolean isIdleState() {
        return this.mState == ScrollState.IDLE;
    }

    public boolean isSettlingState() {
        return this.mState == ScrollState.SETTLING;
    }

    public boolean isDraggingState() {
        return this.mState == ScrollState.DRAGGING;
    }

    public void setListener(Listener l) {
        this.mListener = l;
    }

    public VerticalPullDetector(Context context) {
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public void setDetectableScrollConditions(int scrollDirectionFlags, boolean ignoreSlop) {
        this.mScrollConditions = scrollDirectionFlags;
        this.mIgnoreSlopWhenSettling = ignoreSlop;
    }

    private boolean shouldScrollStart() {
        if (Math.abs(this.mDisplacementY) < this.mTouchSlop) {
            return false;
        }
        float deltaY = Math.abs(this.mDisplacementY);
        float deltaX = Math.max(Math.abs(this.mDisplacementX), 1.0f);
        if (deltaX <= deltaY) {
            return ((this.mScrollConditions & 2) > 0 && this.mDisplacementY > 0.0f) || ((this.mScrollConditions & 1) > 0 && this.mDisplacementY < 0.0f);
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent ev) {
        switch (ev.getAction()) {
            case 0:
                this.mDownX = ev.getX();
                this.mDownY = ev.getY();
                this.mLastDisplacement = 0.0f;
                this.mDisplacementY = 0.0f;
                this.mVelocity = 0.0f;
                if (this.mState == ScrollState.SETTLING && this.mIgnoreSlopWhenSettling) {
                    setState(ScrollState.DRAGGING);
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.mState == ScrollState.DRAGGING) {
                    setState(ScrollState.SETTLING);
                    break;
                }
                break;
            case 2:
                this.mDisplacementX = ev.getX() - this.mDownX;
                this.mDisplacementY = ev.getY() - this.mDownY;
                computeVelocity(ev);
                if (this.mState != ScrollState.DRAGGING && shouldScrollStart()) {
                    setState(ScrollState.DRAGGING);
                }
                if (this.mState == ScrollState.DRAGGING) {
                    reportDragging();
                    break;
                }
                break;
        }
        this.mLastDisplacement = this.mDisplacementY;
        this.mLastY = ev.getY();
        return true;
    }

    public void finishedScrolling() {
        setState(ScrollState.IDLE);
    }

    private boolean reportDragStart(boolean recatch) {
        this.mListener.onDragStart(!recatch);
        return true;
    }

    private void initializeDragging() {
        if (this.mState == ScrollState.SETTLING && this.mIgnoreSlopWhenSettling) {
            this.mSubtractDisplacement = 0.0f;
        }
        if (this.mDisplacementY > 0.0f) {
            this.mSubtractDisplacement = this.mTouchSlop;
        } else {
            this.mSubtractDisplacement = -this.mTouchSlop;
        }
    }

    private boolean reportDragging() {
        float delta = this.mDisplacementY - this.mLastDisplacement;
        if (delta != 0.0f) {
            return this.mListener.onDrag(this.mDisplacementY - this.mSubtractDisplacement, this.mVelocity);
        }
        return true;
    }

    private void reportDragEnd() {
        this.mListener.onDragEnd(this.mVelocity, Math.abs(this.mVelocity) > 1.0f);
    }

    private float computeVelocity(MotionEvent to) {
        return computeVelocity(to.getY() - this.mLastY, to.getEventTime());
    }

    public float computeVelocity(float delta, long currentMillis) {
        long previousMillis = this.mCurrentMillis;
        this.mCurrentMillis = currentMillis;
        float deltaTimeMillis = (float) (this.mCurrentMillis - previousMillis);
        float velocity = deltaTimeMillis > 0.0f ? (delta / deltaTimeMillis) * 1.5f : 0.0f;
        if (Math.abs(this.mVelocity) < 0.001f) {
            this.mVelocity = velocity;
        } else {
            float alpha = computeDampeningFactor(deltaTimeMillis);
            this.mVelocity = interpolate(this.mVelocity, velocity, alpha);
        }
        return this.mVelocity;
    }

    private static float computeDampeningFactor(float deltaTime) {
        return deltaTime / (15.915494f + deltaTime);
    }

    private static float interpolate(float from, float to, float alpha) {
        return ((1.0f - alpha) * from) + (alpha * to);
    }
}
