package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.LauncherSettings;

/* loaded from: classes.dex */
public class AppWidgetsRestoredReceiver extends BroadcastReceiver {
    private static final String TAG = AppWidgetsRestoredReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.appwidget.action.APPWIDGET_HOST_RESTORED".equals(intent.getAction())) {
            int[] oldIds = intent.getIntArrayExtra("appWidgetOldIds");
            int[] newIds = intent.getIntArrayExtra("appWidgetIds");
            if (oldIds.length == newIds.length) {
                restoreAppWidgetIds(context, oldIds, newIds);
            } else {
                Log.e(TAG, "Invalid host restored received");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [net.oneplus.h2launcher.AppWidgetsRestoredReceiver$1] */
    static void restoreAppWidgetIds(Context context, int[] oldWidgetIds, int[] newWidgetIds) {
        int state;
        ContentResolver cr = context.getContentResolver();
        final List<Integer> idsToRemove = new ArrayList<>();
        AppWidgetManager widgets = AppWidgetManager.getInstance(context);
        for (int i = 0; i < oldWidgetIds.length; i++) {
            Log.i(TAG, "Widget state restore id " + oldWidgetIds[i] + " => " + newWidgetIds[i]);
            AppWidgetProviderInfo provider = widgets.getAppWidgetInfo(newWidgetIds[i]);
            if (LauncherModel.isValidProvider(provider)) {
                state = 4;
            } else {
                state = 2;
            }
            ContentValues values = new ContentValues();
            values.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(newWidgetIds[i]));
            values.put(LauncherSettings.Favorites.RESTORED, Integer.valueOf(state));
            String[] widgetIdParams = {Integer.toString(oldWidgetIds[i])};
            int result = cr.update(LauncherSettings.Favorites.CONTENT_URI, values, "appWidgetId=? and (restored & 1) = 1", widgetIdParams);
            if (result == 0) {
                Cursor cursor = cr.query(LauncherSettings.Favorites.CONTENT_URI, new String[]{LauncherSettings.Favorites.APPWIDGET_ID}, "appWidgetId=?", widgetIdParams, null);
                try {
                    if (!cursor.moveToFirst()) {
                        idsToRemove.add(Integer.valueOf(newWidgetIds[i]));
                    }
                } finally {
                    cursor.close();
                }
            }
        }
        if (!idsToRemove.isEmpty()) {
            final AppWidgetHost appWidgetHost = new AppWidgetHost(context, 1024);
            new AsyncTask<Void, Void, Void>() { // from class: net.oneplus.h2launcher.AppWidgetsRestoredReceiver.1
                @Override // android.os.AsyncTask
                public Void doInBackground(Void... args) {
                    for (Integer id : idsToRemove) {
                        appWidgetHost.deleteAppWidgetId(id.intValue());
                        Log.e(AppWidgetsRestoredReceiver.TAG, "Widget no longer present, appWidgetId=" + id);
                    }
                    return null;
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Void) null);
        }
        LauncherAppState app = LauncherAppState.getInstanceNoCreate();
        if (app != null) {
            app.reloadWorkspace();
        }
    }
}
