package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo;
import net.oneplus.h2launcher.util.PackageUserKey;

@TargetApi(26)
/* loaded from: classes.dex */
public class LauncherAppsCompatVO extends LauncherAppsCompatVL {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherAppsCompatVO(Context context) {
        super(context);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompatVL, net.oneplus.h2launcher.compat.LauncherAppsCompat
    public List<ShortcutConfigActivityInfo> getCustomShortcutActivityList(@Nullable PackageUserKey packageUser) {
        List<UserHandleCompat> users;
        String packageName;
        List<ShortcutConfigActivityInfo> result = new ArrayList<>();
        UserHandleCompat myUser = UserHandleCompat.myUserHandle();
        try {
            Method m = LauncherApps.class.getDeclaredMethod("getShortcutConfigActivityList", String.class, UserHandle.class);
            if (packageUser == null) {
                users = UserManagerCompat.getInstance(this.mContext).getUserProfiles();
                packageName = null;
            } else {
                users = new ArrayList<>(1);
                users.add(packageUser.mUser);
                packageName = packageUser.mPackageName;
            }
            for (UserHandleCompat user : users) {
                boolean ignoreTargetSdk = myUser.equals(user);
                List<LauncherActivityInfo> activities = (List) m.invoke(this.mLauncherApps, packageName, user.getUser());
                for (LauncherActivityInfo activityInfo : activities) {
                    if (ignoreTargetSdk || activityInfo.getApplicationInfo().targetSdkVersion >= 26) {
                        result.add(new ShortcutConfigActivityInfo.ShortcutConfigActivityInfoVO(activityInfo));
                    }
                }
            }
        } catch (Exception e) {
            Log.e("LauncherAppsCompatVO", "Error calling new API", e);
        }
        return result;
    }
}
