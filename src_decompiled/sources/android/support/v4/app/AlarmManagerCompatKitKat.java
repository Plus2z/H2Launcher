package android.support.v4.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.support.annotation.RequiresApi;

@RequiresApi(19)
/* loaded from: classes.dex */
class AlarmManagerCompatKitKat {
    AlarmManagerCompatKitKat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setExact(AlarmManager alarmManager, int type, long triggerAtMillis, PendingIntent operation) {
        alarmManager.setExact(type, triggerAtMillis, operation);
    }
}
