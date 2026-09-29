package net.oneplus.h2launcher.widget;

import net.oneplus.h2launcher.PendingAddItemInfo;
import net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class PendingAddShortcutInfo extends PendingAddItemInfo {
    public ShortcutConfigActivityInfo activityInfo;

    public PendingAddShortcutInfo(ShortcutConfigActivityInfo activityInfo) {
        this.activityInfo = activityInfo;
        this.componentName = activityInfo.getComponent();
        this.user = UserHandleCompat.fromUser(activityInfo.getUser());
        this.itemType = activityInfo.getItemType();
    }
}
