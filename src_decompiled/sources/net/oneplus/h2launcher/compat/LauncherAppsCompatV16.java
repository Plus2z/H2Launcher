package net.oneplus.h2launcher.compat;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.content.IntentCompat;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.util.PackageUserKey;

/* loaded from: classes.dex */
public class LauncherAppsCompatV16 extends LauncherAppsCompat {
    private Context mContext;
    private PackageManager mPm;
    private List<LauncherAppsCompat.OnAppsChangedCallbackCompat> mCallbacks = new ArrayList();
    private PackageMonitor mPackageMonitor = new PackageMonitor();

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherAppsCompatV16(Context context) {
        this.mPm = context.getPackageManager();
        this.mContext = context;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public List<LauncherActivityInfoCompat> getActivityList(String packageName, UserHandleCompat user) {
        Intent mainIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mainIntent.addCategory("android.intent.category.LAUNCHER");
        mainIntent.setPackage(packageName);
        List<ResolveInfo> infos = this.mPm.queryIntentActivities(mainIntent, 0);
        List<LauncherActivityInfoCompat> list = new ArrayList<>(infos.size());
        for (ResolveInfo info : infos) {
            list.add(new LauncherActivityInfoCompatV16(this.mContext, info));
        }
        return list;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public LauncherActivityInfoCompat resolveActivity(Intent intent, UserHandleCompat user) {
        ResolveInfo info = this.mPm.resolveActivity(intent, 0);
        if (info != null) {
            return new LauncherActivityInfoCompatV16(this.mContext, info);
        }
        return null;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public void startActivityForProfile(ComponentName component, UserHandleCompat user, Rect sourceBounds, Bundle opts) {
        Intent launchIntent = new Intent("android.intent.action.MAIN");
        launchIntent.addCategory("android.intent.category.LAUNCHER");
        launchIntent.setComponent(component);
        launchIntent.setSourceBounds(sourceBounds);
        launchIntent.addFlags(268435456);
        this.mContext.startActivity(launchIntent, opts);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public void showAppDetailsForProfile(ComponentName component, UserHandleCompat user) {
        String packageName = component.getPackageName();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts(LauncherSettings.ExternalWidget.EXTRA_WIDGET_PACKAGE, packageName, null));
        intent.setFlags(276856832);
        this.mContext.startActivity(intent, null);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public synchronized void addOnAppsChangedCallback(LauncherAppsCompat.OnAppsChangedCallbackCompat callback) {
        if (callback != null) {
            if (!this.mCallbacks.contains(callback)) {
                this.mCallbacks.add(callback);
                if (this.mCallbacks.size() == 1) {
                    registerForPackageIntents();
                }
            }
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public synchronized void removeOnAppsChangedCallback(LauncherAppsCompat.OnAppsChangedCallbackCompat callback) {
        this.mCallbacks.remove(callback);
        if (this.mCallbacks.size() == 0) {
            unregisterForPackageIntents();
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public boolean isPackageEnabledForProfile(String packageName, UserHandleCompat user) {
        return isAppEnabled(this.mPm, packageName, 0);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public boolean isActivityEnabledForProfile(ComponentName component, UserHandleCompat user) {
        try {
            ActivityInfo info = this.mPm.getActivityInfo(component, 0);
            if (info != null) {
                return info.isEnabled();
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public boolean isPackageSuspendedForProfile(String packageName, UserHandleCompat user) {
        return false;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat
    public List<ShortcutConfigActivityInfo> getCustomShortcutActivityList(@Nullable PackageUserKey packageUser) {
        return new ArrayList();
    }

    private void unregisterForPackageIntents() {
        this.mContext.unregisterReceiver(this.mPackageMonitor);
    }

    private void registerForPackageIntents() {
        IntentFilter filter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addAction("android.intent.action.PACKAGE_CHANGED");
        filter.addDataScheme(LauncherSettings.ExternalWidget.EXTRA_WIDGET_PACKAGE);
        this.mContext.registerReceiver(this.mPackageMonitor, filter);
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction(IntentCompat.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE);
        filter2.addAction(IntentCompat.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE);
        this.mContext.registerReceiver(this.mPackageMonitor, filter2);
    }

    synchronized List<LauncherAppsCompat.OnAppsChangedCallbackCompat> getCallbacks() {
        return new ArrayList(this.mCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PackageMonitor extends BroadcastReceiver {
        PackageMonitor() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            UserHandleCompat user = UserHandleCompat.myUserHandle();
            if ("android.intent.action.PACKAGE_CHANGED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_ADDED".equals(action)) {
                String packageName = intent.getData().getSchemeSpecificPart();
                boolean replacing = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                if (packageName != null && packageName.length() != 0) {
                    if ("android.intent.action.PACKAGE_CHANGED".equals(action)) {
                        for (LauncherAppsCompat.OnAppsChangedCallbackCompat callback : LauncherAppsCompatV16.this.getCallbacks()) {
                            callback.onPackageChanged(packageName, user);
                        }
                        return;
                    }
                    if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                        if (!replacing) {
                            for (LauncherAppsCompat.OnAppsChangedCallbackCompat callback2 : LauncherAppsCompatV16.this.getCallbacks()) {
                                callback2.onPackageRemoved(packageName, user);
                            }
                            return;
                        }
                        return;
                    }
                    if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                        if (!replacing) {
                            for (LauncherAppsCompat.OnAppsChangedCallbackCompat callback3 : LauncherAppsCompatV16.this.getCallbacks()) {
                                callback3.onPackageAdded(packageName, user);
                            }
                            return;
                        }
                        for (LauncherAppsCompat.OnAppsChangedCallbackCompat callback4 : LauncherAppsCompatV16.this.getCallbacks()) {
                            callback4.onPackageChanged(packageName, user);
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (IntentCompat.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE.equals(action)) {
                boolean replacing2 = intent.getBooleanExtra("android.intent.extra.REPLACING", Utilities.ATLEAST_KITKAT ? false : true);
                String[] packages = intent.getStringArrayExtra(IntentCompat.EXTRA_CHANGED_PACKAGE_LIST);
                for (LauncherAppsCompat.OnAppsChangedCallbackCompat callback5 : LauncherAppsCompatV16.this.getCallbacks()) {
                    callback5.onPackagesAvailable(packages, user, replacing2);
                }
                return;
            }
            if (IntentCompat.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action)) {
                boolean replacing3 = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                String[] packages2 = intent.getStringArrayExtra(IntentCompat.EXTRA_CHANGED_PACKAGE_LIST);
                for (LauncherAppsCompat.OnAppsChangedCallbackCompat callback6 : LauncherAppsCompatV16.this.getCallbacks()) {
                    callback6.onPackagesUnavailable(packages2, user, replacing3);
                }
            }
        }
    }
}
