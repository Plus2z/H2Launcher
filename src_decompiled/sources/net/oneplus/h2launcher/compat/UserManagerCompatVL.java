package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.util.LongArrayMap;

@TargetApi(21)
/* loaded from: classes.dex */
public class UserManagerCompatVL extends UserManagerCompatV17 {
    private static final String USER_CREATION_TIME_KEY = "user_creation_time_";
    private final Context mContext;
    private final PackageManager mPm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserManagerCompatVL(Context context) {
        super(context);
        this.mPm = context.getPackageManager();
        this.mContext = context;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV17, net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public void enableAndResetCache() {
        synchronized (this) {
            this.mUsers = new LongArrayMap<>();
            this.mUserToSerialMap = new HashMap<>();
            List<UserHandle> users = this.mUserManager.getUserProfiles();
            if (users != null) {
                for (UserHandle user : users) {
                    long serial = this.mUserManager.getSerialNumberForUser(user);
                    UserHandleCompat userCompat = UserHandleCompat.fromUser(user);
                    this.mUsers.put(serial, userCompat);
                    this.mUserToSerialMap.put(userCompat, Long.valueOf(serial));
                }
            }
        }
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public List<UserHandleCompat> getUserProfiles() {
        synchronized (this) {
            if (this.mUsers != null) {
                List<UserHandleCompat> users = new ArrayList<>();
                users.addAll(this.mUserToSerialMap.keySet());
                return users;
            }
            List<UserHandle> users2 = this.mUserManager.getUserProfiles();
            if (users2 == null) {
                return Collections.emptyList();
            }
            ArrayList<UserHandleCompat> compatUsers = new ArrayList<>(users2.size());
            for (UserHandle user : users2) {
                compatUsers.add(UserHandleCompat.fromUser(user));
            }
            return compatUsers;
        }
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public Drawable getBadgedDrawableForUser(Drawable unbadged, UserHandleCompat user) {
        return this.mPm.getUserBadgedIcon(unbadged, user.getUser());
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public CharSequence getBadgedLabelForUser(CharSequence label, UserHandleCompat user) {
        return user == null ? label : this.mPm.getUserBadgedLabel(label, user.getUser());
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public long getUserCreationTime(UserHandleCompat user) {
        if (Utilities.ATLEAST_MARSHMALLOW) {
            return this.mUserManager.getUserCreationTime(user.getUser());
        }
        SharedPreferences prefs = this.mContext.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        String key = USER_CREATION_TIME_KEY + getSerialNumberForUser(user);
        if (!prefs.contains(key)) {
            prefs.edit().putLong(key, System.currentTimeMillis()).apply();
        }
        return prefs.getLong(key, 0L);
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isUserUnlocked(UserHandle user) {
        return true;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isUserRunning(UserHandle user) {
        return this.mUserManager.isUserRunning(user);
    }
}
