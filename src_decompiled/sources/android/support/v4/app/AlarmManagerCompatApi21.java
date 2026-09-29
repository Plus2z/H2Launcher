package android.support.v4.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class AlarmManagerCompatApi21 {
    AlarmManagerCompatApi21() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAlarmClock(AlarmManager alarmManager, long triggerTime, PendingIntent showIntent, PendingIntent operation) {
        alarmManager.setAlarmClock(new AlarmManager.AlarmClockInfo(triggerTime, showIntent), operation);
    }
}
