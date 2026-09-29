package com.oneplus.lib.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.EditText;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPEditText extends EditText {
    static final String TAG = "OPListView";
    private Drawable mBackground;
    private Context mContext;
    private Drawable mErrorBackground;

    public OPEditText(Context context) {
        this(context, null);
    }

    public OPEditText(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.OPEditTextStyle);
    }

    public OPEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.Oneplus_DeviceDefault_Widget_Material_EditText);
    }

    public OPEditText(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
        this.mContext = null;
        this.mBackground = null;
        this.mErrorBackground = null;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        Log.i(TAG, "OPEditText init");
        this.mContext = context;
        TypedArray a = this.mContext.obtainStyledAttributes(attrs, R.styleable.OPEditText, R.attr.OPEditTextStyle, R.style.Oneplus_DeviceDefault_Widget_Material_EditText);
        this.mBackground = a.getDrawable(R.styleable.OPEditText_android_background);
        this.mErrorBackground = a.getDrawable(R.styleable.OPEditText_colorError);
        a.recycle();
        if (this.mBackground == null) {
            this.mBackground = getETBackground();
            this.mErrorBackground = getETErrBackground();
        }
    }

    @Override // android.widget.TextView
    public void setError(CharSequence error) {
        super.setError(error);
        Log.i(TAG, "OPEditText setError");
        if (error != null) {
            setBackground(this.mErrorBackground);
        } else {
            setBackground(this.mBackground);
        }
    }

    private Drawable getETBackground() {
        return getResources().getDrawable(R.drawable.op_edit_text_material_light, this.mContext.getTheme());
    }

    private Drawable getETErrBackground() {
        return getResources().getDrawable(R.drawable.op_edit_text_error_material_light, this.mContext.getTheme());
    }
}
