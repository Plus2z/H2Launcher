package com.oneplus.lib.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.preference.CheckBoxPreference;
import com.oneplus.lib.preference.Preference;
import com.oneplus.lib.widget.util.utils;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class OPCheckBoxPreference extends CheckBoxPreference {
    public OPCheckBoxPreference(Context context) {
        this(context, null);
    }

    public OPCheckBoxPreference(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.op_checkBoxPreferenceStyle);
    }

    public OPCheckBoxPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.OnePlus_DeviceDefault_Preference_Material_CheckBoxPreference);
    }

    public OPCheckBoxPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
        setCanRecycleLayout(true);
    }

    private void setCanRecycleLayout(boolean bCanRecycle) {
        try {
            Field canRecycleLayoutField = Preference.class.getDeclaredField("mCanRecycleLayout");
            canRecycleLayoutField.setAccessible(true);
            canRecycleLayoutField.setBoolean(this, bCanRecycle);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }
}
