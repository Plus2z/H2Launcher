package net.oneplus.h2launcher.shortcuts;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;

@TargetApi(24)
/* loaded from: classes.dex */
public class ShortcutInfoCompat {
    public static final String EXTRA_SHORTCUT_ID = "shortcut_id";
    public static final String INTENT_CATEGORY = "net.oneplus.launcher.DEEP_SHORTCUT";
    private ShortcutInfo mShortcutInfo;

    public ShortcutInfoCompat(ShortcutInfo shortcutInfo) {
        this.mShortcutInfo = shortcutInfo;
    }

    @TargetApi(24)
    public Intent makeIntent(Context context) {
        long serialNumber = UserManagerCompat.getInstance(context).getSerialNumberForUser(getUserHandle());
        return new Intent("android.intent.action.MAIN").addCategory(INTENT_CATEGORY).setComponent(getActivity()).setPackage(getPackage()).setFlags(270532608).putExtra(ItemInfo.EXTRA_PROFILE, serialNumber).putExtra(EXTRA_SHORTCUT_ID, getId());
    }

    public ShortcutInfo getShortcutInfo() {
        return this.mShortcutInfo;
    }

    public String getPackage() {
        return this.mShortcutInfo.getPackage();
    }

    public String getId() {
        return this.mShortcutInfo.getId();
    }

    public CharSequence getShortLabel() {
        return this.mShortcutInfo.getShortLabel();
    }

    public CharSequence getLongLabel() {
        return this.mShortcutInfo.getLongLabel();
    }

    public long getLastChangedTimestamp() {
        return this.mShortcutInfo.getLastChangedTimestamp();
    }

    public ComponentName getActivity() {
        return this.mShortcutInfo.getActivity();
    }

    public UserHandleCompat getUserHandle() {
        return UserHandleCompat.fromUser(this.mShortcutInfo.getUserHandle());
    }

    public boolean hasKeyFieldsOnly() {
        return this.mShortcutInfo.hasKeyFieldsOnly();
    }

    public boolean isPinned() {
        return this.mShortcutInfo.isPinned();
    }

    public boolean isDeclaredInManifest() {
        return this.mShortcutInfo.isDeclaredInManifest();
    }

    public boolean isEnabled() {
        return this.mShortcutInfo.isEnabled();
    }

    public boolean isDynamic() {
        return this.mShortcutInfo.isDynamic();
    }

    public int getRank() {
        return this.mShortcutInfo.getRank();
    }

    public CharSequence getDisabledMessage() {
        return this.mShortcutInfo.getDisabledMessage();
    }

    public String toString() {
        return this.mShortcutInfo.toString();
    }
}
