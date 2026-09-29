package net.oneplus.h2launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class StartupReceiver extends BroadcastReceiver {
    static final String SYSTEM_READY = "net.oneplus.h2launcher.SYSTEM_READY";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        context.sendStickyBroadcast(new Intent(SYSTEM_READY));
    }
}
