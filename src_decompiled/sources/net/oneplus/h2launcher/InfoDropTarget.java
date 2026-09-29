package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Context;
import android.util.AttributeSet;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class InfoDropTarget extends ButtonDropTarget {
    public InfoDropTarget(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public InfoDropTarget(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = getResources().getColor(R.color.info_target_hover_tint);
        setDrawable(R.drawable.ic_info_launcher);
    }

    public static void startDetailsActivityForInfo(Object info, Launcher launcher) {
        UserHandleCompat user;
        ComponentName componentName = null;
        if (info instanceof AppInfo) {
            componentName = ((AppInfo) info).componentName;
        } else if (info instanceof ShortcutInfo) {
            componentName = ((ShortcutInfo) info).intent.getComponent();
        } else if (info instanceof PendingAddItemInfo) {
            componentName = ((PendingAddItemInfo) info).componentName;
        }
        if (info instanceof ItemInfo) {
            user = ((ItemInfo) info).user;
        } else {
            user = UserHandleCompat.myUserHandle();
        }
        if (componentName != null) {
            launcher.startApplicationDetailsActivity(componentName, user);
        }
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    protected boolean supportsDrop(DragSource source, Object info) {
        return source.supportsAppInfoDropTarget() && supportsDrop(getContext(), info);
    }

    public static boolean supportsDrop(Context context, Object info) {
        return (info instanceof AppInfo) || (info instanceof PendingAddItemInfo);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    public void completeDrop(DropTarget.DragObject d) {
        super.completeDrop(d);
        startDetailsActivityForInfo(d.dragInfo, this.mLauncher);
    }
}
