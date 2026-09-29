package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInstaller;
import android.os.Handler;
import android.util.SparseArray;
import java.util.HashMap;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.compat.PackageInstallerCompat;

@TargetApi(21)
/* loaded from: classes.dex */
public class PackageInstallerCompatVL extends PackageInstallerCompat {
    private final AssetCache mCache;
    final PackageInstaller mInstaller;
    private final Handler mWorker;
    final SparseArray<String> mActiveSessions = new SparseArray<>();
    private final PackageInstaller.SessionCallback mCallback = new PackageInstaller.SessionCallback() { // from class: net.oneplus.h2launcher.compat.PackageInstallerCompatVL.1
        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onCreated(int sessionId) {
            pushSessionDisplayToLauncher(sessionId);
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onFinished(int sessionId, boolean success) {
            String packageName = PackageInstallerCompatVL.this.mActiveSessions.get(sessionId);
            PackageInstallerCompatVL.this.mActiveSessions.remove(sessionId);
            if (packageName != null) {
                PackageInstallerCompatVL.this.sendUpdate(new PackageInstallerCompat.PackageInstallInfo(packageName, success ? 0 : 2, 0));
            }
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onProgressChanged(int sessionId, float progress) {
            PackageInstaller.SessionInfo session = PackageInstallerCompatVL.this.mInstaller.getSessionInfo(sessionId);
            if (session != null) {
                PackageInstallerCompatVL.this.sendUpdate(new PackageInstallerCompat.PackageInstallInfo(session.getAppPackageName(), 1, (int) (session.getProgress() * 100.0f)));
            }
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onActiveChanged(int sessionId, boolean active) {
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onBadgingChanged(int sessionId) {
            pushSessionDisplayToLauncher(sessionId);
        }

        private void pushSessionDisplayToLauncher(int sessionId) {
            PackageInstaller.SessionInfo session = PackageInstallerCompatVL.this.mInstaller.getSessionInfo(sessionId);
            if (session != null) {
                PackageInstallerCompatVL.this.addSessionInfoToCahce(session, UserHandleCompat.myUserHandle());
                LauncherAppState app = LauncherAppState.getInstanceNoCreate();
                if (app != null) {
                    app.getModel().updateSessionDisplayInfo(session.getAppPackageName());
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public PackageInstallerCompatVL(Context context) {
        this.mInstaller = context.getPackageManager().getPackageInstaller();
        LauncherAppState.setApplicationContext(context.getApplicationContext());
        this.mCache = LauncherAppState.getInstance().getAssetCache();
        this.mWorker = new Handler(LauncherModel.getWorkerLooper());
        this.mInstaller.registerSessionCallback(this.mCallback, this.mWorker);
    }

    @Override // net.oneplus.h2launcher.compat.PackageInstallerCompat
    public HashMap<String, Integer> updateAndGetActiveSessionCache() {
        HashMap<String, Integer> activePackages = new HashMap<>();
        UserHandleCompat user = UserHandleCompat.myUserHandle();
        for (PackageInstaller.SessionInfo info : this.mInstaller.getAllSessions()) {
            addSessionInfoToCahce(info, user);
            if (info.getAppPackageName() != null) {
                activePackages.put(info.getAppPackageName(), Integer.valueOf((int) (info.getProgress() * 100.0f)));
                this.mActiveSessions.put(info.getSessionId(), info.getAppPackageName());
            }
        }
        return activePackages;
    }

    void addSessionInfoToCahce(PackageInstaller.SessionInfo info, UserHandleCompat user) {
        String packageName = info.getAppPackageName();
        if (packageName != null) {
            this.mCache.cachePackageInstallInfo(packageName, user, info.getAppIcon(), info.getAppLabel());
        }
    }

    @Override // net.oneplus.h2launcher.compat.PackageInstallerCompat
    public void onStop() {
        this.mInstaller.unregisterSessionCallback(this.mCallback);
    }

    void sendUpdate(PackageInstallerCompat.PackageInstallInfo info) {
        LauncherAppState app = LauncherAppState.getInstanceNoCreate();
        if (app != null) {
            app.getModel().setPackageState(info);
        }
    }
}
