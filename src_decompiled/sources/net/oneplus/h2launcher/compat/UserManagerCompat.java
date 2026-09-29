package net.oneplus.h2launcher.compat;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import java.util.List;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public abstract class UserManagerCompat {
    private static UserManagerCompat sInstance;
    private static final Object sInstanceLock = new Object();

    public abstract void enableAndResetCache();

    public abstract Drawable getBadgedDrawableForUser(Drawable drawable, UserHandleCompat userHandleCompat);

    public abstract CharSequence getBadgedLabelForUser(CharSequence charSequence, UserHandleCompat userHandleCompat);

    public abstract long getSerialNumberForUser(UserHandleCompat userHandleCompat);

    public abstract long getUserCreationTime(UserHandleCompat userHandleCompat);

    public abstract UserHandleCompat getUserForSerialNumber(long j);

    public abstract List<UserHandleCompat> getUserProfiles();

    public abstract boolean isQuietModeEnabled(UserHandleCompat userHandleCompat);

    public abstract boolean isUserRunning(UserHandle userHandle);

    public abstract boolean isUserUnlocked(UserHandle userHandle);

    public static UserManagerCompat getInstance(Context context) {
        UserManagerCompat userManagerCompat;
        synchronized (sInstanceLock) {
            if (sInstance == null) {
                if (Utilities.ATLEAST_ANDROID_N) {
                    sInstance = new UserManagerCompatVN(context.getApplicationContext());
                } else if (Utilities.ATLEAST_LOLLIPOP) {
                    sInstance = new UserManagerCompatVL(context.getApplicationContext());
                } else if (Utilities.ATLEAST_JB_MR1) {
                    sInstance = new UserManagerCompatV17(context.getApplicationContext());
                } else {
                    sInstance = new UserManagerCompatV16();
                }
            }
            userManagerCompat = sInstance;
        }
        return userManagerCompat;
    }
}
