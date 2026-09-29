package net.oneplus.h2launcher.customizations.timewidget;

import android.content.Context;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.internalwidget.clock.ClockWidget;

/* loaded from: classes.dex */
public class TimeWidgetAdapter extends BaseAdapter {
    private LayoutInflater mInflater;
    private final Size mSize;
    private List<TimeWidgetTileInfo> mTimeWidgets = new ArrayList();

    public TimeWidgetAdapter(Context context) {
        this.mSize = WallpaperCard.getDefaultThumbnailSize(context.getResources());
        this.mInflater = LayoutInflater.from(context);
        ClockWidget clockWidget = ClockWidget.getInstance();
        int count = clockWidget.getCount();
        for (int i = 0; i < count; i++) {
            TimeWidgetTileInfo info = new TimeWidgetTileInfo();
            info.thumbnailResId = clockWidget.getThumbnail(i);
            info.keyguardPreviewResId = clockWidget.getKeyguardPreviewImage(i);
            info.clockStyle = i;
            this.mTimeWidgets.add(info);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mTimeWidgets.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mTimeWidgets.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = convertView == null ? this.mInflater.inflate(R.layout.time_widget_picker_item, parent, false) : convertView;
        view.getLayoutParams().width = this.mSize.getWidth();
        view.getLayoutParams().height = this.mSize.getHeight();
        TimeWidgetTileInfo info = (TimeWidgetTileInfo) getItem(position);
        ImageView image = (ImageView) view.findViewById(R.id.time_widget_image);
        if (image != null) {
            image.getLayoutParams().width = this.mSize.getWidth();
            image.getLayoutParams().height = this.mSize.getHeight();
            if (info.thumbnailResId != 0) {
                image.setImageResource(info.thumbnailResId);
            }
        }
        return view;
    }
}
