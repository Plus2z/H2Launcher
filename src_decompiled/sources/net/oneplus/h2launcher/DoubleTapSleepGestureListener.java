package net.oneplus.h2launcher;

import android.os.PowerManager;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public class DoubleTapSleepGestureListener extends GestureDetector.SimpleOnGestureListener {
    public static final String TAG = DoubleTapSleepGestureListener.class.getSimpleName();
    private Launcher mLauncher;
    private PowerManager mPowerManager;
    private Workspace mWorkspace;

    public DoubleTapSleepGestureListener(Launcher launcher) {
        this.mLauncher = launcher;
        this.mWorkspace = launcher.getWorkspace();
    }

    public DoubleTapSleepGestureListener(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
    }

    private PowerManager getPowerManager() {
        if (this.mPowerManager == null) {
            this.mPowerManager = (PowerManager) this.mLauncher.getSystemService("power");
        }
        return this.mPowerManager;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent e) {
        boolean doubleTagEnabled = this.mLauncher.getDoubleTapEnabled();
        boolean normal = this.mLauncher.isInWorkspaceMode();
        boolean isSwitchingState = this.mWorkspace.isSwitchingState();
        Log.d(TAG, "onDoubleTap# doubleTapEnabled: " + doubleTagEnabled + ", normal: " + normal + ", isSwitchingState: " + isSwitchingState);
        if (doubleTagEnabled && normal && !isSwitchingState) {
            Utilities.goToSleep(getPowerManager());
            return true;
        }
        return true;
    }
}
