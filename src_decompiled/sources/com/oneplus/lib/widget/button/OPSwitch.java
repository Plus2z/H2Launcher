package com.oneplus.lib.widget.button;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.Switch;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPSwitch extends Switch {
    public static String TAG = OPSwitch.class.getSimpleName();

    public OPSwitch(Context context) {
        this(context, null);
    }

    public OPSwitch(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.switchStyle);
    }

    public OPSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, com.oneplus.commonctrl.R.style.Oneplus_DeviceDefault_Widget_Material_CompoundButton_Switch);
    }

    public OPSwitch(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
        TypedArray a = context.obtainStyledAttributes(attrs, com.oneplus.commonctrl.R.styleable.OPSwitch, defStyleAttr, defStyleRes);
        int nRadius = a.getDimensionPixelSize(com.oneplus.commonctrl.R.styleable.OPSwitch_android_radius, -1);
        setRadius(nRadius);
        a.recycle();
    }

    private void setRadius(int nRadius) {
        if (nRadius != -1) {
            Drawable background = getBackground();
            if (background != null && (background instanceof RippleDrawable)) {
                background.mutate();
                ((RippleDrawable) background).setRadius(nRadius);
            } else {
                Log.i(TAG, "setRaidus fail , background not a rippleDrawable");
            }
        }
    }
}
