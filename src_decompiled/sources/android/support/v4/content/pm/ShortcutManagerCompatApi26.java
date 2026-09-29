package android.support.v4.content.pm;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ShortcutManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@RequiresApi(26)
/* loaded from: classes.dex */
class ShortcutManagerCompatApi26 {
    ShortcutManagerCompatApi26() {
    }

    public static boolean isRequestPinShortcutSupported(Context context) {
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).isRequestPinShortcutSupported();
    }

    public static boolean requestPinShortcut(Context context, @NonNull ShortcutInfoCompat shortcut, @Nullable IntentSender callback) {
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).requestPinShortcut(shortcut.toShortcutInfo(), callback);
    }

    @Nullable
    public static Intent createShortcutResultIntent(Context context, @NonNull ShortcutInfoCompat shortcut) {
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).createShortcutResultIntent(shortcut.toShortcutInfo());
    }
}
