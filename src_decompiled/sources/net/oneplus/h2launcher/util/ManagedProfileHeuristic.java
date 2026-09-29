package net.oneplus.h2launcher.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.v4.os.BuildCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.oneplus.h2launcher.FolderInfo;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherFiles;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.MainThreadExecutor;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.SessionCommitReceiver;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;

@TargetApi(21)
/* loaded from: classes.dex */
public class ManagedProfileHeuristic {
    private static final long AUTO_ADD_TO_FOLDER_DURATION = 28800000;
    private static final String INSTALLED_PACKAGES_PREFIX = "installed_packages_for_user_";
    private static final String TAG = "ManagedProfileHeuristic";
    private static final String USER_FOLDER_ID_PREFIX = "user_folder_";
    private final boolean mAddIconsToHomeScreen;
    private final Context mContext;
    private ArrayList<ShortcutInfo> mHomeScreenApps;
    private final LauncherModel mModel = LauncherAppState.getInstance().getModel();
    private final String mPackageSetKey;
    private final SharedPreferences mPrefs;
    private final UserHandleCompat mUser;
    private final long mUserCreationTime;
    private final long mUserSerial;
    private ArrayList<ShortcutInfo> mWorkFolderApps;

    public static ManagedProfileHeuristic get(Context context, UserHandleCompat user) {
        if (!Utilities.ATLEAST_LOLLIPOP || UserHandleCompat.myUserHandle().equals(user) || Utilities.isDualApp(user)) {
            return null;
        }
        return new ManagedProfileHeuristic(context, user);
    }

    private ManagedProfileHeuristic(Context context, UserHandleCompat user) {
        this.mContext = context;
        this.mUser = user;
        UserManagerCompat userManager = UserManagerCompat.getInstance(context);
        this.mUserSerial = userManager.getSerialNumberForUser(user);
        this.mUserCreationTime = userManager.getUserCreationTime(user);
        this.mPackageSetKey = INSTALLED_PACKAGES_PREFIX + this.mUserSerial;
        this.mPrefs = this.mContext.getSharedPreferences(LauncherFiles.MANAGED_USER_PREFERENCES_KEY, 0);
        this.mAddIconsToHomeScreen = !BuildCompat.isAtLeastO() || SessionCommitReceiver.isEnabled(context);
    }

    public void processUserApps(List<LauncherActivityInfoCompat> apps) {
        this.mHomeScreenApps = new ArrayList<>();
        this.mWorkFolderApps = new ArrayList<>();
        HashSet<String> packageSet = new HashSet<>();
        boolean userAppsExisted = getUserApps(packageSet);
        boolean newPackageAdded = false;
        for (LauncherActivityInfoCompat info : apps) {
            String packageName = info.getComponentName().getPackageName();
            if (!packageSet.contains(packageName)) {
                packageSet.add(packageName);
                newPackageAdded = true;
                try {
                    PackageInfo pkgInfo = this.mContext.getPackageManager().getPackageInfo(packageName, 8192);
                    markForAddition(info, pkgInfo.firstInstallTime);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(TAG, "Unknown package " + packageName, e);
                }
            }
        }
        if (newPackageAdded) {
            this.mPrefs.edit().putStringSet(this.mPackageSetKey, packageSet).apply();
            finalizeAdditions(userAppsExisted);
        }
    }

    private void markForAddition(LauncherActivityInfoCompat info, long installTime) {
        ArrayList<ShortcutInfo> targetList = installTime <= this.mUserCreationTime + AUTO_ADD_TO_FOLDER_DURATION ? this.mWorkFolderApps : this.mHomeScreenApps;
        targetList.add(ShortcutInfo.fromActivityInfo(info, this.mContext));
    }

    private void finalizeWorkFolder() {
        if (!this.mWorkFolderApps.isEmpty()) {
            Collections.sort(this.mWorkFolderApps, new Comparator<ShortcutInfo>() { // from class: net.oneplus.h2launcher.util.ManagedProfileHeuristic.1
                @Override // java.util.Comparator
                public int compare(ShortcutInfo lhs, ShortcutInfo rhs) {
                    return Long.compare(lhs.firstInstallTime, rhs.firstInstallTime);
                }
            });
            String folderIdKey = USER_FOLDER_ID_PREFIX + this.mUserSerial;
            if (!this.mAddIconsToHomeScreen) {
                if (!this.mPrefs.contains(folderIdKey)) {
                    this.mPrefs.edit().putLong(folderIdKey, -1L).apply();
                    return;
                }
                return;
            }
            if (this.mPrefs.contains(folderIdKey)) {
                long folderId = this.mPrefs.getLong(folderIdKey, 0L);
                final FolderInfo workFolder = this.mModel.findFolderById(Long.valueOf(folderId));
                if (workFolder == null || !workFolder.hasOption(2)) {
                    this.mHomeScreenApps.addAll(this.mWorkFolderApps);
                    return;
                }
                saveWorkFolderShortcuts(folderId, workFolder.getContents().size());
                final ArrayList<ShortcutInfo> shortcuts = this.mWorkFolderApps;
                new MainThreadExecutor().execute(new Runnable() { // from class: net.oneplus.h2launcher.util.ManagedProfileHeuristic.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it = shortcuts.iterator();
                        while (it.hasNext()) {
                            ShortcutInfo info = (ShortcutInfo) it.next();
                            workFolder.add(info);
                        }
                    }
                });
                return;
            }
            FolderInfo workFolder2 = new FolderInfo();
            workFolder2.title = this.mContext.getText(R.string.work_folder_name);
            workFolder2.setOption(2, true, null);
            Iterator<ShortcutInfo> it = this.mWorkFolderApps.iterator();
            while (it.hasNext()) {
                ShortcutInfo info = it.next();
                workFolder2.add(info);
            }
            ArrayList<ItemInfo> itemList = new ArrayList<>(1);
            itemList.add(workFolder2);
            this.mModel.addAndBindAddedWorkspaceItems(this.mContext, itemList);
            this.mPrefs.edit().putLong(USER_FOLDER_ID_PREFIX + this.mUserSerial, workFolder2.id).apply();
            saveWorkFolderShortcuts(workFolder2.id, 0);
        }
    }

    private void saveWorkFolderShortcuts(long workFolderId, int startingRank) {
        Iterator<ShortcutInfo> it = this.mWorkFolderApps.iterator();
        while (it.hasNext()) {
            ItemInfo info = it.next();
            info.rank = startingRank;
            LauncherModel.addItemToDatabase(this.mContext, info, workFolderId, 0L, 0, 0);
            startingRank++;
        }
    }

    private void finalizeAdditions(boolean addHomeScreenShortcuts) {
        finalizeWorkFolder();
        if (addHomeScreenShortcuts && !this.mHomeScreenApps.isEmpty() && this.mAddIconsToHomeScreen) {
            this.mModel.addAndBindAddedWorkspaceItems(this.mContext, this.mHomeScreenApps);
        }
    }

    public void processPackageAdd(String[] packages) {
        this.mHomeScreenApps = new ArrayList<>();
        this.mWorkFolderApps = new ArrayList<>();
        HashSet<String> packageSet = new HashSet<>();
        boolean userAppsExisted = getUserApps(packageSet);
        boolean newPackageAdded = false;
        long installTime = System.currentTimeMillis();
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this.mContext);
        for (String packageName : packages) {
            if (!packageSet.contains(packageName)) {
                packageSet.add(packageName);
                newPackageAdded = true;
                List<LauncherActivityInfoCompat> activities = launcherApps.getActivityList(packageName, this.mUser);
                if (!activities.isEmpty()) {
                    markForAddition(activities.get(0), installTime);
                }
            }
        }
        if (newPackageAdded) {
            this.mPrefs.edit().putStringSet(this.mPackageSetKey, packageSet).apply();
            finalizeAdditions(userAppsExisted);
        }
    }

    public void processPackageRemoved(String[] packages) {
        HashSet<String> packageSet = new HashSet<>();
        getUserApps(packageSet);
        boolean packageRemoved = false;
        for (String packageName : packages) {
            if (packageSet.remove(packageName)) {
                packageRemoved = true;
            }
        }
        if (packageRemoved) {
            this.mPrefs.edit().putStringSet(this.mPackageSetKey, packageSet).apply();
        }
    }

    private boolean getUserApps(HashSet<String> outExistingApps) {
        Set<String> userApps = this.mPrefs.getStringSet(this.mPackageSetKey, null);
        if (userApps == null) {
            return false;
        }
        outExistingApps.addAll(userApps);
        return true;
    }

    public static void processAllUsers(List<UserHandleCompat> users, Context context) {
        if (Utilities.ATLEAST_LOLLIPOP) {
            UserManagerCompat userManager = UserManagerCompat.getInstance(context);
            HashSet<String> validKeys = new HashSet<>();
            for (UserHandleCompat user : users) {
                addAllUserKeys(userManager.getSerialNumberForUser(user), validKeys);
            }
            SharedPreferences prefs = context.getSharedPreferences(LauncherFiles.MANAGED_USER_PREFERENCES_KEY, 0);
            SharedPreferences.Editor editor = prefs.edit();
            for (String key : prefs.getAll().keySet()) {
                if (!validKeys.contains(key)) {
                    editor.remove(key);
                }
            }
            editor.apply();
        }
    }

    private static void addAllUserKeys(long userSerial, HashSet<String> keysOut) {
        keysOut.add(INSTALLED_PACKAGES_PREFIX + userSerial);
        keysOut.add(USER_FOLDER_ID_PREFIX + userSerial);
    }

    public static void markExistingUsersForNoFolderCreation(Context context) {
        UserManagerCompat userManager = UserManagerCompat.getInstance(context);
        UserHandleCompat myUser = UserHandleCompat.myUserHandle();
        SharedPreferences prefs = null;
        for (UserHandleCompat user : userManager.getUserProfiles()) {
            if (!myUser.equals(user)) {
                if (prefs == null) {
                    prefs = context.getSharedPreferences(LauncherFiles.MANAGED_USER_PREFERENCES_KEY, 0);
                }
                String folderIdKey = USER_FOLDER_ID_PREFIX + userManager.getSerialNumberForUser(user);
                if (!prefs.contains(folderIdKey)) {
                    prefs.edit().putLong(folderIdKey, -1L).apply();
                }
            }
        }
    }
}
