package com.oneplus.lib.widget.recyclerview;

import android.view.MotionEvent;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class OPItemAnimator extends DefaultItemAnimator {
    private static final int ONEPLUS_DURATION_MOVE = 200;
    private static final int ONEPLUS_DURATION_REMOVE = 200;
    private RecyclerView mRecyclerView;
    private RecyclerView.OnItemTouchListener recyclerViewDisabler = new RecyclerViewDisabler();

    public OPItemAnimator(RecyclerView rv) {
        this.mRecyclerView = rv;
        setRemoveDuration(200L);
        setMoveDuration(200L);
    }

    /* loaded from: classes.dex */
    private class RecyclerViewDisabler implements RecyclerView.OnItemTouchListener {
        private RecyclerViewDisabler() {
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
            return true;
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView rv, MotionEvent e) {
        }

        @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public void onRemoveStarting(RecyclerView.ViewHolder item) {
        this.mRecyclerView.addOnItemTouchListener(this.recyclerViewDisabler);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemAnimator
    public void onMoveFinished(RecyclerView.ViewHolder viewHolder) {
        this.mRecyclerView.removeOnItemTouchListener(this.recyclerViewDisabler);
    }
}
