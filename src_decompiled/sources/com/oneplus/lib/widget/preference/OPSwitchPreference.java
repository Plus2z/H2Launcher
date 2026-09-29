package com.oneplus.lib.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.preference.Preference;
import com.oneplus.lib.preference.SwitchPreference;
import com.oneplus.lib.widget.util.utils;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class OPSwitchPreference extends SwitchPreference {
    public OPSwitchPreference(Context context) {
        this(context, null);
    }

    public OPSwitchPreference(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.op_switchPreferenceStyle);
    }

    public OPSwitchPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.OnePlus_DeviceDefault_Preference_Material_SwitchPreference);
    }

    public OPSwitchPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
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
