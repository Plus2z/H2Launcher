package net.oneplus.h2launcher;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class DeferredHandler {
    LinkedList<Runnable> mQueue = new LinkedList<>();
    private MessageQueue mMessageQueue = Looper.myQueue();
    private Impl mHandler = new Impl();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Impl extends Handler implements MessageQueue.IdleHandler {
        Impl() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            synchronized (DeferredHandler.this.mQueue) {
                if (DeferredHandler.this.mQueue.size() != 0) {
                    Runnable r = DeferredHandler.this.mQueue.removeFirst();
                    r.run();
                    synchronized (DeferredHandler.this.mQueue) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class IdleRunnable implements Runnable {
        Runnable mRunnable;

        IdleRunnable(Runnable r) {
            this.mRunnable = r;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRunnable.run();
        }
    }

    public void post(Runnable runnable) {
        synchronized (this.mQueue) {
            this.mQueue.add(runnable);
            if (this.mQueue.size() == 1) {
                scheduleNextLocked();
            }
        }
    }

    public void cancelAll() {
        synchronized (this.mQueue) {
            this.mQueue.clear();
        }
    }

    public void flush() {
        LinkedList<Runnable> queue = new LinkedList<>();
        synchronized (this.mQueue) {
            queue.addAll(this.mQueue);
            this.mQueue.clear();
        }
        Iterator<Runnable> it = queue.iterator();
        while (it.hasNext()) {
            Runnable r = it.next();
            r.run();
        }
    }

    void scheduleNextLocked() {
        if (this.mQueue.size() > 0) {
            Runnable peek = this.mQueue.getFirst();
            if (peek instanceof IdleRunnable) {
                this.mMessageQueue.addIdleHandler(this.mHandler);
            } else {
                this.mHandler.sendEmptyMessage(1);
            }
        }
    }
}
