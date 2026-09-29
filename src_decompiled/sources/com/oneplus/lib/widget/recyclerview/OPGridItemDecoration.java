package com.oneplus.lib.widget.recyclerview;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class OPGridItemDecoration extends OPItemDecoration {
    Context mContext;

    public OPGridItemDecoration(Context context) {
        super(0);
        int space = context.getResources().getDimensionPixelSize(R.dimen.opgridview_margin);
        setSpace(space);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        outRect.set(this.mSpace, 0, 0, this.mSpace);
    }
}
