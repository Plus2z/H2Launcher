package com.oneplus.lib.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.preference.PreferenceCategory;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPPreferenceCategory extends PreferenceCategory {
    public OPPreferenceCategory(Context context) {
        this(context, null);
    }

    public OPPreferenceCategory(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.op_preferenceCategoryStyle);
    }

    public OPPreferenceCategory(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.Oneplus_DeviceDefault_Preference_Material_Category);
    }

    public OPPreferenceCategory(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }
}
