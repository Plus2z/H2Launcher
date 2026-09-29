package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import android.widget.Toast;
import java.lang.reflect.Method;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;

/* loaded from: classes.dex */
public abstract class ShortcutConfigActivityInfo {
    private static final String TAG = "SCActivityInfo";
    private final ComponentName mCn;
    private final UserHandle mUser;

    public abstract Drawable getFullResIcon(AssetCache assetCache);

    public abstract CharSequence getLabel();

    /* JADX INFO: Access modifiers changed from: protected */
    public ShortcutConfigActivityInfo(ComponentName cn, UserHandle user) {
        this.mCn = cn;
        this.mUser = user;
    }

    public ComponentName getComponent() {
        return this.mCn;
    }

    public UserHandle getUser() {
        return this.mUser;
    }

    public int getItemType() {
        return 1;
    }

    public ShortcutInfo createShortcutInfo() {
        return null;
    }

    public boolean startConfigActivity(Activity activity, int requestCode) {
        Intent intent = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(getComponent());
        try {
            activity.startActivityForResult(intent, requestCode);
            return true;
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
            return false;
        } catch (SecurityException e2) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
            Log.e(TAG, "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e2);
            return false;
        }
    }

    public boolean isPersistable() {
        return true;
    }

    /* loaded from: classes.dex */
    static class ShortcutConfigActivityInfoVL extends ShortcutConfigActivityInfo {
        private final ActivityInfo mInfo;
        private final PackageManager mPm;

        public ShortcutConfigActivityInfoVL(ActivityInfo info, PackageManager pm) {
            super(new ComponentName(info.packageName, info.name), Process.myUserHandle());
            this.mInfo = info;
            this.mPm = pm;
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public CharSequence getLabel() {
            return this.mInfo.loadLabel(this.mPm);
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public Drawable getFullResIcon(AssetCache cache) {
            return cache.getFullResIcon(this.mInfo);
        }
    }

    @TargetApi(26)
    /* loaded from: classes.dex */
    static class ShortcutConfigActivityInfoVO extends ShortcutConfigActivityInfo {
        private final LauncherActivityInfo mInfo;

        public ShortcutConfigActivityInfoVO(LauncherActivityInfo info) {
            super(info.getComponentName(), info.getUser());
            this.mInfo = info;
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public CharSequence getLabel() {
            return this.mInfo.getLabel();
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public Drawable getFullResIcon(AssetCache cache) {
            return this.mInfo.getIcon(LauncherAppState.getInstance().getInvariantDeviceProfile().fillResIconDpi);
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public boolean startConfigActivity(Activity activity, int requestCode) {
            if (getUser().equals(Process.myUserHandle())) {
                return super.startConfigActivity(activity, requestCode);
            }
            try {
                Method m = LauncherApps.class.getDeclaredMethod("getShortcutConfigActivityIntent", LauncherActivityInfo.class);
                IntentSender is = (IntentSender) m.invoke(activity.getSystemService(LauncherApps.class), this.mInfo);
                activity.startIntentSenderForResult(is, requestCode, null, 0, 0, 0);
                return true;
            } catch (Exception e) {
                Log.e(ShortcutConfigActivityInfo.TAG, "Error calling new API", e);
                return false;
            }
        }
    }

    @TargetApi(26)
    /* loaded from: classes.dex */
    public static class ShortcutResolveInfoVO extends ShortcutConfigActivityInfo {
        private ComponentName mComponentName;
        private final ResolveInfo mInfo;
        private UserHandleCompat mUser;

        public ShortcutResolveInfoVO(ResolveInfo info) {
            super(new ComponentName(info.activityInfo.packageName, info.activityInfo.name), UserHandleCompat.myUserHandle().getUser());
            this.mComponentName = new ComponentName(info.activityInfo.packageName, info.activityInfo.name);
            this.mUser = UserHandleCompat.myUserHandle();
            this.mInfo = info;
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public CharSequence getLabel() {
            return this.mInfo.resolvePackageName;
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public Drawable getFullResIcon(AssetCache cache) {
            return new BitmapDrawable(LauncherAppState.getInstance().getContext().getResources(), cache.getIcon(this.mComponentName, this.mUser));
        }

        @Override // net.oneplus.h2launcher.compat.ShortcutConfigActivityInfo
        public boolean startConfigActivity(Activity activity, int requestCode) {
            return false;
        }
    }
}
