package net.oneplus.h2launcher;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FocusHelper.java */
/* loaded from: classes.dex */
public class HotseatIconKeyEventListener implements View.OnKeyListener {
    @Override // android.view.View.OnKeyListener
    public boolean onKey(View v, int keyCode, KeyEvent event) {
        return FocusHelper.handleHotseatButtonKeyEvent(v, keyCode, event);
    }
}
