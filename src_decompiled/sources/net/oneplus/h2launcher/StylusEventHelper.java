package net.oneplus.h2launcher;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class StylusEventHelper {
    private boolean mIsButtonPressed;
    private View mView;

    public StylusEventHelper(View view) {
        this.mView = view;
    }

    public boolean checkAndPerformStylusEvent(MotionEvent event) {
        float slop = ViewConfiguration.get(this.mView.getContext()).getScaledTouchSlop();
        if (!this.mView.isLongClickable()) {
            return false;
        }
        boolean stylusButtonPressed = isStylusButtonPressed(event);
        switch (event.getAction()) {
            case 0:
                this.mIsButtonPressed = false;
                if (!stylusButtonPressed || !this.mView.performLongClick()) {
                    return false;
                }
                this.mIsButtonPressed = true;
                return true;
            case 1:
            case 3:
                this.mIsButtonPressed = false;
                return false;
            case 2:
                if (!Utilities.pointInView(this.mView, event.getX(), event.getY(), slop)) {
                    return false;
                }
                if (!this.mIsButtonPressed && stylusButtonPressed && this.mView.performLongClick()) {
                    this.mIsButtonPressed = true;
                    return true;
                }
                if (!this.mIsButtonPressed || stylusButtonPressed) {
                    return false;
                }
                this.mIsButtonPressed = false;
                return false;
            default:
                return false;
        }
    }

    public boolean inStylusButtonPressed() {
        return this.mIsButtonPressed;
    }

    private static boolean isStylusButtonPressed(MotionEvent event) {
        return event.getToolType(0) == 2 && (event.getButtonState() & 2) == 2;
    }
}
