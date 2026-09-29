package com.oneplus.lib.widget.button;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.oneplus.lib.widget.util.utils;

@RemoteViews.RemoteView
/* loaded from: classes.dex */
public class OPButton extends TextView {
    public OPButton(Context context) {
        this(context, null);
    }

    public OPButton(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.buttonStyle);
    }

    public OPButton(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, com.oneplus.commonctrl.R.style.OnePlus_DeviceDefault_Widget_Material_Button);
    }

    public OPButton(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return OPButton.class.getName();
    }
}
