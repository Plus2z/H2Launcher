package net.oneplus.h2launcher.util;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class Watchdog {
    public static final int CALL_STACK_LEVEL = 10;
    public static final boolean DEBUG = true;
    private static final String TAG = Watchdog.class.getSimpleName();
    private static final int THRESHOLD = 3000;
    private static Handler sWatchdog;
    private String mCaller;
    private WatchdogTask mTask;
    private int mThreshold;

    static {
        HandlerThread watchdogThread = new HandlerThread("watchdog-thread");
        watchdogThread.start();
        sWatchdog = new Handler(watchdogThread.getLooper());
    }

    /* loaded from: classes.dex */
    private class WatchdogTask extends TimerTask {
        Runnable event;

        WatchdogTask() {
            this.event = new Runnable() { // from class: net.oneplus.h2launcher.util.Watchdog.WatchdogTask.1
                @Override // java.lang.Runnable
                public void run() {
                    Logger.d(Watchdog.TAG, "oh!! the task executes more than %dms, caller:\n%s", Integer.valueOf(Watchdog.this.mThreshold), Watchdog.this.mCaller);
                }
            };
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Watchdog.sWatchdog.postDelayed(this.event, Watchdog.this.mThreshold);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void remove() {
            if (this.event != null) {
                Watchdog.sWatchdog.removeCallbacks(this.event);
            }
        }
    }

    public Watchdog() {
        this(THRESHOLD);
    }

    public Watchdog(int threshold) {
        this.mThreshold = threshold;
    }

    public void startTracing(String caller) {
        this.mCaller = caller;
        this.mTask = new WatchdogTask();
        sWatchdog.post(this.mTask);
    }

    public void endTracing() {
        this.mTask.remove();
        sWatchdog.removeCallbacks(this.mTask);
    }
}
