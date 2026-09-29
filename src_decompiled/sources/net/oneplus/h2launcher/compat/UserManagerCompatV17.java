package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.UserManager;
import java.util.HashMap;
import net.oneplus.h2launcher.util.LongArrayMap;

@TargetApi(17)
/* loaded from: classes.dex */
public class UserManagerCompatV17 extends UserManagerCompatV16 {
    protected UserManager mUserManager;
    protected HashMap<UserHandleCompat, Long> mUserToSerialMap;
    protected LongArrayMap<UserHandleCompat> mUsers;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserManagerCompatV17(Context context) {
        this.mUserManager = (UserManager) context.getSystemService("user");
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public long getSerialNumberForUser(UserHandleCompat user) {
        synchronized (this) {
            if (this.mUserToSerialMap != null) {
                Long serial = this.mUserToSerialMap.get(user);
                return serial == null ? 0L : serial.longValue();
            }
            return this.mUserManager.getSerialNumberForUser(user.getUser());
        }
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public UserHandleCompat getUserForSerialNumber(long serialNumber) {
        synchronized (this) {
            if (this.mUsers != null) {
                return this.mUsers.get(serialNumber);
            }
            return UserHandleCompat.fromUser(this.mUserManager.getUserForSerialNumber(serialNumber));
        }
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public void enableAndResetCache() {
        synchronized (this) {
            this.mUsers = new LongArrayMap<>();
            this.mUserToSerialMap = new HashMap<>();
            UserHandleCompat myUser = UserHandleCompat.myUserHandle();
            long serial = this.mUserManager.getSerialNumberForUser(myUser.getUser());
            this.mUsers.put(serial, myUser);
            this.mUserToSerialMap.put(myUser, Long.valueOf(serial));
        }
    }
}
