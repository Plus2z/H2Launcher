package com.oneplus.lib.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.oneplus.commonctrl.R;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class OPToast extends Toast {
    public OPToast(Context context) {
        super(context);
    }

    public static OPToast makeText(Context context, CharSequence text, int duration) {
        OPToast result = new OPToast(context);
        LayoutInflater inflate = (LayoutInflater) context.getSystemService("layout_inflater");
        TypedArray a = context.obtainStyledAttributes(null, R.styleable.OPToast, R.attr.OPToastStyle, R.style.Oneplus_DeviceDefault_OPToast);
        int layoutResId = a.getResourceId(R.styleable.OPToast_android_layout, R.layout.op_transient_notification_light);
        a.recycle();
        View v = inflate.inflate(layoutResId, (ViewGroup) null);
        TextView tv = (TextView) v.findViewById(android.R.id.message);
        tv.setText(text);
        setViewAndDuation(result, v, duration);
        return result;
    }

    public static OPToast makeText(Context context, int resId, int duration) throws Resources.NotFoundException {
        return makeText(context, context.getResources().getText(resId), duration);
    }

    private static void setViewAndDuation(OPToast toast, View v, int duration) {
        try {
            Class<?> clazz = OPToast.class.getSuperclass();
            Field mNextView = clazz.getDeclaredField("mNextView");
            Field mDuration = clazz.getDeclaredField("mDuration");
            mNextView.setAccessible(true);
            mNextView.set(toast, v);
            mDuration.setAccessible(true);
            mDuration.set(toast, Integer.valueOf(duration));
        } catch (IllegalAccessException e1) {
            e1.printStackTrace();
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }
}
