package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import android.graphics.Rect;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.CustomRecyclerViewUtils;

/* loaded from: classes.dex */
public class DraggingItemInfo {
    public final int grabbedPositionX;
    public final int grabbedPositionY;
    public final int height;
    public final long id;
    public final Rect margins = new Rect();
    public final int width;

    public DraggingItemInfo(RecyclerView.ViewHolder vh, int touchX, int touchY) {
        this.width = vh.itemView.getWidth();
        this.height = vh.itemView.getHeight();
        this.id = vh.getItemId();
        this.grabbedPositionX = touchX - vh.itemView.getLeft();
        this.grabbedPositionY = touchY - vh.itemView.getTop();
        CustomRecyclerViewUtils.getLayoutMargins(vh.itemView, this.margins);
    }
}
