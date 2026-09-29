package net.oneplus.h2launcher.compat;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.IconPackHelper;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

@TargetApi(21)
/* loaded from: classes.dex */
public class LauncherActivityInfoCompatVL extends LauncherActivityInfoCompat {
    private LauncherActivityInfo mLauncherActivityInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherActivityInfoCompatVL(LauncherActivityInfo launcherActivityInfo) {
        this.mLauncherActivityInfo = launcherActivityInfo;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public ComponentName getComponentName() {
        return this.mLauncherActivityInfo.getComponentName();
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public UserHandleCompat getUser() {
        return UserHandleCompat.fromUser(this.mLauncherActivityInfo.getUser());
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public CharSequence getLabel() {
        return this.mLauncherActivityInfo.getLabel();
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public Drawable getIcon(int density) {
        return this.mLauncherActivityInfo.getIcon(density);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public LauncherActivityInfoCompat.DrawableSource getIcon(IconPackHelper iconPackHelper, Context context, int density) {
        LauncherActivityInfoCompat.DrawableSource drawableSource = getIconFromIconPack(iconPackHelper, context, density);
        if (drawableSource == null) {
            return getIconFromPackage(context, density);
        }
        return drawableSource;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public LauncherActivityInfoCompat.DrawableSource getIconFromIconPack(IconPackHelper iconPackHelper, Context context, int density) {
        Drawable drawable;
        if (iconPackHelper == null || (drawable = iconPackHelper.getDrawableForComponentNameWithDensity(getComponentName(), density)) == null) {
            return null;
        }
        return new LauncherActivityInfoCompat.DrawableSource(drawable, false);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public LauncherActivityInfoCompat.DrawableSource getIconFromPackage(Context context, int density) {
        return new LauncherActivityInfoCompat.DrawableSource(getIcon(density), true);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public ApplicationInfo getApplicationInfo() {
        return this.mLauncherActivityInfo.getApplicationInfo();
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public long getFirstInstallTime() {
        return this.mLauncherActivityInfo.getFirstInstallTime();
    }
}
