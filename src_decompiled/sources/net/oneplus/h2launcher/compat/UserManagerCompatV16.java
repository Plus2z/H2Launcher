package net.oneplus.h2launcher.compat;

import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class UserManagerCompatV16 extends UserManagerCompat {
    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public List<UserHandleCompat> getUserProfiles() {
        List<UserHandleCompat> profiles = new ArrayList<>(1);
        profiles.add(UserHandleCompat.myUserHandle());
        return profiles;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public UserHandleCompat getUserForSerialNumber(long serialNumber) {
        return UserHandleCompat.myUserHandle();
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public Drawable getBadgedDrawableForUser(Drawable unbadged, UserHandleCompat user) {
        return unbadged;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public long getSerialNumberForUser(UserHandleCompat user) {
        return 0L;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public CharSequence getBadgedLabelForUser(CharSequence label, UserHandleCompat user) {
        return label;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public long getUserCreationTime(UserHandleCompat user) {
        return 0L;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public void enableAndResetCache() {
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isQuietModeEnabled(UserHandleCompat user) {
        return false;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isUserUnlocked(UserHandle user) {
        return false;
    }

    @Override // net.oneplus.h2launcher.compat.UserManagerCompat
    public boolean isUserRunning(UserHandle user) {
        return false;
    }
}
