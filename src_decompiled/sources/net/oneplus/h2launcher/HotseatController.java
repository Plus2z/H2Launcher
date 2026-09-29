package net.oneplus.h2launcher;

import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HotseatController {
    private static final String TAG = "Launcher.HotseatController";
    Launcher mLauncher;

    public HotseatController(Launcher launcher) {
        this.mLauncher = launcher;
    }

    public void setOnLongClickListener(Launcher launcher) {
        if (this.mLauncher.getHotseat() != null) {
            this.mLauncher.getHotseat().setOnLongClickListener(launcher);
        }
    }

    public int getOrderInHotseat(int cellX, int cellY) {
        if (this.mLauncher.getHotseat() != null) {
            return this.mLauncher.getHotseat().getOrderInHotseat(cellX, cellY);
        }
        return 0;
    }

    public boolean isHotseatLayout(View layout) {
        return this.mLauncher.getHotseat() != null && layout != null && (layout instanceof CellLayout) && layout == this.mLauncher.getHotseat().getLayout();
    }

    public CellLayout getHotSeatLayout() {
        if (this.mLauncher.getHotseat() != null) {
            return this.mLauncher.getHotseat().getLayout();
        }
        return null;
    }

    public void resetLayout() {
        if (this.mLauncher.getHotseat() != null) {
            this.mLauncher.getHotseat().resetLayout();
        }
    }

    public boolean isAllAppsButtonRank(int rank) {
        if (this.mLauncher.getHotseat() != null) {
            return this.mLauncher.getHotseat().isAllAppsButtonRank(rank);
        }
        return false;
    }

    public void setAlpha(float alpha) {
        if (this.mLauncher.getHotseat() != null) {
            this.mLauncher.getHotseat().setAlpha(alpha);
        }
    }

    public boolean getHitRect(int x, int y, boolean isPortrait) {
        if (this.mLauncher.getHotseat() != null && isPortrait) {
            Rect r = new Rect();
            this.mLauncher.getHotseat().getHitRect(r);
            if (r.contains(x, y)) {
                return false;
            }
        }
        return true;
    }

    public void addCellLayout(ArrayList<CellLayout> layouts) {
        if (this.mLauncher.getHotseat() != null) {
            layouts.add(this.mLauncher.getHotseat().getLayout());
        }
    }

    public void addShortcutsAndWidgets(ArrayList<ShortcutAndWidgetContainer> childrenLayouts) {
        if (this.mLauncher.getHotseat() != null) {
            childrenLayouts.add(this.mLauncher.getHotseat().getLayout().getShortcutsAndWidgets());
        }
    }

    public void setTranslationX(float translationX) {
        if (this.mLauncher.getHotseat() != null) {
            this.mLauncher.getHotseat().setTranslationX(translationX);
        }
    }

    public void enableAccessibleDrag(boolean enable, int dragType) {
        if (this.mLauncher.getHotseat() != null && this.mLauncher.getHotseat().getLayout() != null) {
            this.mLauncher.getHotseat().getLayout().enableAccessibleDrag(enable, 2);
        }
    }

    public CellLayout getLayout() {
        if (this.mLauncher.getHotseat() != null) {
            return this.mLauncher.getHotseat().getLayout();
        }
        return null;
    }

    public int getCellXFromOrder(int screenId) {
        if (this.mLauncher.getHotseat() != null) {
            return this.mLauncher.getHotseat().getCellXFromOrder(screenId);
        }
        return 0;
    }

    public int getCellYFromOrder(int screenId) {
        if (this.mLauncher.getHotseat() != null) {
            return this.mLauncher.getHotseat().getCellYFromOrder(screenId);
        }
        return 0;
    }
}
