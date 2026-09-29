package com.oneplus.lib.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.preference.ListPreference;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPListPreference extends ListPreference {
    public OPListPreference(Context context) {
        this(context, null);
    }

    public OPListPreference(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.op_dialogPreferenceStyle);
    }

    public OPListPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.OnePlus_DeviceDefault_Preference_Material);
    }

    public OPListPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }
}
