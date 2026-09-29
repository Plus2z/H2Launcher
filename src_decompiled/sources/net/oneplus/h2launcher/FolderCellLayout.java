package net.oneplus.h2launcher;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class FolderCellLayout extends CellLayout {
    private GestureDetector mGestureDetector;
    private final boolean mIsRtl;

    public FolderCellLayout(Context context) {
        this(context, null);
    }

    public FolderCellLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FolderCellLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mGestureDetector = new GestureDetector(getContext(), new TapDetector());
    }

    @Override // net.oneplus.h2launcher.CellLayout, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent ev) {
        this.mGestureDetector.onTouchEvent(ev);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getLastItem() {
        ShortcutAndWidgetContainer currContainer = getShortcutsAndWidgets();
        int lastRank = currContainer.getChildCount() - 1;
        int countX = getCountX();
        return countX > 0 ? currContainer.getChildAt(lastRank % countX, lastRank / countX) : currContainer.getChildAt(lastRank);
    }

    /* loaded from: classes.dex */
    private class TapDetector extends GestureDetector.SimpleOnGestureListener {
        private final Rect mLastItemRect;

        private TapDetector() {
            this.mLastItemRect = new Rect();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent ev) {
            int x = (int) ev.getX();
            int y = (int) ev.getY();
            FolderCellLayout.this.getLastItem().getHitRect(this.mLastItemRect);
            boolean tappingEmptyCell = y > this.mLastItemRect.top && y < this.mLastItemRect.bottom && (!FolderCellLayout.this.mIsRtl ? x <= this.mLastItemRect.right : x >= this.mLastItemRect.left);
            if (tappingEmptyCell) {
                ((Launcher) FolderCellLayout.this.getContext()).closeFolder();
            }
            return true;
        }
    }
}
