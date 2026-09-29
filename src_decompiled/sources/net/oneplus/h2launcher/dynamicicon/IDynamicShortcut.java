package net.oneplus.h2launcher.dynamicicon;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Map;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.FastBitmapDrawable;

/* loaded from: classes.dex */
public interface IDynamicShortcut {
    BubbleTextView createShortcutView(Context context, ViewGroup viewGroup, boolean z, int i);

    Map<String, Object> getCurrentData();

    FastBitmapDrawable getStaticDrawable();

    void initFlags();

    boolean isRunningAnimation();

    boolean needInvalidate();

    boolean needRegisterDataProvider();

    void onAnimationEnd();

    void onAnimationStart();

    void onDataChanged();

    void refreshConfig();

    void registerDataProvider();

    boolean requestData();

    void unregisterDataProvider();

    void updateIconCache();
}
