package net.oneplus.h2launcher.compat;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import net.oneplus.h2launcher.IconPackHelper;

/* loaded from: classes.dex */
public abstract class LauncherActivityInfoCompat {
    public static final int FLAG_SUSPENDED = 1073741824;

    public abstract ApplicationInfo getApplicationInfo();

    public abstract ComponentName getComponentName();

    public abstract long getFirstInstallTime();

    public abstract Drawable getIcon(int i);

    public abstract DrawableSource getIcon(IconPackHelper iconPackHelper, Context context, int i);

    public abstract DrawableSource getIconFromIconPack(IconPackHelper iconPackHelper, Context context, int i);

    public abstract DrawableSource getIconFromPackage(Context context, int i);

    public abstract CharSequence getLabel();

    public abstract UserHandleCompat getUser();

    /* loaded from: classes.dex */
    public class DrawableSource {
        private Drawable drawable;
        private boolean systemDefault;

        public DrawableSource(Drawable drawable, boolean systemDefault) {
            this.drawable = drawable;
            this.systemDefault = systemDefault;
        }

        public Drawable getDrawable() {
            return this.drawable;
        }

        public boolean isSystemDefault() {
            return this.systemDefault;
        }
    }

    public static LauncherActivityInfoCompat fromResolveInfo(ResolveInfo info, Context context) {
        return new LauncherActivityInfoCompatV16(context, info);
    }
}
