package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.FolderInfo;
import net.oneplus.h2launcher.oos.StyleManager;

/* loaded from: classes.dex */
public class FolderIcon extends FrameLayout implements FolderInfo.FolderListener {
    private static final int CONSUMPTION_ANIMATION_DURATION = 100;
    private static final int DROP_IN_ANIMATION_DURATION = 400;
    private static final int FINAL_ITEM_ANIMATION_DURATION = 200;
    private static final int INITIAL_ITEM_ANIMATION_DURATION = 350;
    private static final float INNER_RING_GROWTH_FACTOR = 0.15f;
    private static final int ON_OPEN_DELAY = 800;
    private static final float OUTER_RING_GROWTH_FACTOR = 0.3f;
    private static final float PERSPECTIVE_SCALE_FACTOR = 0.35f;
    protected static final float PERSPECTIVE_SHIFT_FACTOR = 0.18f;
    private static final int SIMPLIFIED_NUM_ITEMS = 4;
    public static final boolean SPRING_LOADING_ENABLED = true;
    private static final int STANDARD_NUM_ITEMS = 3;
    PreviewItemDrawingParams mAnimParams;
    boolean mAnimating;
    protected int mAvailableSpaceInPreview;
    protected float mBaselineIconScale;
    protected int mBaselineIconSize;
    ItemInfo mDragInfo;
    Folder mFolder;
    protected BubbleTextView mFolderName;
    protected FolderRingAnimator mFolderRingAnimator;
    private BitmapDrawable mFolderShadowBg;
    protected int mFourGridIconGap;
    protected int mFourGridIconSize;
    ArrayList<ShortcutInfo> mHiddenItems;
    private FolderInfo mInfo;
    protected int mIntrinsicIconSize;
    protected Launcher mLauncher;
    private CheckLongPressHelper mLongPressHelper;
    protected float mMaxPerspectiveShift;
    private Rect mOldBounds;
    OnAlarmListener mOnOpenListener;
    private Alarm mOpenAlarm;
    protected PreviewItemDrawingParams mParams;
    protected ImageView mPreviewBackground;
    protected int mPreviewOffsetX;
    protected int mPreviewOffsetY;
    private float mSlop;
    private StylusEventHelper mStylusEventHelper;
    protected int mTotalWidth;
    static boolean sStaticValuesDirty = true;
    public static int sNumItemsInPreview = 3;
    private static boolean sHasOuterRing = true;
    public static Drawable sSharedFolderLeaveBehind = null;

    public FolderIcon(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mFolderRingAnimator = null;
        this.mTotalWidth = -1;
        this.mAnimating = false;
        this.mOldBounds = new Rect();
        this.mFourGridIconSize = 0;
        this.mFourGridIconGap = 0;
        this.mParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mAnimParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mHiddenItems = new ArrayList<>();
        this.mOpenAlarm = new Alarm();
        this.mOnOpenListener = new OnAlarmListener() { // from class: net.oneplus.h2launcher.FolderIcon.1
            @Override // net.oneplus.h2launcher.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                if (FolderIcon.this.mDragInfo instanceof AppInfo) {
                    ShortcutInfo item = ((AppInfo) FolderIcon.this.mDragInfo).makeShortcut();
                    item.spanX = 1;
                    item.spanY = 1;
                }
                FolderIcon.this.mFolder.beginExternalDrag();
                FolderIcon.this.mLauncher.openFolder(FolderIcon.this);
            }
        };
        init();
    }

    public FolderIcon(Context context) {
        super(context);
        this.mFolderRingAnimator = null;
        this.mTotalWidth = -1;
        this.mAnimating = false;
        this.mOldBounds = new Rect();
        this.mFourGridIconSize = 0;
        this.mFourGridIconGap = 0;
        this.mParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mAnimParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0);
        this.mHiddenItems = new ArrayList<>();
        this.mOpenAlarm = new Alarm();
        this.mOnOpenListener = new OnAlarmListener() { // from class: net.oneplus.h2launcher.FolderIcon.1
            @Override // net.oneplus.h2launcher.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                if (FolderIcon.this.mDragInfo instanceof AppInfo) {
                    ShortcutInfo item = ((AppInfo) FolderIcon.this.mDragInfo).makeShortcut();
                    item.spanX = 1;
                    item.spanY = 1;
                }
                FolderIcon.this.mFolder.beginExternalDrag();
                FolderIcon.this.mLauncher.openFolder(FolderIcon.this);
            }
        };
        init();
    }

    private void init() {
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mStylusEventHelper = new StylusEventHelper(this);
        setAccessibilityDelegate(LauncherAppState.getInstance().getAccessibilityDelegate());
    }

    public boolean isDropEnabled() {
        ViewGroup cellLayoutChildren = (ViewGroup) getParent();
        ViewGroup cellLayout = (ViewGroup) cellLayoutChildren.getParent();
        Workspace workspace = (Workspace) cellLayout.getParent();
        return !workspace.workspaceInModalState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FolderIcon fromXml(int resId, Launcher launcher, ViewGroup group, FolderInfo folderInfo, AssetCache assetCache) {
        sNumItemsInPreview = StyleManager.getInstance().showStandardFolderIconShape() ? 3 : 4;
        sHasOuterRing = StyleManager.getInstance().showStandardFolderIconShape();
        Context context = launcher.getApplicationContext();
        DeviceProfile grid = launcher.getDeviceProfile();
        FolderIcon icon = (FolderIcon) LayoutInflater.from(launcher).inflate(resId, group, false);
        icon.setClipToPadding(false);
        icon.mFolderName = (BubbleTextView) icon.findViewById(R.id.folder_icon_name);
        icon.mFolderName.setText(folderInfo.title);
        icon.mFolderName.setCompoundDrawablePadding(0);
        ((FrameLayout.LayoutParams) icon.mFolderName.getLayoutParams()).topMargin = Utilities.getFolderNameTopMargin(context, grid);
        icon.mPreviewBackground = (ImageView) icon.findViewById(R.id.preview_background);
        icon.mPreviewBackground.setImageResource(StyleManager.getInstance().showStandardFolderIconShape() ? R.drawable.portal_ring_inner : R.drawable.bg_folder_square);
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) icon.mPreviewBackground.getLayoutParams();
        lp.topMargin = Utilities.getFolderPreviewBackgroundTopMargin(context, grid);
        lp.width = Utilities.getFolderIconSize(context, grid);
        lp.height = Utilities.getFolderIconSize(context, grid);
        if (!StyleManager.getInstance().showStandardFolderIconShape()) {
            icon.initFolderBackground();
        }
        icon.setTag(folderInfo);
        icon.setOnClickListener(launcher);
        icon.mInfo = folderInfo;
        icon.mLauncher = launcher;
        icon.setContentDescription(String.format(launcher.getString(R.string.folder_name_format), folderInfo.title));
        Folder folder = Folder.fromXml(launcher);
        folder.setDragController(launcher.getDragController());
        folder.setFolderIcon(icon);
        folder.bind(folderInfo);
        icon.mFolder = folder;
        icon.mFolderRingAnimator = new FolderRingAnimator(launcher, icon);
        folderInfo.addListener(icon);
        icon.setOnFocusChangeListener(launcher.mFocusHandler);
        return icon;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initFolderBackground() {
        LauncherAppState app = LauncherAppState.getInstance();
        Drawable shape = app.getContext().getDrawable(R.drawable.bg_folder_square);
        Bitmap bitmap = Utilities.createShadowIconBitmap(shape, app.getContext());
        this.mFolderShadowBg = new BitmapDrawable(app.getContext().getResources(), bitmap);
    }

    public void setScaledLayout() {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) this.mFolderName.getLayoutParams();
        lp.topMargin = Utilities.getFolderNameTopMargin(getContext(), grid);
        this.mFolderName.setLayoutParams(lp);
        FrameLayout.LayoutParams lp2 = (FrameLayout.LayoutParams) this.mPreviewBackground.getLayoutParams();
        lp2.topMargin = Utilities.getFolderPreviewBackgroundTopMargin(getContext(), grid);
        lp2.width = Utilities.getFolderIconSize(getContext(), grid);
        lp2.height = Utilities.getFolderIconSize(getContext(), grid);
        this.mPreviewBackground.setLayoutParams(lp2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        sStaticValuesDirty = true;
        return super.onSaveInstanceState();
    }

    /* loaded from: classes.dex */
    public static class FolderRingAnimator {
        private ValueAnimator mAcceptAnimator;
        CellLayout mCellLayout;
        public int mCellX;
        public int mCellY;
        private Context mContext;
        public FolderIcon mFolderIcon;
        private DeviceProfile mGrid;
        public float mInnerRingSize;
        private ValueAnimator mNeutralAnimator;
        public float mOuterRingSize;
        public static Drawable sSharedOuterRingDrawable = null;
        public static Drawable sSharedInnerRingDrawable = null;
        public static int sPreviewSize = -1;
        public static int sPreviewPadding = -1;

        public FolderRingAnimator(Launcher launcher, FolderIcon folderIcon) {
            this.mFolderIcon = null;
            this.mFolderIcon = folderIcon;
            this.mContext = launcher.getApplicationContext();
            Resources res = launcher.getResources();
            if (FolderIcon.sStaticValuesDirty) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    throw new RuntimeException("FolderRingAnimator loading drawables on non-UI thread " + Thread.currentThread());
                }
                this.mGrid = launcher.getDeviceProfile();
                sPreviewSize = this.mGrid.folderIconSizePx;
                sPreviewPadding = res.getDimensionPixelSize(R.dimen.folder_preview_padding);
                sSharedOuterRingDrawable = res.getDrawable(R.drawable.portal_ring_outer);
                sSharedInnerRingDrawable = res.getDrawable(StyleManager.getInstance().showStandardFolderIconShape() ? R.drawable.portal_ring_inner : R.drawable.bg_folder_square);
                FolderIcon.sSharedFolderLeaveBehind = res.getDrawable(R.drawable.portal_ring_rest);
                FolderIcon.sStaticValuesDirty = false;
            }
        }

        public void animateToAcceptState() {
            if (this.mNeutralAnimator != null) {
                this.mNeutralAnimator.cancel();
            }
            this.mAcceptAnimator = LauncherAnimUtils.ofFloat(this.mCellLayout, 0.0f, 1.0f);
            this.mAcceptAnimator.setDuration(100L);
            final int previewSize = Utilities.getFolderIconSize(this.mContext, this.mGrid);
            this.mAcceptAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.FolderIcon.FolderRingAnimator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float percent = ((Float) animation.getAnimatedValue()).floatValue();
                    FolderRingAnimator.this.mOuterRingSize = ((FolderIcon.OUTER_RING_GROWTH_FACTOR * percent) + 1.0f) * previewSize;
                    FolderRingAnimator.this.mInnerRingSize = ((FolderIcon.INNER_RING_GROWTH_FACTOR * percent) + 1.0f) * previewSize;
                    if (FolderRingAnimator.this.mCellLayout != null) {
                        FolderRingAnimator.this.mCellLayout.invalidate();
                    }
                }
            });
            this.mAcceptAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.FolderIcon.FolderRingAnimator.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    if (FolderRingAnimator.this.mFolderIcon != null) {
                        FolderRingAnimator.this.mFolderIcon.mPreviewBackground.setVisibility(4);
                    }
                }
            });
            this.mAcceptAnimator.start();
        }

        public void animateToNaturalState() {
            if (this.mAcceptAnimator != null) {
                this.mAcceptAnimator.cancel();
            }
            this.mNeutralAnimator = LauncherAnimUtils.ofFloat(this.mCellLayout, 0.0f, 1.0f);
            this.mNeutralAnimator.setDuration(100L);
            final int previewSize = Utilities.getFolderIconSize(this.mContext, this.mGrid);
            this.mNeutralAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.FolderIcon.FolderRingAnimator.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float percent = ((Float) animation.getAnimatedValue()).floatValue();
                    FolderRingAnimator.this.mOuterRingSize = (((1.0f - percent) * FolderIcon.OUTER_RING_GROWTH_FACTOR) + 1.0f) * previewSize;
                    FolderRingAnimator.this.mInnerRingSize = (((1.0f - percent) * FolderIcon.INNER_RING_GROWTH_FACTOR) + 1.0f) * previewSize;
                    if (FolderRingAnimator.this.mCellLayout != null) {
                        FolderRingAnimator.this.mCellLayout.invalidate();
                    }
                }
            });
            this.mNeutralAnimator.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.FolderIcon.FolderRingAnimator.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (FolderRingAnimator.this.mCellLayout != null) {
                        FolderRingAnimator.this.mCellLayout.hideFolderAccept(FolderRingAnimator.this);
                    }
                    if (FolderRingAnimator.this.mFolderIcon != null) {
                        FolderRingAnimator.this.mFolderIcon.mPreviewBackground.setVisibility(0);
                    }
                }
            });
            this.mNeutralAnimator.start();
        }

        public void getCell(int[] loc) {
            loc[0] = this.mCellX;
            loc[1] = this.mCellY;
        }

        public void setCell(int x, int y) {
            this.mCellX = x;
            this.mCellY = y;
        }

        public void setCellLayout(CellLayout layout) {
            this.mCellLayout = layout;
        }

        public float getOuterRingSize() {
            return this.mOuterRingSize;
        }

        public float getInnerRingSize() {
            return this.mInnerRingSize;
        }
    }

    public Folder getFolder() {
        return this.mFolder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FolderInfo getFolderInfo() {
        return this.mInfo;
    }

    private boolean willAcceptItem(ItemInfo item) {
        int itemType = item.itemType;
        return ((itemType != 0 && itemType != 1 && itemType != 6) || this.mFolder.isFull() || item == this.mInfo || this.mInfo.opened) ? false : true;
    }

    public boolean acceptDrop(Object dragInfo) {
        ItemInfo item = (ItemInfo) dragInfo;
        return !this.mFolder.isDestroyed() && willAcceptItem(item);
    }

    public void addItem(ShortcutInfo item) {
        this.mInfo.add(item);
    }

    public void onDragEnter(Object dragInfo) {
        if (!this.mFolder.isDestroyed() && willAcceptItem((ItemInfo) dragInfo)) {
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams) getLayoutParams();
            CellLayout layout = (CellLayout) getParent().getParent();
            this.mFolderRingAnimator.setCell(lp.cellX, lp.cellY);
            this.mFolderRingAnimator.setCellLayout(layout);
            this.mFolderRingAnimator.animateToAcceptState();
            layout.showFolderAccept(this.mFolderRingAnimator);
            this.mOpenAlarm.setOnAlarmListener(this.mOnOpenListener);
            if ((dragInfo instanceof AppInfo) || (dragInfo instanceof ShortcutInfo)) {
                this.mOpenAlarm.setAlarm(800L);
            }
            this.mDragInfo = (ItemInfo) dragInfo;
        }
    }

    public void onDragOver(Object dragInfo) {
    }

    public void performCreateAnimation(ShortcutInfo destInfo, View destView, ShortcutInfo srcInfo, DragView srcView, Rect dstRect, float scaleRelativeToDragLayer, Runnable postAnimationRunnable) {
        Drawable animateDrawable = getTopDrawable((TextView) destView);
        int drawableSize = (int) (animateDrawable.getIntrinsicWidth() * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        computePreviewDrawingParams(drawableSize, destView.getMeasuredWidth());
        animateFirstItem(animateDrawable, INITIAL_ITEM_ANIMATION_DURATION, false, null);
        addItem(destInfo);
        onDrop(srcInfo, srcView, dstRect, scaleRelativeToDragLayer, 1, postAnimationRunnable, null);
    }

    public void performDestroyAnimation(View finalView, Runnable onCompleteRunnable) {
        Drawable animateDrawable = getTopDrawable((TextView) finalView);
        int drawableSize = (int) (animateDrawable.getIntrinsicWidth() * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        computePreviewDrawingParams(drawableSize, finalView.getMeasuredWidth());
        animateFirstItem(animateDrawable, 200, true, onCompleteRunnable);
    }

    public void onDragExit(Object dragInfo) {
        onDragExit();
    }

    public void onDragExit() {
        this.mFolderRingAnimator.animateToNaturalState();
        this.mOpenAlarm.cancelAlarm();
    }

    private void onDrop(final ShortcutInfo item, DragView animateView, Rect finalRect, float scaleRelativeToDragLayer, int index, Runnable postAnimationRunnable, DropTarget.DragObject d) {
        item.cellX = -1;
        item.cellY = -1;
        if (animateView != null) {
            DragLayer dragLayer = this.mLauncher.getDragLayer();
            Rect from = new Rect();
            dragLayer.getViewRectRelativeToSelf(animateView, from);
            Rect to = finalRect;
            if (to == null) {
                to = new Rect();
                Workspace workspace = this.mLauncher.getWorkspace();
                workspace.setFinalTransitionTransform((CellLayout) getParent().getParent());
                float scaleX = getScaleX();
                float scaleY = getScaleY();
                setScaleX(1.0f);
                setScaleY(1.0f);
                scaleRelativeToDragLayer = dragLayer.getDescendantRectRelativeToSelf(this, to);
                setScaleX(scaleX);
                setScaleY(scaleY);
                workspace.resetTransitionTransform((CellLayout) getParent().getParent());
            }
            float scale = getLocalCenterForIndex(index, center);
            int[] center = {Math.round(center[0] * scaleRelativeToDragLayer), Math.round(center[1] * scaleRelativeToDragLayer)};
            to.offset(center[0] - (animateView.getMeasuredWidth() / 2), center[1] - (animateView.getMeasuredHeight() / 2));
            float finalAlpha = index < sNumItemsInPreview ? 0.5f : 0.0f;
            float finalScale = scale * scaleRelativeToDragLayer;
            dragLayer.animateView(animateView, from, to, finalAlpha, 1.0f, 1.0f, finalScale, finalScale, 400, new DecelerateInterpolator(2.0f), new AccelerateInterpolator(2.0f), postAnimationRunnable, 0, null);
            addItem(item);
            this.mHiddenItems.add(item);
            this.mFolder.hideItem(item);
            postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.FolderIcon.2
                @Override // java.lang.Runnable
                public void run() {
                    FolderIcon.this.mHiddenItems.remove(item);
                    FolderIcon.this.mFolder.showItem(item);
                    FolderIcon.this.invalidate();
                }
            }, 400L);
            return;
        }
        addItem(item);
    }

    public void onDrop(DropTarget.DragObject d) {
        ShortcutInfo item;
        if (d.dragInfo instanceof AppInfo) {
            item = ((AppInfo) d.dragInfo).makeShortcut();
        } else {
            item = (ShortcutInfo) d.dragInfo;
        }
        this.mFolder.notifyDrop();
        onDrop(item, d.dragView, null, 1.0f, StyleManager.getInstance().showStandardFolderIconShape() ? this.mInfo.getContents().size() : findDropPosition(item), d.postAnimationRunnable, d);
    }

    private int findDropPosition(ShortcutInfo item) {
        int dropPosition = 0;
        if (item.container == this.mFolder.getInfo().id) {
            ArrayList<ItemInfo> itemInfos = this.mFolder.getItemInfoInReadingOrder();
            boolean found = false;
            Iterator<ItemInfo> it = itemInfos.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ItemInfo itemInfo = it.next();
                if (itemInfo.equals(item)) {
                    dropPosition = Math.min(itemInfos.indexOf(itemInfo), this.mInfo.getContents().size());
                    found = true;
                    break;
                }
            }
            if (!found) {
                int dropPosition2 = this.mInfo.getContents().size();
                return dropPosition2;
            }
            return dropPosition;
        }
        int dropPosition3 = this.mInfo.getContents().size();
        return dropPosition3;
    }

    private void computePreviewDrawingParams(int drawableSize, int totalSize) {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        this.mIntrinsicIconSize = drawableSize;
        this.mTotalWidth = totalSize;
        int previewSize = this.mPreviewBackground.getLayoutParams().height;
        int previewPadding = (int) (FolderRingAnimator.sPreviewPadding * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        this.mAvailableSpaceInPreview = previewSize - (previewPadding * 2);
        this.mFourGridIconSize = (int) (this.mLauncher.getResources().getDimensionPixelSize(R.dimen.folder_fourgrid_icon_size) * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        this.mFourGridIconGap = (int) (this.mLauncher.getResources().getDimensionPixelSize(R.dimen.folder_fourgrid_icon_gap) * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        int actualWidth = (this.mFourGridIconSize * 2) + this.mFourGridIconGap;
        int adjustedAvailableSpace = (int) ((this.mAvailableSpaceInPreview / 2) * 1.8f);
        int unscaledHeight = (int) (this.mIntrinsicIconSize * 1.1800001f);
        this.mBaselineIconScale = (1.0f * adjustedAvailableSpace) / unscaledHeight;
        this.mBaselineIconSize = (int) (this.mIntrinsicIconSize * this.mBaselineIconScale);
        this.mMaxPerspectiveShift = this.mBaselineIconSize * PERSPECTIVE_SHIFT_FACTOR;
        if (StyleManager.getInstance().showStandardFolderIconShape()) {
            this.mPreviewOffsetX = (this.mTotalWidth - this.mAvailableSpaceInPreview) / 2;
            this.mPreviewOffsetY = grid.folderBackgroundOffset + previewPadding;
        } else {
            this.mPreviewOffsetX = (this.mTotalWidth - actualWidth) / 2;
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) this.mPreviewBackground.getLayoutParams();
            this.mPreviewOffsetY = getPaddingTop() + lp.topMargin + ((previewSize - actualWidth) / 2);
        }
    }

    protected void computePreviewDrawingParams(Drawable d) {
        int drawableSize = (int) (d.getIntrinsicWidth() * Utilities.getIconScaleValue(this.mLauncher.getApplicationContext()));
        computePreviewDrawingParams(drawableSize, getMeasuredWidth());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class PreviewItemDrawingParams {
        public Drawable drawable;
        int overlayAlpha;
        float scale;
        float transX;
        float transY;

        PreviewItemDrawingParams(float transX, float transY, float scale, int overlayAlpha) {
            this.transX = transX;
            this.transY = transY;
            this.scale = scale;
            this.overlayAlpha = overlayAlpha;
        }
    }

    private float getLocalCenterForIndex(int index, int[] center) {
        this.mParams = computePreviewItemDrawingParams(Math.min(sNumItemsInPreview, index), this.mParams);
        this.mParams.transX += this.mPreviewOffsetX;
        this.mParams.transY += this.mPreviewOffsetY;
        float offsetX = this.mParams.transX + ((this.mParams.scale * this.mIntrinsicIconSize) / 2.0f);
        float offsetY = this.mParams.transY + ((this.mParams.scale * this.mIntrinsicIconSize) / 2.0f);
        center[0] = Math.round(offsetX);
        center[1] = Math.round(offsetY);
        return this.mParams.scale;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PreviewItemDrawingParams computePreviewItemDrawingParams(int index, PreviewItemDrawingParams params) {
        float offsetX;
        float offsetY;
        float transY;
        float transX;
        float totalScale;
        int overlayAlpha;
        if (StyleManager.getInstance().showStandardFolderIconShape()) {
            float r = (((sNumItemsInPreview - index) - 1) * 1.0f) / (sNumItemsInPreview - 1);
            float scale = 1.0f - (PERSPECTIVE_SCALE_FACTOR * (1.0f - r));
            float offset = (1.0f - r) * this.mMaxPerspectiveShift;
            float scaledSize = scale * this.mBaselineIconSize;
            float scaleOffsetCorrection = (1.0f - scale) * this.mBaselineIconSize;
            transY = (this.mAvailableSpaceInPreview - ((offset + scaledSize) + scaleOffsetCorrection)) + getPaddingTop();
            transX = (this.mAvailableSpaceInPreview - scaledSize) / 2.0f;
            totalScale = this.mBaselineIconScale * scale;
            overlayAlpha = (int) (80.0f * (1.0f - r));
        } else {
            if (index == 0) {
                offsetX = 0.0f;
                offsetY = 0.0f;
            } else if (index == 1) {
                offsetX = this.mFourGridIconSize + 0 + this.mFourGridIconGap;
                offsetY = 0.0f;
            } else if (index == 2) {
                offsetX = 0.0f;
                offsetY = this.mFourGridIconSize + this.mFourGridIconGap;
            } else {
                offsetX = this.mFourGridIconSize + this.mFourGridIconGap;
                offsetY = this.mFourGridIconSize + this.mFourGridIconGap;
            }
            transY = offsetY;
            transX = offsetX;
            totalScale = (1.0f * this.mFourGridIconSize) / this.mIntrinsicIconSize;
            overlayAlpha = 0;
        }
        if (params == null) {
            return new PreviewItemDrawingParams(transX, transY, totalScale, overlayAlpha);
        }
        params.transX = transX;
        params.transY = transY;
        params.scale = totalScale;
        params.overlayAlpha = overlayAlpha;
        return params;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void drawPreviewItem(Canvas canvas, PreviewItemDrawingParams params) {
        canvas.save();
        canvas.translate(params.transX + this.mPreviewOffsetX, params.transY + this.mPreviewOffsetY);
        canvas.scale(params.scale, params.scale);
        Drawable d = params.drawable;
        if (d != null) {
            this.mOldBounds.set(d.getBounds());
            d.setBounds(0, 0, this.mIntrinsicIconSize, this.mIntrinsicIconSize);
            if (d instanceof FastBitmapDrawable) {
                FastBitmapDrawable fd = (FastBitmapDrawable) d;
                int oldBrightness = fd.getBrightness();
                fd.setBrightness(params.overlayAlpha);
                d.draw(canvas);
                fd.setBrightness(oldBrightness);
            } else {
                d.setColorFilter(Color.argb(params.overlayAlpha, 255, 255, 255), PorterDuff.Mode.SRC_ATOP);
                d.draw(canvas);
                d.clearColorFilter();
            }
            d.setBounds(this.mOldBounds);
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mFolder != null) {
            if (this.mFolder.getItemCount() != 0 || this.mAnimating) {
                ArrayList<View> items = this.mFolder.getItemsInReadingOrder();
                if (this.mAnimating) {
                    computePreviewDrawingParams(this.mAnimParams.drawable);
                } else {
                    Drawable d = getTopDrawable((TextView) items.get(0));
                    computePreviewDrawingParams(d);
                }
                int nItemsInPreview = Math.min(items.size(), sNumItemsInPreview);
                if (!this.mAnimating) {
                    for (int i = nItemsInPreview - 1; i >= 0; i--) {
                        TextView v = (TextView) items.get(i);
                        if (!this.mHiddenItems.contains(v.getTag())) {
                            Drawable d2 = getTopDrawable(v);
                            this.mParams = computePreviewItemDrawingParams(i, this.mParams);
                            this.mParams.drawable = d2;
                            drawPreviewItem(canvas, this.mParams);
                        }
                    }
                    return;
                }
                drawPreviewItem(canvas, this.mAnimParams);
            }
        }
    }

    private Drawable getTopDrawable(TextView v) {
        Drawable d = v.getCompoundDrawables()[1];
        return d instanceof PreloadIconDrawable ? ((PreloadIconDrawable) d).mIcon : d;
    }

    private void animateFirstItem(Drawable d, int duration, final boolean reverse, final Runnable onCompleteRunnable) {
        float tempTransX0;
        float tempTransY0;
        final PreviewItemDrawingParams finalParams = computePreviewItemDrawingParams(0, null);
        float iconSize = this.mLauncher.getDeviceProfile().iconSizePx;
        final float scale0 = iconSize / d.getIntrinsicWidth();
        if (StyleManager.getInstance().showStandardFolderIconShape()) {
            tempTransX0 = (this.mAvailableSpaceInPreview - iconSize) / 2.0f;
            tempTransY0 = ((this.mAvailableSpaceInPreview - iconSize) / 2.0f) + getPaddingTop();
        } else {
            tempTransX0 = (-(this.mAvailableSpaceInPreview - ((this.mFourGridIconSize * 2) + (this.mFourGridIconGap * 3)))) / 2.0f;
            tempTransY0 = tempTransX0;
        }
        this.mAnimParams.drawable = d;
        final float transX0 = tempTransX0;
        final float transY0 = tempTransY0;
        ValueAnimator va = LauncherAnimUtils.ofFloat(this, 0.0f, 1.0f);
        va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.FolderIcon.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float progress = ((Float) animation.getAnimatedValue()).floatValue();
                if (reverse) {
                    progress = 1.0f - progress;
                    FolderIcon.this.mPreviewBackground.setAlpha(progress);
                }
                FolderIcon.this.mAnimParams.transX = transX0 + ((finalParams.transX - transX0) * progress);
                FolderIcon.this.mAnimParams.transY = transY0 + ((finalParams.transY - transY0) * progress);
                FolderIcon.this.mAnimParams.scale = scale0 + ((finalParams.scale - scale0) * progress);
                FolderIcon.this.invalidate();
            }
        });
        va.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.FolderIcon.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                FolderIcon.this.mAnimating = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                FolderIcon.this.mAnimating = false;
                if (onCompleteRunnable != null) {
                    onCompleteRunnable.run();
                }
            }
        });
        va.setDuration(duration);
        va.start();
    }

    public void setTextVisible(boolean visible) {
        if (visible) {
            this.mFolderName.setVisibility(0);
        } else {
            this.mFolderName.setVisibility(4);
        }
    }

    public boolean getTextVisible() {
        return this.mFolderName.getVisibility() == 0;
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onItemsChanged() {
        invalidate();
        requestLayout();
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onAdd(ShortcutInfo item) {
        invalidate();
        requestLayout();
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onRemove(ShortcutInfo item) {
        invalidate();
        requestLayout();
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onCreateWithContents(List<ShortcutInfo> contents) {
        invalidate();
        requestLayout();
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onTitleChanged(CharSequence title) {
        this.mFolderName.setText(title);
        setContentDescription(String.format(getContext().getString(R.string.folder_name_format), title));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        boolean result = super.onTouchEvent(event);
        if (this.mStylusEventHelper.checkAndPerformStylusEvent(event)) {
            this.mLongPressHelper.cancelLongPress();
            return true;
        }
        switch (event.getAction()) {
            case 0:
                this.mLongPressHelper.postCheckForLongPress();
                return result;
            case 1:
            case 3:
                this.mLongPressHelper.cancelLongPress();
                return result;
            case 2:
                if (!Utilities.pointInView(this, event.getX(), event.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                    return result;
                }
                return result;
            default:
                return result;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public static boolean hasOuterRing() {
        return sHasOuterRing;
    }

    public static int getNumItemsInPreview() {
        return sNumItemsInPreview;
    }

    public void removeListeners() {
        this.mInfo.removeListener(this);
        this.mInfo.removeListener(this.mFolder);
    }

    @Override // android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
        super.setPadding(left, top + Utilities.getIconTopOffset(getContext(), this.mInfo), right, bottom);
    }
}
