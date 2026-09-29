package net.oneplus.h2launcher.quickpage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

/* loaded from: classes.dex */
public class EditTextBackEvent extends EditText {
    private EditTextImeBackListener mOnImeBack;

    /* loaded from: classes.dex */
    public interface EditTextImeBackListener {
        void onImeBack();
    }

    public EditTextBackEvent(Context context) {
        super(context);
    }

    public EditTextBackEvent(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public EditTextBackEvent(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        if (event.getKeyCode() == 4 && event.getAction() == 1 && this.mOnImeBack != null) {
            this.mOnImeBack.onImeBack();
        }
        return super.dispatchKeyEvent(event);
    }

    public void setOnEditTextImeBackListener(EditTextImeBackListener listener) {
        this.mOnImeBack = listener;
    }
}
