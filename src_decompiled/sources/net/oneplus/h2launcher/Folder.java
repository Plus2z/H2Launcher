package net.oneplus.h2launcher;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Selection;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DragController;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.FolderInfo;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.UninstallDropTarget;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class Folder extends LinearLayout implements DragSource, View.OnClickListener, View.OnLongClickListener, DropTarget, FolderInfo.FolderListener, TextView.OnEditorActionListener, DragController.DragListener, UninstallDropTarget.UninstallSource, Stats.LaunchSourceProvider, LauncherAccessibilityDelegate.AccessibilityDragSource {
    private static final float ICON_OVERSCROLL_WIDTH_FACTOR = 0.4f;
    private static final int ON_DRAG_ENTER_EXIT_CLOSE_DELAY = 1200;
    private static final int ON_EXIT_CLOSE_DELAY = 400;
    private static final int REORDER_DELAY = 250;
    public static final int SCROLL_HINT_DURATION = 500;
    static final int STATE_ANIMATING = 1;
    static final int STATE_NONE = -1;
    static final int STATE_OPEN = 2;
    static final int STATE_SMALL = 0;
    private static final String TAG = "Launcher.Folder";
    private static String sDefaultFolderName;
    private static int sFolderNameHintColor;
    private static int sFolderNameTextColor;
    static String sHintText;
    private ValueAnimator mAdjustAnim;
    FolderAutoScrollHelper mAutoScrollHelper;
    FolderContent mContent;
    private AnimatorSet mCurrentAnimation;
    private ShortcutInfo mCurrentDragInfo;
    private View mCurrentDragView;
    private boolean mDeferDropAfterUninstall;
    Runnable mDeferredAction;
    private boolean mDeleteFolderOnDropCompleted;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mDestroyed;
    protected DragController mDragController;
    private boolean mDragInProgress;
    int mEmptyCellRank;
    private boolean mFirstEnterIconRearrange;
    FolderIcon mFolderIcon;
    float mFolderIconPivotX;
    float mFolderIconPivotY;
    public ExtendedEditText mFolderName;
    public TextView mFolderNameText;
    private FolderScrollBar mFolderScrollBar;
    private final float mHitRectExtendArea;
    public FolderInfo mInfo;
    private final InputMethodManager mInputMethodManager;
    private boolean mIsDeferDragOnDragStart;
    private boolean mIsEditingName;
    private boolean mIsExternalDrag;
    private boolean mIsIconRearrangeMode;
    private boolean mItemAddedBackToSelfViaIcon;
    final ArrayList<ItemInfo> mItemInfoInReadingOrder;
    final ArrayList<View> mItemsInReadingOrder;
    boolean mItemsInvalidated;
    protected final Launcher mLauncher;
    private final Alarm mOnExitAlarm;
    OnAlarmListener mOnExitAlarmListener;
    int mPrevTargetRank;
    private boolean mRearrangeOnClose;
    private final Alarm mReorderAlarm;
    OnAlarmListener mReorderAlarmListener;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mReorderOnScrolledToEdge;
    FolderScrollView mScrollView;

    @ViewDebug.ExportedProperty(category = "launcher", mapping = {@ViewDebug.IntToString(from = -1, to = "STATE_NONE"), @ViewDebug.IntToString(from = 0, to = "STATE_SMALL"), @ViewDebug.IntToString(from = 1, to = "STATE_ANIMATING"), @ViewDebug.IntToString(from = 2, to = "STATE_OPEN")})
    int mState;
    private boolean mSuppressFolderDeletion;
    int mTargetRank;
    private boolean mUninstallSuccessful;
    private static final PathInterpolator BACKGROUND_INTERPOLATOR = new PathInterpolator(0.2f, 0.0f, 0.2f, 1.0f);
    public static final Comparator<ItemInfo> ITEM_POS_COMPARATOR = new Comparator<ItemInfo>() { // from class: net.oneplus.h2launcher.Folder.14
        @Override // java.util.Comparator
        public int compare(ItemInfo lhs, ItemInfo rhs) {
            if (lhs.rank != rhs.rank) {
                return lhs.rank - rhs.rank;
            }
            if (lhs.cellY != rhs.cellY) {
                return lhs.cellY - rhs.cellY;
            }
            return lhs.cellX - rhs.cellX;
        }
    };

    public Folder(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mReorderAlarm = new Alarm();
        this.mOnExitAlarm = new Alarm();
        this.mItemsInReadingOrder = new ArrayList<>();
        this.mItemInfoInReadingOrder = new ArrayList<>();
        this.mEmptyCellRank = -1;
        this.mState = -1;
        this.mReorderOnScrolledToEdge = false;
        this.mRearrangeOnClose = false;
        this.mItemsInvalidated = false;
        this.mDragInProgress = false;
        this.mDeleteFolderOnDropCompleted = false;
        this.mSuppressFolderDeletion = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mIsEditingName = false;
        this.mIsDeferDragOnDragStart = false;
        this.mFirstEnterIconRearrange = true;
        this.mIsIconRearrangeMode = false;
        this.mAdjustAnim = new ValueAnimator();
        this.mReorderAlarmListener = new OnAlarmListener() { // from class: net.oneplus.h2launcher.Folder.5
            @Override // net.oneplus.h2launcher.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder.this.mContent.realTimeReorder(Folder.this.mEmptyCellRank, Folder.this.mTargetRank);
                Folder.this.mEmptyCellRank = Folder.this.mTargetRank;
            }
        };
        this.mOnExitAlarmListener = new OnAlarmListener() { // from class: net.oneplus.h2launcher.Folder.6
            @Override // net.oneplus.h2launcher.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder.this.completeDragExit();
            }
        };
        setAlwaysDrawnWithCacheEnabled(false);
        this.mInputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        Resources res = getResources();
        if (sDefaultFolderName == null) {
            sDefaultFolderName = res.getString(R.string.folder_name);
        }
        if (sHintText == null) {
            sHintText = res.getString(R.string.folder_hint_text);
        }
        sFolderNameTextColor = res.getColor(R.color.oneplus_contorl_text_color_primary_dark, context.getTheme());
        sFolderNameHintColor = res.getColor(R.color.folder_name_edit_hint_color, context.getTheme());
        this.mLauncher = (Launcher) context;
        setFocusableInTouchMode(true);
        this.mHitRectExtendArea = 0.25f * this.mLauncher.getDeviceProfile().iconSizePx;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int maxHeight = Utilities.getDimensionPixelNormalized(getContext(), R.dimen.folder_height);
        int heightMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(maxHeight, Integer.MIN_VALUE);
        super.onMeasure(widthMeasureSpec, heightMeasureSpec2);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (FolderContent) findViewById(R.id.folder_content);
        this.mContent.setFolder(this);
        this.mScrollView = (FolderScrollView) findViewById(R.id.folder_scroll_view);
        this.mAutoScrollHelper = new FolderAutoScrollHelper(this.mScrollView);
        Drawable background = getBackground();
        if (background != null) {
            background.setAlpha(0);
        }
    }

    public void updateColors() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (getInfo().opened) {
            Object tag = v.getTag();
            if (tag instanceof ShortcutInfo) {
                this.mLauncher.onClick(v);
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        Logger.d(TAG, "onLongClick");
        requestDisallowInterceptTouchEvent(false);
        if (!this.mLauncher.isDraggingEnabled()) {
            return true;
        }
        if (this.mLauncher.isIconRearrangementMode() || !getInfo().opened) {
            return false;
        }
        return startDrag(v, false);
    }

    private boolean beginDrag(View v, boolean accessible) {
        Object tag = v.getTag();
        if (tag instanceof ShortcutInfo) {
            ShortcutInfo item = (ShortcutInfo) tag;
            if (!v.isInTouchMode()) {
                return false;
            }
            this.mLauncher.getWorkspace().beginDragShared(v, new Point(), this, accessible);
            if (!StyleManager.getInstance().showSearchBar()) {
                this.mLauncher.enterSpringLoadedDragMode();
            }
            this.mCurrentDragInfo = item;
            this.mEmptyCellRank = item.rank;
            this.mCurrentDragView = v;
            this.mContent.removeItem(this.mCurrentDragView);
            this.mInfo.remove(this.mCurrentDragInfo);
            this.mDragInProgress = true;
            this.mItemAddedBackToSelfViaIcon = false;
        }
        return true;
    }

    @Override // net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.AccessibilityDragSource
    public void startDrag(CellLayout.CellInfo cellInfo, boolean accessible) {
        beginDrag(cellInfo.cell, accessible);
    }

    @Override // net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.AccessibilityDragSource
    public void enableAccessibleDrag(boolean enable) {
        this.mLauncher.getSearchDropTargetBar().enableAccessibleDrag(enable);
        for (int i = 0; i < this.mContent.getChildCount(); i++) {
            this.mContent.getPageAt(i).enableAccessibleDrag(enable, 1);
        }
        this.mLauncher.getWorkspace().setAddNewPageOnDrag(enable ? false : true);
    }

    public boolean startDrag(View v, boolean accessible) {
        Object tag = v.getTag();
        if (tag instanceof ShortcutInfo) {
            ShortcutInfo item = (ShortcutInfo) tag;
            if (!v.isInTouchMode()) {
                return false;
            }
            this.mEmptyCellRank = item.rank;
            this.mCurrentDragView = v;
            this.mDragController.addDragListener(this);
            this.mLauncher.getWorkspace().beginDragShared(v, this, accessible);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0043  */
    @Override // net.oneplus.h2launcher.DragController.DragListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDragStart(net.oneplus.h2launcher.DragSource r6, java.lang.Object r7, int r8) {
        /*
            r5 = this;
            r3 = 1
            if (r6 == r5) goto L4
        L3:
            return
        L4:
            net.oneplus.h2launcher.FolderContent r1 = r5.mContent
            android.view.View r2 = r5.mCurrentDragView
            r1.removeItem(r2)
            boolean r1 = r5.mIsIconRearrangeMode
            if (r1 != 0) goto L12
            r5.enterIconRearrangeMode()
        L12:
            boolean r1 = r7 instanceof net.oneplus.h2launcher.ShortcutInfo
            if (r1 == 0) goto L2c
            r5.mItemsInvalidated = r3
            net.oneplus.h2launcher.Folder$SuppressInfoChanges r0 = new net.oneplus.h2launcher.Folder$SuppressInfoChanges
            r0.<init>()
            r2 = 0
            net.oneplus.h2launcher.FolderInfo r1 = r5.mInfo     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L52
            net.oneplus.h2launcher.ShortcutInfo r7 = (net.oneplus.h2launcher.ShortcutInfo) r7     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L52
            r1.remove(r7)     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L52
            if (r0 == 0) goto L2c
            if (r2 == 0) goto L37
            r0.close()     // Catch: java.lang.Throwable -> L32
        L2c:
            r5.mDragInProgress = r3
            r1 = 0
            r5.mItemAddedBackToSelfViaIcon = r1
            goto L3
        L32:
            r1 = move-exception
            r2.addSuppressed(r1)
            goto L2c
        L37:
            r0.close()
            goto L2c
        L3b:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L3d
        L3d:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
        L41:
            if (r0 == 0) goto L48
            if (r2 == 0) goto L4e
            r0.close()     // Catch: java.lang.Throwable -> L49
        L48:
            throw r1
        L49:
            r3 = move-exception
            r2.addSuppressed(r3)
            goto L48
        L4e:
            r0.close()
            goto L48
        L52:
            r1 = move-exception
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Folder.onDragStart(net.oneplus.h2launcher.DragSource, java.lang.Object, int):void");
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragEnd() {
        if (this.mIsExternalDrag && this.mDragInProgress) {
            completeDragExit();
        }
        this.mDragController.removeDragListener(this);
    }

    void sendCustomAccessibilityEvent(int type, String text) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            AccessibilityEvent event = AccessibilityEvent.obtain(type);
            onInitializeAccessibilityEvent(event);
            event.getText().add(text);
            accessibilityManager.sendAccessibilityEvent(event);
        }
    }

    public boolean isEditingName() {
        return this.mIsEditingName;
    }

    public void startEditingFolderName() {
        post(new Runnable() { // from class: net.oneplus.h2launcher.Folder.1
            @Override // java.lang.Runnable
            public void run() {
                Folder.this.mFolderName.setHint("");
                Folder.this.mIsEditingName = true;
                Folder.this.adjustFolderPosition();
            }
        });
    }

    public void dismissEditingName() {
        this.mInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        doneEditingFolderName(true);
        adjustFolderPosition();
    }

    public void doneEditingFolderName(boolean commit) {
        this.mFolderName.setHint(sHintText);
        String newTitle = this.mFolderName.getText().toString();
        this.mInfo.setTitle(newTitle);
        LauncherModel.updateItemInDatabase(this.mLauncher, this.mInfo);
        if (commit) {
            sendCustomAccessibilityEvent(32, String.format(getContext().getString(R.string.folder_renamed), newTitle));
        }
        this.mFolderName.clearFocus();
        Selection.setSelection(this.mFolderName.getText(), 0, 0);
        this.mIsEditingName = false;
        updateFolderNameText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustFolderPosition() {
        if (getItemCount() <= 8) {
            int minHeight = ((int) this.mContent.getItemHeight()) * 3;
            int startMinHeight = this.mIsEditingName ? this.mContent.getMinimumHeight() : minHeight;
            int endMinHeight = this.mIsEditingName ? minHeight : 0;
            this.mAdjustAnim.cancel();
            this.mAdjustAnim = ValueAnimator.ofInt(startMinHeight, endMinHeight);
            this.mAdjustAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.Folder.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    Folder.this.mContent.setMinimumHeight(((Integer) animation.getAnimatedValue()).intValue());
                }
            });
            this.mAdjustAnim.setDuration(175L).setInterpolator(new PathInterpolator(ICON_OVERSCROLL_WIDTH_FACTOR, 0.0f, 0.6f, 1.0f));
            this.mAdjustAnim.start();
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
        if (actionId != 6) {
            return false;
        }
        dismissEditingName();
        return true;
    }

    public View getEditTextRegion() {
        return this.mFolderName;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent ev) {
        return true;
    }

    public void setDragController(DragController dragController) {
        this.mDragController = dragController;
    }

    public void setFolderIcon(FolderIcon icon) {
        this.mFolderIcon = icon;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        return true;
    }

    @Override // android.view.View
    public View focusSearch(int direction) {
        return FocusFinder.getInstance().findNextFocus(this, null, direction);
    }

    public FolderInfo getInfo() {
        return this.mInfo;
    }

    public void bind(FolderInfo info) {
        this.mInfo = info;
        List<ShortcutInfo> children = info.getContents();
        Collections.sort(children, ITEM_POS_COMPARATOR);
        this.mContent.bindItems(children);
        this.mItemsInvalidated = true;
        updateTextViewFocus();
        this.mInfo.addListener(this);
        this.mFolderIcon.post(new Runnable() { // from class: net.oneplus.h2launcher.Folder.3
            @Override // java.lang.Runnable
            public void run() {
                if (Folder.this.getItemCount() <= 1) {
                    Folder.this.replaceFolderWithFinalItem(false);
                }
            }
        });
    }

    public void bindFolderName(ExtendedEditText folderName, TextView folderNameText) {
        this.mFolderName = folderName;
        this.mFolderNameText = folderNameText;
        if (!sDefaultFolderName.contentEquals(this.mInfo.title)) {
            this.mFolderName.setText(this.mInfo.title);
        } else {
            this.mFolderName.setText("");
        }
        updateFolderNameText();
    }

    @SuppressLint({"InflateParams"})
    public static Folder fromXml(Launcher launcher) {
        return (Folder) launcher.getLayoutInflater().inflate(R.layout.user_folder, (ViewGroup) null);
    }

    public void open() {
        this.mContent.completePendingPageChanges();
        if (!this.mDragInProgress) {
            this.mScrollView.scrollTo(0, 0);
        }
        this.mDeleteFolderOnDropCompleted = false;
        if (this.mDragController.isDragging()) {
            this.mDragController.forceTouchMove();
        }
        this.mContent.verifyVisibleHighResIcons();
        this.mContent.setFocusOnFirstChild();
        updateCurrentPageDynamicIconState();
    }

    public void beginExternalDrag() {
        this.mOnExitAlarm.setOnAlarmListener(this.mOnExitAlarmListener);
        this.mOnExitAlarm.setAlarm(1200L);
        int oldRowCount = Math.min(3, this.mContent.getGridCountY());
        this.mEmptyCellRank = this.mContent.allocateRankForNewItem();
        int newRowCount = Math.min(3, this.mContent.getGridCountY());
        this.mIsExternalDrag = true;
        this.mDragInProgress = true;
        boolean rowChanged = oldRowCount != newRowCount;
        if (getWidth() == 0 || getHeight() == 0 || rowChanged) {
            addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: net.oneplus.h2launcher.Folder.4
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    Folder.this.removeOnLayoutChangeListener(this);
                    if (!Folder.this.mIsIconRearrangeMode) {
                        Folder.this.enterIconRearrangeMode();
                    }
                }
            });
        } else if (!this.mIsIconRearrangeMode) {
            enterIconRearrangeMode();
        }
        this.mDragController.addDragListener(this);
    }

    public void close(boolean wasAnimated) {
        this.mDragController.removeDropTarget(this);
        clearFocus();
        if (wasAnimated) {
            this.mFolderIcon.requestFocus();
        }
        if (this.mRearrangeOnClose) {
            rearrangeChildren();
            this.mRearrangeOnClose = false;
        }
        if (getItemCount() <= 1) {
            if (!this.mDragInProgress && !this.mSuppressFolderDeletion) {
                replaceFolderWithFinalItem(wasAnimated);
            } else if (this.mDragInProgress) {
                this.mDeleteFolderOnDropCompleted = true;
            }
        }
        if (this.mIsIconRearrangeMode) {
            exitIconRearrangeMode();
        }
        this.mSuppressFolderDeletion = false;
        clearDragInfo();
        finishUpdateDynamicIconState();
        this.mState = 0;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public boolean acceptDrop(DropTarget.DragObject d) {
        ItemInfo item = (ItemInfo) d.dragInfo;
        int itemType = item.itemType;
        return (itemType == 0 || itemType == 6 || itemType == 1) && !isFull();
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDragEnter(DropTarget.DragObject d) {
        this.mPrevTargetRank = -1;
        this.mOnExitAlarm.cancelAlarm();
    }

    @TargetApi(17)
    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDragOver(DropTarget.DragObject d) {
        onDragOver(d, 250);
    }

    private int getTargetRank(DropTarget.DragObject d, float[] recycle) {
        float[] recycle2 = d.getVisualCenter(recycle);
        return this.mContent.findNearestArea(((int) recycle2[0]) - getPaddingLeft(), (((int) recycle2[1]) + this.mScrollView.getScrollY()) - getPaddingTop());
    }

    void onDragOver(DropTarget.DragObject d, int reorderDelay) {
        float[] r = new float[2];
        this.mTargetRank = getTargetRank(d, r);
        if (this.mTargetRank != this.mPrevTargetRank) {
            this.mReorderAlarm.cancelAlarm();
            this.mReorderAlarm.setOnAlarmListener(this.mReorderAlarmListener);
            this.mReorderAlarm.setAlarm(250L);
            this.mPrevTargetRank = this.mTargetRank;
        }
        float y = r[1];
        float cellOverlap = this.mContent.getItemHeight() * ICON_OVERSCROLL_WIDTH_FACTOR;
        boolean isOutsideTopEdge = y < cellOverlap;
        boolean isOutsideBottomEdge = y > ((float) getHeight()) - cellOverlap;
        if (isOutsideTopEdge) {
            performAutoScroll(d);
            return;
        }
        if (isOutsideBottomEdge) {
            performAutoScroll(d);
            return;
        }
        this.mAutoScrollHelper.setEnabled(false);
        if (this.mReorderOnScrolledToEdge) {
            this.mReorderOnScrolledToEdge = false;
            this.mReorderAlarm.cancelAlarm();
            this.mReorderAlarm.setOnAlarmListener(this.mReorderAlarmListener);
            this.mReorderAlarm.setAlarm(1L);
        }
    }

    private void performAutoScroll(DropTarget.DragObject d) {
        this.mReorderAlarm.cancelAlarm();
        this.mTargetRank = this.mEmptyCellRank;
        if (!this.mAutoScrollHelper.isEnabled()) {
            this.mAutoScrollHelper.setEnabled(true);
        }
        long downTime = SystemClock.uptimeMillis();
        MotionEvent translatedEv = MotionEvent.obtain(downTime, downTime, 2, d.x, d.y, 0);
        this.mAutoScrollHelper.onTouch(this, translatedEv);
        translatedEv.recycle();
        this.mReorderOnScrolledToEdge = true;
    }

    public void completeDragExit() {
        if (this.mInfo.opened) {
            this.mRearrangeOnClose = true;
            this.mLauncher.closeFolder(this, true);
            if (this.mDragController.isDragging()) {
                this.mLauncher.enterSpringLoadedDragMode();
                return;
            }
            return;
        }
        if (this.mState == 1) {
            this.mRearrangeOnClose = true;
        } else {
            rearrangeChildren();
            clearDragInfo();
        }
    }

    private void clearDragInfo() {
        this.mCurrentDragView = null;
        this.mIsExternalDrag = false;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDragExit(DropTarget.DragObject d) {
        this.mAutoScrollHelper.setEnabled(false);
        if (!d.dragComplete) {
            this.mOnExitAlarm.setOnAlarmListener(this.mOnExitAlarmListener);
            this.mOnExitAlarm.setAlarm(400L);
        }
        this.mReorderAlarm.cancelAlarm();
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void prepareAccessibilityDrop() {
        if (this.mReorderAlarm.alarmPending()) {
            this.mReorderAlarm.cancelAlarm();
            this.mReorderAlarmListener.onAlarm(this.mReorderAlarm);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0131  */
    @Override // net.oneplus.h2launcher.DragSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDropCompleted(final android.view.View r14, final net.oneplus.h2launcher.DropTarget.DragObject r15, final boolean r16, final boolean r17) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Folder.onDropCompleted(android.view.View, net.oneplus.h2launcher.DropTarget$DragObject, boolean, boolean):void");
    }

    @Override // net.oneplus.h2launcher.DragSource
    public float getIntrinsicIconScaleFactor() {
        return 1.0f;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsFlingToDelete() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsAppInfoDropTarget() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsDeleteDropTarget() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DragSource
    public boolean supportsEditDropTarget() {
        return true;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onFlingToDelete(DropTarget.DragObject d, PointF vec) {
    }

    @Override // net.oneplus.h2launcher.DragSource
    public void onFlingToDeleteCompleted() {
    }

    private void updateItemLocationsInDatabaseBatch() {
        ArrayList<View> list = getItemsInReadingOrder();
        ArrayList<ItemInfo> items = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            View v = list.get(i);
            ItemInfo info = (ItemInfo) v.getTag();
            info.rank = i;
            items.add(info);
        }
        LauncherModel.moveItemsInDatabase(this.mLauncher, items, this.mInfo.id, 0);
    }

    public void addItemLocationsInDatabase() {
        ArrayList<View> list = getItemsInReadingOrder();
        for (int i = 0; i < list.size(); i++) {
            View v = list.get(i);
            ItemInfo info = (ItemInfo) v.getTag();
            LauncherModel.addItemToDatabase(this.mLauncher, info, this.mInfo.id, 0L, info.cellX, info.cellY);
        }
    }

    public void notifyDrop() {
        if (this.mDragInProgress) {
            this.mItemAddedBackToSelfViaIcon = true;
        }
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public boolean isDropEnabled() {
        return true;
    }

    public boolean isFull() {
        return this.mContent.isFull();
    }

    public float getPivotXForIconAnimation() {
        return this.mFolderIconPivotX;
    }

    public float getPivotYForIconAnimation() {
        return this.mFolderIconPivotY;
    }

    public void rearrangeChildren() {
        rearrangeChildren(-1);
    }

    public void rearrangeChildren(int itemCount) {
        ArrayList<View> views = getItemsInReadingOrder();
        this.mContent.arrangeChildren(views, Math.max(itemCount, views.size()));
        this.mItemsInvalidated = true;
    }

    public int getItemCount() {
        return this.mContent.getItemCount();
    }

    void replaceFolderWithFinalItem(boolean animate) {
        Logger.d(TAG, "replaceFolderWithFinalItem(" + animate + ") folder id = " + getId());
        Runnable onCompleteRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Folder.8
            @Override // java.lang.Runnable
            public void run() {
                int itemCount = Folder.this.mInfo.getContents().size();
                if (itemCount <= 1) {
                    View newIcon = null;
                    if (itemCount == 1) {
                        CellLayout cellLayout = Folder.this.mLauncher.getCellLayout(Folder.this.mInfo.container, Folder.this.mInfo.screenId);
                        ShortcutInfo finalItem = Folder.this.mInfo.getContents().remove(0);
                        View newIcon2 = Folder.this.mLauncher.createShortcut(cellLayout, finalItem);
                        LauncherModel.addOrMoveItemInDatabase(Folder.this.mLauncher, finalItem, Folder.this.mInfo.container, Folder.this.mInfo.screenId, Folder.this.mInfo.cellX, Folder.this.mInfo.cellY);
                        newIcon = newIcon2;
                    }
                    Folder.this.mLauncher.removeItem(Folder.this.mFolderIcon, Folder.this.mInfo, true);
                    if (Folder.this.mFolderIcon instanceof DropTarget) {
                        Folder.this.mDragController.removeDropTarget((DropTarget) Folder.this.mFolderIcon);
                    }
                    if (newIcon != null) {
                        Folder.this.mLauncher.getWorkspace().addInScreenFromBind(newIcon, Folder.this.mInfo.container, Folder.this.mInfo.screenId, Folder.this.mInfo.cellX, Folder.this.mInfo.cellY, Folder.this.mInfo.spanX, Folder.this.mInfo.spanY);
                        newIcon.requestFocus();
                    }
                }
            }
        };
        View finalChild = this.mContent.getLastItem();
        if (finalChild != null) {
            if (animate) {
                this.mFolderIcon.performDestroyAnimation(finalChild, onCompleteRunnable);
            } else {
                onCompleteRunnable.run();
            }
        } else {
            onCompleteRunnable.run();
        }
        this.mDestroyed = true;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public void updateTextViewFocus() {
        View firstChild = this.mContent.getFirstItem();
        final View lastChild = this.mContent.getLastItem();
        if (firstChild != null && lastChild != null) {
            setNextFocusDownId(firstChild.getId());
            setNextFocusRightId(firstChild.getId());
            setNextFocusLeftId(firstChild.getId());
            setNextFocusUpId(firstChild.getId());
            setOnKeyListener(new View.OnKeyListener() { // from class: net.oneplus.h2launcher.Folder.9
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    boolean isShiftPlusTab = keyCode == 61 && event.hasModifiers(1);
                    if (isShiftPlusTab && Folder.this.isFocused()) {
                        return lastChild.requestFocus();
                    }
                    return false;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0102  */
    @Override // net.oneplus.h2launcher.DropTarget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDrop(net.oneplus.h2launcher.DropTarget.DragObject r15) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.Folder.onDrop(net.oneplus.h2launcher.DropTarget$DragObject):void");
    }

    public void hideItem(ShortcutInfo info) {
        View v = getViewForInfo(info);
        v.setVisibility(4);
    }

    public void showItem(ShortcutInfo info) {
        View v = getViewForInfo(info);
        v.setVisibility(0);
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onAdd(ShortcutInfo item) {
        this.mContent.createAndAddViewForRank(item, this.mContent.allocateRankForNewItem());
        this.mItemsInvalidated = true;
        LauncherModel.addOrMoveItemInDatabase(this.mLauncher, item, this.mInfo.id, 0L, item.cellX, item.cellY);
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onRemove(ShortcutInfo item) {
        onRemove(item, true);
    }

    public void onRemove(ShortcutInfo item, boolean animate) {
        this.mItemsInvalidated = true;
        View v = getViewForInfo(item);
        this.mContent.removeItem(v);
        if (this.mState == 1) {
            this.mRearrangeOnClose = true;
        } else {
            rearrangeChildren();
        }
        if (getItemCount() <= 1) {
            if (this.mInfo.opened) {
                this.mLauncher.closeFolder(this, true);
            } else {
                replaceFolderWithFinalItem(animate);
            }
        }
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onCreateWithContents(List<ShortcutInfo> contents) {
        this.mContent.bindItems(contents);
        this.mItemsInvalidated = true;
        updateColors();
        updateItemLocationsInDatabaseBatch();
        if (getItemCount() <= 1) {
            replaceFolderWithFinalItem(true);
        }
    }

    public View getViewForInfo(final ShortcutInfo item) {
        return this.mContent.iterateOverItems(new Workspace.ItemOperator() { // from class: net.oneplus.h2launcher.Folder.11
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view, View parent) {
                return info == item;
            }
        });
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onItemsChanged() {
        updateTextViewFocus();
        if (this.mFolderScrollBar != null) {
            this.mFolderScrollBar.notifyFolderItemChanged();
        }
    }

    @Override // net.oneplus.h2launcher.FolderInfo.FolderListener
    public void onTitleChanged(CharSequence title) {
    }

    public ArrayList<View> getItemsInReadingOrder() {
        if (this.mItemsInvalidated) {
            this.mItemsInReadingOrder.clear();
            this.mContent.iterateOverItems(new Workspace.ItemOperator() { // from class: net.oneplus.h2launcher.Folder.12
                @Override // net.oneplus.h2launcher.Workspace.ItemOperator
                public boolean evaluate(ItemInfo info, View view, View parent) {
                    Folder.this.mItemsInReadingOrder.add(view);
                    return false;
                }
            });
            this.mItemsInvalidated = false;
        }
        return this.mItemsInReadingOrder;
    }

    public ArrayList<ItemInfo> getItemInfoInReadingOrder() {
        this.mItemInfoInReadingOrder.clear();
        this.mContent.iterateOverItems(new Workspace.ItemOperator() { // from class: net.oneplus.h2launcher.Folder.13
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view, View parent) {
                Folder.this.mItemInfoInReadingOrder.add(info);
                return false;
            }
        });
        return this.mItemInfoInReadingOrder;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void getHitRectRelativeToDragLayer(Rect outRect) {
        getHitRect(outRect);
        if (this.mDragController.isDragging()) {
            outRect.top = (int) (outRect.top - this.mHitRectExtendArea);
            outRect.bottom = (int) (outRect.bottom + this.mHitRectExtendArea);
        }
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void getLocationInDragLayer(int[] loc) {
    }

    @Override // net.oneplus.h2launcher.Stats.LaunchSourceProvider
    public void fillInLaunchSourceData(Bundle sourceData) {
        Stats.LaunchSourceUtils.populateSourceDataFromAncestorProvider(this.mFolderIcon, sourceData);
        sourceData.putString(Stats.SOURCE_EXTRA_SUB_CONTAINER, Stats.SUB_CONTAINER_FOLDER);
        sourceData.putInt(Stats.SOURCE_EXTRA_SUB_CONTAINER_PAGE, 0);
    }

    public void updateCurrentPageDynamicIconState() {
        Logger.d(TAG, "DynamicIcon Folder updateDynamicIconState shouldUpdateDynamicIconState = " + this.mLauncher.shouldUpdateDynamicIconState());
        if (this.mLauncher.shouldUpdateDynamicIconState()) {
            this.mContent.updateCurrentPageDynamicIconState();
        }
    }

    public void finishUpdateDynamicIconState() {
        this.mContent.finishUpdateDynamicIconState();
    }

    public void invalidateFolderIcon() {
        this.mFolderIcon.invalidate();
    }

    public void resizeView() {
        if (getItemCount() < 16) {
        }
    }

    public FolderIcon getFolderIcon() {
        return this.mFolderIcon;
    }

    @Override // net.oneplus.h2launcher.UninstallDropTarget.UninstallSource
    public void onUninstallActivityReturned(boolean success) {
        this.mDeferDropAfterUninstall = false;
        this.mUninstallSuccessful = success;
        if (this.mDeferredAction != null) {
            this.mDeferredAction.run();
        }
    }

    @Override // net.oneplus.h2launcher.UninstallDropTarget.UninstallSource
    public void deferCompleteDropAfterUninstallActivity() {
        this.mDeferDropAfterUninstall = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SuppressInfoChanges implements AutoCloseable {
        SuppressInfoChanges() {
            Folder.this.mInfo.removeListener(Folder.this);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            Folder.this.mInfo.addListener(Folder.this);
            Folder.this.updateTextViewFocus();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            Logger.d(TAG, "action down on folder(" + ((Object) this.mInfo.title) + ") id:" + this.mInfo.id);
            if (getParent() instanceof DragLayer) {
                requestDisallowInterceptTouchEvent(true);
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    public void enterIconRearrangeMode() {
        Logger.d(TAG, "enterIconRearrangeMode# width=" + getWidth() + ", height=" + getHeight());
        playIconRearrangeAnimation(true);
        this.mIsIconRearrangeMode = true;
        if (this.mFolderScrollBar != null) {
            this.mFolderScrollBar.notifyFolderRearrange(true);
        }
    }

    public void exitIconRearrangeMode() {
        Logger.d(TAG, "exitIconRearrangeMode");
        this.mIsIconRearrangeMode = false;
        playIconRearrangeAnimation(false);
        if (this.mFolderScrollBar != null) {
            this.mFolderScrollBar.notifyFolderRearrange(false);
        }
    }

    private void playIconRearrangeAnimation(boolean isEnter) {
        float startScale;
        AnimatorSet animation = new AnimatorSet();
        if (this.mCurrentAnimation != null && this.mCurrentAnimation.isRunning()) {
            this.mCurrentAnimation.cancel();
        }
        final Drawable background = getBackground();
        final int folderWidth = getWidth();
        final int folderHeight = getHeight();
        int backgroundWidth = background.getBounds().width();
        if (this.mFirstEnterIconRearrange) {
            startScale = isEnter ? 0.8f : 1.0f;
        } else {
            startScale = backgroundWidth / folderWidth;
        }
        float endScale = isEnter ? 1.0f : 0.8f;
        if (startScale != endScale) {
            ValueAnimator backgroundScaleAnim = ValueAnimator.ofFloat(startScale, endScale);
            backgroundScaleAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.Folder.15
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation2) {
                    float scale = ((Float) animation2.getAnimatedValue()).floatValue();
                    int x = (int) (((1.0f - scale) * folderWidth) / 2.0f);
                    int y = (int) (((1.0f - scale) * folderHeight) / 2.0f);
                    int width = (int) (folderWidth * scale);
                    int height = (int) (folderHeight * scale);
                    background.setBounds(x, y, x + width, y + height);
                }
            });
            animation.play(backgroundScaleAnim);
            this.mFirstEnterIconRearrange = false;
        }
        int startAlpha = background.getAlpha();
        int endAlpha = isEnter ? 255 : 0;
        if (endAlpha != startAlpha) {
            ValueAnimator drawableAlphaAnim = ValueAnimator.ofInt(startAlpha, endAlpha);
            drawableAlphaAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.Folder.16
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation2) {
                    int alpha = ((Integer) animation2.getAnimatedValue()).intValue();
                    background.setAlpha(alpha);
                }
            });
            animation.play(drawableAlphaAnim);
        }
        float startElevation = getElevation();
        float endElevation = isEnter ? getResources().getDimensionPixelSize(R.dimen.oneplus_contorl_shadow_z4) : 0.0f;
        if (endAlpha != startAlpha) {
            ValueAnimator elevationAnim = ValueAnimator.ofFloat(startElevation, endElevation);
            elevationAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.Folder.17
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation2) {
                    Folder.this.setElevation(((Float) animation2.getAnimatedValue()).floatValue());
                }
            });
            animation.play(elevationAnim);
        }
        animation.setDuration(225L);
        animation.setInterpolator(BACKGROUND_INTERPOLATOR);
        animation.start();
        this.mCurrentAnimation = animation;
    }

    private void updateFolderNameText() {
        if (this.mFolderName.getText().toString().isEmpty()) {
            this.mFolderNameText.setText(this.mFolderName.getHint().toString());
            this.mFolderNameText.setTextColor(sFolderNameHintColor);
        } else {
            this.mFolderNameText.setText(this.mFolderName.getText().toString());
            this.mFolderNameText.setTextColor(sFolderNameTextColor);
        }
    }

    public void setFolderScrollBar(FolderScrollBar scrollBar) {
        this.mFolderScrollBar = scrollBar;
        this.mFolderScrollBar.setFolderScrollView(this.mScrollView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isScrolledToTop() {
        return this.mScrollView != null && this.mScrollView.getScrollY() <= 0;
    }

    public static void updateHintText(Context context) {
        Resources res = context.getResources();
        sHintText = res.getString(R.string.folder_hint_text);
    }

    public void setScaledSize() {
        this.mContent.setScaledSize();
    }

    public void moveToLastPage() {
        this.mScrollView.smoothScrollTo(0, this.mContent.getHeight());
    }
}
