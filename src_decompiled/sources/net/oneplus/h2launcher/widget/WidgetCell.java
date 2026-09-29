package net.oneplus.h2launcher.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.LinearLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.InvariantDeviceProfile;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherAppWidgetProviderInfo;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.StylusEventHelper;
import net.oneplus.h2launcher.WidgetPreviewLoader;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.model.WidgetItem;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class WidgetCell extends LinearLayout implements View.OnLayoutChangeListener {
    private static final boolean DEBUG = false;
    private static final int FADE_IN_DURATION_MS = 90;
    private static final float PREVIEW_SCALE = 0.8f;
    private static final String TAG = "WidgetCell";
    private static final float WIDTH_SCALE = 2.6f;
    int cellSize;
    protected WidgetPreviewLoader.PreviewLoadRequest mActiveRequest;
    private DeviceProfile mDeviceProfile;
    private String mDimensionsFormatString;
    private Object mInfo;
    protected WidgetItem mItem;
    protected final Launcher mLauncher;
    protected int mPresetPreviewSize;
    private StylusEventHelper mStylusEventHelper;
    private TextView mWidgetDims;
    private WidgetImageView mWidgetImage;
    private TextView mWidgetName;
    private WidgetPreviewLoader mWidgetPreviewLoader;

    public WidgetCell(Context context) {
        this(context, null);
    }

    public WidgetCell(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WidgetCell(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mLauncher = LauncherAppState.getInstance().getLauncher();
        Resources r = context.getResources();
        this.mDeviceProfile = LauncherAppState.getInstance().getInvariantDeviceProfile().portraitProfile;
        this.mStylusEventHelper = new StylusEventHelper(this);
        this.mDimensionsFormatString = r.getString(R.string.widget_dims_format);
        setContainerWidth();
        setWillNotDraw(false);
        setClipToPadding(false);
        setAccessibilityDelegate(LauncherAppState.getInstance().getAccessibilityDelegate());
    }

    private void setContainerWidth() {
        this.cellSize = (int) (this.mDeviceProfile.cellWidthPx * WIDTH_SCALE);
        this.mPresetPreviewSize = (int) (this.cellSize * 0.8f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mWidgetImage = (WidgetImageView) findViewById(R.id.widget_preview);
        this.mWidgetName = (TextView) findViewById(R.id.widget_name);
        this.mWidgetDims = (TextView) findViewById(R.id.widget_dims);
    }

    public void clear() {
        this.mWidgetImage.animate().cancel();
        this.mWidgetImage.setBitmap(null, null);
        this.mWidgetName.setText((CharSequence) null);
        this.mWidgetDims.setText((CharSequence) null);
        if (this.mActiveRequest != null) {
            this.mActiveRequest.cleanup();
            this.mActiveRequest = null;
        }
    }

    public void applyFromCellItem(WidgetItem item, WidgetPreviewLoader loader) {
        this.mItem = item;
        this.mWidgetName.setText(this.mItem.label);
        this.mWidgetDims.setText(getContext().getString(R.string.widget_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetDims.setContentDescription(getContext().getString(R.string.widget_accessible_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetPreviewLoader = loader;
        if (item.activityInfo != null) {
            setTag(new PendingAddShortcutInfo(item.activityInfo));
        } else {
            setTag(new PendingAddWidgetInfo(item.widgetInfo));
        }
    }

    public WidgetImageView getWidgetView() {
        return this.mWidgetImage;
    }

    public void applyFromAppWidgetProviderInfo(final LauncherAppWidgetProviderInfo info, WidgetPreviewLoader loader, boolean setDims) {
        InvariantDeviceProfile profile = LauncherAppState.getInstance().getInvariantDeviceProfile();
        this.mInfo = info;
        if (setDims) {
            int hSpan = Math.min(info.spanX, profile.numColumns);
            int vSpan = Math.min(info.spanY, profile.numRows);
            this.mWidgetDims.setText(String.format(this.mDimensionsFormatString, Integer.valueOf(hSpan), Integer.valueOf(vSpan)));
        }
        this.mWidgetPreviewLoader = loader;
        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.widget.WidgetCell.1
            @Override // java.lang.Runnable
            public void run() {
                String text = AppWidgetManagerCompat.getInstance(WidgetCell.this.getContext()).loadLabel(info);
                WidgetCell.this.mWidgetName.setText(text);
            }
        });
    }

    public void applyFromResolveInfo(final PackageManager pm, final ResolveInfo info, WidgetPreviewLoader loader) {
        this.mInfo = info;
        this.mWidgetDims.setText(String.format(this.mDimensionsFormatString, 1, 1));
        this.mWidgetPreviewLoader = loader;
        TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.widget.WidgetCell.2
            @Override // java.lang.Runnable
            public void run() {
                CharSequence label = info.loadLabel(pm);
                WidgetCell.this.mWidgetName.setText(label);
            }
        });
    }

    public int[] getPreviewSize() {
        int[] maxSize = new int[2];
        Resources res = this.mLauncher.getResources();
        if (this.mItem.widgetInfo != null) {
            maxSize[0] = this.mPresetPreviewSize;
            maxSize[1] = this.mPresetPreviewSize;
        } else {
            maxSize[0] = res.getDimensionPixelSize(R.dimen.widget_cell_preview_shortcut_size);
            maxSize[1] = res.getDimensionPixelSize(R.dimen.widget_cell_preview_shortcut_size);
        }
        return maxSize;
    }

    public void applyPreview(Bitmap bitmap, ComponentName componentName) {
        if (bitmap != null) {
            this.mWidgetImage.setBitmap(bitmap, componentName);
            this.mWidgetImage.setAlpha(0.0f);
            ViewPropertyAnimator anim = this.mWidgetImage.animate();
            anim.alpha(1.0f).setDuration(90L);
        }
    }

    public void ensurePreview() {
        if (this.mActiveRequest == null) {
            int[] size = getPreviewSize();
            this.mActiveRequest = this.mWidgetPreviewLoader.getPreview(this.mItem, size[0], size[1], this);
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        removeOnLayoutChangeListener(this);
        ensurePreview();
    }

    public int getActualItemWidth() {
        ItemInfo info = (ItemInfo) getTag();
        int[] size = getPreviewSize();
        int cellWidth = this.mDeviceProfile.cellWidthPx;
        return Math.min(size[0], info.spanX * cellWidth);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        boolean handled = super.onTouchEvent(ev);
        if (this.mStylusEventHelper.checkAndPerformStylusEvent(ev)) {
            return true;
        }
        return handled;
    }

    private String getTagToString() {
        return ((getTag() instanceof PendingAddWidgetInfo) || (getTag() instanceof PendingAddShortcutInfo)) ? getTag().toString() : "";
    }
}
