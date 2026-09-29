package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import io.fabric.sdk.android.services.concurrency.PriorityRunnable;

/* loaded from: classes.dex */
public class SafeToast extends Toast {
    public SafeToast(Context context) {
        super(context);
    }

    @Override // android.widget.Toast
    public void show() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.show();
        } else {
            Handler handler = new Handler(Looper.getMainLooper());
            handler.post(new PriorityRunnable() { // from class: io.fabric.sdk.android.services.common.SafeToast.1
                @Override // java.lang.Runnable
                public void run() {
                    SafeToast.super.show();
                }
            });
        }
    }

    public static Toast makeText(Context context, CharSequence text, int duration) {
        Toast origToast = Toast.makeText(context, text, duration);
        SafeToast safeToast = new SafeToast(context);
        safeToast.setView(origToast.getView());
        safeToast.setDuration(origToast.getDuration());
        return safeToast;
    }

    public static Toast makeText(Context context, int resId, int duration) throws Resources.NotFoundException {
        return makeText(context, context.getResources().getText(resId), duration);
    }
}
