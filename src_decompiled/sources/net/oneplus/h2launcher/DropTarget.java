package net.oneplus.h2launcher;

import android.graphics.PointF;
import android.graphics.Rect;

/* loaded from: classes.dex */
public interface DropTarget {
    public static final String TAG = "DropTarget";

    boolean acceptDrop(DragObject dragObject);

    void getHitRectRelativeToDragLayer(Rect rect);

    int getLeft();

    void getLocationInDragLayer(int[] iArr);

    int getTop();

    boolean isDropEnabled();

    void onDragEnter(DragObject dragObject);

    void onDragExit(DragObject dragObject);

    void onDragOver(DragObject dragObject);

    void onDrop(DragObject dragObject);

    void onFlingToDelete(DragObject dragObject, PointF pointF);

    void prepareAccessibilityDrop();

    /* loaded from: classes.dex */
    public static class DragObject {
        public boolean accessibleDrag;
        public int x = -1;
        public int y = -1;
        public int xOffset = -1;
        public int yOffset = -1;
        public boolean dragComplete = false;
        public DragView dragView = null;
        public Object dragInfo = null;
        public DragSource dragSource = null;
        public Runnable postAnimationRunnable = null;
        public boolean edit = false;
        public boolean remove = true;
        public boolean cancelled = false;
        public boolean deferDragViewCleanupPostAnimation = true;

        public final float[] getVisualCenter(float[] recycle) {
            float[] res = recycle == null ? new float[2] : recycle;
            int left = this.x - this.xOffset;
            int top = this.y - this.yOffset;
            res[0] = (this.dragView.getDragRegion().width() / 2) + left;
            res[1] = (this.dragView.getDragRegion().height() / 2) + top;
            return res;
        }
    }
}
