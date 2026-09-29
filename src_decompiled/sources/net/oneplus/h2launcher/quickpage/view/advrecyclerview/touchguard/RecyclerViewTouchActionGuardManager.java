package net.oneplus.h2launcher.quickpage.view.advrecyclerview.touchguard;

import android.support.annotation.NonNull;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.RecyclerViewDragDropManager;

/* loaded from: classes.dex */
public class RecyclerViewTouchActionGuardManager {
    private static final boolean LOCAL_LOGD = false;
    private static final boolean LOCAL_LOGV = false;
    private static final String TAG = "ARVTouchActionGuardMgr";
    private RecyclerViewDragDropManager mDragDropManager;
    private boolean mEnabled;
    private boolean mGuarding;
    private int mInitialTouchY;
    private boolean mInterceptScrollingWhileAnimationRunning;
    private boolean mItemInteractionStarted;
    private int mLastTouchY;
    private RecyclerView mRecyclerView;
    private int mTouchSlop;
    private boolean mEnableScrolling = true;
    private boolean mEnableMoveEvents = true;
    private RecyclerView.OnItemTouchListener mInternalUseOnItemTouchListener = new RecyclerView.OnItemTouchListener() { // from class: net.oneplus.h2launcher.quickpage.view.advrecyclerview.touchguard.RecyclerViewTouchActionGuardManager.1
        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
            return RecyclerViewTouchActionGuardManager.this.onInterceptTouchEvent(rv, e);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView rv, MotionEvent e) {
            RecyclerViewTouchActionGuardManager.this.onTouchEvent(rv, e);
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean disallow) {
        }
    };

    public boolean isReleased() {
        return this.mInternalUseOnItemTouchListener == null;
    }

    public void attachRecyclerView(@NonNull RecyclerView rv) {
        if (isReleased()) {
            throw new IllegalStateException("Accessing released object");
        }
        if (this.mRecyclerView != null) {
            throw new IllegalStateException("RecyclerView instance has already been set");
        }
        this.mRecyclerView = rv;
        this.mRecyclerView.addOnItemTouchListener(this.mInternalUseOnItemTouchListener);
        this.mTouchSlop = ViewConfiguration.get(rv.getContext().getApplicationContext()).getScaledTouchSlop();
    }

    public void setDragDropManager(RecyclerViewDragDropManager dragDropManager) {
        this.mDragDropManager = dragDropManager;
    }

    public void release() {
        if (this.mRecyclerView != null && this.mInternalUseOnItemTouchListener != null) {
            this.mRecyclerView.removeOnItemTouchListener(this.mInternalUseOnItemTouchListener);
        }
        this.mInternalUseOnItemTouchListener = null;
        this.mRecyclerView = null;
    }

    boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
        if (!this.mEnableMoveEvents) {
            return e.getAction() == 2;
        }
        if (!this.mEnabled || !this.mEnableScrolling) {
            return false;
        }
        int action = MotionEventCompat.getActionMasked(e);
        switch (action) {
            case 0:
                handleActionDown(e);
                return false;
            case 1:
            case 3:
                handleActionUpOrCancel();
                return false;
            case 2:
                handleActionMove(rv, e);
                return false;
            default:
                return false;
        }
    }

    void onTouchEvent(RecyclerView rv, MotionEvent e) {
        if (this.mEnabled) {
            int action = MotionEventCompat.getActionMasked(e);
            switch (action) {
                case 1:
                case 3:
                    handleActionUpOrCancel();
                    return;
                case 2:
                default:
                    return;
            }
        }
    }

    private boolean handleActionMove(RecyclerView rv, MotionEvent e) {
        if (!this.mGuarding) {
            this.mLastTouchY = (int) (e.getY() + 0.5f);
            int distance = this.mLastTouchY - this.mInitialTouchY;
            if (this.mInterceptScrollingWhileAnimationRunning && Math.abs(distance) > this.mTouchSlop && isAnimationRunning(rv)) {
                this.mGuarding = true;
            }
        }
        return this.mGuarding;
    }

    private static boolean isAnimationRunning(RecyclerView rv) {
        RecyclerView.ItemAnimator itemAnimator = rv.getItemAnimator();
        return itemAnimator != null && itemAnimator.isRunning();
    }

    private void handleActionUpOrCancel() {
        this.mGuarding = false;
        this.mInitialTouchY = 0;
        this.mLastTouchY = 0;
    }

    private void handleActionDown(MotionEvent e) {
        int y = (int) (e.getY() + 0.5f);
        this.mLastTouchY = y;
        this.mInitialTouchY = y;
        this.mGuarding = false;
    }

    public void setEnabled(boolean enabled) {
        if (this.mEnabled != enabled) {
            this.mEnabled = enabled;
            if (!this.mEnabled) {
                handleActionUpOrCancel();
            }
        }
    }

    public void setScrollingEnabled(boolean scrollingEnabled) {
        this.mEnableScrolling = scrollingEnabled;
        this.mDragDropManager.setScrollingEnabled(this.mEnableScrolling);
        this.mDragDropManager.cancelDrag();
    }

    public void setMoveEventsEnabled(boolean moveEventsEnabled) {
        this.mEnableMoveEvents = moveEventsEnabled;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setInterceptVerticalScrollingWhileAnimationRunning(boolean enabled) {
        this.mInterceptScrollingWhileAnimationRunning = enabled;
    }

    public boolean isInterceptScrollingWhileAnimationRunning() {
        return this.mInterceptScrollingWhileAnimationRunning;
    }

    public boolean hasItemInteractionStarted() {
        return this.mItemInteractionStarted;
    }

    public void setItemInteractionStarted(boolean itemInteractionStarted) {
        this.mItemInteractionStarted = itemInteractionStarted;
    }
}
