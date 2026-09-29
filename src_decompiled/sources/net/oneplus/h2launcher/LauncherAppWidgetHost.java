package net.oneplus.h2launcher;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.os.DeadObjectException;
import android.os.TransactionTooLargeException;
import android.view.LayoutInflater;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class LauncherAppWidgetHost extends AppWidgetHost {
    private static final String TAG = LauncherAppWidgetHost.class.getSimpleName();
    Context mContext;
    private final ArrayList<Runnable> mProviderChangeListeners;
    private int mQsbWidgetId;

    public LauncherAppWidgetHost(Context context, int hostId) {
        super(context, hostId);
        this.mProviderChangeListeners = new ArrayList<>();
        this.mQsbWidgetId = -1;
        this.mContext = context;
    }

    public void setQsbWidgetId(int widgetId) {
        this.mQsbWidgetId = widgetId;
    }

    @Override // android.appwidget.AppWidgetHost
    protected AppWidgetHostView onCreateView(Context context, int appWidgetId, AppWidgetProviderInfo appWidget) {
        return appWidgetId == this.mQsbWidgetId ? new LauncherAppWidgetHostView(context) { // from class: net.oneplus.h2launcher.LauncherAppWidgetHost.1
            @Override // net.oneplus.h2launcher.LauncherAppWidgetHostView, android.appwidget.AppWidgetHostView
            protected View getErrorView() {
                return new View(getContext());
            }
        } : new LauncherAppWidgetHostView(context);
    }

    @Override // android.appwidget.AppWidgetHost
    public void startListening() {
        Logger.d(TAG, "startListening:");
        try {
            super.startListening();
        } catch (Exception e) {
            if (!(e.getCause() instanceof TransactionTooLargeException) && !(e.getCause() instanceof DeadObjectException)) {
                throw new RuntimeException(e);
            }
        }
    }

    public void addProviderChangeListener(Runnable callback) {
        this.mProviderChangeListeners.add(callback);
    }

    public void removeProviderChangeListener(Runnable callback) {
        this.mProviderChangeListeners.remove(callback);
    }

    @Override // android.appwidget.AppWidgetHost
    protected void onProvidersChanged() {
        if (!this.mProviderChangeListeners.isEmpty()) {
            Iterator it = new ArrayList(this.mProviderChangeListeners).iterator();
            while (it.hasNext()) {
                Runnable callback = (Runnable) it.next();
                callback.run();
            }
        }
    }

    public AppWidgetHostView createView(Context context, int appWidgetId, LauncherAppWidgetProviderInfo appWidget) {
        if (!appWidget.isCustomWidget) {
            return super.createView(context, appWidgetId, (AppWidgetProviderInfo) appWidget);
        }
        LauncherAppWidgetHostView lahv = new LauncherAppWidgetHostView(context);
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        inflater.inflate(appWidget.initialLayout, lahv);
        lahv.setAppWidget(0, appWidget);
        lahv.updateLastInflationOrientation();
        return lahv;
    }

    @Override // android.appwidget.AppWidgetHost
    protected void onProviderChanged(int appWidgetId, AppWidgetProviderInfo appWidget) {
        LauncherAppWidgetProviderInfo info = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidget);
        super.onProviderChanged(appWidgetId, info);
    }
}
