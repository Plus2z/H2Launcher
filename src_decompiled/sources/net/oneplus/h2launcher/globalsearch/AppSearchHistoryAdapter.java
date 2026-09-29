package net.oneplus.h2launcher.globalsearch;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class AppSearchHistoryAdapter extends BaseAdapter {
    static final String TAG = "AppSearchHistoryAdapter";
    private final List<AppData> mHistoryList;
    private final LayoutInflater mInflater;
    Bitmap mUnknowAppIcon;

    public AppSearchHistoryAdapter(Context context, List<AppData> historyList) {
        this.mHistoryList = historyList;
        this.mInflater = LayoutInflater.from(context);
        this.mUnknowAppIcon = BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_unknow_app_icon);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mHistoryList != null) {
            return this.mHistoryList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mHistoryList.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder;
        if (convertView == null) {
            convertView = this.mInflater.inflate(R.layout.app_search_gridview_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.title = (TextView) convertView.findViewById(R.id.grid_item_text);
            viewHolder.image = (ImageView) convertView.findViewById(R.id.grid_item_image);
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) convertView.getTag();
        }
        AppData appData = (AppData) getItem(position);
        ComponentName componentName = appData.getComponentName();
        if (componentName == null) {
            viewHolder.image.setVisibility(4);
        } else {
            viewHolder.image.setVisibility(0);
            Bitmap appIcon = appData.getIcon();
            if (appIcon == null) {
                appIcon = this.mUnknowAppIcon;
            }
            viewHolder.image.setImageBitmap(appIcon);
        }
        viewHolder.title.setText(appData.getTitle());
        return convertView;
    }

    /* loaded from: classes.dex */
    static class ViewHolder {
        private ImageView image;
        private TextView title;

        ViewHolder() {
        }
    }
}
