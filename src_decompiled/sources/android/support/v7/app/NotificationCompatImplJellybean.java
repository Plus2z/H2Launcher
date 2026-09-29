package android.support.v7.app;

import android.app.Notification;
import android.support.annotation.RequiresApi;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;

@RequiresApi(16)
/* loaded from: classes.dex */
class NotificationCompatImplJellybean {
    NotificationCompatImplJellybean() {
    }

    public static void addBigTextStyle(NotificationBuilderWithBuilderAccessor b, CharSequence bigText) {
        Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle(b.getBuilder());
        bigTextStyle.bigText(bigText);
    }
}
