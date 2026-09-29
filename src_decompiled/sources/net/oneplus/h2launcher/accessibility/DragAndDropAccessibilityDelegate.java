package net.oneplus.h2launcher.accessibility;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate;

/* loaded from: classes.dex */
public abstract class DragAndDropAccessibilityDelegate extends ExploreByTouchHelper implements View.OnClickListener {
    protected static final int INVALID_POSITION = -1;
    private static final int[] sTempArray = new int[2];
    protected final Context mContext;
    protected final LauncherAccessibilityDelegate mDelegate;
    private final Rect mTempRect;
    protected final CellLayout mView;

    protected abstract String getConfirmationForIconDrop(int i);

    protected abstract String getLocationDescriptionForIconDrop(int i);

    protected abstract int intersectsValidDropTarget(int i);

    public DragAndDropAccessibilityDelegate(CellLayout forView) {
        super(forView);
        this.mTempRect = new Rect();
        this.mView = forView;
        this.mContext = this.mView.getContext();
        this.mDelegate = LauncherAppState.getInstance().getAccessibilityDelegate();
    }

    @Override // android.support.v4.widget.ExploreByTouchHelper
    protected int getVirtualViewAt(float x, float y) {
        if (x < 0.0f || y < 0.0f || x > this.mView.getMeasuredWidth() || y > this.mView.getMeasuredHeight()) {
            return Integer.MIN_VALUE;
        }
        this.mView.pointToCellExact((int) x, (int) y, sTempArray);
        int id = sTempArray[0] + (sTempArray[1] * this.mView.getCountX());
        return intersectsValidDropTarget(id);
    }

    @Override // android.support.v4.widget.ExploreByTouchHelper
    protected void getVisibleVirtualViews(List<Integer> virtualViews) {
        int nCells = this.mView.getCountX() * this.mView.getCountY();
        for (int i = 0; i < nCells; i++) {
            if (intersectsValidDropTarget(i) == i) {
                virtualViews.add(Integer.valueOf(i));
            }
        }
    }

    @Override // android.support.v4.widget.ExploreByTouchHelper
    protected boolean onPerformActionForVirtualView(int viewId, int action, Bundle args) {
        if (action != 16 || viewId == Integer.MIN_VALUE) {
            return false;
        }
        String confirmation = getConfirmationForIconDrop(viewId);
        this.mDelegate.handleAccessibleDrop(this.mView, getItemBounds(viewId), confirmation);
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        onPerformActionForVirtualView(getFocusedVirtualView(), 16, null);
    }

    @Override // android.support.v4.widget.ExploreByTouchHelper
    protected void onPopulateEventForVirtualView(int id, AccessibilityEvent event) {
        if (id == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        event.setContentDescription(this.mContext.getString(R.string.action_move_here));
    }

    @Override // android.support.v4.widget.ExploreByTouchHelper
    protected void onPopulateNodeForVirtualView(int id, AccessibilityNodeInfoCompat node) {
        if (id == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        node.setContentDescription(getLocationDescriptionForIconDrop(id));
        node.setBoundsInParent(getItemBounds(id));
        node.addAction(16);
        node.setClickable(true);
        node.setFocusable(true);
    }

    private Rect getItemBounds(int id) {
        int cellX = id % this.mView.getCountX();
        int cellY = id / this.mView.getCountX();
        LauncherAccessibilityDelegate.DragInfo dragInfo = this.mDelegate.getDragInfo();
        this.mView.cellToRect(cellX, cellY, dragInfo.info.spanX, dragInfo.info.spanY, this.mTempRect);
        return this.mTempRect;
    }
}
