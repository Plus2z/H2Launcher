package net.oneplus.h2launcher.compat;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.IconPackHelper;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public class LauncherActivityInfoCompatV16 extends LauncherActivityInfoCompat {
    private final ActivityInfo mActivityInfo;
    private final ComponentName mComponentName;
    private final PackageManager mPm;
    private final ResolveInfo mResolveInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherActivityInfoCompatV16(Context context, ResolveInfo info) {
        this.mResolveInfo = info;
        this.mActivityInfo = info.activityInfo;
        this.mComponentName = new ComponentName(this.mActivityInfo.packageName, this.mActivityInfo.name);
        this.mPm = context.getPackageManager();
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public UserHandleCompat getUser() {
        return UserHandleCompat.myUserHandle();
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public CharSequence getLabel() {
        return this.mResolveInfo.loadLabel(this.mPm);
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public Drawable getIcon(int density) {
        int iconRes = this.mResolveInfo.getIconResource();
        Drawable icon = null;
        if (density != 0 && iconRes != 0) {
            try {
                Resources resources = this.mPm.getResourcesForApplication(this.mActivityInfo.applicationInfo);
                icon = resources.getDrawableForDensity(iconRes, density);
            } catch (PackageManager.NameNotFoundException e) {
            } catch (Resources.NotFoundException e2) {
            }
        }
        if (icon == null) {
            icon = this.mResolveInfo.loadIcon(this.mPm);
        }
        if (icon == null) {
            Resources resources2 = Resources.getSystem();
            return resources2.getDrawableForDensity(R.mipmap.sym_def_app_icon, density);
        }
        return icon;
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
        return this.mActivityInfo.applicationInfo;
    }

    @Override // net.oneplus.h2launcher.compat.LauncherActivityInfoCompat
    public long getFirstInstallTime() {
        try {
            PackageInfo info = this.mPm.getPackageInfo(this.mActivityInfo.packageName, 0);
            if (info != null) {
                return info.firstInstallTime;
            }
            return 0L;
        } catch (PackageManager.NameNotFoundException e) {
            return 0L;
        }
    }

    public String getName() {
        return this.mActivityInfo.name;
    }
}
