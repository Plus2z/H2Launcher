package net.oneplus.h2launcher;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DoubleTapTouchListener;
import net.oneplus.h2launcher.Stats;

/* loaded from: classes.dex */
public class Hotseat extends FrameLayout implements Stats.LaunchSourceProvider, DoubleTapTouchListener.OnDoubleTapSettingsChangeListener {
    private TextView mAllAppsButton;
    private int mAllAppsButtonRank;
    private CellLayout mContent;
    private final boolean mHasVerticalHotseat;
    private Launcher mLauncher;

    public Hotseat(Context context) {
        this(context, null);
    }

    public Hotseat(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Hotseat(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mLauncher = (Launcher) context;
        this.mHasVerticalHotseat = this.mLauncher.getDeviceProfile().isVerticalBarLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellLayout getLayout() {
        return this.mContent;
    }

    public boolean hasIcons() {
        return this.mContent.getShortcutsAndWidgets().getChildCount() > 1;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener l) {
        this.mContent.setOnLongClickListener(l);
    }

    public void updateAllAppsButtonIconSize() {
        if (this.mAllAppsButton != null) {
            Drawable d = this.mAllAppsButton.getCompoundDrawables()[1];
            this.mLauncher.resizeIconDrawable(d);
            this.mAllAppsButton.setCompoundDrawables(null, d, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOrderInHotseat(int x, int y) {
        if (!this.mHasVerticalHotseat) {
            return x;
        }
        int x2 = (this.mContent.getCountY() - y) - 1;
        return x2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCellXFromOrder(int rank) {
        if (this.mHasVerticalHotseat) {
            return 0;
        }
        return rank;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCellYFromOrder(int rank) {
        if (this.mHasVerticalHotseat) {
            return this.mContent.getCountY() - (rank + 1);
        }
        return 0;
    }

    public boolean isAllAppsButtonRank(int rank) {
        return rank == this.mAllAppsButtonRank;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        this.mAllAppsButtonRank = grid.inv.hotseatAllAppsRank;
        this.mContent = (CellLayout) findViewById(R.id.layout);
        if (grid.isLandscape && !grid.isLargeTablet) {
            this.mContent.setGridSize(1, grid.inv.numHotseatIcons);
        } else {
            this.mContent.setGridSize(grid.inv.numHotseatIcons, 1);
        }
        this.mContent.setIsHotseat(true);
        resetLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetLayout() {
        this.mContent.removeAllViewsInLayout();
        Context context = getContext();
        LayoutInflater inflater = LayoutInflater.from(context);
        this.mAllAppsButton = (TextView) inflater.inflate(R.layout.all_apps_button, (ViewGroup) this.mContent, false);
        Drawable d = context.getResources().getDrawable(R.drawable.all_apps_button_icon);
        this.mLauncher.resizeIconDrawable(d);
        this.mAllAppsButton.setCompoundDrawables(null, d, null, null);
        this.mAllAppsButton.setContentDescription(context.getString(R.string.all_apps_button_label));
        this.mAllAppsButton.setOnKeyListener(new HotseatIconKeyEventListener());
        if (this.mLauncher != null) {
            this.mLauncher.setAllAppsButton(this.mAllAppsButton);
            this.mAllAppsButton.setOnTouchListener(this.mLauncher.getHapticFeedbackTouchListener());
            this.mAllAppsButton.setOnClickListener(this.mLauncher);
            this.mAllAppsButton.setOnLongClickListener(this.mLauncher);
            this.mAllAppsButton.setOnFocusChangeListener(this.mLauncher.mFocusHandler);
        }
        int x = getCellXFromOrder(this.mAllAppsButtonRank);
        int y = getCellYFromOrder(this.mAllAppsButtonRank);
        CellLayout.LayoutParams lp = new CellLayout.LayoutParams(x, y, 1, 1);
        lp.canReorder = false;
        this.mContent.addViewToCellLayout(this.mAllAppsButton, -1, this.mAllAppsButton.getId(), lp, true);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return this.mLauncher.getWorkspace().workspaceInModalState();
    }

    @Override // net.oneplus.h2launcher.Stats.LaunchSourceProvider
    public void fillInLaunchSourceData(Bundle sourceData) {
        sourceData.putString("container", Stats.CONTAINER_HOTSEAT);
    }

    @Override // net.oneplus.h2launcher.DoubleTapTouchListener.OnDoubleTapSettingsChangeListener
    public void onDoubleTapSettingsChange(boolean enabled) {
        View.OnTouchListener l = enabled ? new DoubleTapTouchListener(this.mLauncher) : null;
        setOnTouchListener(l);
    }
}
