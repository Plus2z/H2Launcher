package net.oneplus.h2launcher.quickpage.widget;

import android.app.Dialog;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.WidgetPreviewLoader;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.model.WidgetItem;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.widget.WidgetCell;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class WidgetPicker {
    public static final int PACKAGE_CHANGED_DELAY = 500;
    private static final String TAG = WidgetPicker.class.getSimpleName();
    private WidgetSelectionAdapter mAdapter;
    private WidgetPickerCallback mCallback;
    private Context mContext;
    private Dialog mDialog;
    private boolean mShowing;
    private AppWidgetManagerCompat mWidgetManager;
    private List<WidgetItem> mWidgetList = new ArrayList();
    private WidgetPreviewLoader mWidgetPreviewLoader = LauncherAppState.getInstance().getWidgetCache();

    /* loaded from: classes.dex */
    public interface WidgetPickerCallback {
        void onWidgetPicked(ComponentName componentName);
    }

    public WidgetPicker(Context context, AppWidgetManagerCompat widgetManager) {
        this.mWidgetManager = widgetManager;
        this.mContext = context;
        this.mAdapter = new WidgetSelectionAdapter(context, this.mWidgetList);
        initDialog();
    }

    public void create() {
        PackageManager pm = this.mContext.getPackageManager();
        InvariantDeviceProfile idp = LauncherAppState.getInstance().getInvariantDeviceProfile();
        List<AppWidgetProviderInfo> allWidgets = this.mWidgetManager.getAllProviders();
        ComponentName componentNameDigitialClock = new ComponentName(WidgetConstant.COM_ONEPLUS_DESKCLOCK, WidgetConstant.COM_ONEPLUS_ALARMCLOCK_DIGITAL_APP_WIDGET_PROVIDER);
        ComponentName componentOnePlusWidget = new ComponentName(WidgetConstant.NET_ONEPLUS_WIDGET, WidgetConstant.NET_ONEPLUS_WIDGET_APPWIDGET_WEATHERWIDGETPROVIDER);
        for (AppWidgetProviderInfo info : allWidgets) {
            if (info != null) {
                String packageMane = info.provider.getPackageName();
                if (WidgetConstant.CN_LEDONGLI_LDL.equals(packageMane)) {
                    LauncherAppWidgetProviderInfo widgetInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, info);
                    this.mWidgetList.add(new WidgetItem(widgetInfo, pm, idp));
                }
            }
        }
        for (AppWidgetProviderInfo info2 : allWidgets) {
            if (info2 != null) {
                String packageName = info2.provider.getPackageName();
                String className = info2.provider.getClassName();
                if (!WidgetConstant.COM_ONEPLUS_CARD.equals(packageName) && (!WidgetConstant.COM_ONEPLUS_NOTE.equals(packageName) || (!WidgetConstant.COM_ONEPLUS_NOTE_QUICKNOTEWIDGETPROVIDER.equals(className) && !WidgetConstant.COM_ONEPLUS_NOTE_DETAILWIDGETPROVIDER.equals(className)))) {
                    if (!WidgetConstant.COM_ONEPLUS_CALENDAR.equals(packageName) && !componentNameDigitialClock.equals(info2.provider) && !componentOnePlusWidget.equals(info2.provider) && !WidgetConstant.CN_LEDONGLI_LDL.equals(packageName)) {
                        LauncherAppWidgetProviderInfo widgetInfo2 = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, info2);
                        this.mWidgetList.add(new WidgetItem(widgetInfo2, pm, idp));
                    }
                }
            }
        }
        this.mAdapter.notifyDataSetChanged();
    }

    public void destroy() {
        this.mShowing = false;
        this.mWidgetList.clear();
        this.mAdapter.destroy();
    }

    public void initDialog() {
        GridView gridView = (GridView) View.inflate(this.mContext, R.layout.quick_page_widget_dialog_gridview, null);
        gridView.setAdapter((ListAdapter) this.mAdapter);
        gridView.setNumColumns(this.mContext.getResources().getInteger(R.integer.config_widgetPickerColumns));
        gridView.setBackgroundColor(this.mContext.getColor(R.color.widgets_cell_color));
        this.mDialog = new Dialog(this.mContext, R.style.QuickPageDialogStyle);
        this.mDialog.requestWindowFeature(1);
        this.mDialog.setCancelable(true);
        this.mDialog.setContentView(gridView);
    }

    public void show(WidgetPickerCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("WidgetPickerCallback can not be null!");
        }
        this.mCallback = callback;
        this.mShowing = true;
        this.mDialog.show();
    }

    public void dismiss() {
        this.mShowing = false;
        this.mDialog.dismiss();
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    public void invalidateWidgetList() {
        this.mWidgetList.clear();
        create();
    }

    public boolean checkPackageContainsInWidgetList(String packageName) {
        for (WidgetItem item : this.mWidgetList) {
            if (item != null && item.componentName != null && item.componentName.getPackageName() != null && packageName.equals(item.componentName.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public boolean checkPackageIsWidget(String packageName) {
        try {
            List<AppWidgetProviderInfo> allWidgets = this.mWidgetManager.getAllProviders();
            for (AppWidgetProviderInfo info : allWidgets) {
                if (info != null) {
                    String providerPackageName = info.provider.getPackageName();
                    if (packageName.equals(providerPackageName)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (IllegalStateException e) {
            Logger.d(TAG, "myUserId is not running. Kill myself.");
            Process.killProcess(Process.myPid());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WidgetSelectionAdapter extends ArrayAdapter<WidgetItem> {
        private LayoutInflater mInflater;

        WidgetSelectionAdapter(Context context, List<WidgetItem> items) {
            super(context, R.layout.quick_page_widget_dialog_item, items);
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        void destroy() {
            clear();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int position, View convertView, @NonNull ViewGroup parent) {
            ViewHolder viewHolder;
            if (convertView == null) {
                convertView = this.mInflater.inflate(R.layout.quick_page_widget_dialog_item, parent, false);
                viewHolder = new ViewHolder();
                viewHolder.widget = (WidgetCell) convertView.findViewById(R.id.widget);
                convertView.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) convertView.getTag();
                viewHolder.widget.clear();
            }
            final WidgetItem widget = getItem(position);
            if (widget != null) {
                viewHolder.widget.applyFromCellItem(widget, WidgetPicker.this.mWidgetPreviewLoader);
                viewHolder.widget.ensurePreview();
                convertView.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.widget.WidgetPicker.WidgetSelectionAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        if (WidgetPicker.this.mCallback != null) {
                            WidgetPicker.this.mCallback.onWidgetPicked(widget.componentName);
                        }
                    }
                });
            }
            return convertView;
        }
    }

    /* loaded from: classes.dex */
    private class ViewHolder {
        WidgetCell widget;

        private ViewHolder() {
        }
    }
}
