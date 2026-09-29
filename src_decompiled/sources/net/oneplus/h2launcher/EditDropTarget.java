package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Context;
import android.util.AttributeSet;
import net.oneplus.h2launcher.DropTarget;

/* loaded from: classes.dex */
public class EditDropTarget extends ButtonDropTarget {
    public EditDropTarget(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public EditDropTarget(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = getResources().getColor(R.color.edit_target_hover_tint);
        setDrawable(R.drawable.ic_edit_launcher);
    }

    public static boolean supportsDrop(Object info) {
        boolean isLauncherShortcut = (info instanceof ShortcutInfo) && ((ShortcutInfo) info).itemType != 1;
        return (isLauncherShortcut && isSupportEditFlag(((ShortcutInfo) info).flags)) || (info instanceof AppInfo) || (info instanceof PendingAddItemInfo);
    }

    private static boolean isSupportEditFlag(int flags) {
        return (flags & 12) != 0;
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    protected boolean supportsDrop(DragSource source, Object info) {
        return source.supportsEditDropTarget() && supportsDrop(info);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, net.oneplus.h2launcher.DropTarget
    public void onDrop(DropTarget.DragObject d) {
        d.remove = false;
        d.edit = true;
        super.onDrop(d);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    public void completeDrop(DropTarget.DragObject d) {
        ComponentName componentName = null;
        if (d.dragInfo instanceof AppInfo) {
            componentName = ((AppInfo) d.dragInfo).componentName;
        } else if (d.dragInfo instanceof ShortcutInfo) {
            componentName = ((ShortcutInfo) d.dragInfo).intent.getComponent();
        } else if (d.dragInfo instanceof PendingAddItemInfo) {
            componentName = ((PendingAddItemInfo) d.dragInfo).componentName;
        }
        if (componentName != null && (d.dragInfo instanceof ItemInfo)) {
            this.mLauncher.startApplicationEditDialog(componentName, d.dragView.getDragView(), (ItemInfo) d.dragInfo);
        }
        super.completeDrop(d);
    }
}
