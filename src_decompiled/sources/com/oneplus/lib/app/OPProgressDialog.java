package com.oneplus.lib.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.oneplus.commonctrl.R;
import com.oneplus.lib.widget.OPProgressBar;
import java.text.NumberFormat;

/* loaded from: classes.dex */
public class OPProgressDialog extends OPAlertDialog {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;
    private boolean mHasStarted;
    private int mIncrementBy;
    private int mIncrementSecondaryBy;
    private boolean mIndeterminate;
    private Drawable mIndeterminateDrawable;
    private int mMax;
    private CharSequence mMessage;
    private TextView mMessageView;
    private OPProgressBar mProgress;
    private Drawable mProgressDrawable;
    private TextView mProgressNumber;
    private String mProgressNumberFormat;
    private TextView mProgressPercent;
    private NumberFormat mProgressPercentFormat;
    private int mProgressStyle;
    private int mProgressVal;
    private int mSecondaryProgressVal;
    private Handler mViewUpdateHandler;

    public OPProgressDialog(Context context) {
        super(context);
        this.mProgressStyle = 0;
        initFormats();
    }

    public OPProgressDialog(Context context, int theme) {
        super(context, theme);
        this.mProgressStyle = 0;
        initFormats();
    }

    private void initFormats() {
        this.mProgressNumberFormat = "%1d/%2d";
        this.mProgressPercentFormat = NumberFormat.getPercentInstance();
        this.mProgressPercentFormat.setMaximumFractionDigits(0);
    }

    public static OPProgressDialog show(Context context, CharSequence title, CharSequence message) {
        return show(context, title, message, false);
    }

    public static OPProgressDialog show(Context context, CharSequence title, CharSequence message, boolean indeterminate) {
        return show(context, title, message, indeterminate, false, null);
    }

    public static OPProgressDialog show(Context context, CharSequence title, CharSequence message, boolean indeterminate, boolean cancelable) {
        return show(context, title, message, indeterminate, cancelable, null);
    }

    public static OPProgressDialog show(Context context, CharSequence title, CharSequence message, boolean indeterminate, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        OPProgressDialog dialog = new OPProgressDialog(context);
        dialog.setTitle(title);
        dialog.setMessage(message);
        dialog.setIndeterminate(indeterminate);
        dialog.setCancelable(cancelable);
        dialog.setOnCancelListener(cancelListener);
        dialog.show();
        return dialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oneplus.lib.app.OPAlertDialog, android.app.Dialog
    public void onCreate(Bundle savedInstanceState) {
        LayoutInflater inflater = LayoutInflater.from(this.mContext);
        if (this.mProgressStyle == 1) {
            this.mViewUpdateHandler = new Handler() { // from class: com.oneplus.lib.app.OPProgressDialog.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    super.handleMessage(msg);
                    int progress = OPProgressDialog.this.mProgress.getProgress();
                    int max = OPProgressDialog.this.mProgress.getMax();
                    if (OPProgressDialog.this.mProgressNumberFormat != null) {
                        String format = OPProgressDialog.this.mProgressNumberFormat;
                        OPProgressDialog.this.mProgressNumber.setText(String.format(format, Integer.valueOf(progress), Integer.valueOf(max)));
                    } else {
                        OPProgressDialog.this.mProgressNumber.setText("");
                    }
                    if (OPProgressDialog.this.mProgressPercentFormat == null) {
                        OPProgressDialog.this.mProgressPercent.setText("");
                        return;
                    }
                    double percent = progress / max;
                    SpannableString tmp = new SpannableString(OPProgressDialog.this.mProgressPercentFormat.format(percent));
                    tmp.setSpan(new StyleSpan(1), 0, tmp.length(), 33);
                    OPProgressDialog.this.mProgressPercent.setText(tmp);
                }
            };
            View view = inflater.inflate(R.layout.op_alert_dialog_progress_material, (ViewGroup) null);
            this.mProgress = (OPProgressBar) view.findViewById(android.R.id.progress);
            this.mProgressNumber = (TextView) view.findViewById(R.id.progress_number);
            this.mProgressPercent = (TextView) view.findViewById(R.id.progress_percent);
            setView(view);
        } else {
            View view2 = inflater.inflate(R.layout.op_progress_dialog_material, (ViewGroup) null);
            this.mProgress = (OPProgressBar) view2.findViewById(android.R.id.progress);
            this.mMessageView = (TextView) view2.findViewById(android.R.id.message);
            setView(view2);
        }
        if (this.mMax > 0) {
            setMax(this.mMax);
        }
        if (this.mProgressVal > 0) {
            setProgress(this.mProgressVal);
        }
        if (this.mSecondaryProgressVal > 0) {
            setSecondaryProgress(this.mSecondaryProgressVal);
        }
        if (this.mIncrementBy > 0) {
            incrementProgressBy(this.mIncrementBy);
        }
        if (this.mIncrementSecondaryBy > 0) {
            incrementSecondaryProgressBy(this.mIncrementSecondaryBy);
        }
        if (this.mProgressDrawable != null) {
            setProgressDrawable(this.mProgressDrawable);
        }
        if (this.mIndeterminateDrawable != null) {
            setIndeterminateDrawable(this.mIndeterminateDrawable);
        }
        if (this.mMessage != null) {
            setMessage(this.mMessage);
        }
        setIndeterminate(this.mIndeterminate);
        onProgressChanged();
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        this.mHasStarted = true;
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        this.mHasStarted = false;
    }

    public void setProgress(int value) {
        if (this.mHasStarted) {
            this.mProgress.setProgress(value);
            onProgressChanged();
        } else {
            this.mProgressVal = value;
        }
    }

    public void setSecondaryProgress(int secondaryProgress) {
        if (this.mProgress != null) {
            this.mProgress.setSecondaryProgress(secondaryProgress);
            onProgressChanged();
        } else {
            this.mSecondaryProgressVal = secondaryProgress;
        }
    }

    public int getProgress() {
        return this.mProgress != null ? this.mProgress.getProgress() : this.mProgressVal;
    }

    public int getSecondaryProgress() {
        return this.mProgress != null ? this.mProgress.getSecondaryProgress() : this.mSecondaryProgressVal;
    }

    public int getMax() {
        return this.mProgress != null ? this.mProgress.getMax() : this.mMax;
    }

    public void setMax(int max) {
        if (this.mProgress != null) {
            this.mProgress.setMax(max);
            onProgressChanged();
        } else {
            this.mMax = max;
        }
    }

    public void incrementProgressBy(int diff) {
        if (this.mProgress != null) {
            this.mProgress.incrementProgressBy(diff);
            onProgressChanged();
        } else {
            this.mIncrementBy += diff;
        }
    }

    public void incrementSecondaryProgressBy(int diff) {
        if (this.mProgress != null) {
            this.mProgress.incrementSecondaryProgressBy(diff);
            onProgressChanged();
        } else {
            this.mIncrementSecondaryBy += diff;
        }
    }

    public void setProgressDrawable(Drawable d) {
        if (this.mProgress != null) {
            this.mProgress.setProgressDrawable(d);
        } else {
            this.mProgressDrawable = d;
        }
    }

    public void setIndeterminateDrawable(Drawable d) {
        if (this.mProgress != null) {
            this.mProgress.setIndeterminateDrawable(d);
        } else {
            this.mIndeterminateDrawable = d;
        }
    }

    public void setIndeterminate(boolean indeterminate) {
        if (this.mProgress != null) {
            this.mProgress.setIndeterminate(indeterminate);
        } else {
            this.mIndeterminate = indeterminate;
        }
    }

    public boolean isIndeterminate() {
        return this.mProgress != null ? this.mProgress.isIndeterminate() : this.mIndeterminate;
    }

    @Override // com.oneplus.lib.app.OPAlertDialog
    public void setMessage(CharSequence message) {
        if (this.mProgress != null) {
            if (this.mProgressStyle == 1) {
                super.setMessage(message);
                return;
            } else {
                this.mMessageView.setText(message);
                return;
            }
        }
        this.mMessage = message;
    }

    public void setProgressStyle(int style) {
        this.mProgressStyle = style;
    }

    public void setProgressNumberFormat(String format) {
        this.mProgressNumberFormat = format;
        onProgressChanged();
    }

    public void setProgressPercentFormat(NumberFormat format) {
        this.mProgressPercentFormat = format;
        onProgressChanged();
    }

    private void onProgressChanged() {
        if (this.mProgressStyle == 1 && this.mViewUpdateHandler != null && !this.mViewUpdateHandler.hasMessages(0)) {
            this.mViewUpdateHandler.sendEmptyMessage(0);
        }
    }
}
