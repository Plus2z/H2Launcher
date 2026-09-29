package net.oneplus.h2launcher.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v7.widget.LinearLayoutManager;
import android.util.AttributeSet;
import android.view.View;
import net.oneplus.h2launcher.BaseRecyclerView;
import net.oneplus.h2launcher.model.PackageItemInfo;
import net.oneplus.h2launcher.model.WidgetsModel;

/* loaded from: classes.dex */
public class WidgetsRecyclerView extends BaseRecyclerView {
    private static final String TAG = "WidgetsRecyclerView";
    private BaseRecyclerView.ScrollPositionState mScrollPosState;
    private WidgetsModel mWidgets;

    public WidgetsRecyclerView(Context context) {
        this(context, null);
    }

    public WidgetsRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WidgetsRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mScrollPosState = new BaseRecyclerView.ScrollPositionState();
    }

    public WidgetsRecyclerView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this(context, attrs, defStyleAttr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.BaseRecyclerView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        addOnItemTouchListener(this);
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    public int getFastScrollerTrackColor(int defaultTrackColor) {
        return -1;
    }

    public void setWidgets(WidgetsModel widgets) {
        this.mWidgets = widgets;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.BaseRecyclerView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.clipRect(this.mBackgroundPadding.left, this.mBackgroundPadding.top, getWidth() - this.mBackgroundPadding.right, getHeight() - this.mBackgroundPadding.bottom);
        super.dispatchDraw(canvas);
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    public String scrollToPositionAtProgress(float touchFraction) {
        int rowCount;
        if (this.mWidgets == null || (rowCount = this.mWidgets.getPackageSize()) == 0) {
            return "";
        }
        stopScroll();
        getCurScrollState(this.mScrollPosState);
        float pos = rowCount * touchFraction;
        int availableScrollHeight = getAvailableScrollHeight(rowCount, this.mScrollPosState.rowHeight);
        LinearLayoutManager layoutManager = (LinearLayoutManager) getLayoutManager();
        layoutManager.scrollToPositionWithOffset(0, (int) (-(availableScrollHeight * touchFraction)));
        if (touchFraction == 1.0f) {
            pos -= 1.0f;
        }
        int posInt = (int) pos;
        PackageItemInfo p = this.mWidgets.getPackageItemInfo(posInt);
        return p.titleSectionName;
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    public void onUpdateScrollbar(int dy) {
        if (this.mWidgets != null) {
            int rowCount = this.mWidgets.getPackageSize();
            if (rowCount == 0) {
                this.mScrollbar.setThumbOffset(-1, -1);
                return;
            }
            getCurScrollState(this.mScrollPosState);
            if (this.mScrollPosState.rowIndex < 0) {
                this.mScrollbar.setThumbOffset(-1, -1);
            } else {
                synchronizeScrollBarThumbOffsetToViewScroll(this.mScrollPosState, rowCount);
            }
        }
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerView
    protected void getCurScrollState(BaseRecyclerView.ScrollPositionState stateOut) {
        stateOut.rowIndex = -1;
        stateOut.rowTopOffset = -1;
        stateOut.rowHeight = -1;
        if (this.mWidgets != null) {
            int rowCount = this.mWidgets.getPackageSize();
            if (rowCount != 0) {
                View child = getChildAt(0);
                int position = getChildPosition(child);
                stateOut.rowIndex = position;
                stateOut.rowTopOffset = getLayoutManager().getDecoratedTop(child);
                stateOut.rowHeight = child.getHeight();
            }
        }
    }
}
