package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.allapps.AllAppsContainerView;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.util.ComponentKey;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AllAppsList {
    public static final int DEFAULT_APPLICATIONS_NUMBER = 42;
    private static final String SWIFTKEY_PACKAGE = "com.touchtype.swiftkey";
    private AppFilter mAppFilter;
    private AssetCache mAssetCache;
    private final String TAG = AllAppsList.class.getSimpleName();
    public ArrayList<AppInfo> data = new ArrayList<>(42);
    public ArrayList<AppInfo> added = new ArrayList<>(42);
    public ArrayList<AppInfo> removed = new ArrayList<>();
    public ArrayList<AppInfo> modified = new ArrayList<>();

    public AllAppsList(AssetCache assetCache, AppFilter appFilter) {
        this.mAssetCache = assetCache;
        this.mAppFilter = appFilter;
    }

    public void add(AppInfo info) {
        if ((this.mAppFilter == null || this.mAppFilter.shouldShowApp(info.componentName)) && !findActivity(this.data, info.componentName, info.user) && !info.componentName.getPackageName().equals(SWIFTKEY_PACKAGE)) {
            this.data.add(info);
            this.added.add(info);
        }
    }

    public void clear() {
        this.data.clear();
        this.added.clear();
        this.removed.clear();
        this.modified.clear();
    }

    public int size() {
        return this.data.size();
    }

    public AppInfo get(int index) {
        return this.data.get(index);
    }

    public void addPackage(Context context, String packageName, UserHandleCompat user) {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        List<LauncherActivityInfoCompat> matches = launcherApps.getActivityList(packageName, user);
        for (LauncherActivityInfoCompat info : matches) {
            boolean isDualApp = !user.equals(UserHandleCompat.myUserHandle());
            add(new AppInfo(context, info, user, this.mAssetCache, !isDualApp));
        }
    }

    public void removePackage(String packageName, UserHandleCompat user) {
        List<AppInfo> data = this.data;
        for (int i = data.size() - 1; i >= 0; i--) {
            AppInfo info = data.get(i);
            ComponentName component = info.intent.getComponent();
            if (info.user.equals(user) && packageName.equals(component.getPackageName())) {
                this.removed.add(info);
                data.remove(i);
            }
        }
    }

    public void suspendPackage(String packageName, UserHandleCompat user, boolean suspend) {
        List<AppInfo> data = this.data;
        for (int i = data.size() - 1; i >= 0; i--) {
            AppInfo info = data.get(i);
            ComponentName component = info.intent.getComponent();
            if (info.user.equals(user) && packageName.equals(component.getPackageName())) {
                if (suspend) {
                    info.isDisabled |= 4;
                } else {
                    info.isDisabled &= -5;
                }
                this.modified.add(info);
            }
        }
    }

    public void quietUserPackage(String packageName, UserHandleCompat user, boolean quiet) {
        List<AppInfo> data = this.data;
        for (int i = data.size() - 1; i >= 0; i--) {
            AppInfo info = data.get(i);
            ComponentName component = info.intent.getComponent();
            if (info.user.equals(user) && packageName.equals(component.getPackageName())) {
                if (quiet) {
                    info.isDisabled &= -9;
                } else {
                    info.isDisabled |= 8;
                }
                this.modified.add(info);
            }
        }
    }

    public void updateIconsAndLabels(HashSet<String> packages, UserHandleCompat user, ArrayList<AppInfo> outUpdates) {
        Iterator<AppInfo> it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo info = it.next();
            if (info.user.equals(user) && packages.contains(info.componentName.getPackageName())) {
                this.mAssetCache.updateTitleAndIcon(info);
                outUpdates.add(info);
            }
        }
    }

    public void updatePackage(Context context, String packageName, UserHandleCompat user) {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        List<LauncherActivityInfoCompat> matches = launcherApps.getActivityList(packageName, user);
        List<LauncherActivityInfoCompat> newLauncherActivityListFromPackageManager = launcherApps.getActivityList(packageName, user);
        ArrayList<AppInfo> removableActivityListFromLocal = findApplicationInfoLocked(packageName, user);
        if (newLauncherActivityListFromPackageManager.size() > 0) {
            Iterator<AppInfo> iterator = removableActivityListFromLocal.iterator();
            while (iterator.hasNext()) {
                AppInfo appInfo = iterator.next();
                Iterator<LauncherActivityInfoCompat> it = newLauncherActivityListFromPackageManager.iterator();
                while (true) {
                    if (it.hasNext()) {
                        LauncherActivityInfoCompat info = it.next();
                        if (appInfo.componentName.equals(info.getComponentName())) {
                            iterator.remove();
                            newLauncherActivityListFromPackageManager.remove(info);
                            break;
                        }
                    }
                }
            }
            int modifyCount = Math.min(newLauncherActivityListFromPackageManager.size(), removableActivityListFromLocal.size());
            if (modifyCount > 0) {
                int count = 0;
                HashMap<ComponentName, AppInfo> removableActivityHashMapFromLocal = new HashMap<>();
                Iterator<AppInfo> it2 = removableActivityListFromLocal.iterator();
                while (it2.hasNext()) {
                    AppInfo info2 = it2.next();
                    removableActivityHashMapFromLocal.put(info2.intent.getComponent(), info2);
                }
                for (int i = 0; i < this.data.size(); i++) {
                    AppInfo info3 = this.data.get(i);
                    ComponentName component = info3.intent.getComponent();
                    if (removableActivityHashMapFromLocal.containsKey(component)) {
                        removableActivityHashMapFromLocal.remove(component);
                        ComponentName newComponentName = newLauncherActivityListFromPackageManager.get(count).getComponentName();
                        replaceBgItemsMap(component, newComponentName);
                        info3.componentName = newComponentName;
                        info3.intent.setComponent(newComponentName);
                        count++;
                        if (count >= modifyCount) {
                            break;
                        }
                    }
                }
            }
            updateAllAppsList(context, user, packageName);
            for (LauncherActivityInfoCompat info4 : matches) {
                AppInfo applicationInfo = findApplicationInfoLocked(info4.getComponentName().getPackageName(), user, info4.getComponentName().getClassName());
                if (applicationInfo == null) {
                    add(new AppInfo(context, info4, user, this.mAssetCache));
                } else {
                    this.mAssetCache.getTitleAndIcon(applicationInfo, info4, true);
                    this.modified.add(applicationInfo);
                }
            }
            List<LauncherActivityInfoCompat> finalMatches = launcherApps.getActivityList(packageName, user);
            for (int i2 = this.data.size() - 1; i2 >= 0; i2--) {
                AppInfo applicationInfo2 = this.data.get(i2);
                ComponentName component2 = applicationInfo2.intent.getComponent();
                if (user.equals(applicationInfo2.user) && packageName.equals(component2.getPackageName()) && !findActivity(finalMatches, component2)) {
                    this.removed.add(applicationInfo2);
                    this.mAssetCache.remove(component2, user);
                    this.data.remove(i2);
                }
            }
            return;
        }
        for (int i3 = this.data.size() - 1; i3 >= 0; i3--) {
            AppInfo applicationInfo3 = this.data.get(i3);
            ComponentName component3 = applicationInfo3.intent.getComponent();
            if (user.equals(applicationInfo3.user) && packageName.equals(component3.getPackageName())) {
                this.removed.add(applicationInfo3);
                this.mAssetCache.remove(component3, user);
                this.data.remove(i3);
            }
        }
    }

    private void replaceBgItemsMap(ComponentName beReplacedCn, ComponentName updateCn) {
        ShortcutInfo info;
        ComponentName cn;
        Iterator<ItemInfo> iters = LauncherModel.sBgItemsIdMap.iterator();
        while (iters.hasNext()) {
            ItemInfo i = iters.next();
            if ((i instanceof ShortcutInfo) && (cn = (info = (ShortcutInfo) i).getTargetComponent()) != null && cn.equals(beReplacedCn)) {
                info.intent.setComponent(updateCn);
            }
        }
    }

    private static boolean findActivity(List<LauncherActivityInfoCompat> apps, ComponentName component) {
        for (LauncherActivityInfoCompat info : apps) {
            if (info.getComponentName().equals(component)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean packageHasActivities(Context context, String packageName, UserHandleCompat user) {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        return launcherApps.getActivityList(packageName, user).size() > 0;
    }

    private static boolean findActivity(ArrayList<AppInfo> apps, ComponentName component, UserHandleCompat user) {
        int N = apps.size();
        for (int i = 0; i < N; i++) {
            AppInfo info = apps.get(i);
            if (info.user.equals(user) && info.componentName.equals(component)) {
                return true;
            }
        }
        return false;
    }

    private AppInfo findApplicationInfoLocked(String packageName, UserHandleCompat user, String className) {
        Iterator<AppInfo> it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo info = it.next();
            ComponentName component = info.intent.getComponent();
            if (user.equals(info.user) && packageName.equals(component.getPackageName()) && className.equals(component.getClassName())) {
                return info;
            }
        }
        return null;
    }

    private ArrayList<AppInfo> findApplicationInfoLocked(String packageName, UserHandleCompat user) {
        ArrayList<AppInfo> result = new ArrayList<>();
        Iterator<AppInfo> it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo info = it.next();
            ComponentName component = info.intent.getComponent();
            if (user.equals(info.user) && packageName.equals(component.getPackageName())) {
                result.add(info);
            }
        }
        return result;
    }

    private void updateAllAppsList(Context context, UserHandleCompat user, String packageName) {
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (launcher == null) {
            Log.w(this.TAG, "[updateAllAppsList] launcher is null. Should not be here.");
            return;
        }
        AllAppsContainerView appsView = launcher.getAppsView();
        if (appsView == null) {
            Log.w(this.TAG, "[updateAllAppsList] appsView is null. Should not be here.");
            return;
        }
        HashMap<ComponentKey, AppInfo> appMap = appsView.getApps().getComponentToAppMap();
        if (appMap == null) {
            Log.w(this.TAG, "[updateAllAppsList] appMap is null.");
            return;
        }
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        List<LauncherActivityInfoCompat> matches = launcherApps.getActivityList(packageName, user);
        ArrayList<ComponentName> allappMatchList = new ArrayList<>();
        for (Map.Entry<ComponentKey, AppInfo> entry : appMap.entrySet()) {
            ComponentName component = entry.getKey().componentName;
            if (packageName.equals(component.getPackageName())) {
                allappMatchList.add(component);
            }
        }
        if (matches.size() > 0) {
            Iterator<ComponentName> iterator = allappMatchList.iterator();
            while (iterator.hasNext()) {
                ComponentName componentName = iterator.next();
                Iterator<LauncherActivityInfoCompat> it = matches.iterator();
                while (true) {
                    if (it.hasNext()) {
                        LauncherActivityInfoCompat info = it.next();
                        if (componentName.equals(info.getComponentName())) {
                            iterator.remove();
                            matches.remove(info);
                            break;
                        }
                    }
                }
            }
            Iterator<ComponentName> it2 = allappMatchList.iterator();
            while (it2.hasNext()) {
                ComponentName item = it2.next();
                appMap.remove(new ComponentKey(item, UserHandleCompat.myUserHandle()));
            }
        }
    }
}
