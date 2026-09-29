package net.oneplus.h2launcher.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppWidgetInfo;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.util.PendingRequestArgs;

/* loaded from: classes.dex */
public class WidgetAddFlowHandler implements Parcelable {
    public static final Parcelable.Creator<WidgetAddFlowHandler> CREATOR = new Parcelable.Creator<WidgetAddFlowHandler>() { // from class: net.oneplus.h2launcher.widget.WidgetAddFlowHandler.1
        @Override // android.os.Parcelable.Creator
        public WidgetAddFlowHandler createFromParcel(Parcel source) {
            return new WidgetAddFlowHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        public WidgetAddFlowHandler[] newArray(int size) {
            return new WidgetAddFlowHandler[size];
        }
    };
    private final AppWidgetProviderInfo mProviderInfo;

    public WidgetAddFlowHandler(AppWidgetProviderInfo providerInfo) {
        this.mProviderInfo = providerInfo;
    }

    protected WidgetAddFlowHandler(Parcel parcel) {
        this.mProviderInfo = (AppWidgetProviderInfo) AppWidgetProviderInfo.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mProviderInfo.writeToParcel(parcel, i);
    }

    public void startBindFlow(Launcher launcher, int appWidgetId, ItemInfo info, int requestCode) {
        launcher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(appWidgetId, this, info) != null);
        Intent intent = new Intent("android.appwidget.action.APPWIDGET_BIND");
        intent.putExtra(LauncherSettings.Favorites.APPWIDGET_ID, appWidgetId);
        intent.putExtra(LauncherSettings.Favorites.APPWIDGET_PROVIDER, this.mProviderInfo.provider);
        intent.putExtra("appWidgetProviderProfile", this.mProviderInfo.getProfile());
        launcher.startActivityForResult(intent, requestCode);
    }

    public boolean startConfigActivity(Launcher launcher, LauncherAppWidgetInfo info, int requestCode) {
        return startConfigActivity(launcher, info.appWidgetId, info, requestCode);
    }

    public boolean startConfigActivity(Launcher launcher, int appWidgetId, ItemInfo info, int requestCode) {
        if (!needsConfigure()) {
            return false;
        }
        launcher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(appWidgetId, this, info) != null);
        AppWidgetManagerCompat.getInstance(launcher).startConfigActivity(this.mProviderInfo, appWidgetId, launcher, launcher.getAppWidgetHost(), requestCode);
        return true;
    }

    public boolean needsConfigure() {
        return this.mProviderInfo.configure != null;
    }

    public LauncherAppWidgetProviderInfo getProviderInfo(Context context) {
        return LauncherAppWidgetProviderInfo.fromProviderInfo(context, this.mProviderInfo);
    }
}
