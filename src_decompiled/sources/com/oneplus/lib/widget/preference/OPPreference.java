package com.oneplus.lib.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.preference.Preference;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPPreference extends Preference {
    public OPPreference(Context context) {
        this(context, null);
    }

    public OPPreference(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.op_preferenceStyle);
    }

    public OPPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.OnePlus_DeviceDefault_Preference_Material);
    }

    public OPPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }
}
