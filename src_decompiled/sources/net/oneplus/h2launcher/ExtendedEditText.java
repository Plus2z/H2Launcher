package net.oneplus.h2launcher;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* loaded from: classes.dex */
public class ExtendedEditText extends EditText {
    private OnBackKeyListener mBackKeyListener;

    /* loaded from: classes.dex */
    public interface OnBackKeyListener {
        boolean onBackKey();
    }

    public ExtendedEditText(Context context) {
        super(context);
    }

    public ExtendedEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ExtendedEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setOnBackKeyListener(OnBackKeyListener listener) {
        this.mBackKeyListener = listener;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 1) {
            if (this.mBackKeyListener != null) {
                return this.mBackKeyListener.onBackKey();
            }
            return false;
        }
        return super.onKeyPreIme(keyCode, event);
    }

    public void showKeyboard() {
        showSoftInput();
    }

    protected boolean showSoftInput() {
        return requestFocus() && ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 1);
    }
}
