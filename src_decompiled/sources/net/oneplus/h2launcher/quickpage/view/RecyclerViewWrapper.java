package net.oneplus.h2launcher.quickpage.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.oneplus.lib.widget.recyclerview.LinearLayoutManager;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import net.oneplus.h2launcher.quickpage.QuickPageAdapter;
import net.oneplus.h2launcher.quickpage.rebound.Spring;
import net.oneplus.h2launcher.quickpage.rebound.SpringConfig;
import net.oneplus.h2launcher.quickpage.rebound.SpringListener;
import net.oneplus.h2launcher.quickpage.rebound.SpringSystem;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.WrapperAdapterUtils;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class RecyclerViewWrapper extends RecyclerView {
    private static final float FACTOR = 0.375f;
    static final String TAG = "RecyclerViewWrapper";
    private SpringConfig CONVERGING;
    private SpringConfig CONVERGING_BOUNCE;
    private int mActivePointerId;
    private boolean mAttached;
    private boolean mFirstAtTopOrBottom;
    private int mFirstDownX;
    private int mFirstDownY;
    private boolean mFirstMove;
    private Handler mHandler;
    private final BroadcastReceiver mIntentReceiver;
    private boolean mIsMoving;
    private double mLastSpringValBottom;
    private double mLastSpringValTop;
    private boolean mReachBottom;
    private boolean mReachTop;
    private boolean mScrolling;
    private Runnable mShowMainButtonRunnable;
    private ArrayList<Runnable> mShowOnSpringAnimatingEnd;
    private boolean mSkipScrollingBoucing;
    private Spring mSpring;
    public boolean mSpringAnimating;
    private float mStartY;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public RecyclerViewWrapper(Context context) {
        super(context);
        this.mActivePointerId = -1;
        this.CONVERGING = SpringConfig.fromOrigamiTensionAndFriction(500.0d, 60.0d);
        this.CONVERGING_BOUNCE = SpringConfig.fromOrigamiTensionAndFriction(500.0d, 120.0d);
        this.mShowOnSpringAnimatingEnd = new ArrayList<>();
        this.mFirstMove = true;
        this.mFirstAtTopOrBottom = true;
        this.mFirstDownX = 0;
        this.mFirstDownY = 0;
        this.mTouchSlop = 0;
        this.mIsMoving = false;
        this.mAttached = false;
        this.mSkipScrollingBoucing = false;
        this.mScrolling = false;
        this.mHandler = new Handler();
        this.mIntentReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerViewWrapper.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                RecyclerViewWrapper.this.onTimeChanged();
            }
        };
        init();
    }

    public RecyclerViewWrapper(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mActivePointerId = -1;
        this.CONVERGING = SpringConfig.fromOrigamiTensionAndFriction(500.0d, 60.0d);
        this.CONVERGING_BOUNCE = SpringConfig.fromOrigamiTensionAndFriction(500.0d, 120.0d);
        this.mShowOnSpringAnimatingEnd = new ArrayList<>();
        this.mFirstMove = true;
        this.mFirstAtTopOrBottom = true;
        this.mFirstDownX = 0;
        this.mFirstDownY = 0;
        this.mTouchSlop = 0;
        this.mIsMoving = false;
        this.mAttached = false;
        this.mSkipScrollingBoucing = false;
        this.mScrolling = false;
        this.mHandler = new Handler();
        this.mIntentReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerViewWrapper.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                RecyclerViewWrapper.this.onTimeChanged();
            }
        };
        init();
    }

    public RecyclerViewWrapper(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mActivePointerId = -1;
        this.CONVERGING = SpringConfig.fromOrigamiTensionAndFriction(500.0d, 60.0d);
        this.CONVERGING_BOUNCE = SpringConfig.fromOrigamiTensionAndFriction(500.0d, 120.0d);
        this.mShowOnSpringAnimatingEnd = new ArrayList<>();
        this.mFirstMove = true;
        this.mFirstAtTopOrBottom = true;
        this.mFirstDownX = 0;
        this.mFirstDownY = 0;
        this.mTouchSlop = 0;
        this.mIsMoving = false;
        this.mAttached = false;
        this.mSkipScrollingBoucing = false;
        this.mScrolling = false;
        this.mHandler = new Handler();
        this.mIntentReceiver = new BroadcastReceiver() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerViewWrapper.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                RecyclerViewWrapper.this.onTimeChanged();
            }
        };
        init();
    }

    private void init() {
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mSpring = SpringSystem.create().createSpring();
        this.mSpring.setSpringConfig(this.CONVERGING);
        this.mSpring.addListener(new SpringListener() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerViewWrapper.1
            @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
            public void onSpringActivate(Spring spring) {
            }

            @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
            public void onSpringChainUpdate(Spring spring, Spring springControl) {
            }

            @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
            public void onSpringUpdate(Spring spring) {
            }

            @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
            public void onSpringEndStateChange(Spring spring) {
            }

            @Override // net.oneplus.h2launcher.quickpage.rebound.SpringListener
            public void onSpringAtRest(Spring spring) {
                if (Math.abs(spring.getCurrentValue()) < 1.0d) {
                    RecyclerViewWrapper.this.mSpringAnimating = false;
                    if (RecyclerViewWrapper.this.mShowOnSpringAnimatingEnd.size() > 0) {
                        ((Runnable) RecyclerViewWrapper.this.mShowOnSpringAnimatingEnd.get(0)).run();
                        RecyclerViewWrapper.this.mShowOnSpringAnimatingEnd.clear();
                    }
                }
            }
        });
        addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: net.oneplus.h2launcher.quickpage.view.RecyclerViewWrapper.2
            float mDy = 0.0f;
            float mLastDy = 0.0f;
            float signDy;

            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                this.signDy = Math.signum(-dy);
                this.mLastDy = this.mDy;
                this.mDy = -dy;
            }

            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                float val;
                if (newState == 0) {
                    boolean reachTop = false;
                    boolean reachBottom = false;
                    int firstVisibleItem = ((LinearLayoutManager) RecyclerViewWrapper.this.getLayoutManager()).findFirstVisibleItemPosition();
                    int visibleItemCount = RecyclerViewWrapper.this.getChildCount();
                    int totalItemCount = RecyclerViewWrapper.this.getLayoutManager().getItemCount();
                    if (firstVisibleItem == 0) {
                        View firstView = RecyclerViewWrapper.this.getChildAt(firstVisibleItem);
                        reachTop = firstView != null && firstView.getTop() >= 0;
                    }
                    if (firstVisibleItem + visibleItemCount == totalItemCount) {
                        View lastView = RecyclerViewWrapper.this.getChildAt(visibleItemCount - 1);
                        reachBottom = lastView != null && lastView.getBottom() <= RecyclerViewWrapper.this.getHeight() && totalItemCount >= visibleItemCount;
                    }
                    if (!reachTop && !reachBottom) {
                        RecyclerViewWrapper.this.mSpringAnimating = false;
                    }
                    if ((reachTop || reachBottom) && this.mLastDy != 0.0f && this.mDy != 0.0f && !RecyclerViewWrapper.this.mSkipScrollingBoucing && RecyclerViewWrapper.this.mScrolling) {
                        if (Math.abs(this.mDy) > 30.0f) {
                            val = Math.max(Math.abs(this.mDy - this.mLastDy), Math.abs(this.mDy));
                        } else {
                            val = (Math.abs(this.mDy - this.mLastDy) + Math.abs(this.mDy)) / 2.0f;
                        }
                        RecyclerViewWrapper.this.mSpring.setCurrentValue(this.signDy * val * 1.5d).setEndValue(0.0d);
                    }
                    if (!RecyclerViewWrapper.this.getDraggableItemWrapperAdapter().isLongPressing()) {
                        if (!RecyclerViewWrapper.this.mSpringAnimating || Math.abs(RecyclerViewWrapper.this.mSpring.getCurrentValue()) < 1.0d) {
                            RecyclerViewWrapper.this.mShowMainButtonRunnable.run();
                        } else if (RecyclerViewWrapper.this.mShowOnSpringAnimatingEnd.size() == 0) {
                            RecyclerViewWrapper.this.mShowOnSpringAnimatingEnd.add(RecyclerViewWrapper.this.mShowMainButtonRunnable);
                        }
                    }
                    this.mLastDy = 0.0f;
                    this.mDy = 0.0f;
                    RecyclerViewWrapper.this.mScrolling = false;
                    return;
                }
                if (newState == 2) {
                    RecyclerViewWrapper.this.mShowOnSpringAnimatingEnd.clear();
                    RecyclerViewWrapper.this.mSpringAnimating = true;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QuickPageAdapter getDraggableItemWrapperAdapter() {
        return (QuickPageAdapter) WrapperAdapterUtils.findWrappedAdapter(getAdapter(), QuickPageAdapter.class);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        if (event.getPointerCount() != 1) {
            return true;
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        switch (event.getAction()) {
            case 0:
                this.mFirstDownX = x;
                this.mFirstDownY = y;
                break;
            case 1:
            case 3:
                this.mFirstDownY = 0;
                this.mFirstDownX = 0;
                this.mIsMoving = false;
                break;
            case 2:
                if (!this.mIsMoving) {
                    if (Math.abs(x - this.mFirstDownX) + Math.abs(y - this.mFirstDownY) >= this.mTouchSlop * 2) {
                        this.mIsMoving = true;
                        break;
                    } else {
                        return false;
                    }
                }
                break;
        }
        return super.onInterceptTouchEvent(event);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getPointerCount() != 1) {
            return true;
        }
        QuickPageAdapter wrapperAdapter = getDraggableItemWrapperAdapter();
        if (wrapperAdapter != null) {
            if (wrapperAdapter.isLongPressing()) {
                this.mSpring.setEndValue(0.0d);
                return super.onTouchEvent(event);
            }
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            switch (event.getActionMasked()) {
                case 1:
                case 3:
                    int currentY = (int) (event.getY() + 0.5f);
                    if ((this.mReachTop || this.mReachBottom) && this.mStartY != 0.0f) {
                        float deltaY = currentY - this.mStartY;
                        float distance = deltaY * FACTOR;
                        this.mVelocityTracker.addMovement(event);
                        if (Math.abs(distance) < 20.0f) {
                            this.mVelocityTracker.computeCurrentVelocity(4);
                        } else {
                            this.mVelocityTracker.computeCurrentVelocity(16);
                        }
                        float v = this.mVelocityTracker.getYVelocity();
                        if (event.getActionMasked() == 3) {
                            distance = 0.0f;
                            v = 0.0f;
                        }
                        this.mSpring.setCurrentValue(distance + v);
                        this.mSpring.setEndValue(0.0d);
                    }
                    this.mVelocityTracker.clear();
                    this.mFirstMove = true;
                    this.mStartY = 0.0f;
                    break;
                case 2:
                    int firstVisibleItem = ((LinearLayoutManager) getLayoutManager()).findFirstVisibleItemPosition();
                    int visibleItemCount = getChildCount();
                    int totalItemCount = getLayoutManager().getItemCount();
                    if (this.mFirstMove) {
                        this.mActivePointerId = event.getPointerId(0);
                        int initialTouchY = (int) (event.getY() + 0.5f);
                        this.mVelocityTracker.addMovement(event);
                        this.mFirstMove = false;
                        this.mFirstAtTopOrBottom = true;
                        this.mSkipScrollingBoucing = false;
                        this.mScrolling = true;
                        this.mStartY = initialTouchY;
                        if (this.mReachTop) {
                            this.mLastSpringValTop = this.mSpring.getCurrentValue();
                            this.mLastSpringValBottom = 0.0d;
                            break;
                        } else if (this.mReachBottom) {
                            this.mLastSpringValBottom = this.mSpring.getCurrentValue();
                            this.mLastSpringValTop = 0.0d;
                            break;
                        } else {
                            this.mLastSpringValTop = 0.0d;
                            this.mLastSpringValBottom = 0.0d;
                            break;
                        }
                    } else {
                        int pointerIndex = event.findPointerIndex(this.mActivePointerId);
                        if (pointerIndex < 0) {
                            Logger.e(TAG, "Error processing scroll; pointer index for id " + this.mActivePointerId + " not found. Did any MotionEvents get skipped?");
                            return false;
                        }
                        int currentY2 = (int) (event.getY(pointerIndex) + 0.5f);
                        if (firstVisibleItem == 0) {
                            View firstView = getChildAt(firstVisibleItem);
                            this.mReachTop = firstView != null && firstView.getTop() + getPaddingTop() >= 0 && ((float) currentY2) - this.mStartY > 0.0f;
                        } else {
                            this.mReachTop = false;
                        }
                        if (firstVisibleItem + visibleItemCount == totalItemCount) {
                            View lastView = getChildAt(visibleItemCount - 1);
                            this.mReachBottom = lastView != null && lastView.getBottom() + getPaddingBottom() <= getHeight() && totalItemCount >= visibleItemCount && ((float) currentY2) - this.mStartY < 0.0f;
                        } else {
                            this.mReachBottom = false;
                        }
                        if (this.mReachTop || this.mReachBottom) {
                            this.mSpring.setSpringConfig(this.CONVERGING_BOUNCE);
                            if (this.mFirstAtTopOrBottom) {
                                this.mStartY = currentY2;
                                this.mFirstAtTopOrBottom = false;
                            }
                        } else {
                            this.mSpring.setSpringConfig(this.CONVERGING);
                            this.mFirstAtTopOrBottom = true;
                        }
                        if (this.mReachTop || this.mReachBottom) {
                            float deltaY2 = currentY2 - this.mStartY;
                            float distance2 = deltaY2 * FACTOR;
                            double mLastSpringVal = 0.0d;
                            if (this.mReachTop) {
                                mLastSpringVal = this.mLastSpringValTop;
                            } else if (this.mReachBottom) {
                                mLastSpringVal = this.mLastSpringValBottom;
                            }
                            this.mSpring.setCurrentValue(distance2 + mLastSpringVal);
                            this.mSkipScrollingBoucing = true;
                            this.mVelocityTracker.addMovement(event);
                            if (this.mReachTop && currentY2 - this.mStartY > 0.0f) {
                                return true;
                            }
                            if (this.mReachBottom && currentY2 - this.mStartY < 0.0f) {
                                return true;
                            }
                        }
                    }
                    break;
            }
            return super.onTouchEvent(event);
        }
        Logger.e(TAG, "cannot find corresponding drag adapter");
        return super.onTouchEvent(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTimeChanged() {
        QuickPageAdapter adapter = getDraggableItemWrapperAdapter();
        if (adapter != null) {
            adapter.updateNoteReminders();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        Logger.d(TAG, "onWindowVisibilityChanged:" + visibility);
        if (visibility == 0) {
            if (!this.mAttached) {
                this.mAttached = true;
                IntentFilter filter = new IntentFilter();
                filter.addAction("android.intent.action.TIME_TICK");
                filter.addAction("android.intent.action.TIME_SET");
                filter.addAction("android.intent.action.TIMEZONE_CHANGED");
                getContext().registerReceiver(this.mIntentReceiver, filter, null, this.mHandler);
            }
            onTimeChanged();
            return;
        }
        if (visibility == 8 && this.mAttached) {
            getContext().unregisterReceiver(this.mIntentReceiver);
            this.mAttached = false;
        }
    }

    public Spring getSpring() {
        return this.mSpring;
    }

    public void setShowMainButtonRunnable(Runnable r) {
        this.mShowMainButtonRunnable = r;
    }
}
