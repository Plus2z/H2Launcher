package net.oneplus.h2launcher.dragndrop;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.PinItemRequestCompat;
import net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo;

@TargetApi(25)
/* loaded from: classes.dex */
class PinShortcutRequestActivityInfo extends ShortcutConfigActivityInfo {
    private static final String DUMMY_COMPONENT_CLASS = "pinned-shortcut";
    private final Context mContext;
    private final ShortcutInfo mInfo;
    private final PinItemRequestCompat mRequest;

    public PinShortcutRequestActivityInfo(PinItemRequestCompat request, Context context) {
        super(new ComponentName(request.getShortcutInfo().getPackage(), DUMMY_COMPONENT_CLASS), request.getShortcutInfo().getUserHandle());
        this.mRequest = request;
        this.mInfo = request.getShortcutInfo();
        this.mContext = context;
    }

    @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
    public int getItemType() {
        return 6;
    }

    @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
    public CharSequence getLabel() {
        return this.mInfo.getShortLabel();
    }

    @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
    public Drawable getFullResIcon(AssetCache cache) {
        return ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).getShortcutIconDrawable(this.mInfo, LauncherAppState.getInstance().getInvariantDeviceProfile().fillResIconDpi);
    }

    @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
    public net.oneplus.h2launcher.ShortcutInfo createShortcutInfo() {
        long duration = this.mContext.getResources().getInteger(R.integer.config_dropAnimMaxDuration) + 300 + (this.mContext.getResources().getInteger(R.integer.config_overlayTransitionTime) / 2);
        return LauncherAppsCompat.createShortcutInfoFromPinItemRequest(this.mContext, this.mRequest, duration);
    }

    @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
    public boolean startConfigActivity(Activity activity, int requestCode) {
        return false;
    }

    @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
    public boolean isPersistable() {
        return false;
    }
}
