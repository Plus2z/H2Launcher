package net.oneplus.h2launcher.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.text.Collator;
import java.util.Comparator;
import java.util.HashMap;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class WidgetsAndShortcutNameComparator implements Comparator<Object> {
    private final AppWidgetManagerCompat mManager;
    private final PackageManager mPackageManager;
    private final HashMap<ComponentKey, String> mLabelCache = new HashMap<>();
    private final Collator mCollator = Collator.getInstance();
    private final UserHandleCompat mMainHandle = UserHandleCompat.myUserHandle();

    public WidgetsAndShortcutNameComparator(Context context) {
        this.mManager = AppWidgetManagerCompat.getInstance(context);
        this.mPackageManager = context.getPackageManager();
    }

    public void reset() {
        this.mLabelCache.clear();
    }

    @Override // java.util.Comparator
    public final int compare(Object objA, Object objB) {
        ComponentKey keyA = getComponentKey(objA);
        ComponentKey keyB = getComponentKey(objB);
        boolean aWorkProfile = !this.mMainHandle.equals(keyA.user);
        boolean bWorkProfile = !this.mMainHandle.equals(keyB.user);
        if (aWorkProfile && !bWorkProfile) {
            return 1;
        }
        if (!aWorkProfile && bWorkProfile) {
            return -1;
        }
        String labelA = this.mLabelCache.get(keyA);
        String labelB = this.mLabelCache.get(keyB);
        if (labelA == null) {
            labelA = getLabel(objA);
            this.mLabelCache.put(keyA, labelA);
        }
        if (labelB == null) {
            labelB = getLabel(objB);
            this.mLabelCache.put(keyB, labelB);
        }
        return this.mCollator.compare(labelA, labelB);
    }

    private ComponentKey getComponentKey(Object o) {
        if (o instanceof LauncherAppWidgetProviderInfo) {
            LauncherAppWidgetProviderInfo widgetInfo = (LauncherAppWidgetProviderInfo) o;
            return new ComponentKey(widgetInfo.provider, this.mManager.getUser(widgetInfo));
        }
        ResolveInfo shortcutInfo = (ResolveInfo) o;
        ComponentName cn = new ComponentName(shortcutInfo.activityInfo.packageName, shortcutInfo.activityInfo.name);
        return new ComponentKey(cn, UserHandleCompat.myUserHandle());
    }

    private String getLabel(Object o) {
        if (o instanceof LauncherAppWidgetProviderInfo) {
            LauncherAppWidgetProviderInfo widgetInfo = (LauncherAppWidgetProviderInfo) o;
            return Utilities.trim(this.mManager.loadLabel(widgetInfo));
        }
        ResolveInfo shortcutInfo = (ResolveInfo) o;
        return Utilities.trim(shortcutInfo.loadLabel(this.mPackageManager));
    }
}
