package net.oneplus.h2launcher.accessibility;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.appwidget.AppWidgetProviderInfo;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AppWidgetResizeFrame;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DeleteDropTarget;
import net.oneplus.h2launcher.DragController;
import net.oneplus.h2launcher.DragSource;
import net.oneplus.h2launcher.Folder;
import net.oneplus.h2launcher.FolderInfo;
import net.oneplus.h2launcher.InfoDropTarget;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppWidgetHostView;
import net.oneplus.h2launcher.LauncherAppWidgetInfo;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.PendingAddItemInfo;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.UninstallDropTarget;
import net.oneplus.h2launcher.Workspace;

@TargetApi(21)
/* loaded from: classes.dex */
public class LauncherAccessibilityDelegate extends View.AccessibilityDelegate implements DragController.DragListener {
    private static final int ADD_TO_WORKSPACE = 2131820544;
    private static final int INFO = 2131820548;
    private static final int MOVE = 2131820551;
    private static final int MOVE_TO_WORKSPACE = 2131820554;
    private static final int REMOVE = 2131820555;
    private static final int RESIZE = 2131820556;
    private static final String TAG = "LauncherAccessibilityDelegate";
    private static final int UNINSTALL = 2131820557;
    private final SparseArray<AccessibilityNodeInfo.AccessibilityAction> mActions = new SparseArray<>();
    private DragInfo mDragInfo = null;
    private AccessibilityDragSource mDragSource = null;
    final Launcher mLauncher;

    /* loaded from: classes.dex */
    public interface AccessibilityDragSource {
        void enableAccessibleDrag(boolean z);

        void startDrag(CellLayout.CellInfo cellInfo, boolean z);
    }

    /* loaded from: classes.dex */
    public static class DragInfo {
        public DragType dragType;
        public ItemInfo info;
        public View item;
    }

    /* loaded from: classes.dex */
    public enum DragType {
        ICON,
        FOLDER,
        WIDGET
    }

    public LauncherAccessibilityDelegate(Launcher launcher) {
        this.mLauncher = launcher;
        this.mActions.put(R.id.action_remove, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_remove, launcher.getText(R.string.delete_target_label)));
        this.mActions.put(R.id.action_info, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_info, launcher.getText(R.string.info_target_label)));
        this.mActions.put(R.id.action_uninstall, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_uninstall, launcher.getText(R.string.delete_target_uninstall_label)));
        this.mActions.put(R.id.action_add_to_workspace, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_add_to_workspace, launcher.getText(R.string.action_add_to_workspace)));
        this.mActions.put(R.id.action_move, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move, launcher.getText(R.string.action_move)));
        this.mActions.put(R.id.action_move_to_workspace, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_to_workspace, launcher.getText(R.string.action_move_to_workspace)));
        this.mActions.put(R.id.action_resize, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_resize, launcher.getText(R.string.action_resize)));
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(host, info);
        if (host.getTag() instanceof ItemInfo) {
            ItemInfo item = (ItemInfo) host.getTag();
            if (DeleteDropTarget.supportsDrop(item)) {
                info.addAction(this.mActions.get(R.id.action_remove));
            }
            if (UninstallDropTarget.supportsDrop(host.getContext(), item)) {
                info.addAction(this.mActions.get(R.id.action_uninstall));
            }
            if (InfoDropTarget.supportsDrop(host.getContext(), item)) {
                info.addAction(this.mActions.get(R.id.action_info));
            }
            if ((item instanceof ShortcutInfo) || (item instanceof LauncherAppWidgetInfo) || (item instanceof FolderInfo)) {
                info.addAction(this.mActions.get(R.id.action_move));
                if (item.container >= 0) {
                    info.addAction(this.mActions.get(R.id.action_move_to_workspace));
                } else if ((item instanceof LauncherAppWidgetInfo) && !getSupportedResizeActions(host, (LauncherAppWidgetInfo) item).isEmpty()) {
                    info.addAction(this.mActions.get(R.id.action_resize));
                }
            }
            if ((item instanceof AppInfo) || (item instanceof PendingAddItemInfo)) {
                info.addAction(this.mActions.get(R.id.action_add_to_workspace));
            }
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View host, int action, Bundle args) {
        if ((host.getTag() instanceof ItemInfo) && performAction(host, (ItemInfo) host.getTag(), action)) {
            return true;
        }
        return super.performAccessibilityAction(host, action, args);
    }

    public boolean performAction(final View host, final ItemInfo item, int action) {
        if (action == R.id.action_remove) {
            if (DeleteDropTarget.removeWorkspaceOrFolderItem(this.mLauncher, item, host)) {
                announceConfirmation(R.string.item_removed);
                return true;
            }
            return false;
        }
        if (action == R.id.action_info) {
            InfoDropTarget.startDetailsActivityForInfo(item, this.mLauncher);
            return true;
        }
        if (action == R.id.action_uninstall) {
            return UninstallDropTarget.startUninstallActivity(this.mLauncher, item);
        }
        if (action == R.id.action_move) {
            beginAccessibleDrag(host, item);
        } else {
            if (action == R.id.action_add_to_workspace) {
                final int[] coordinates = new int[2];
                final long screenId = findSpaceOnWorkspace(item, coordinates);
                this.mLauncher.showWorkspace(true, new Runnable() { // from class: net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (item instanceof AppInfo) {
                            ShortcutInfo info = ((AppInfo) item).makeShortcut();
                            LauncherModel.addItemToDatabase(LauncherAccessibilityDelegate.this.mLauncher, info, -100L, screenId, coordinates[0], coordinates[1]);
                            ArrayList<ItemInfo> itemList = new ArrayList<>();
                            itemList.add(info);
                            LauncherAccessibilityDelegate.this.mLauncher.bindItems(itemList, 0, itemList.size(), true);
                        } else if (item instanceof PendingAddItemInfo) {
                            PendingAddItemInfo info2 = (PendingAddItemInfo) item;
                            Workspace workspace = LauncherAccessibilityDelegate.this.mLauncher.getWorkspace();
                            workspace.snapToPage(workspace.getPageIndexForScreenId(screenId));
                            LauncherAccessibilityDelegate.this.mLauncher.addPendingItem(info2, -100L, screenId, coordinates, info2.spanX, info2.spanY);
                        }
                        LauncherAccessibilityDelegate.this.announceConfirmation(R.string.item_added_to_workspace);
                    }
                });
                return true;
            }
            if (action == R.id.action_move_to_workspace) {
                Folder folder = this.mLauncher.getWorkspace().getOpenFolder();
                this.mLauncher.closeFolder(folder, true);
                ShortcutInfo info = (ShortcutInfo) item;
                folder.getInfo().remove(info);
                int[] coordinates2 = new int[2];
                long screenId2 = findSpaceOnWorkspace(item, coordinates2);
                LauncherModel.moveItemInDatabase(this.mLauncher, info, -100L, screenId2, coordinates2[0], coordinates2[1]);
                new Handler().post(new Runnable() { // from class: net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList<ItemInfo> itemList = new ArrayList<>();
                        itemList.add(item);
                        LauncherAccessibilityDelegate.this.mLauncher.bindItems(itemList, 0, itemList.size(), true);
                        LauncherAccessibilityDelegate.this.announceConfirmation(R.string.item_moved);
                    }
                });
            } else if (action == R.id.action_resize) {
                final LauncherAppWidgetInfo info2 = (LauncherAppWidgetInfo) item;
                final ArrayList<Integer> actions = getSupportedResizeActions(host, info2);
                CharSequence[] labels = new CharSequence[actions.size()];
                for (int i = 0; i < actions.size(); i++) {
                    labels[i] = this.mLauncher.getText(actions.get(i).intValue());
                }
                new AlertDialog.Builder(this.mLauncher).setTitle(R.string.action_resize).setItems(labels, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherAccessibilityDelegate.this.performResizeAction(((Integer) actions.get(which)).intValue(), host, info2);
                        dialog.dismiss();
                    }
                }).show();
            }
        }
        return false;
    }

    private ArrayList<Integer> getSupportedResizeActions(View host, LauncherAppWidgetInfo info) {
        ArrayList<Integer> actions = new ArrayList<>();
        AppWidgetProviderInfo providerInfo = ((LauncherAppWidgetHostView) host).getAppWidgetInfo();
        if (providerInfo != null) {
            CellLayout layout = (CellLayout) host.getParent().getParent();
            if ((providerInfo.resizeMode & 1) != 0) {
                if (layout.isRegionVacant(info.cellX + info.spanX, info.cellY, 1, info.spanY) || layout.isRegionVacant(info.cellX - 1, info.cellY, 1, info.spanY)) {
                    actions.add(Integer.valueOf(R.string.action_increase_width));
                }
                if (info.spanX > info.minSpanX && info.spanX > 1) {
                    actions.add(Integer.valueOf(R.string.action_decrease_width));
                }
            }
            if ((providerInfo.resizeMode & 2) != 0) {
                if (layout.isRegionVacant(info.cellX, info.cellY + info.spanY, info.spanX, 1) || layout.isRegionVacant(info.cellX, info.cellY - 1, info.spanX, 1)) {
                    actions.add(Integer.valueOf(R.string.action_increase_height));
                }
                if (info.spanY > info.minSpanY && info.spanY > 1) {
                    actions.add(Integer.valueOf(R.string.action_decrease_height));
                }
            }
        }
        return actions;
    }

    void performResizeAction(int action, View host, LauncherAppWidgetInfo info) {
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams) host.getLayoutParams();
        CellLayout layout = (CellLayout) host.getParent().getParent();
        layout.markCellsAsUnoccupiedForView(host);
        if (action == R.string.action_increase_width) {
            if ((host.getLayoutDirection() == 1 && layout.isRegionVacant(info.cellX - 1, info.cellY, 1, info.spanY)) || !layout.isRegionVacant(info.cellX + info.spanX, info.cellY, 1, info.spanY)) {
                lp.cellX--;
                info.cellX--;
            }
            lp.cellHSpan++;
            info.spanX++;
        } else if (action == R.string.action_decrease_width) {
            lp.cellHSpan--;
            info.spanX--;
        } else if (action == R.string.action_increase_height) {
            if (!layout.isRegionVacant(info.cellX, info.cellY + info.spanY, info.spanX, 1)) {
                lp.cellY--;
                info.cellY--;
            }
            lp.cellVSpan++;
            info.spanY++;
        } else if (action == R.string.action_decrease_height) {
            lp.cellVSpan--;
            info.spanY--;
        }
        layout.markCellsAsOccupiedForView(host);
        Rect sizeRange = new Rect();
        AppWidgetResizeFrame.getWidgetSizeRanges(this.mLauncher, info.spanX, info.spanY, sizeRange);
        ((LauncherAppWidgetHostView) host).updateAppWidgetSize(null, sizeRange.left, sizeRange.top, sizeRange.right, sizeRange.bottom);
        host.requestLayout();
        LauncherModel.updateItemInDatabase(this.mLauncher, info);
        announceConfirmation(this.mLauncher.getString(R.string.widget_resized, new Object[]{Integer.valueOf(info.spanX), Integer.valueOf(info.spanY)}));
    }

    void announceConfirmation(int resId) {
        announceConfirmation(this.mLauncher.getResources().getString(resId));
    }

    void announceConfirmation(String confirmation) {
        this.mLauncher.getDragLayer().announceForAccessibility(confirmation);
    }

    public boolean isInAccessibleDrag() {
        return this.mDragInfo != null;
    }

    public DragInfo getDragInfo() {
        return this.mDragInfo;
    }

    public void handleAccessibleDrop(View clickedTarget, Rect dropLocation, String confirmation) {
        if (isInAccessibleDrag()) {
            int[] loc = new int[2];
            if (dropLocation == null) {
                loc[0] = clickedTarget.getWidth() / 2;
                loc[1] = clickedTarget.getHeight() / 2;
            } else {
                loc[0] = dropLocation.centerX();
                loc[1] = dropLocation.centerY();
            }
            this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(clickedTarget, loc);
            this.mLauncher.getDragController().completeAccessibleDrag(loc);
            if (!TextUtils.isEmpty(confirmation)) {
                announceConfirmation(confirmation);
            }
        }
    }

    public void beginAccessibleDrag(View item, ItemInfo info) {
        this.mDragInfo = new DragInfo();
        this.mDragInfo.info = info;
        this.mDragInfo.item = item;
        this.mDragInfo.dragType = DragType.ICON;
        if (info instanceof FolderInfo) {
            this.mDragInfo.dragType = DragType.FOLDER;
        } else if (info instanceof LauncherAppWidgetInfo) {
            this.mDragInfo.dragType = DragType.WIDGET;
        }
        CellLayout.CellInfo cellInfo = new CellLayout.CellInfo(item, info);
        Rect pos = new Rect();
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(item, pos);
        this.mLauncher.getDragController().prepareAccessibleDrag(pos.centerX(), pos.centerY());
        Workspace workspace = this.mLauncher.getWorkspace();
        Folder folder = workspace.getOpenFolder();
        if (folder != null) {
            if (folder.getItemsInReadingOrder().contains(item)) {
                this.mDragSource = folder;
            } else {
                this.mLauncher.closeFolder();
            }
        }
        if (this.mDragSource == null) {
            this.mDragSource = workspace;
        }
        this.mDragSource.enableAccessibleDrag(true);
        this.mDragSource.startDrag(cellInfo, true);
        if (this.mLauncher.getDragController().isDragging()) {
            this.mLauncher.getDragController().addDragListener(this);
        }
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragStart(DragSource source, Object info, int dragAction) {
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragEnd() {
        this.mLauncher.getDragController().removeDragListener(this);
        this.mDragInfo = null;
        if (this.mDragSource != null) {
            this.mDragSource.enableAccessibleDrag(false);
            this.mDragSource = null;
        }
    }

    private long findSpaceOnWorkspace(ItemInfo info, int[] outCoordinates) {
        Workspace workspace = this.mLauncher.getWorkspace();
        ArrayList<Long> workspaceScreens = workspace.getScreenOrder();
        int screenIndex = workspace.getCurrentPage();
        long screenId = workspaceScreens.get(screenIndex).longValue();
        CellLayout layout = (CellLayout) workspace.getPageAt(screenIndex);
        boolean found = layout.findCellForSpan(outCoordinates, info.spanX, info.spanY);
        for (int screenIndex2 = workspace.hasCustomContent() ? 1 : 0; !found && screenIndex2 < workspaceScreens.size(); screenIndex2++) {
            screenId = workspaceScreens.get(screenIndex2).longValue();
            CellLayout layout2 = (CellLayout) workspace.getPageAt(screenIndex2);
            found = layout2.findCellForSpan(outCoordinates, info.spanX, info.spanY);
        }
        if (found) {
            return screenId;
        }
        workspace.addExtraEmptyScreen();
        long screenId2 = workspace.commitExtraEmptyScreen();
        CellLayout layout3 = workspace.getScreenWithId(screenId2);
        boolean found2 = layout3.findCellForSpan(outCoordinates, info.spanX, info.spanY);
        if (!found2) {
            Log.wtf(TAG, "Not enough space on an empty screen");
        }
        return screenId2;
    }
}
