package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Process;
import android.os.UserHandle;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class UserHandleCompat {
    private UserHandle mUser;

    private UserHandleCompat(UserHandle user) {
        this.mUser = user;
    }

    private UserHandleCompat() {
    }

    @TargetApi(17)
    public static UserHandleCompat myUserHandle() {
        return Utilities.ATLEAST_JB_MR1 ? new UserHandleCompat(Process.myUserHandle()) : new UserHandleCompat();
    }

    public static UserHandleCompat fromUser(UserHandle user) {
        if (user == null) {
            return null;
        }
        return new UserHandleCompat(user);
    }

    public UserHandle getUser() {
        return this.mUser;
    }

    public String toString() {
        return Utilities.ATLEAST_JB_MR1 ? this.mUser.toString() : "";
    }

    public boolean equals(Object other) {
        if (!(other instanceof UserHandleCompat)) {
            return false;
        }
        if (Utilities.ATLEAST_JB_MR1) {
            return this.mUser.equals(((UserHandleCompat) other).mUser);
        }
        return true;
    }

    public int hashCode() {
        if (Utilities.ATLEAST_JB_MR1) {
            return this.mUser.hashCode();
        }
        return 0;
    }

    public void addToIntent(Intent intent, String name) {
        if (Utilities.ATLEAST_LOLLIPOP && this.mUser != null) {
            intent.putExtra(name, this.mUser);
        }
    }

    public static UserHandleCompat fromIntent(Intent intent) {
        UserHandle user;
        if (!Utilities.ATLEAST_LOLLIPOP || (user = (UserHandle) intent.getParcelableExtra("android.intent.extra.USER")) == null) {
            return null;
        }
        return fromUser(user);
    }
}
