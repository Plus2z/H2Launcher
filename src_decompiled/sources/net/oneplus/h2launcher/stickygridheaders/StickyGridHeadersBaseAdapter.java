package net.oneplus.h2launcher.stickygridheaders;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

/* loaded from: classes.dex */
public interface StickyGridHeadersBaseAdapter extends ListAdapter {
    int getCountForHeader(int i);

    View getHeaderView(int i, View view, ViewGroup viewGroup);

    int getNumHeaders();
}
