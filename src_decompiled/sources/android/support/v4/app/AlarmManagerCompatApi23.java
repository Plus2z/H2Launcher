package android.support.v4.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
/* loaded from: classes.dex */
class AlarmManagerCompatApi23 {
    AlarmManagerCompatApi23() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAndAllowWhileIdle(AlarmManager alarmManager, int type, long triggerAtMillis, PendingIntent operation) {
        alarmManager.setAndAllowWhileIdle(type, triggerAtMillis, operation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int type, long triggerAtMillis, PendingIntent operation) {
        alarmManager.setExactAndAllowWhileIdle(type, triggerAtMillis, operation);
    }
}
