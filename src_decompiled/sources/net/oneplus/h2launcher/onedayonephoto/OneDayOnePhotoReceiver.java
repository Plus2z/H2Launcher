package net.oneplus.h2launcher.onedayonephoto;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class OneDayOnePhotoReceiver extends BroadcastReceiver {
    private static final String ACTION_LAUNCH_ONE_DAY_ONE_PHOTO = "net.oneplus.h2launcher.action.LAUNCH_ONE_DAY_ONE_PHOTO";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(ACTION_LAUNCH_ONE_DAY_ONE_PHOTO)) {
            OneDayOnePhotoHelper.startOneDayOnePhotoPicker(context, 1);
        }
    }
}
