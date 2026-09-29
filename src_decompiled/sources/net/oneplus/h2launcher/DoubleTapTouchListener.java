package net.oneplus.h2launcher;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class DoubleTapTouchListener implements View.OnTouchListener {
    private static final String TAG = DoubleTapTouchListener.class.getSimpleName();
    private final GestureDetector mGesture;

    /* loaded from: classes.dex */
    public interface OnDoubleTapSettingsChangeListener {
        void onDoubleTapSettingsChange(boolean z);
    }

    public DoubleTapTouchListener(Launcher launcher) {
        this.mGesture = new GestureDetector(launcher, new DoubleTapSleepGestureListener(launcher));
    }

    public DoubleTapTouchListener(Launcher launcher, Workspace workspace) {
        this.mGesture = new GestureDetector(launcher, new DoubleTapSleepGestureListener(launcher, workspace));
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent ev) {
        return this.mGesture.onTouchEvent(ev);
    }
}
