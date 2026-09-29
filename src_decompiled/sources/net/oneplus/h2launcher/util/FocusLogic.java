package net.oneplus.h2launcher.util;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Locale;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.ShortcutAndWidgetContainer;

/* loaded from: classes.dex */
public class FocusLogic {
    public static final int CURRENT_PAGE_FIRST_ITEM = -6;
    public static final int CURRENT_PAGE_LAST_ITEM = -7;
    private static final boolean DEBUG = false;
    public static final int EMPTY = -1;
    public static final int NEXT_PAGE_FIRST_ITEM = -8;
    public static final int NEXT_PAGE_LEFT_COLUMN = -9;
    public static final int NEXT_PAGE_RIGHT_COLUMN = -10;
    public static final int NOOP = -1;
    public static final int PIVOT = 100;
    public static final int PREVIOUS_PAGE_FIRST_ITEM = -3;
    public static final int PREVIOUS_PAGE_LAST_ITEM = -4;
    public static final int PREVIOUS_PAGE_LEFT_COLUMN = -5;
    public static final int PREVIOUS_PAGE_RIGHT_COLUMN = -2;
    private static final String TAG = "FocusLogic";

    public static boolean shouldConsume(int keyCode) {
        return keyCode == 21 || keyCode == 22 || keyCode == 19 || keyCode == 20 || keyCode == 122 || keyCode == 123 || keyCode == 92 || keyCode == 93 || keyCode == 67 || keyCode == 112;
    }

    public static int handleKeyEvent(int keyCode, int cntX, int cntY, int[][] map, int iconIdx, int pageIndex, int pageCount, boolean isRtl) {
        switch (keyCode) {
            case 19:
                int newIndex = handleDpadVertical(iconIdx, cntX, cntY, map, -1);
                return newIndex;
            case 20:
                int newIndex2 = handleDpadVertical(iconIdx, cntX, cntY, map, 1);
                return newIndex2;
            case 21:
                int newIndex3 = handleDpadHorizontal(iconIdx, cntX, cntY, map, -1);
                if (!isRtl && newIndex3 == -1 && pageIndex > 0) {
                    return -2;
                }
                if (isRtl && newIndex3 == -1 && pageIndex < pageCount - 1) {
                    return -10;
                }
                return newIndex3;
            case 22:
                int newIndex4 = handleDpadHorizontal(iconIdx, cntX, cntY, map, 1);
                if (!isRtl && newIndex4 == -1 && pageIndex < pageCount - 1) {
                    return -9;
                }
                if (isRtl && newIndex4 == -1 && pageIndex > 0) {
                    return -5;
                }
                return newIndex4;
            case 92:
                int newIndex5 = handlePageUp(pageIndex);
                return newIndex5;
            case 93:
                int newIndex6 = handlePageDown(pageIndex, pageCount);
                return newIndex6;
            case 122:
                int newIndex7 = handleMoveHome();
                return newIndex7;
            case 123:
                int newIndex8 = handleMoveEnd();
                return newIndex8;
            default:
                return -1;
        }
    }

    private static int[][] createFullMatrix(int m, int n) {
        int[][] matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, m, n);
        for (int i = 0; i < m; i++) {
            Arrays.fill(matrix[i], -1);
        }
        return matrix;
    }

    public static int[][] createSparseMatrix(CellLayout layout) {
        ShortcutAndWidgetContainer parent = layout.getShortcutsAndWidgets();
        int m = layout.getCountX();
        int n = layout.getCountY();
        boolean invert = parent.invertLayoutHorizontally();
        int[][] matrix = createFullMatrix(m, n);
        for (int i = 0; i < parent.getChildCount(); i++) {
            View cell = parent.getChildAt(i);
            if (cell.isFocusable()) {
                int cx = ((CellLayout.LayoutParams) cell.getLayoutParams()).cellX;
                int cy = ((CellLayout.LayoutParams) cell.getLayoutParams()).cellY;
                if (invert) {
                    cx = (m - cx) - 1;
                }
                matrix[cx][cy] = i;
            }
        }
        return matrix;
    }

    public static int[][] createSparseMatrix(CellLayout iconLayout, CellLayout hotseatLayout, boolean isHorizontal, int allappsiconRank, boolean includeAllappsicon) {
        int m;
        int n;
        ViewGroup iconParent = iconLayout.getShortcutsAndWidgets();
        ViewGroup hotseatParent = hotseatLayout.getShortcutsAndWidgets();
        if (isHorizontal) {
            m = iconLayout.getCountX();
            n = iconLayout.getCountY() + hotseatLayout.getCountY();
        } else {
            m = iconLayout.getCountX() + hotseatLayout.getCountX();
            n = iconLayout.getCountY();
        }
        int[][] matrix = createFullMatrix(m, n);
        for (int i = 0; i < iconParent.getChildCount(); i++) {
            View cell = iconParent.getChildAt(i);
            if (cell.isFocusable()) {
                matrix[((CellLayout.LayoutParams) cell.getLayoutParams()).cellX][((CellLayout.LayoutParams) cell.getLayoutParams()).cellY] = i;
            }
        }
        int i2 = hotseatParent.getChildCount() - 1;
        while (true) {
            if (i2 >= (includeAllappsicon ? 0 : 1)) {
                int delta = 0;
                if (isHorizontal) {
                    int cx = ((CellLayout.LayoutParams) hotseatParent.getChildAt(i2).getLayoutParams()).cellX;
                    if ((includeAllappsicon && cx >= allappsiconRank) || (!includeAllappsicon && cx > allappsiconRank)) {
                        delta = -1;
                    }
                    matrix[cx + delta][iconLayout.getCountY()] = iconParent.getChildCount() + i2;
                } else {
                    int cy = ((CellLayout.LayoutParams) hotseatParent.getChildAt(i2).getLayoutParams()).cellY;
                    if ((includeAllappsicon && cy >= allappsiconRank) || (!includeAllappsicon && cy > allappsiconRank)) {
                        delta = -1;
                    }
                    matrix[iconLayout.getCountX()][cy + delta] = iconParent.getChildCount() + i2;
                }
                i2--;
            } else {
                return matrix;
            }
        }
    }

    public static int[][] createSparseMatrix(CellLayout iconLayout, int pivotX, int pivotY) {
        ViewGroup iconParent = iconLayout.getShortcutsAndWidgets();
        int[][] matrix = createFullMatrix(iconLayout.getCountX() + 1, iconLayout.getCountY());
        for (int i = 0; i < iconParent.getChildCount(); i++) {
            View cell = iconParent.getChildAt(i);
            if (cell.isFocusable()) {
                int cx = ((CellLayout.LayoutParams) cell.getLayoutParams()).cellX;
                int cy = ((CellLayout.LayoutParams) cell.getLayoutParams()).cellY;
                if (pivotX < 0) {
                    matrix[cx - pivotX][cy] = i;
                } else {
                    matrix[cx][cy] = i;
                }
            }
        }
        if (pivotX < 0) {
            matrix[0][pivotY] = 100;
        } else {
            matrix[pivotX][pivotY] = 100;
        }
        return matrix;
    }

    private static int handleDpadHorizontal(int iconIdx, int cntX, int cntY, int[][] matrix, int increment) {
        if (matrix == null) {
            throw new IllegalStateException("Dpad navigation requires a matrix.");
        }
        int newIconIndex = -1;
        int xPos = -1;
        int yPos = -1;
        for (int i = 0; i < cntX; i++) {
            for (int j = 0; j < cntY; j++) {
                if (matrix[i][j] == iconIdx) {
                    xPos = i;
                    yPos = j;
                }
            }
        }
        int i2 = xPos + increment;
        while (i2 >= 0 && i2 < cntX) {
            newIconIndex = inspectMatrix(i2, yPos, cntX, cntY, matrix);
            if (newIconIndex != -1) {
                return newIconIndex;
            }
            i2 += increment;
        }
        for (int coeff = 1; coeff < cntY; coeff++) {
            int nextYPos1 = yPos + (coeff * increment);
            int nextYPos2 = yPos - (coeff * increment);
            int i3 = xPos + (increment * coeff);
            while (i3 >= 0 && i3 < cntX) {
                int newIconIndex2 = inspectMatrix(i3, nextYPos1, cntX, cntY, matrix);
                if (newIconIndex2 != -1) {
                    return newIconIndex2;
                }
                newIconIndex = inspectMatrix(i3, nextYPos2, cntX, cntY, matrix);
                if (newIconIndex != -1) {
                    return newIconIndex;
                }
                i3 += increment;
            }
        }
        return newIconIndex;
    }

    private static int handleDpadVertical(int iconIndex, int cntX, int cntY, int[][] matrix, int increment) {
        int newIconIndex = -1;
        if (matrix == null) {
            throw new IllegalStateException("Dpad navigation requires a matrix.");
        }
        int xPos = -1;
        int yPos = -1;
        for (int i = 0; i < cntX; i++) {
            for (int j = 0; j < cntY; j++) {
                if (matrix[i][j] == iconIndex) {
                    xPos = i;
                    yPos = j;
                }
            }
        }
        int j2 = yPos + increment;
        while (j2 >= 0 && j2 < cntY && j2 >= 0) {
            newIconIndex = inspectMatrix(xPos, j2, cntX, cntY, matrix);
            if (newIconIndex != -1) {
                return newIconIndex;
            }
            j2 += increment;
        }
        for (int coeff = 1; coeff < cntX; coeff++) {
            int nextXPos1 = xPos + (coeff * increment);
            int nextXPos2 = xPos - (coeff * increment);
            int j3 = yPos + (increment * coeff);
            while (j3 >= 0 && j3 < cntY) {
                int newIconIndex2 = inspectMatrix(nextXPos1, j3, cntX, cntY, matrix);
                if (newIconIndex2 != -1) {
                    return newIconIndex2;
                }
                newIconIndex = inspectMatrix(nextXPos2, j3, cntX, cntY, matrix);
                if (newIconIndex != -1) {
                    return newIconIndex;
                }
                j3 += increment;
            }
        }
        return newIconIndex;
    }

    private static int handleMoveHome() {
        return -6;
    }

    private static int handleMoveEnd() {
        return -7;
    }

    private static int handlePageDown(int pageIndex, int pageCount) {
        return pageIndex < pageCount + (-1) ? -8 : -7;
    }

    private static int handlePageUp(int pageIndex) {
        return pageIndex > 0 ? -3 : -6;
    }

    private static boolean isValid(int xPos, int yPos, int countX, int countY) {
        return xPos >= 0 && xPos < countX && yPos >= 0 && yPos < countY;
    }

    private static int inspectMatrix(int x, int y, int cntX, int cntY, int[][] matrix) {
        if (!isValid(x, y, cntX, cntY) || matrix[x][y] == -1) {
            return -1;
        }
        int newIconIndex = matrix[x][y];
        return newIconIndex;
    }

    private static String getStringIndex(int index) {
        switch (index) {
            case NEXT_PAGE_LEFT_COLUMN /* -9 */:
                return "NEXT_PAGE_LEFT_COLUMN";
            case NEXT_PAGE_FIRST_ITEM /* -8 */:
                return "NEXT_PAGE_FIRST";
            case CURRENT_PAGE_LAST_ITEM /* -7 */:
                return "CURRENT_PAGE_LAST";
            case CURRENT_PAGE_FIRST_ITEM /* -6 */:
                return "CURRENT_PAGE_FIRST";
            case PREVIOUS_PAGE_LEFT_COLUMN /* -5 */:
            default:
                return Integer.toString(index);
            case -4:
                return "PREVIOUS_PAGE_LAST";
            case -3:
                return "PREVIOUS_PAGE_FIRST";
            case -2:
                return "PREVIOUS_PAGE_RIGHT_COLUMN";
            case -1:
                return "NOOP";
        }
    }

    private static void printMatrix(int[][] matrix) {
        Log.v(TAG, "\tprintMap:");
        int n = matrix[0].length;
        for (int j = 0; j < n; j++) {
            String colY = "\t\t";
            for (int[] iArr : matrix) {
                colY = colY + String.format(Locale.getDefault(), "%3d", Integer.valueOf(iArr[j]));
            }
            Log.v(TAG, colY);
        }
    }

    public static View getAdjacentChildInNextPage(ShortcutAndWidgetContainer nextPage, View oldView, int edgeColumn) {
        int newRow = ((CellLayout.LayoutParams) oldView.getLayoutParams()).cellY;
        for (int column = (edgeColumn == -9) ^ nextPage.invertLayoutHorizontally() ? 0 : ((CellLayout) nextPage.getParent()).getCountX() - 1; column >= 0; column--) {
            for (int row = newRow; row >= 0; row--) {
                View newView = nextPage.getChildAt(column, row);
                if (newView != null) {
                    return newView;
                }
            }
        }
        return null;
    }
}
