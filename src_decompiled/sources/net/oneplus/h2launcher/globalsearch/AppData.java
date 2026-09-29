package net.oneplus.h2launcher.globalsearch;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import net.oneplus.h2launcher.AppInfo;

/* loaded from: classes.dex */
public class AppData {
    private ComponentName mComponentName;
    private Bitmap mIcon;
    private Intent mIntent;
    private String mPackageName;
    private String mTitle;

    public AppData(AppInfo appInfo) {
        this.mComponentName = appInfo.componentName;
        this.mIcon = appInfo.iconBitmap;
        this.mTitle = appInfo.title.toString();
        this.mPackageName = appInfo.getPkgName();
        this.mIntent = appInfo.intent;
    }

    public AppData() {
        this.mTitle = "";
        this.mIcon = null;
        this.mComponentName = null;
        this.mPackageName = null;
        this.mIntent = null;
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public Bitmap getIcon() {
        return this.mIcon;
    }

    public String getPkgName() {
        return this.mPackageName;
    }

    public Intent getIntent() {
        return this.mIntent;
    }
}
