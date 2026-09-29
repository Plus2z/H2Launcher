package net.oneplus.h2launcher.util;

import android.content.ComponentName;
import android.content.Context;
import java.util.Arrays;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;

/* loaded from: classes.dex */
public class ComponentKey {
    static final /* synthetic */ boolean $assertionsDisabled;
    public final ComponentName componentName;
    private final int mHashCode;
    public final UserHandleCompat user;

    static {
        $assertionsDisabled = !ComponentKey.class.desiredAssertionStatus();
    }

    public ComponentKey(ComponentName componentName, UserHandleCompat user) {
        if (!$assertionsDisabled && componentName == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && user == null) {
            throw new AssertionError();
        }
        this.componentName = componentName;
        this.user = user;
        this.mHashCode = Arrays.hashCode(new Object[]{componentName, user});
    }

    public ComponentKey(Context context, String componentKeyStr) {
        int userDelimiterIndex = componentKeyStr.indexOf("#");
        if (userDelimiterIndex != -1) {
            String componentStr = componentKeyStr.substring(0, userDelimiterIndex);
            Long componentUser = Long.valueOf(componentKeyStr.substring(userDelimiterIndex + 1));
            this.componentName = ComponentName.unflattenFromString(componentStr);
            this.user = UserManagerCompat.getInstance(context).getUserForSerialNumber(componentUser.longValue());
        } else {
            this.componentName = ComponentName.unflattenFromString(componentKeyStr);
            this.user = UserHandleCompat.myUserHandle();
        }
        this.mHashCode = Arrays.hashCode(new Object[]{this.componentName, this.user});
    }

    public String flattenToString(Context context) {
        String flattened = this.componentName.flattenToString();
        if (this.user != null) {
            return flattened + "#" + UserManagerCompat.getInstance(context).getSerialNumberForUser(this.user);
        }
        return flattened;
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public boolean equals(Object o) {
        ComponentKey other = (ComponentKey) o;
        return other.componentName.equals(this.componentName) && other.user.equals(this.user);
    }
}
