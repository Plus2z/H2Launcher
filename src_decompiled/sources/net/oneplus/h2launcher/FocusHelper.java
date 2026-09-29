package net.oneplus.h2launcher;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.FocusLogic;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class FocusHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "FocusHelper";

    /* loaded from: classes.dex */
    public static class PagedFolderKeyEventListener implements View.OnKeyListener {
        private final Folder mFolder;

        public PagedFolderKeyEventListener(Folder folder) {
            this.mFolder = folder;
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View v, int keyCode, KeyEvent e) {
            boolean consume = FocusLogic.shouldConsume(keyCode);
            if (e.getAction() != 1) {
                if (!(v.getParent() instanceof ShortcutAndWidgetContainer)) {
                    if (LauncherAppState.isDogfoodBuild()) {
                        throw new IllegalStateException("Parent of the focused item is not supported.");
                    }
                    return false;
                }
                ShortcutAndWidgetContainer itemContainer = (ShortcutAndWidgetContainer) v.getParent();
                CellLayout cellLayout = (CellLayout) itemContainer.getParent();
                int countX = cellLayout.getCountX();
                int countY = cellLayout.getCountY();
                int iconIndex = itemContainer.indexOfChild(v);
                FolderPagedView pagedView = (FolderPagedView) cellLayout.getParent();
                int pageIndex = pagedView.indexOfChild(cellLayout);
                int pageCount = pagedView.getPageCount();
                boolean isLayoutRtl = Utilities.isRtl(v.getResources());
                int[][] matrix = FocusLogic.createSparseMatrix(cellLayout);
                int newIconIndex = FocusLogic.handleKeyEvent(keyCode, countX, countY, matrix, iconIndex, pageIndex, pageCount, isLayoutRtl);
                if (newIconIndex == -1) {
                    handleNoopKey(keyCode, v);
                    return consume;
                }
                View child = null;
                switch (newIconIndex) {
                    case FocusLogic.NEXT_PAGE_RIGHT_COLUMN /* -10 */:
                    case FocusLogic.NEXT_PAGE_LEFT_COLUMN /* -9 */:
                        ShortcutAndWidgetContainer newParent = FocusHelper.getCellLayoutChildrenForIndex(pagedView, pageIndex + 1);
                        if (newParent != null) {
                            pagedView.snapToPage(pageIndex + 1);
                            child = FocusLogic.getAdjacentChildInNextPage(newParent, v, newIconIndex);
                            break;
                        }
                        break;
                    case FocusLogic.NEXT_PAGE_FIRST_ITEM /* -8 */:
                        ShortcutAndWidgetContainer newParent2 = FocusHelper.getCellLayoutChildrenForIndex(pagedView, pageIndex + 1);
                        if (newParent2 != null) {
                            pagedView.snapToPage(pageIndex + 1);
                            child = newParent2.getChildAt(0, 0);
                            break;
                        }
                        break;
                    case FocusLogic.CURRENT_PAGE_LAST_ITEM /* -7 */:
                        child = pagedView.getLastItem();
                        break;
                    case FocusLogic.CURRENT_PAGE_FIRST_ITEM /* -6 */:
                        child = cellLayout.getChildAt(0, 0);
                        break;
                    case FocusLogic.PREVIOUS_PAGE_LEFT_COLUMN /* -5 */:
                    case -2:
                        ShortcutAndWidgetContainer newParent3 = FocusHelper.getCellLayoutChildrenForIndex(pagedView, pageIndex - 1);
                        if (newParent3 != null) {
                            int row = ((CellLayout.LayoutParams) v.getLayoutParams()).cellY;
                            pagedView.snapToPage(pageIndex - 1);
                            child = newParent3.getChildAt((newIconIndex == -5) ^ newParent3.invertLayoutHorizontally() ? 0 : countX - 1, row);
                            break;
                        }
                        break;
                    case -4:
                        ShortcutAndWidgetContainer newParent4 = FocusHelper.getCellLayoutChildrenForIndex(pagedView, pageIndex - 1);
                        if (newParent4 != null) {
                            pagedView.snapToPage(pageIndex - 1);
                            child = newParent4.getChildAt(countX - 1, countY - 1);
                            break;
                        }
                        break;
                    case -3:
                        ShortcutAndWidgetContainer newParent5 = FocusHelper.getCellLayoutChildrenForIndex(pagedView, pageIndex - 1);
                        if (newParent5 != null) {
                            pagedView.snapToPage(pageIndex - 1);
                            child = newParent5.getChildAt(0, 0);
                            break;
                        }
                        break;
                    default:
                        child = itemContainer.getChildAt(newIconIndex);
                        break;
                }
                if (child != null) {
                    child.requestFocus();
                    FocusHelper.playSoundEffect(keyCode, v);
                    return consume;
                }
                handleNoopKey(keyCode, v);
                return consume;
            }
            return consume;
        }

        public void handleNoopKey(int keyCode, View v) {
            if (keyCode == 20) {
                this.mFolder.mFolderName.requestFocus();
                FocusHelper.playSoundEffect(keyCode, v);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handleHotseatButtonKeyEvent(View v, int keyCode, KeyEvent e) {
        boolean consume = FocusLogic.shouldConsume(keyCode);
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (e.getAction() != 1 && consume && launcher != null) {
            DeviceProfile profile = launcher.getDeviceProfile();
            ShortcutAndWidgetContainer hotseatParent = (ShortcutAndWidgetContainer) v.getParent();
            CellLayout hotseatLayout = (CellLayout) hotseatParent.getParent();
            Hotseat hotseat = (Hotseat) hotseatLayout.getParent();
            if (hotseat == null) {
                Logger.d(TAG, "[handleHotseatButtonKeyEvent] hotseat is null.");
            } else {
                Workspace workspace = (Workspace) v.getRootView().findViewById(R.id.workspace);
                int pageIndex = workspace.getNextPage();
                int pageCount = workspace.getChildCount();
                int countX = -1;
                int countY = -1;
                int iconIndex = hotseatParent.indexOfChild(v);
                int iconRank = ((CellLayout.LayoutParams) hotseatLayout.getShortcutsAndWidgets().getChildAt(iconIndex).getLayoutParams()).cellX;
                CellLayout iconLayout = (CellLayout) workspace.getChildAt(pageIndex);
                if (iconLayout != null) {
                    ViewGroup iconParent = iconLayout.getShortcutsAndWidgets();
                    ViewGroup parent = null;
                    int[][] matrix = (int[][]) null;
                    if (keyCode == 19 && !profile.isVerticalBarLayout()) {
                        matrix = FocusLogic.createSparseMatrix(iconLayout, hotseatLayout, true, profile.inv.hotseatAllAppsRank, iconRank == profile.inv.hotseatAllAppsRank);
                        iconIndex += iconParent.getChildCount();
                        countX = iconLayout.getCountX();
                        countY = iconLayout.getCountY() + hotseatLayout.getCountY();
                        parent = iconParent;
                    } else if (keyCode == 21 && profile.isVerticalBarLayout()) {
                        matrix = FocusLogic.createSparseMatrix(iconLayout, hotseatLayout, false, profile.inv.hotseatAllAppsRank, iconRank == profile.inv.hotseatAllAppsRank);
                        iconIndex += iconParent.getChildCount();
                        countX = iconLayout.getCountX() + hotseatLayout.getCountX();
                        countY = iconLayout.getCountY();
                        parent = iconParent;
                    } else if (keyCode == 22 && profile.isVerticalBarLayout()) {
                        keyCode = 93;
                    } else {
                        matrix = FocusLogic.createSparseMatrix(hotseatLayout);
                        countX = hotseatLayout.getCountX();
                        countY = hotseatLayout.getCountY();
                        parent = hotseatParent;
                    }
                    int newIconIndex = FocusLogic.handleKeyEvent(keyCode, countX, countY, matrix, iconIndex, pageIndex, pageCount, Utilities.isRtl(v.getResources()));
                    View newIcon = null;
                    if (newIconIndex == -8) {
                        parent = getCellLayoutChildrenForIndex(workspace, pageIndex + 1);
                        newIcon = parent.getChildAt(0);
                        workspace.snapToPage(pageIndex + 1);
                    }
                    if (parent == iconParent && newIconIndex >= iconParent.getChildCount()) {
                        newIconIndex -= iconParent.getChildCount();
                    }
                    if (parent != null) {
                        if (newIcon == null && newIconIndex >= 0) {
                            newIcon = parent.getChildAt(newIconIndex);
                        }
                        if (newIcon != null) {
                            newIcon.requestFocus();
                            playSoundEffect(keyCode, v);
                        }
                    }
                }
            }
        }
        return consume;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handleIconKeyEvent(View v, int keyCode, KeyEvent e) {
        int[][] matrix;
        boolean consume = FocusLogic.shouldConsume(keyCode);
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        if (e.getAction() != 1 && consume && launcher != null) {
            DeviceProfile profile = launcher.getDeviceProfile();
            CellLayout hotseatLayout = null;
            ShortcutAndWidgetContainer hotseatParent = null;
            ShortcutAndWidgetContainer parent = (ShortcutAndWidgetContainer) v.getParent();
            CellLayout iconLayout = (CellLayout) parent.getParent();
            Workspace workspace = (Workspace) iconLayout.getParent();
            ViewGroup dragLayer = (ViewGroup) workspace.getParent();
            ViewGroup tabs = (ViewGroup) dragLayer.findViewById(R.id.search_drop_target_bar);
            Hotseat hotseat = (Hotseat) dragLayer.findViewById(R.id.hotseat);
            if (StyleManager.getInstance().showHotSeat()) {
                if (hotseat == null) {
                    Logger.d(TAG, "[handleIconKeyEvent] hotseat is null.");
                } else {
                    hotseatLayout = (CellLayout) hotseat.getChildAt(0);
                    hotseatParent = hotseatLayout.getShortcutsAndWidgets();
                }
            }
            int iconIndex = parent.indexOfChild(v);
            int pageIndex = workspace.indexOfChild(iconLayout);
            int pageCount = workspace.getChildCount();
            int countX = iconLayout.getCountX();
            int countY = iconLayout.getCountY();
            if (keyCode == 20 && !profile.isVerticalBarLayout() && hotseatLayout != null) {
                matrix = FocusLogic.createSparseMatrix(iconLayout, hotseatLayout, true, profile.inv.hotseatAllAppsRank, !hotseat.hasIcons());
                countY++;
            } else if (keyCode == 22 && profile.isVerticalBarLayout() && hotseatLayout != null) {
                matrix = FocusLogic.createSparseMatrix(iconLayout, hotseatLayout, false, profile.inv.hotseatAllAppsRank, !hotseat.hasIcons());
                countX++;
            } else if (keyCode == 67 || keyCode == 112) {
                if (StyleManager.getInstance().showAllApps()) {
                    workspace.removeWorkspaceItem(v);
                } else {
                    Logger.d(TAG, "[handleIconKeyEvent] KEYCODE_DEL - Has no all apps view, do nothing.");
                }
            } else {
                matrix = FocusLogic.createSparseMatrix(iconLayout);
            }
            int newIconIndex = FocusLogic.handleKeyEvent(keyCode, countX, countY, matrix, iconIndex, pageIndex, pageCount, Utilities.isRtl(v.getResources()));
            View newIcon = null;
            switch (newIconIndex) {
                case FocusLogic.NEXT_PAGE_RIGHT_COLUMN /* -10 */:
                case -2:
                    int newPageIndex = pageIndex - 1;
                    if (newIconIndex == -10) {
                        newPageIndex = pageIndex + 1;
                    }
                    int row = ((CellLayout.LayoutParams) v.getLayoutParams()).cellY;
                    ShortcutAndWidgetContainer parent2 = getCellLayoutChildrenForIndex(workspace, newPageIndex);
                    workspace.snapToPage(newPageIndex);
                    if (parent2 != null) {
                        workspace.snapToPage(newPageIndex);
                        CellLayout iconLayout2 = (CellLayout) parent2.getParent();
                        int[][] matrix2 = FocusLogic.createSparseMatrix(iconLayout2, iconLayout2.getCountX(), row);
                        newIcon = parent2.getChildAt(FocusLogic.handleKeyEvent(keyCode, countX + 1, countY, matrix2, 100, newPageIndex, pageCount, Utilities.isRtl(v.getResources())));
                        break;
                    }
                    break;
                case FocusLogic.NEXT_PAGE_LEFT_COLUMN /* -9 */:
                case FocusLogic.PREVIOUS_PAGE_LEFT_COLUMN /* -5 */:
                    int newPageIndex2 = pageIndex + 1;
                    if (newIconIndex == -5) {
                        newPageIndex2 = pageIndex - 1;
                    }
                    workspace.snapToPage(newPageIndex2);
                    int row2 = ((CellLayout.LayoutParams) v.getLayoutParams()).cellY;
                    ShortcutAndWidgetContainer parent3 = getCellLayoutChildrenForIndex(workspace, newPageIndex2);
                    if (parent3 != null) {
                        workspace.snapToPage(newPageIndex2);
                        int[][] matrix3 = FocusLogic.createSparseMatrix((CellLayout) parent3.getParent(), -1, row2);
                        newIcon = parent3.getChildAt(FocusLogic.handleKeyEvent(keyCode, countX + 1, countY, matrix3, 100, newPageIndex2, pageCount, Utilities.isRtl(v.getResources())));
                        break;
                    }
                    break;
                case FocusLogic.NEXT_PAGE_FIRST_ITEM /* -8 */:
                    newIcon = getCellLayoutChildrenForIndex(workspace, pageIndex + 1).getChildAt(0);
                    workspace.snapToPage(pageIndex + 1);
                    break;
                case FocusLogic.CURRENT_PAGE_LAST_ITEM /* -7 */:
                    newIcon = parent.getChildAt(parent.getChildCount() - 1);
                    break;
                case FocusLogic.CURRENT_PAGE_FIRST_ITEM /* -6 */:
                    newIcon = parent.getChildAt(0);
                    break;
                case -4:
                    newIcon = getCellLayoutChildrenForIndex(workspace, pageIndex - 1).getChildAt(r26.getChildCount() - 1);
                    workspace.snapToPage(pageIndex - 1);
                    break;
                case -3:
                    newIcon = getCellLayoutChildrenForIndex(workspace, pageIndex - 1).getChildAt(0);
                    workspace.snapToPage(pageIndex - 1);
                    break;
                case -1:
                    if (keyCode == 19) {
                        newIcon = tabs;
                        break;
                    }
                    break;
                default:
                    if (newIconIndex >= 0 && newIconIndex < parent.getChildCount()) {
                        newIcon = parent.getChildAt(newIconIndex);
                        break;
                    } else if (hotseatParent != null && parent.getChildCount() <= newIconIndex && newIconIndex < parent.getChildCount() + hotseatParent.getChildCount()) {
                        newIcon = hotseatParent.getChildAt(newIconIndex - parent.getChildCount());
                        break;
                    }
                    break;
            }
            if (newIcon != null) {
                newIcon.requestFocus();
                playSoundEffect(keyCode, v);
            }
        }
        return consume;
    }

    static ShortcutAndWidgetContainer getCellLayoutChildrenForIndex(ViewGroup container, int i) {
        CellLayout parent = (CellLayout) container.getChildAt(i);
        return parent.getShortcutsAndWidgets();
    }

    static void playSoundEffect(int keyCode, View v) {
        switch (keyCode) {
            case 19:
            case 92:
            case 122:
                v.playSoundEffect(2);
                return;
            case 20:
            case 93:
            case 123:
                v.playSoundEffect(4);
                return;
            case 21:
                v.playSoundEffect(1);
                return;
            case 22:
                v.playSoundEffect(3);
                return;
            default:
                return;
        }
    }
}
