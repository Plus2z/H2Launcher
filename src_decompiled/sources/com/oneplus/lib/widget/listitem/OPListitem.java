package com.oneplus.lib.widget.listitem;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class OPListitem extends ViewGroup {
    public abstract ImageView getActionButton();

    public abstract ImageView getIcon();

    public abstract TextView getPrimaryText();

    public abstract TextView getSecondaryText();

    public abstract TextView getStamp();

    public OPListitem(Context context) {
        super(context);
    }
}
