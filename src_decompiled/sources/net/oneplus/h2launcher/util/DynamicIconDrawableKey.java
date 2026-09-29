package net.oneplus.h2launcher.util;

import java.util.Arrays;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class DynamicIconDrawableKey {
    static final /* synthetic */ boolean $assertionsDisabled;
    public final String assetPackName;
    private final int mHashCode;
    public final String resource;
    public final UserHandleCompat user;

    static {
        $assertionsDisabled = !DynamicIconDrawableKey.class.desiredAssertionStatus();
    }

    public DynamicIconDrawableKey(String resource, String assetPackName, UserHandleCompat user) {
        if (!$assertionsDisabled && resource == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && assetPackName == null) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && user == null) {
            throw new AssertionError();
        }
        this.assetPackName = assetPackName;
        this.resource = resource;
        this.user = user;
        this.mHashCode = Arrays.hashCode(new Object[]{resource, assetPackName, user});
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public boolean equals(Object o) {
        DynamicIconDrawableKey other = (DynamicIconDrawableKey) o;
        return other.resource.equals(this.resource) && other.user.equals(this.user) && other.assetPackName.equals(this.assetPackName);
    }
}
