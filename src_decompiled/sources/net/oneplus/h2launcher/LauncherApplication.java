package net.oneplus.h2launcher;

import android.app.Application;
import android.content.Context;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.core.CrashlyticsCore;
import io.fabric.sdk.android.Fabric;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherApplication extends Application {
    private static final boolean ENABLE_CRASHLYTICS = true;
    private static Context sContext;
    private final String TAG = LauncherApplication.class.getSimpleName();

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        sContext = getApplicationContext();
        int userAgree = Utilities.getOneplusPermissionState(sContext);
        boolean isUserJoinPlan = Utilities.isUserJoinPlan(sContext);
        Logger.d(this.TAG, "user agree launcher to access network?%d, user join plan? %b", Integer.valueOf(userAgree), Boolean.valueOf(isUserJoinPlan));
        if (userAgree != 0 && isUserJoinPlan) {
            initCrashlytics();
        }
    }

    private void initCrashlytics() {
        new Crashlytics.Builder().core(new CrashlyticsCore.Builder().disabled(false).build()).build();
        Fabric.with(this, new Crashlytics());
    }

    public static Context getAppContext() {
        return sContext;
    }
}
