package net.oneplus.h2launcher.accessibility;

import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.FolderPagedView;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class FolderAccessibilityHelper extends DragAndDropAccessibilityDelegate {
    private final FolderPagedView mParent;
    private final int mStartPosition;

    public FolderAccessibilityHelper(CellLayout layout) {
        super(layout);
        this.mParent = (FolderPagedView) layout.getParent();
        int index = this.mParent.indexOfChild(layout);
        this.mStartPosition = layout.getCountX() * index * layout.getCountY();
    }

    @Override // net.oneplus.h2launcher.accessibility.DragAndDropAccessibilityDelegate
    protected int intersectsValidDropTarget(int id) {
        return Math.min(id, (this.mParent.getAllocatedContentSize() - this.mStartPosition) - 1);
    }

    @Override // net.oneplus.h2launcher.accessibility.DragAndDropAccessibilityDelegate
    protected String getLocationDescriptionForIconDrop(int id) {
        return this.mContext.getString(R.string.move_to_position, Integer.valueOf(this.mStartPosition + id + 1));
    }

    @Override // net.oneplus.h2launcher.accessibility.DragAndDropAccessibilityDelegate
    protected String getConfirmationForIconDrop(int id) {
        return this.mContext.getString(R.string.item_moved);
    }
}
