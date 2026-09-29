package net.oneplus.h2launcher.model;

import android.content.pm.PackageManager;
import android.os.Process;
import android.os.UserHandle;
import java.text.Collator;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class WidgetItem extends ComponentKey implements Comparable<WidgetItem> {
    private static Collator sCollator;
    private static UserHandle sMyUserHandle;
    public final ShortcutConfigActivityInfo activityInfo;
    public final String label;
    public final int spanX;
    public final int spanY;
    public final LauncherAppWidgetProviderInfo widgetInfo;

    public WidgetItem(LauncherAppWidgetProviderInfo info, PackageManager pm, InvariantDeviceProfile idp) {
        super(info.provider, UserHandleCompat.fromUser(info.getProfile()));
        this.label = Utilities.trim(info.getLabel(pm));
        this.widgetInfo = info;
        this.activityInfo = null;
        this.spanX = Math.min(info.spanX, idp.numColumns);
        this.spanY = Math.min(info.spanY, idp.numRows);
    }

    public WidgetItem(ShortcutConfigActivityInfo info) {
        super(info.getComponent(), UserHandleCompat.fromUser(info.getUser()));
        this.label = Utilities.trim(info.getLabel());
        this.widgetInfo = null;
        this.activityInfo = info;
        this.spanY = 1;
        this.spanX = 1;
    }

    @Override // java.lang.Comparable
    public int compareTo(WidgetItem another) {
        if (sMyUserHandle == null) {
            sMyUserHandle = Process.myUserHandle();
            sCollator = Collator.getInstance();
        }
        boolean thisWorkProfile = !sMyUserHandle.equals(this.user);
        boolean otherWorkProfile = !sMyUserHandle.equals(another.user);
        if (thisWorkProfile ^ otherWorkProfile) {
            return thisWorkProfile ? 1 : -1;
        }
        int labelCompare = sCollator.compare(this.label, another.label);
        if (labelCompare != 0) {
            return labelCompare;
        }
        int thisArea = this.spanX * this.spanY;
        int otherArea = another.spanX * another.spanY;
        if (thisArea == otherArea) {
            return Integer.compare(this.spanY, another.spanY);
        }
        return Integer.compare(thisArea, otherArea);
    }
}
