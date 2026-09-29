package com.oneplus.lib.widget.button;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPRadioButton extends OPCompoundButton {
    public OPRadioButton(Context context) {
        this(context, null);
    }

    public OPRadioButton(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.radioButtonStyle);
    }

    public OPRadioButton(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, com.oneplus.commonctrl.R.style.Oneplus_DeviceDefault_Widget_Material_CompoundButton_RadioButton);
    }

    public OPRadioButton(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }

    @Override // com.oneplus.lib.widget.button.OPCompoundButton, android.widget.Checkable
    public void toggle() {
        if (!isChecked()) {
            super.toggle();
        }
    }

    @Override // com.oneplus.lib.widget.button.OPCompoundButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(OPRadioButton.class.getName());
    }

    @Override // com.oneplus.lib.widget.button.OPCompoundButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(OPRadioButton.class.getName());
    }
}
