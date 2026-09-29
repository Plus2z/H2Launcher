package net.oneplus.h2launcher;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.UserHandle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class QuickPageBroadcastReceiver extends BroadcastReceiver {
    public static final String OPEN_QUICK_PAGE = "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE";
    private static final String TAG = QuickPageBroadcastReceiver.class.getSimpleName();
    private Context mContext;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.mContext = context;
        new PreferencesHelper(context);
        if (PreferencesHelper.isQuickPageEnabled(context) && OPEN_QUICK_PAGE.equals(intent.getAction())) {
            if (isLauncherDefault()) {
                Intent main = new Intent("android.intent.action.MAIN");
                main.addCategory("android.intent.category.HOME");
                main.setFlags(268435456);
                main.putExtra(OPEN_QUICK_PAGE, true);
                startActivityAsUser(main);
                return;
            }
            Intent external = new Intent();
            external.setComponent(new ComponentName(this.mContext, (Class<?>) QuickPageExternalActivity.class));
            external.addFlags(536870912);
            startActivityAsUser(external);
        }
    }

    private void startActivityAsUser(Intent intent) {
        try {
            Class<?> userHandle = Class.forName("android.os.UserHandle");
            Object CURRENT_OR_SELF = userHandle.getField("CURRENT_OR_SELF").get(userHandle);
            Method startActivityAsUser = this.mContext.getClass().getMethod("startActivityAsUser", Intent.class, UserHandle.class);
            startActivityAsUser.invoke(this.mContext, intent, CURRENT_OR_SELF);
        } catch (ClassNotFoundException e) {
            Logger.e(TAG, "failed to find class: ", e);
        } catch (IllegalAccessException e2) {
            Logger.e(TAG, "illegal access exception: ", e2);
        } catch (NoSuchFieldException e3) {
            Logger.e(TAG, "failed to get field: ", e3);
        } catch (NoSuchMethodException e4) {
            Logger.e(TAG, "failed to get method: ", e4);
        } catch (InvocationTargetException e5) {
            Logger.e(TAG, "failed to invoke target: ", e5);
        }
    }

    private boolean isLauncherDefault() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo res = this.mContext.getPackageManager().resolveActivity(intent, 0);
        return this.mContext.getPackageName().equals(res.activityInfo.packageName);
    }
}
