package net.oneplus.h2launcher.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.BaseContainerView;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DeleteDropTarget;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.DragController;
import net.oneplus.h2launcher.DragSource;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.Folder;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.PendingAddItemInfo;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.WidgetPreviewLoader;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.model.WidgetsModel;

/* loaded from: classes.dex */
public class WidgetsContainerView extends BaseContainerView implements View.OnLongClickListener, View.OnClickListener, DragSource {
    private static final boolean DEBUG = false;
    private static final int PRELOAD_SCREEN_HEIGHT_MULTIPLE = 1;
    private static final String TAG = "WidgetsContainerView";
    private WidgetsListAdapter mAdapter;
    private AssetCache mAssetCache;
    private View mContent;
    private DragController mDragController;
    Launcher mLauncher;
    private Rect mPadding;
    private WidgetsRecyclerView mView;
    private Toast mWidgetInstructionToast;
    private WidgetPreviewLoader mWidgetPreviewLoader;

    public WidgetsContainerView(Context context) {
        this(context, null);
    }

    public WidgetsContainerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WidgetsContainerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPadding = new Rect();
        this.mLauncher = (Launcher) context;
        this.mDragController = this.mLauncher.getDragController();
        this.mAdapter = new WidgetsListAdapter(context, this, this, this.mLauncher);
        this.mAssetCache = LauncherAppState.getInstance().getAssetCache();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = findViewById(R.id.content);
        this.mView = (WidgetsRecyclerView) findViewById(R.id.widgets_list_view);
        this.mView.setAdapter(this.mAdapter);
        this.mView.setLayoutManager(new LinearLayoutManager(getContext()) { // from class: net.oneplus.h2launcher.widget.WidgetsContainerView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.support.v7.widget.LinearLayoutManager
            public int getExtraLayoutSpace(RecyclerView.State state) {
                DeviceProfile grid = WidgetsContainerView.this.mLauncher.getDeviceProfile();
                return super.getExtraLayoutSpace(state) + (grid.availableHeightPx * 1);
            }
        });
        this.mPadding.set(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    public View getContentView() {
        return this.mView;
    }

    public View getRevealView() {
        return findViewById(R.id.widgets_reveal_view);
    }

    public void scrollToTop() {
        this.mView.scrollToPosition(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.mLauncher.isWidgetsViewVisible() && !this.mLauncher.getWorkspace().isSwitchingState() && (v instanceof WidgetCell)) {
            if (this.mWidgetInstructionToast != null) {
                this.mWidgetInstructionToast.cancel();
            }
            this.mWidgetInstructionToast = Toast.makeText(getContext(), R.string.long_press_widget_to_add, 0);
            this.mWidgetInstructionToast.show();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        boolean status = false;
        if (v.isInTouchMode() && this.mLauncher.isWidgetsViewVisible() && !this.mLauncher.getWorkspace().isSwitchingState()) {
            Log.d(TAG, String.format("onLonglick dragging enabled?.", v));
            if (this.mLauncher.isDraggingEnabled() && (status = beginDragging(v)) && (v.getTag() instanceof PendingAddWidgetInfo)) {
                WidgetHostViewLoader hostLoader = new WidgetHostViewLoader(this.mLauncher, v);
                hostLoader.preloadWidget();
                this.mLauncher.getDragController().addDragListener(hostLoader);
            }
        }
        return status;
    }

    private boolean beginDragging(View v) {
        if (v instanceof WidgetCell) {
            if (!beginDraggingWidget((WidgetCell) v)) {
                return false;
            }
        } else {
            Log.e(TAG, "Unexpected dragging view: " + v);
        }
        if (this.mLauncher.getDragController().isDragging()) {
            this.mLauncher.enterSpringLoadedDragMode();
        }
        return true;
    }

    private boolean beginDraggingWidget(WidgetCell v) {
        Bitmap preview;
        float scale;
        WidgetImageView image = (WidgetImageView) v.findViewById(R.id.widget_preview);
        PendingAddItemInfo createItemInfo = (PendingAddItemInfo) v.getTag();
        if (image.getBitmap() == null) {
            return false;
        }
        Rect bounds = image.getBitmapBounds();
        if (createItemInfo instanceof PendingAddWidgetInfo) {
            PendingAddWidgetInfo createWidgetInfo = (PendingAddWidgetInfo) createItemInfo;
            int[] size = this.mLauncher.getWorkspace().estimateItemSize(createWidgetInfo, true);
            Bitmap icon = image.getBitmap();
            int maxWidth = Math.min((int) (icon.getWidth() * 1.25f), size[0]);
            int[] previewSizeBeforeScale = new int[1];
            preview = getWidgetPreviewLoader().generateWidgetPreview(createWidgetInfo.info, maxWidth, null, previewSizeBeforeScale);
            if (previewSizeBeforeScale[0] < icon.getWidth()) {
                int padding = (icon.getWidth() - previewSizeBeforeScale[0]) / 2;
                if (icon.getWidth() > image.getWidth()) {
                    padding = (image.getWidth() * padding) / icon.getWidth();
                }
                bounds.left += padding;
                bounds.right -= padding;
            }
            scale = bounds.width() / preview.getWidth();
        } else {
            PendingAddShortcutInfo createShortcutInfo = (PendingAddShortcutInfo) v.getTag();
            LauncherAppState app = LauncherAppState.getInstance();
            preview = Utilities.createIconBitmap(createShortcutInfo.activityInfo.getFullResIcon(app.getAssetCache()), this.mLauncher);
            createItemInfo.spanY = 1;
            createItemInfo.spanX = 1;
            scale = this.mLauncher.getDeviceProfile().iconSizePx / preview.getWidth();
        }
        boolean clipAlpha = ((createItemInfo instanceof PendingAddWidgetInfo) && ((PendingAddWidgetInfo) createItemInfo).previewImage == 0) ? false : true;
        this.mLauncher.lockScreenOrientation();
        this.mLauncher.getWorkspace().onDragStartedWithItem(createItemInfo, preview, clipAlpha);
        this.mDragController.startDrag(image, preview, this, createItemInfo, bounds, DragController.DRAG_ACTION_COPY, scale);
        preview.recycle();
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsFlingToDelete() {
        return false;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsAppInfoDropTarget() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsDeleteDropTarget() {
        return false;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsEditDropTarget() {
        return false;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public float getIntrinsicIconScaleFactor() {
        return 0.0f;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public void onFlingToDeleteCompleted() {
        this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
        this.mLauncher.unlockScreenOrientation(false);
    }

    @Override // net.oneplus.h2launcher.DragSource
    public void onDropCompleted(View target, DropTarget.DragObject d, boolean isFlingToDelete, boolean success) {
        if (isFlingToDelete || !success || (target != this.mLauncher.getWorkspace() && !(target instanceof DeleteDropTarget) && !(target instanceof Folder))) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
        }
        this.mLauncher.unlockScreenOrientation(false);
        if (!success) {
            boolean showOutOfSpaceMessage = false;
            if (target instanceof Workspace) {
                int currentScreen = this.mLauncher.getCurrentWorkspaceScreen();
                Workspace workspace = (Workspace) target;
                CellLayout layout = (CellLayout) workspace.getChildAt(currentScreen);
                ItemInfo itemInfo = (ItemInfo) d.dragInfo;
                if (layout != null) {
                    showOutOfSpaceMessage = !layout.findCellForSpan(null, itemInfo.spanX, itemInfo.spanY);
                }
            }
            if (showOutOfSpaceMessage) {
                this.mLauncher.showOutOfSpaceMessage(false);
            }
            d.deferDragViewCleanupPostAnimation = false;
        }
    }

    @Override // net.oneplus.h2launcher.BaseContainerView
    protected void onUpdateBackgroundAndPaddings(Rect searchBarBounds, Rect padding) {
        this.mContent.setPadding(0, padding.top, 0, padding.bottom);
        InsetDrawable background = new InsetDrawable(getResources().getDrawable(R.drawable.quantum_panel_shape_dark), padding.left, 0, padding.right, 0);
        Rect bgPadding = new Rect();
        background.getPadding(bgPadding);
        this.mView.setBackground(background);
        getRevealView().setBackground(background.getConstantState().newDrawable());
        this.mView.updateBackgroundPadding(bgPadding);
    }

    public void addWidgets(WidgetsModel model) {
        this.mView.setWidgets(model);
        this.mAdapter.setWidgetsModel(model);
        this.mAdapter.notifyDataSetChanged();
    }

    private WidgetPreviewLoader getWidgetPreviewLoader() {
        if (this.mWidgetPreviewLoader == null) {
            this.mWidgetPreviewLoader = LauncherAppState.getInstance().getWidgetCache();
        }
        return this.mWidgetPreviewLoader;
    }
}
