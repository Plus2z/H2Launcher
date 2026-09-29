package net.oneplus.h2launcher.compat;

import android.content.Context;
import android.os.UserHandle;
import android.os.UserManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class UserManagerCompatVN extends UserManagerCompatVL {
    private static final String TAG = "UserManagerCompatVN";

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserManagerCompatVN(Context context) {
        super(context);
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isQuietModeEnabled(UserHandleCompat user) {
        if (user != null) {
            try {
                Method isQuietModeEnabledMethod = UserManager.class.getMethod("isQuietModeEnabled", UserHandle.class);
                return ((Boolean) isQuietModeEnabledMethod.invoke(this.mUserManager, user.getUser())).booleanValue();
            } catch (IllegalAccessException e) {
                e = e;
                Logger.e(TAG, "Running on N without isQuietModeEnabled", e);
                return false;
            } catch (IllegalArgumentException e2) {
            } catch (NoSuchMethodError e3) {
                e = e3;
                Logger.e(TAG, "Running on N without isQuietModeEnabled", e);
                return false;
            } catch (NoSuchMethodException e4) {
                e = e4;
                Logger.e(TAG, "Running on N without isQuietModeEnabled", e);
                return false;
            } catch (InvocationTargetException e5) {
                e = e5;
                Logger.e(TAG, "Running on N without isQuietModeEnabled", e);
                return false;
            }
        }
        return false;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompatVL, net.oneplus.h2launcher.compat.UserManagerCompatV16, net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isUserUnlocked(UserHandle user) {
        return this.mUserManager.isUserUnlocked(user);
    }
}
