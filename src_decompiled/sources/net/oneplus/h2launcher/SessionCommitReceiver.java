package net.oneplus.h2launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.os.UserHandle;
import android.text.TextUtils;
import java.util.List;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class SessionCommitReceiver extends BroadcastReceiver {
    public static final String ADD_ICON_PREFERENCE_KEY = "pref_add_icon_to_home";
    private final String TAG = SessionCommitReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!isEnabled(context)) {
            Logger.d(this.TAG, "onReceive: User has decided to not add icons on homescreen.");
            return;
        }
        PackageInstaller.SessionInfo info = (PackageInstaller.SessionInfo) intent.getParcelableExtra("android.content.pm.extra.SESSION");
        UserHandle user = (UserHandle) intent.getParcelableExtra("android.intent.extra.USER");
        UserHandleCompat userHandleCompat = UserHandleCompat.fromUser(user);
        if (TextUtils.isEmpty(info.getAppPackageName())) {
            Logger.d(this.TAG, "onReceive: getAppPackageName is null.");
            return;
        }
        if (!UserHandleCompat.myUserHandle().equals(userHandleCompat)) {
            Logger.d(this.TAG, "onReceive: Managed profile is handled using ManagedProfileHeuristic., UserHandleCompat.myUserHandle()=" + UserHandleCompat.myUserHandle() + ", user=" + user);
            return;
        }
        List<LauncherActivityInfoCompat> activities = LauncherAppsCompat.getInstance(context).getActivityList(info.getAppPackageName(), userHandleCompat);
        if (activities == null || activities.isEmpty()) {
            Logger.d(this.TAG, "onReceive: no activity found");
        } else {
            InstallShortcutReceiver.queueActivityInfo(activities.get(0), context);
        }
    }

    public static boolean isEnabled(Context context) {
        return Utilities.getPrefs(context).getBoolean(ADD_ICON_PREFERENCE_KEY, true);
    }
}
