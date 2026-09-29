package android.support.v4.view;

import android.view.MenuItem;

/* loaded from: classes.dex */
public final class MenuCompat {
    @Deprecated
    public static void setShowAsAction(MenuItem item, int actionEnum) {
        item.setShowAsAction(actionEnum);
    }

    private MenuCompat() {
    }
}
