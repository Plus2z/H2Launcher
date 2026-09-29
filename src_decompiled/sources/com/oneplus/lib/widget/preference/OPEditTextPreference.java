package com.oneplus.lib.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.preference.EditTextPreference;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPEditTextPreference extends EditTextPreference {
    public OPEditTextPreference(Context context) {
        this(context, null);
    }

    public OPEditTextPreference(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.op_editTextPreferenceStyle);
    }

    public OPEditTextPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.OnePlus_DeviceDefault_Preference_Material_DialogPreference_EditTextPreference);
    }

    public OPEditTextPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }
}
