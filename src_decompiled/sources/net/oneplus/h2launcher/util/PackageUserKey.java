package net.oneplus.h2launcher.util;

import java.util.Arrays;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class PackageUserKey {
    private int mHashCode;
    public String mPackageName;
    public UserHandleCompat mUser;

    public PackageUserKey(String packageName, UserHandleCompat user) {
        update(packageName, user);
    }

    private void update(String packageName, UserHandleCompat user) {
        this.mPackageName = packageName;
        this.mUser = user;
        this.mHashCode = Arrays.hashCode(new Object[]{packageName, user});
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageUserKey)) {
            return false;
        }
        PackageUserKey otherKey = (PackageUserKey) obj;
        return this.mPackageName.equals(otherKey.mPackageName) && this.mUser.equals(otherKey.mUser);
    }
}
