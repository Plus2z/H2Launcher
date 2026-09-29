package net.oneplus.h2launcher.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.List;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.WidgetPreviewLoader;
import net.oneplus.h2launcher.model.PackageItemInfo;
import net.oneplus.h2launcher.model.WidgetItem;
import net.oneplus.h2launcher.model.WidgetsModel;

/* loaded from: classes.dex */
public class WidgetsListAdapter extends RecyclerView.Adapter<WidgetsRowViewHolder> {
    private static final boolean DEBUG = false;
    private static final int PRESET_INDENT_SIZE_TABLET = 56;
    private static final String TAG = "WidgetsListAdapter";
    private View.OnClickListener mIconClickListener;
    private View.OnLongClickListener mIconLongClickListener;
    private int mIndent = 0;
    private Launcher mLauncher;
    private LayoutInflater mLayoutInflater;
    private WidgetPreviewLoader mWidgetPreviewLoader;
    private WidgetsModel mWidgetsModel;

    public WidgetsListAdapter(Context context, View.OnClickListener iconClickListener, View.OnLongClickListener iconLongClickListener, Launcher launcher) {
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mIconClickListener = iconClickListener;
        this.mIconLongClickListener = iconLongClickListener;
        this.mLauncher = launcher;
        setContainerHeight();
    }

    public void setWidgetsModel(WidgetsModel w) {
        this.mWidgetsModel = w;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.mWidgetsModel == null) {
            return 0;
        }
        return this.mWidgetsModel.getPackageSize();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(WidgetsRowViewHolder holder, int pos) {
        List<WidgetItem> infoList = this.mWidgetsModel.getSortedWidgets(pos);
        ViewGroup row = (ViewGroup) holder.getContent().findViewById(R.id.widgets_cell_list);
        int diff = infoList.size() - row.getChildCount();
        if (diff > 0) {
            for (int i = 0; i < diff; i++) {
                WidgetCell widget = (WidgetCell) this.mLayoutInflater.inflate(R.layout.widget_cell, row, false);
                widget.setOnClickListener(this.mIconClickListener);
                widget.setOnLongClickListener(this.mIconLongClickListener);
                ViewGroup.LayoutParams lp = widget.getLayoutParams();
                lp.height = widget.cellSize;
                lp.width = widget.cellSize;
                widget.setLayoutParams(lp);
                row.addView(widget);
            }
        } else if (diff < 0) {
            for (int i2 = infoList.size(); i2 < row.getChildCount(); i2++) {
                row.getChildAt(i2).setVisibility(8);
            }
        }
        PackageItemInfo infoOut = this.mWidgetsModel.getPackageItemInfo(pos);
        BubbleTextView tv = (BubbleTextView) holder.getContent().findViewById(R.id.section);
        tv.applyFromPackageItemInfo(infoOut);
        if (getWidgetPreviewLoader() != null) {
            for (int i3 = 0; i3 < infoList.size(); i3++) {
                WidgetCell widget2 = (WidgetCell) row.getChildAt(i3);
                widget2.applyFromCellItem(infoList.get(i3), this.mWidgetPreviewLoader);
                widget2.ensurePreview();
                widget2.setVisibility(0);
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @TargetApi(17)
    public WidgetsRowViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        ViewGroup container = (ViewGroup) this.mLayoutInflater.inflate(R.layout.widgets_list_row_view, parent, false);
        LinearLayout cellList = (LinearLayout) container.findViewById(R.id.widgets_cell_list);
        if (Utilities.ATLEAST_JB_MR1) {
            cellList.setPaddingRelative(this.mIndent, 0, 1, 0);
        } else {
            cellList.setPadding(this.mIndent, 0, 1, 0);
        }
        return new WidgetsRowViewHolder(container);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewRecycled(WidgetsRowViewHolder holder) {
        ViewGroup row = (ViewGroup) holder.getContent().findViewById(R.id.widgets_cell_list);
        for (int i = 0; i < row.getChildCount(); i++) {
            WidgetCell widget = (WidgetCell) row.getChildAt(i);
            widget.clear();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(WidgetsRowViewHolder holder) {
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int pos) {
        return pos;
    }

    private WidgetPreviewLoader getWidgetPreviewLoader() {
        if (this.mWidgetPreviewLoader == null) {
            this.mWidgetPreviewLoader = LauncherAppState.getInstance().getWidgetCache();
        }
        return this.mWidgetPreviewLoader;
    }

    private void setContainerHeight() {
        Resources r = this.mLauncher.getResources();
        DeviceProfile profile = this.mLauncher.getDeviceProfile();
        if (profile.isLargeTablet || profile.isTablet) {
            this.mIndent = Utilities.pxFromDp(56.0f, r.getDisplayMetrics());
        }
    }
}
