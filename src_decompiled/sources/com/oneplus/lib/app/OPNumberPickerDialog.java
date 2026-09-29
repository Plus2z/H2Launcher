package com.oneplus.lib.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;
import android.widget.TextView;
import com.oneplus.commonctrl.R;

/* loaded from: classes.dex */
public class OPNumberPickerDialog extends OPAlertDialog implements DialogInterface.OnClickListener {
    private final int OP_NUMBER_PICKER_DEFAULT_MAX_VALUE;
    private final int OP_NUMBER_PICKER_DEFAULT_MIN_VALUE;
    private int mMaxValue;
    private TextView mMin;
    private int mMinValue;
    private NumberPicker mNumberPicker;
    private OnNumberSetListener mNumberSetListener;
    private int mPlurals;
    private int mValue;

    /* loaded from: classes.dex */
    public interface OnNumberSetListener {
        void onNumberSet(NumberPicker numberPicker, int i);
    }

    public OPNumberPickerDialog(Context context) {
        this(context, 0);
    }

    public OPNumberPickerDialog(Context context, int themeResId) {
        super(context, themeResId);
        this.OP_NUMBER_PICKER_DEFAULT_MIN_VALUE = 1;
        this.OP_NUMBER_PICKER_DEFAULT_MAX_VALUE = 60;
        this.mValue = 1;
        this.mMinValue = 1;
        this.mMaxValue = 60;
    }

    public OPNumberPickerDialog(Context context, OnNumberSetListener listener) {
        this(context, 0, listener);
    }

    public OPNumberPickerDialog(Context context, int themeResId, OnNumberSetListener listener) {
        super(context, themeResId);
        this.OP_NUMBER_PICKER_DEFAULT_MIN_VALUE = 1;
        this.OP_NUMBER_PICKER_DEFAULT_MAX_VALUE = 60;
        this.mValue = 1;
        this.mMinValue = 1;
        this.mMaxValue = 60;
        this.mNumberSetListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oneplus.lib.app.OPAlertDialog, android.app.Dialog
    public void onCreate(Bundle savedInstanceState) {
        LayoutInflater inflater = LayoutInflater.from(this.mContext);
        View view = inflater.inflate(R.layout.op_number_picker_dialog, (ViewGroup) null);
        this.mNumberPicker = (NumberPicker) view.findViewById(R.id.numberPicker);
        this.mNumberPicker.setMinValue(1);
        this.mNumberPicker.setMaxValue(30);
        this.mNumberPicker.setValue(this.mValue);
        this.mMin = (TextView) view.findViewById(R.id.min);
        updateMinutes();
        this.mNumberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.oneplus.lib.app.OPNumberPickerDialog.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker picker, int oldVal, int newVal) {
                OPNumberPickerDialog.this.updateMinutes();
            }
        });
        setButton(-1, this.mContext.getString(android.R.string.ok), this);
        setButton(-2, this.mContext.getString(android.R.string.cancel), this);
        setView(view);
        super.onCreate(savedInstanceState);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialog, int which) {
        switch (which) {
            case -2:
                cancel();
                return;
            case -1:
                if (this.mNumberSetListener != null) {
                    this.mNumberSetListener.onNumberSet(this.mNumberPicker, this.mNumberPicker.getValue());
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void setValue(int value) {
        this.mValue = value;
    }

    public void setMinValue(int minValue) {
        this.mMinValue = minValue;
    }

    public void setMaxValue(int maxValue) {
        this.mMinValue = maxValue;
    }

    public int getValue() {
        return this.mValue;
    }

    public int getMinValue() {
        return this.mMinValue;
    }

    public int getMaxValue() {
        return this.mMinValue;
    }

    public void updateNumber(int number) {
        this.mNumberPicker.setValue(number);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMinutes() {
        if (this.mPlurals != 0) {
            this.mMin.setText(String.format(this.mContext.getResources().getQuantityText(this.mPlurals, this.mNumberPicker.getValue()).toString(), new Object[0]));
        }
    }

    public void setPlurals(int p) {
        this.mPlurals = p;
    }
}
