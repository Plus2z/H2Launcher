package net.oneplus.h2launcher;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserManager;
import android.util.AttributeSet;
import android.util.Pair;
import android.widget.Toast;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class UninstallDropTarget extends ButtonDropTarget {
    public static final String ONEPLUS_INTENT_ACTION_DELETE = "oneplus.intent.action.DELETE";
    public static final String TAG = UninstallDropTarget.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface UninstallSource {
        void deferCompleteDropAfterUninstallActivity();

        void onUninstallActivityReturned(boolean z);
    }

    public UninstallDropTarget(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public UninstallDropTarget(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = getResources().getColor(R.color.uninstall_target_hover_tint);
        setDrawable(R.drawable.trash_animated);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    protected boolean supportsDrop(DragSource source, Object info) {
        return supportsDrop(getContext(), info);
    }

    @TargetApi(18)
    public static boolean supportsDrop(Context context, Object info) {
        if (Utilities.ATLEAST_JB_MR2) {
            UserManager userManager = (UserManager) context.getSystemService("user");
            Bundle restrictions = userManager.getUserRestrictions();
            if (restrictions.getBoolean("no_control_apps", false) || restrictions.getBoolean("no_uninstall_apps", false)) {
                return false;
            }
        }
        Pair<ComponentName, Integer> componentInfo = getAppInfoFlags(info);
        return (componentInfo == null || (((Integer) componentInfo.second).intValue() & 1) == 0) ? false : true;
    }

    private static Pair<ComponentName, Integer> getAppInfoFlags(Object item) {
        if (item instanceof AppInfo) {
            AppInfo info = (AppInfo) item;
            return Pair.create(info.componentName, Integer.valueOf(info.flags));
        }
        if (item instanceof ShortcutInfo) {
            ShortcutInfo info2 = (ShortcutInfo) item;
            ComponentName component = info2.getTargetComponent();
            if (info2.itemType == 0 && component != null) {
                return Pair.create(component, Integer.valueOf(info2.flags));
            }
        }
        return null;
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, net.oneplus.h2launcher.DropTarget
    public void onDrop(DropTarget.DragObject d) {
        if (d.dragSource instanceof UninstallSource) {
            ((UninstallSource) d.dragSource).deferCompleteDropAfterUninstallActivity();
        }
        super.onDrop(d);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    public void completeDrop(final DropTarget.DragObject d) {
        super.completeDrop(d);
        final Pair<ComponentName, Integer> componentInfo = getAppInfoFlags(d.dragInfo);
        final UserHandleCompat user = ((ItemInfo) d.dragInfo).user;
        if (startUninstallActivity(this.mLauncher, (ItemInfo) d.dragInfo)) {
            Runnable checkIfUninstallWasSuccess = new Runnable() { // from class: net.oneplus.h2launcher.UninstallDropTarget.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean uninstallSuccessful = (componentInfo == null || AllAppsList.packageHasActivities(UninstallDropTarget.this.getContext(), ((ComponentName) componentInfo.first).getPackageName(), user)) ? false : true;
                    UninstallDropTarget.this.sendUninstallResult(d.dragSource, uninstallSuccessful);
                }
            };
            this.mLauncher.addOnResumeCallback(checkIfUninstallWasSuccess);
        } else {
            sendUninstallResult(d.dragSource, false);
        }
    }

    public static boolean startUninstallActivity(Launcher launcher, ItemInfo info) {
        Pair<ComponentName, Integer> componentInfo = getAppInfoFlags(info);
        UserHandleCompat user = info.user;
        if (componentInfo == null) {
            Logger.e(TAG, "cannot find the component info for the app");
            return false;
        }
        ComponentName componentName = (ComponentName) componentInfo.first;
        int flags = ((Integer) componentInfo.second).intValue();
        if ((flags & 1) == 0) {
            Toast.makeText(launcher, R.string.uninstall_system_app_text, 0).show();
            return false;
        }
        String packageName = componentName.getPackageName();
        String className = componentName.getClassName();
        Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts(LauncherSettings.ExternalWidget.EXTRA_WIDGET_PACKAGE, packageName, className));
        intent.setFlags(276824064);
        if (hasDualApp(launcher, info) && isDualUninstallActivityExist(launcher, intent)) {
            intent.setAction(ONEPLUS_INTENT_ACTION_DELETE);
        } else {
            intent.setAction("android.intent.action.DELETE");
        }
        if (user != null) {
            user.addToIntent(intent, "android.intent.extra.USER");
        }
        launcher.startActivity(intent);
        return true;
    }

    private static boolean isDualUninstallActivityExist(Context context, Intent intent) {
        intent.setAction(ONEPLUS_INTENT_ACTION_DELETE);
        ResolveInfo resolveInfo = context.getPackageManager().resolveActivity(intent, 0);
        boolean isExist = resolveInfo != null;
        Logger.d(TAG, "dualUninstallActivity isExist = " + isExist);
        return isExist;
    }

    private static boolean hasDualApp(Launcher launcher, ItemInfo info) {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(launcher);
        UserManagerCompat userManager = UserManagerCompat.getInstance(launcher);
        List<UserHandleCompat> profiles = userManager.getUserProfiles();
        UserHandleCompat dualAccount = null;
        Iterator<UserHandleCompat> it = profiles.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            UserHandleCompat profile = it.next();
            if (profile.getUser().hashCode() == 999) {
                dualAccount = profile;
                break;
            }
        }
        if (dualAccount == null) {
            return false;
        }
        Pair<ComponentName, Integer> componentInfo = getAppInfoFlags(info);
        if (componentInfo == null) {
            Logger.e(TAG, "the component info is null, just treat it as non-dual app");
            return false;
        }
        ComponentName cn = (ComponentName) componentInfo.first;
        List<LauncherActivityInfoCompat> apps = launcherApps.getActivityList(cn.getPackageName(), dualAccount);
        if (apps.size() <= 0) {
            return false;
        }
        Logger.d(TAG, "hasDualApp componentName =" + cn.getPackageName());
        return true;
    }

    void sendUninstallResult(DragSource target, boolean result) {
        if (target instanceof UninstallSource) {
            ((UninstallSource) target).onUninstallActivityReturned(result);
        }
    }
}
