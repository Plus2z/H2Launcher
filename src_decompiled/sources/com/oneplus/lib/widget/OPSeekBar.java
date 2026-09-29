package com.oneplus.lib.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.widget.util.utils;

/* loaded from: classes.dex */
public class OPSeekBar extends OPAbsSeekBar {
    private OnSeekBarChangeListener mOnSeekBarChangeListener;

    /* loaded from: classes.dex */
    public interface OnSeekBarChangeListener {
        void onProgressChanged(OPSeekBar oPSeekBar, int i, boolean z);

        void onStartTrackingTouch(OPSeekBar oPSeekBar);

        void onStopTrackingTouch(OPSeekBar oPSeekBar);
    }

    public OPSeekBar(Context context) {
        this(context, null);
    }

    public OPSeekBar(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.OPSeekBarStyle);
    }

    public OPSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.style.Oneplus_DeviceDefault_Widget_Material_SeekBar);
    }

    public OPSeekBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, utils.resolveDefStyleAttr(context, defStyleAttr), defStyleRes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.oneplus.lib.widget.OPAbsSeekBar, com.oneplus.lib.widget.OPProgressBar
    public void onProgressRefresh(float scale, boolean fromUser, int progress) {
        super.onProgressRefresh(scale, fromUser, progress);
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onProgressChanged(this, progress, fromUser);
        }
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener l) {
        this.mOnSeekBarChangeListener = l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.oneplus.lib.widget.OPAbsSeekBar
    public void onStartTrackingTouch() {
        super.onStartTrackingTouch();
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onStartTrackingTouch(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.oneplus.lib.widget.OPAbsSeekBar
    public void onStopTrackingTouch() {
        super.onStopTrackingTouch();
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onStopTrackingTouch(this);
        }
    }

    @Override // com.oneplus.lib.widget.OPAbsSeekBar, com.oneplus.lib.widget.OPProgressBar, android.view.View
    public CharSequence getAccessibilityClassName() {
        return OPSeekBar.class.getName();
    }
}
