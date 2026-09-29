package net.oneplus.h2launcher.quickpage.view;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.lib.widget.recyclerview.LinearLayoutManager;

/* loaded from: classes.dex */
public class NpaLinearLayoutManager extends LinearLayoutManager {
    @Override // com.oneplus.lib.widget.recyclerview.LinearLayoutManager, com.oneplus.lib.widget.recyclerview.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public NpaLinearLayoutManager(Context context) {
        super(context);
    }

    public NpaLinearLayoutManager(Context context, int orientation, boolean reverseLayout) {
        super(context, orientation, reverseLayout);
    }

    public NpaLinearLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }
}
