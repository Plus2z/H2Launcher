package net.oneplus.h2launcher;

import android.view.View;

/* loaded from: classes.dex */
public class CheckLongPressHelper {
    boolean mHasPerformedLongPress;
    View.OnLongClickListener mListener;
    private int mLongPressTimeout = 300;
    private CheckForLongPress mPendingCheckForLongPress;
    View mView;

    /* loaded from: classes.dex */
    class CheckForLongPress implements Runnable {
        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean handled;
            if (CheckLongPressHelper.this.mView.getParent() != null && CheckLongPressHelper.this.mView.hasWindowFocus() && !CheckLongPressHelper.this.mHasPerformedLongPress) {
                if (CheckLongPressHelper.this.mListener != null) {
                    handled = CheckLongPressHelper.this.mListener.onLongClick(CheckLongPressHelper.this.mView);
                } else {
                    handled = CheckLongPressHelper.this.mView.performLongClick();
                }
                if (handled) {
                    CheckLongPressHelper.this.mView.setPressed(false);
                    CheckLongPressHelper.this.mHasPerformedLongPress = true;
                }
            }
        }
    }

    public CheckLongPressHelper(View v) {
        this.mView = v;
    }

    public CheckLongPressHelper(View v, View.OnLongClickListener listener) {
        this.mView = v;
        this.mListener = listener;
    }

    public void setLongPressTimeout(int longPressTimeout) {
        this.mLongPressTimeout = longPressTimeout;
    }

    public void postCheckForLongPress() {
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress == null) {
            this.mPendingCheckForLongPress = new CheckForLongPress();
        }
        this.mView.postDelayed(this.mPendingCheckForLongPress, this.mLongPressTimeout);
    }

    public void cancelLongPress() {
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress != null) {
            this.mView.removeCallbacks(this.mPendingCheckForLongPress);
            this.mPendingCheckForLongPress = null;
        }
    }

    public boolean hasPerformedLongPress() {
        return this.mHasPerformedLongPress;
    }
}
