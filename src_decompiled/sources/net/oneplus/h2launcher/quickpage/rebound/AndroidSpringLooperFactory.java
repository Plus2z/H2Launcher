package net.oneplus.h2launcher.quickpage.rebound;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Choreographer;

/* loaded from: classes.dex */
abstract class AndroidSpringLooperFactory {
    AndroidSpringLooperFactory() {
    }

    public static SpringLooper createSpringLooper() {
        return Build.VERSION.SDK_INT >= 16 ? ChoreographerAndroidSpringLooper.create() : LegacyAndroidSpringLooper.create();
    }

    /* loaded from: classes.dex */
    private static class LegacyAndroidSpringLooper extends SpringLooper {
        private final Handler mHandler;
        private long mLastTime;
        private final Runnable mLooperRunnable = new Runnable() { // from class: net.oneplus.h2launcher.quickpage.rebound.AndroidSpringLooperFactory.LegacyAndroidSpringLooper.1
            @Override // java.lang.Runnable
            public void run() {
                if (LegacyAndroidSpringLooper.this.mStarted && LegacyAndroidSpringLooper.this.mSpringSystem != null) {
                    long currentTime = SystemClock.uptimeMillis();
                    LegacyAndroidSpringLooper.this.mSpringSystem.loop(currentTime - LegacyAndroidSpringLooper.this.mLastTime);
                    LegacyAndroidSpringLooper.this.mLastTime = currentTime;
                    LegacyAndroidSpringLooper.this.mHandler.post(LegacyAndroidSpringLooper.this.mLooperRunnable);
                }
            }
        };
        private boolean mStarted;

        public static SpringLooper create() {
            return new LegacyAndroidSpringLooper(new Handler());
        }

        public LegacyAndroidSpringLooper(Handler handler) {
            this.mHandler = handler;
        }

        @Override // net.oneplus.h2launcher.quickpage.rebound.SpringLooper
        public void start() {
            if (!this.mStarted) {
                this.mStarted = true;
                this.mLastTime = SystemClock.uptimeMillis();
                this.mHandler.removeCallbacks(this.mLooperRunnable);
                this.mHandler.post(this.mLooperRunnable);
            }
        }

        @Override // net.oneplus.h2launcher.quickpage.rebound.SpringLooper
        public void stop() {
            this.mStarted = false;
            this.mHandler.removeCallbacks(this.mLooperRunnable);
        }
    }

    @TargetApi(16)
    /* loaded from: classes.dex */
    private static class ChoreographerAndroidSpringLooper extends SpringLooper {
        private final Choreographer mChoreographer;
        private final Choreographer.FrameCallback mFrameCallback = new Choreographer.FrameCallback() { // from class: net.oneplus.h2launcher.quickpage.rebound.AndroidSpringLooperFactory.ChoreographerAndroidSpringLooper.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long frameTimeNanos) {
                if (ChoreographerAndroidSpringLooper.this.mStarted && ChoreographerAndroidSpringLooper.this.mSpringSystem != null) {
                    long currentTime = SystemClock.uptimeMillis();
                    ChoreographerAndroidSpringLooper.this.mSpringSystem.loop(currentTime - ChoreographerAndroidSpringLooper.this.mLastTime);
                    ChoreographerAndroidSpringLooper.this.mLastTime = currentTime;
                    ChoreographerAndroidSpringLooper.this.mChoreographer.postFrameCallback(ChoreographerAndroidSpringLooper.this.mFrameCallback);
                }
            }
        };
        private long mLastTime;
        private boolean mStarted;

        public static ChoreographerAndroidSpringLooper create() {
            return new ChoreographerAndroidSpringLooper(Choreographer.getInstance());
        }

        public ChoreographerAndroidSpringLooper(Choreographer choreographer) {
            this.mChoreographer = choreographer;
        }

        @Override // net.oneplus.h2launcher.quickpage.rebound.SpringLooper
        public void start() {
            if (!this.mStarted) {
                this.mStarted = true;
                this.mLastTime = SystemClock.uptimeMillis();
                this.mChoreographer.removeFrameCallback(this.mFrameCallback);
                this.mChoreographer.postFrameCallback(this.mFrameCallback);
            }
        }

        @Override // net.oneplus.h2launcher.quickpage.rebound.SpringLooper
        public void stop() {
            this.mStarted = false;
            this.mChoreographer.removeFrameCallback(this.mFrameCallback);
        }
    }
}
