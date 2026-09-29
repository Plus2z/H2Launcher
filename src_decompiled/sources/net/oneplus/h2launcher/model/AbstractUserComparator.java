package net.oneplus.h2launcher.model;

import android.content.Context;
import java.util.Comparator;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;

/* loaded from: classes.dex */
public abstract class AbstractUserComparator<T extends ItemInfo> implements Comparator<T> {
    private final UserHandleCompat mMyUser = UserHandleCompat.myUserHandle();
    private final UserManagerCompat mUserManager;

    public AbstractUserComparator(Context context) {
        this.mUserManager = UserManagerCompat.getInstance(context);
    }

    @Override // java.util.Comparator
    public int compare(T lhs, T rhs) {
        if (this.mMyUser.equals(lhs.user)) {
            return -1;
        }
        Long aUserSerial = Long.valueOf(this.mUserManager.getSerialNumberForUser(lhs.user));
        Long bUserSerial = Long.valueOf(this.mUserManager.getSerialNumberForUser(rhs.user));
        return aUserSerial.compareTo(bUserSerial);
    }
}
