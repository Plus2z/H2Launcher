package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class LauncherAppWidgetInfo extends ItemInfo {
    static final int CUSTOM_WIDGET_ID = -100;
    public static final int FLAG_ID_NOT_VALID = 1;
    public static final int FLAG_PROVIDER_NOT_READY = 2;
    public static final int FLAG_RESTORE_STARTED = 8;
    public static final int FLAG_UI_NOT_READY = 4;
    static final int NO_ID = -1;
    public static final int RESTORE_COMPLETED = 0;
    public int appWidgetId;
    private boolean mHasNotifiedInitialWidgetSizeChanged;
    ComponentName providerName;
    int restoreStatus;
    int installProgress = -1;
    AppWidgetHostView hostView = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LauncherAppWidgetInfo(int appWidgetId, ComponentName providerName) {
        this.appWidgetId = -1;
        if (appWidgetId == -100) {
            this.itemType = 5;
        } else {
            this.itemType = 4;
        }
        this.appWidgetId = appWidgetId;
        this.providerName = providerName;
        this.spanX = -1;
        this.spanY = -1;
        this.user = UserHandleCompat.myUserHandle();
        this.restoreStatus = 0;
    }

    public boolean isCustomWidget() {
        return this.appWidgetId == -100;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // net.oneplus.h2launcher.ItemInfo
    public void onAddToDatabase(Context context, ContentValues values) {
        super.onAddToDatabase(context, values);
        values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(this.appWidgetId));
        values.put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, this.providerName.flattenToString());
        values.put(LauncherSettings.Favorites.RESTORED, Integer.valueOf(this.restoreStatus));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onBindAppWidget(Launcher launcher) {
        if (!this.mHasNotifiedInitialWidgetSizeChanged) {
            notifyWidgetSizeChanged(launcher);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyWidgetSizeChanged(Launcher launcher) {
        AppWidgetResizeFrame.updateWidgetSizeRanges(this.hostView, launcher, this.spanX, this.spanY);
        this.mHasNotifiedInitialWidgetSizeChanged = true;
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public String toString() {
        return "AppWidget(id=" + Integer.toString(this.appWidgetId) + ")";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // net.oneplus.h2launcher.ItemInfo
    public void unbind() {
        super.unbind();
        this.hostView = null;
    }

    public final boolean isWidgetIdValid() {
        return (this.restoreStatus & 1) == 0;
    }

    public final boolean hasRestoreFlag(int flag) {
        return (this.restoreStatus & flag) == flag;
    }
}
