package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.EdgeEffectCompat;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class BaseEdgeEffectDecorator extends RecyclerView.ItemDecoration {
    protected static final int EDGE_BOTTOM = 3;
    protected static final int EDGE_LEFT = 0;
    protected static final int EDGE_RIGHT = 2;
    protected static final int EDGE_TOP = 1;
    private EdgeEffectCompat mGlow1;
    private int mGlow1Dir;
    private EdgeEffectCompat mGlow2;
    private int mGlow2Dir;
    private RecyclerView mRecyclerView;
    private boolean mStarted;

    protected abstract int getEdgeDirection(int i);

    public BaseEdgeEffectDecorator(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c, RecyclerView parent, RecyclerView.State state) {
        boolean needsInvalidate = this.mGlow1 != null ? false | drawGlow(c, parent, this.mGlow1Dir, this.mGlow1) : false;
        if (this.mGlow2 != null) {
            needsInvalidate |= drawGlow(c, parent, this.mGlow2Dir, this.mGlow2);
        }
        if (needsInvalidate) {
            ViewCompat.postInvalidateOnAnimation(parent);
        }
    }

    private static boolean drawGlow(Canvas c, RecyclerView parent, int dir, EdgeEffectCompat edge) {
        if (edge.isFinished()) {
            return false;
        }
        int restore = c.save();
        boolean clipToPadding = getClipToPadding(parent);
        switch (dir) {
            case 0:
                c.rotate(-90.0f);
                if (clipToPadding) {
                    c.translate((-parent.getHeight()) + parent.getPaddingTop(), parent.getPaddingLeft());
                    break;
                } else {
                    c.translate(-parent.getHeight(), 0.0f);
                    break;
                }
            case 1:
                if (clipToPadding) {
                    c.translate(parent.getPaddingLeft(), parent.getPaddingTop());
                    break;
                }
                break;
            case 2:
                c.rotate(90.0f);
                if (clipToPadding) {
                    c.translate(parent.getPaddingTop(), (-parent.getWidth()) + parent.getPaddingRight());
                    break;
                } else {
                    c.translate(0.0f, -parent.getWidth());
                    break;
                }
            case 3:
                c.rotate(180.0f);
                if (clipToPadding) {
                    c.translate((-parent.getWidth()) + parent.getPaddingRight(), (-parent.getHeight()) + parent.getPaddingBottom());
                    break;
                } else {
                    c.translate(-parent.getWidth(), -parent.getHeight());
                    break;
                }
        }
        boolean draw = edge.draw(c);
        c.restoreToCount(restore);
        return draw;
    }

    public void start() {
        if (!this.mStarted) {
            this.mGlow1Dir = getEdgeDirection(0);
            this.mGlow2Dir = getEdgeDirection(1);
            this.mRecyclerView.addItemDecoration(this);
            this.mStarted = true;
        }
    }

    public void finish() {
        if (this.mStarted) {
            this.mRecyclerView.removeItemDecoration(this);
        }
        releaseBothGlows();
        this.mRecyclerView = null;
        this.mStarted = false;
    }

    public void pullFirstEdge(float deltaDistance) {
        ensureGlow1(this.mRecyclerView);
        if (this.mGlow1.onPull(deltaDistance)) {
            ViewCompat.postInvalidateOnAnimation(this.mRecyclerView);
        }
    }

    public void pullSecondEdge(float deltaDistance) {
        ensureGlow2(this.mRecyclerView);
        if (this.mGlow2.onPull(deltaDistance)) {
            ViewCompat.postInvalidateOnAnimation(this.mRecyclerView);
        }
    }

    public void releaseBothGlows() {
        boolean needsInvalidate = this.mGlow1 != null ? false | this.mGlow1.onRelease() : false;
        if (this.mGlow2 != null) {
            needsInvalidate |= this.mGlow2.onRelease();
        }
        if (needsInvalidate) {
            ViewCompat.postInvalidateOnAnimation(this.mRecyclerView);
        }
    }

    private void ensureGlow1(RecyclerView rv) {
        if (this.mGlow1 == null) {
            this.mGlow1 = new EdgeEffectCompat(rv.getContext().getApplicationContext());
        }
        updateGlowSize(rv, this.mGlow1, this.mGlow1Dir);
    }

    private void ensureGlow2(RecyclerView rv) {
        if (this.mGlow2 == null) {
            this.mGlow2 = new EdgeEffectCompat(rv.getContext().getApplicationContext());
        }
        updateGlowSize(rv, this.mGlow2, this.mGlow2Dir);
    }

    private static void updateGlowSize(RecyclerView rv, EdgeEffectCompat glow, int dir) {
        int width = rv.getMeasuredWidth();
        int height = rv.getMeasuredHeight();
        if (getClipToPadding(rv)) {
            width -= rv.getPaddingLeft() + rv.getPaddingRight();
            height -= rv.getPaddingTop() + rv.getPaddingBottom();
        }
        int width2 = Math.max(0, width);
        int height2 = Math.max(0, height);
        if (dir == 0 || dir == 2) {
            width2 = height2;
            height2 = width2;
        }
        glow.setSize(width2, height2);
    }

    private static boolean getClipToPadding(RecyclerView rv) {
        return rv.getLayoutManager().getClipToPadding();
    }

    public void reorderToTop() {
        if (this.mStarted) {
            this.mRecyclerView.removeItemDecoration(this);
            this.mRecyclerView.addItemDecoration(this);
        }
    }
}
