package net.oneplus.h2launcher.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Process;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class ConfigMonitor extends BroadcastReceiver {
    private final String TAG = ConfigMonitor.class.getSimpleName();
    private final Context mContext;
    private final int mDensity;
    private final float mFontScale;

    public ConfigMonitor(Context context) {
        this.mContext = context;
        Configuration config = context.getResources().getConfiguration();
        this.mFontScale = config.fontScale;
        this.mDensity = getDensity(config);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Configuration config = context.getResources().getConfiguration();
        Logger.d(this.TAG, "onReceive: " + intent.getAction() + ", mFontScale: " + this.mFontScale + ", config.fontScale = " + config.fontScale + ", mDensity: " + this.mDensity + ", config.density = " + getDensity(config));
        if (this.mFontScale != config.fontScale || this.mDensity != getDensity(config)) {
            Logger.d(this.TAG, "Configuration changed, restarting launcher");
            this.mContext.unregisterReceiver(this);
            Process.killProcess(Process.myPid());
        }
        if (intent == null) {
            Logger.w(this.TAG, "onReceive: intent is null. Should not happened!!");
            return;
        }
        float fontScale = intent.getFloatExtra("font_scale", -1.0f);
        int density = intent.getIntExtra("density_dpi", -1);
        Logger.d(this.TAG, "onReceive: " + intent.getAction() + ", mFontScale: " + this.mFontScale + ", fontScale = " + fontScale + ", mDensity: " + this.mDensity + ", density = " + density);
        if (fontScale == -1.0f || density == -1) {
            Logger.w(this.TAG, "onReceive: fontScale/density have not change!");
        } else if (this.mFontScale != fontScale || this.mDensity != density) {
            Logger.d(this.TAG, "Configuration changed, restarting launcher");
            this.mContext.unregisterReceiver(this);
            Process.killProcess(Process.myPid());
        }
    }

    public void register() {
        this.mContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
    }

    private static int getDensity(Configuration config) {
        if (Utilities.ATLEAST_JB_MR1) {
            return config.densityDpi;
        }
        return 0;
    }
}
