package net.oneplus.h2launcher.customizations.wallpaper;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.Watchdog;

/* loaded from: classes.dex */
public class WallpaperTaskWorker {
    public static final int DEFAULT_TASK_TAG = 0;
    private static WallpaperTaskWorker sInstance;
    private static final String LOG_TAG = WallpaperTaskWorker.class.getSimpleName();
    private static final ThreadFactory sThreadFactory = new ThreadFactory() { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r, "BackgroundTaskWorker #" + this.mCount.getAndIncrement());
            t.setPriority(1);
            return t;
        }
    };
    private static final ThreadFactory sThreadFactoryNormal = new ThreadFactory() { // from class: net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker.2
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r, "BackgroundTaskWorker #" + this.mCount.getAndIncrement());
            return t;
        }
    };
    private static final ExecutorService sLowPriorityExecutor = Executors.newSingleThreadExecutor(sThreadFactory);
    private static final ExecutorService sNormalPriorityExecutor = Executors.newSingleThreadExecutor(sThreadFactoryNormal);
    private static final HandlerThread sWorkerThread = new HandlerThread(LOG_TAG);
    private final DeferredHandler mWorkerHandler = new DeferredHandler(sWorkerThread.getLooper());
    private final DeferredHandler mUIHandler = new DeferredHandler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    public enum Priority {
        HIGH,
        NORMAL,
        LOW
    }

    static {
        sWorkerThread.start();
    }

    public static WallpaperTaskWorker get() {
        if (sInstance == null) {
            sInstance = new WallpaperTaskWorker();
        }
        return sInstance;
    }

    public static ExecutorService getLowPriorityExecutor() {
        return sLowPriorityExecutor;
    }

    public static ExecutorService getNormalPriorityExecutor() {
        return sNormalPriorityExecutor;
    }

    private WallpaperTaskWorker() {
    }

    public void postAtFrontOfQueue(Runnable runnable) {
        this.mWorkerHandler.post(new TagRunnable(0L, Priority.HIGH, runnable));
    }

    public void post(Runnable runnable) {
        this.mWorkerHandler.post(new TagRunnable(0L, Priority.NORMAL, runnable));
    }

    public void post(Object caller, Runnable runnable) {
        this.mWorkerHandler.post(new TagRunnable(caller.hashCode(), Priority.NORMAL, runnable));
    }

    public void cancelTask(Object caller) {
        this.mWorkerHandler.cancelRunnable(caller.hashCode());
        this.mUIHandler.cancelRunnable(caller.hashCode());
    }

    public void clearPendingTask() {
        Logger.i(LOG_TAG, "clear pending jobs in TaskWorker");
        this.mWorkerHandler.mRunnableQueue.clear();
        this.mUIHandler.mRunnableQueue.clear();
    }

    public void postUI(Runnable runnable) {
        this.mUIHandler.post(new TagRunnable(0L, Priority.NORMAL, runnable));
    }

    public void postUI(Object caller, Runnable runnable) {
        this.mUIHandler.post(new TagRunnable(caller.hashCode(), Priority.NORMAL, runnable));
    }

    public void postUIIdle(Runnable runnable) {
        this.mUIHandler.post(new TagRunnable(0L, Priority.LOW, runnable));
    }

    public void postUIIdle(Object caller, Runnable runnable) {
        this.mUIHandler.post(new TagRunnable(caller.hashCode(), Priority.LOW, runnable));
    }

    public int getWorkerThreadId() {
        return sWorkerThread.getThreadId();
    }

    public void pauseWorkerThread() {
        synchronized (sWorkerThread) {
            try {
                sWorkerThread.wait();
            } catch (InterruptedException e) {
                Log.d(LOG_TAG, "sWorkerThread is interrupted.");
            }
        }
    }

    public void notifyWorkerThread() {
        synchronized (sWorkerThread) {
            sWorkerThread.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TagRunnable implements Runnable {
        String mCallStack = Logger.getCallStack(10);
        public Priority mPriority;
        Runnable mRunnable;
        public long mTag;

        public TagRunnable(long tag, Priority priority, Runnable r) {
            this.mTag = tag;
            this.mPriority = priority;
            this.mRunnable = r;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRunnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DeferredHandler {
        private final Impl mHandler;
        private final MessageQueue mMessageQueue;
        private LinkedList<TagRunnable> mRunnableQueue = new LinkedList<>();

        public DeferredHandler(Looper looper) {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
            this.mMessageQueue = Looper.myQueue();
            this.mHandler = new Impl(looper);
        }

        public void post(TagRunnable runnable) {
            synchronized (this.mRunnableQueue) {
                if (runnable.mPriority == Priority.HIGH) {
                    this.mRunnableQueue.addFirst(runnable);
                } else {
                    this.mRunnableQueue.add(runnable);
                }
                if (this.mRunnableQueue.size() == 1) {
                    scheduleNextLocked();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scheduleNextLocked() {
            if (this.mRunnableQueue.size() > 0) {
                TagRunnable peek = this.mRunnableQueue.getFirst();
                if (peek.mPriority == Priority.LOW) {
                    this.mMessageQueue.addIdleHandler(this.mHandler);
                } else {
                    this.mHandler.sendEmptyMessage(20401);
                }
            }
        }

        public void cancelRunnable(long lTag) {
            synchronized (this.mRunnableQueue) {
                Iterator<TagRunnable> it = this.mRunnableQueue.iterator();
                while (it.hasNext()) {
                    if (lTag == it.next().mTag) {
                        it.remove();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class Impl extends Handler implements MessageQueue.IdleHandler {
            Watchdog mWatchdog;

            public Impl(Looper looper) {
                super(looper);
                this.mWatchdog = new Watchdog();
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                synchronized (DeferredHandler.this.mRunnableQueue) {
                    if (DeferredHandler.this.mRunnableQueue.size() != 0) {
                        TagRunnable r = (TagRunnable) DeferredHandler.this.mRunnableQueue.removeFirst();
                        this.mWatchdog.startTracing(r.mCallStack);
                        r.run();
                        this.mWatchdog.endTracing();
                        synchronized (DeferredHandler.this.mRunnableQueue) {
                            DeferredHandler.this.scheduleNextLocked();
                        }
                    }
                }
            }

            @Override // android.os.MessageQueue.IdleHandler
            public boolean queueIdle() {
                handleMessage(null);
                return false;
            }
        }
    }
}
