package net.oneplus.h2launcher;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;

/* loaded from: classes.dex */
public abstract class BaseActivity extends Activity {
    protected DeviceProfile mDeviceProfile;

    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    public View.AccessibilityDelegate getAccessibilityDelegate() {
        return null;
    }

    public boolean isInMultiWindowModeCompat() {
        return Utilities.ATLEAST_ANDROID_N && isInMultiWindowMode();
    }

    public static BaseActivity fromContext(Context context) {
        return context instanceof BaseActivity ? (BaseActivity) context : (BaseActivity) ((ContextWrapper) context).getBaseContext();
    }
}
