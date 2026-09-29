package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.DoubleTapTouchListener;
import net.oneplus.h2launcher.FolderIcon;
import net.oneplus.h2launcher.accessibility.DragAndDropAccessibilityDelegate;
import net.oneplus.h2launcher.accessibility.FolderAccessibilityHelper;
import net.oneplus.h2launcher.accessibility.WorkspaceAccessibilityHelper;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.dynamicicon.IDynamicIcon;
import net.oneplus.h2launcher.dynamicicon.IDynamicIconContainer;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class CellLayout extends ViewGroup implements BubbleTextView.BubbleTextShadowHandler, IDynamicIconContainer, DoubleTapTouchListener.OnDoubleTapSettingsChangeListener {
    private static final int BACKGROUND_ACTIVATE_DURATION = 120;
    private static final boolean DEBUG_VISUALIZE_OCCUPIED = false;
    private static final boolean DESTRUCTIVE_REORDER = false;
    public static final int FOLDER_ACCESSIBILITY_DRAG = 1;
    private static final int INVALID_DIRECTION = -100;
    static final int LANDSCAPE = 0;
    public static final int MODE_ACCEPT_DROP = 4;
    public static final int MODE_DRAG_OVER = 1;
    public static final int MODE_ON_DROP = 2;
    public static final int MODE_ON_DROP_EXTERNAL = 3;
    public static final int MODE_SHOW_REORDER_HINT = 0;
    static final int PORTRAIT = 1;
    private static final int REORDER_ANIMATION_DURATION = 150;
    private static final float REORDER_PREVIEW_MAGNITUDE = 0.12f;
    public static final int WORKSPACE_ACCESSIBILITY_DRAG = 2;
    private ImageView mAddScreenOverlay;
    private final TransitionDrawable mBackground;
    private float mBackgroundAlpha;
    int mCellHeight;
    int mCellWidth;
    int mCountX;
    int mCountY;
    private boolean mDeleted;
    private int[] mDirectionVector;
    private final int[] mDragCell;
    float[] mDragOutlineAlphas;
    private InterruptibleInOutAnimator[] mDragOutlineAnims;
    private int mDragOutlineCurrent;
    private final Paint mDragOutlinePaint;
    Rect[] mDragOutlines;
    private boolean mDragging;
    private boolean mDrawBackground;
    private boolean mDropPending;
    private TimeInterpolator mEaseOutInterpolator;
    private int mFixedCellHeight;
    private int mFixedCellWidth;
    private int mFixedHeight;
    private int mFixedWidth;
    private int[] mFolderLeaveBehindCell;
    private ArrayList<FolderIcon.FolderRingAnimator> mFolderOuterRings;
    int mHeightGap;
    private float mHotseatScale;
    private View.OnTouchListener mInterceptTouchListener;
    private ArrayList<View> mIntersectingViews;
    private boolean mIsCustomContentScreen;
    private boolean mIsDragOverlapping;
    private boolean mIsDragTarget;
    private boolean mIsHotseat;
    private boolean mItemPlacementDirty;
    private Launcher mLauncher;
    private int mMaxGap;
    boolean[][] mOccupied;
    private Rect mOccupiedRect;
    private int mOriginalHeightGap;
    private int mOriginalWidthGap;
    int[] mPreviousReorderDirection;
    HashMap<LayoutParams, Animator> mReorderAnimators;
    float mReorderPreviewAnimationMagnitude;
    HashMap<View, ReorderPreviewAnimation> mShakeAnimators;
    private ShortcutAndWidgetContainer mShortcutsAndWidgets;
    private StylusEventHelper mStylusEventHelper;
    private ArrayList<SwapInfo> mSwapInformation;
    final int[] mTempLocation;
    private final Rect mTempRect;
    private final Stack<Rect> mTempRectStack;
    boolean[][] mTmpOccupied;
    final int[] mTmpPoint;
    private int mTouchDownX;
    private int mTouchDownY;
    private final ClickShadowView mTouchFeedbackView;
    private DragAndDropAccessibilityDelegate mTouchHelper;
    private boolean mUseTouchHelper;
    int mWidthGap;
    static final String TAG = CellLayout.class.getSimpleName();
    private static final Paint sPaint = new Paint();

    public CellLayout(Context context) {
        this(context, null);
    }

    public CellLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CellLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDropPending = false;
        this.mIsDragTarget = true;
        this.mTmpPoint = new int[2];
        this.mTempLocation = new int[2];
        this.mSwapInformation = new ArrayList<>();
        this.mFolderOuterRings = new ArrayList<>();
        this.mFolderLeaveBehindCell = new int[]{-1, -1};
        this.mDrawBackground = true;
        this.mFixedWidth = -1;
        this.mFixedHeight = -1;
        this.mIsDragOverlapping = false;
        this.mDragOutlines = new Rect[4];
        this.mDragOutlineAlphas = new float[this.mDragOutlines.length];
        this.mDragOutlineAnims = new InterruptibleInOutAnimator[this.mDragOutlines.length];
        this.mDragOutlineCurrent = 0;
        this.mDragOutlinePaint = new Paint();
        this.mReorderAnimators = new HashMap<>();
        this.mShakeAnimators = new HashMap<>();
        this.mItemPlacementDirty = false;
        this.mDragCell = new int[2];
        this.mDragging = false;
        this.mIsHotseat = false;
        this.mHotseatScale = 1.0f;
        this.mIntersectingViews = new ArrayList<>();
        this.mOccupiedRect = new Rect();
        this.mDirectionVector = new int[2];
        this.mPreviousReorderDirection = new int[2];
        this.mTempRect = new Rect();
        this.mUseTouchHelper = false;
        this.mTempRectStack = new Stack<>();
        setWillNotDraw(false);
        setClipToPadding(false);
        if (context instanceof Launcher) {
            this.mLauncher = (Launcher) context;
        }
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.CellLayout, defStyle, 0);
        this.mCellHeight = -1;
        this.mCellWidth = -1;
        this.mFixedCellHeight = -1;
        this.mFixedCellWidth = -1;
        this.mOriginalWidthGap = 0;
        this.mWidthGap = 0;
        this.mOriginalHeightGap = 0;
        this.mHeightGap = 0;
        this.mMaxGap = Integer.MAX_VALUE;
        this.mCountX = grid.inv.numColumns;
        this.mCountY = grid.inv.numRows;
        this.mOccupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mCountX, this.mCountY);
        this.mTmpOccupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mCountX, this.mCountY);
        this.mPreviousReorderDirection[0] = -100;
        this.mPreviousReorderDirection[1] = -100;
        a.recycle();
        setAlwaysDrawnWithCacheEnabled(false);
        Resources res = getResources();
        this.mHotseatScale = grid.hotseatIconSizePx / grid.iconSizePx;
        this.mBackground = (TransitionDrawable) res.getDrawable(R.drawable.bg_screenpanel);
        this.mBackground.setCallback(this);
        this.mReorderPreviewAnimationMagnitude = REORDER_PREVIEW_MAGNITUDE * grid.iconSizePx;
        this.mEaseOutInterpolator = new DecelerateInterpolator(2.5f);
        int[] iArr = this.mDragCell;
        this.mDragCell[1] = -1;
        iArr[0] = -1;
        for (int i = 0; i < this.mDragOutlines.length; i++) {
            this.mDragOutlines[i] = new Rect(-1, -1, -1, -1);
        }
        int duration = res.getInteger(R.integer.config_dragOutlineFadeTime);
        float toAlphaValue = res.getInteger(R.integer.config_dragOutlineMaxAlpha);
        Arrays.fill(this.mDragOutlineAlphas, 0.0f);
        for (int i2 = 0; i2 < this.mDragOutlineAnims.length; i2++) {
            final InterruptibleInOutAnimator anim = new InterruptibleInOutAnimator(this, duration, 0.0f, toAlphaValue);
            anim.getAnimator().setInterpolator(this.mEaseOutInterpolator);
            final int thisIndex = i2;
            anim.getAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.CellLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    Bitmap outline = (Bitmap) anim.getTag();
                    if (outline == null) {
                        animation.cancel();
                    } else {
                        CellLayout.this.mDragOutlineAlphas[thisIndex] = ((Float) animation.getAnimatedValue()).floatValue();
                        CellLayout.this.invalidate(CellLayout.this.mDragOutlines[thisIndex]);
                    }
                }
            });
            anim.getAnimator().addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.CellLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (((Float) ((ValueAnimator) animation).getAnimatedValue()).floatValue() == 0.0f) {
                        anim.setTag(null);
                    }
                }
            });
            this.mDragOutlineAnims[i2] = anim;
        }
        this.mShortcutsAndWidgets = new ShortcutAndWidgetContainer(context);
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap, this.mCountX, this.mCountY);
        this.mStylusEventHelper = new StylusEventHelper(this);
        this.mTouchFeedbackView = new ClickShadowView(context);
        addView(this.mTouchFeedbackView);
        addView(this.mShortcutsAndWidgets);
        this.mDeleted = false;
    }

    @TargetApi(21)
    public void enableAccessibleDrag(boolean enable, int dragType) {
        this.mUseTouchHelper = enable;
        if (!enable) {
            ViewCompat.setAccessibilityDelegate(this, null);
            setImportantForAccessibility(2);
            getShortcutsAndWidgets().setImportantForAccessibility(2);
            setOnClickListener(this.mLauncher);
        } else {
            if (dragType == 2 && !(this.mTouchHelper instanceof WorkspaceAccessibilityHelper)) {
                this.mTouchHelper = new WorkspaceAccessibilityHelper(this);
            } else if (dragType == 1 && !(this.mTouchHelper instanceof FolderAccessibilityHelper)) {
                this.mTouchHelper = new FolderAccessibilityHelper(this);
            }
            ViewCompat.setAccessibilityDelegate(this, this.mTouchHelper);
            setImportantForAccessibility(1);
            getShortcutsAndWidgets().setImportantForAccessibility(1);
            setOnClickListener(this.mTouchHelper);
        }
        if (getParent() != null) {
            getParent().notifySubtreeAccessibilityStateChanged(this, this, 1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent event) {
        if (this.mUseTouchHelper && this.mTouchHelper.dispatchHoverEvent(event)) {
            return true;
        }
        return super.dispatchHoverEvent(event);
    }

    public ArrayList<SwapInfo> getSwapInformation() {
        return this.mSwapInformation;
    }

    public void enableHardwareLayer(boolean hasLayer) {
        this.mShortcutsAndWidgets.setLayerType(hasLayer ? 2 : 0, sPaint);
    }

    public void buildHardwareLayer() {
        this.mShortcutsAndWidgets.buildLayer();
    }

    public float getChildrenScale() {
        if (this.mIsHotseat) {
            return this.mHotseatScale;
        }
        return 1.0f;
    }

    public void setCellDimensions(int width, int height) {
        this.mCellWidth = width;
        this.mFixedCellWidth = width;
        this.mCellHeight = height;
        this.mFixedCellHeight = height;
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap, this.mCountX, this.mCountY);
    }

    public void setGridSize(int x, int y) {
        this.mCountX = x;
        this.mCountY = y;
        this.mOccupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mCountX, this.mCountY);
        this.mTmpOccupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mCountX, this.mCountY);
        this.mTempRectStack.clear();
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap, this.mCountX, this.mCountY);
        requestLayout();
    }

    public void setInvertIfRtl(boolean invert) {
        this.mShortcutsAndWidgets.setInvertIfRtl(invert);
    }

    public void setDropPending(boolean pending) {
        this.mDropPending = pending;
    }

    public boolean isDropPending() {
        return this.mDropPending;
    }

    @Override // net.oneplus.h2launcher.BubbleTextView.BubbleTextShadowHandler
    public void setPressedIcon(BubbleTextView icon, Bitmap background) {
        if (icon == null || background == null) {
            this.mTouchFeedbackView.setBitmap(null);
            this.mTouchFeedbackView.animate().cancel();
        } else if (this.mTouchFeedbackView.setBitmap(background)) {
            this.mTouchFeedbackView.alignWithIconView(icon, this.mShortcutsAndWidgets);
            this.mTouchFeedbackView.animateShadow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableDragTarget() {
        this.mIsDragTarget = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDragTarget() {
        return this.mIsDragTarget;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIsDragOverlapping(boolean isDragOverlapping) {
        if (this.mIsDragOverlapping != isDragOverlapping) {
            this.mIsDragOverlapping = isDragOverlapping;
            this.mBackground.resetTransition();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getIsDragOverlapping() {
        return this.mIsDragOverlapping;
    }

    public void setIsCustomContentScreen(boolean isCustomContentScreen) {
        this.mIsCustomContentScreen = isCustomContentScreen;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mIsDragTarget) {
            if (this.mDrawBackground && this.mBackgroundAlpha > 0.0f) {
                this.mBackground.draw(canvas);
            }
            Paint paint = this.mDragOutlinePaint;
            for (int i = 0; i < this.mDragOutlines.length; i++) {
                float alpha = this.mDragOutlineAlphas[i];
                if (alpha > 0.0f) {
                    Rect r = this.mDragOutlines[i];
                    this.mTempRect.set(r);
                    Utilities.scaleRectAboutCenter(this.mTempRect, getChildrenScale());
                    Bitmap b = (Bitmap) this.mDragOutlineAnims[i].getTag();
                    paint.setAlpha((int) (0.5f + alpha));
                    canvas.drawBitmap(b, (Rect) null, this.mTempRect, paint);
                }
            }
            DeviceProfile grid = this.mLauncher.getDeviceProfile();
            int previewOffset = Utilities.getFolderIconSize(this.mLauncher.getApplicationContext(), grid);
            for (int i2 = 0; i2 < this.mFolderOuterRings.size(); i2++) {
                FolderIcon.FolderRingAnimator fra = this.mFolderOuterRings.get(i2);
                cellToPoint(fra.mCellX, fra.mCellY, this.mTempLocation);
                View child = getChildAt(fra.mCellX, fra.mCellY);
                if (child != null) {
                    int centerX = this.mTempLocation[0] + (this.mCellWidth / 2);
                    int centerY = this.mTempLocation[1] + (previewOffset / 2) + child.getPaddingTop() + grid.folderBackgroundOffset;
                    if (FolderIcon.hasOuterRing()) {
                        Drawable d = FolderIcon.FolderRingAnimator.sSharedOuterRingDrawable;
                        int width = (int) (fra.getOuterRingSize() * getChildrenScale());
                        canvas.save();
                        canvas.translate(centerX - (width / 2), centerY - (width / 2));
                        d.setBounds(0, 0, width, width);
                        d.draw(canvas);
                        canvas.restore();
                    }
                    Drawable d2 = FolderIcon.FolderRingAnimator.sSharedInnerRingDrawable;
                    int width2 = (int) (fra.getInnerRingSize() * getChildrenScale());
                    canvas.save();
                    canvas.translate(centerX - (width2 / 2), centerY - (width2 / 2));
                    d2.setBounds(0, 0, width2, width2);
                    d2.draw(canvas);
                    canvas.restore();
                }
            }
            if (this.mFolderLeaveBehindCell[0] >= 0 && this.mFolderLeaveBehindCell[1] >= 0) {
                Drawable d3 = FolderIcon.sSharedFolderLeaveBehind;
                int width3 = d3.getIntrinsicWidth();
                int height = d3.getIntrinsicHeight();
                cellToPoint(this.mFolderLeaveBehindCell[0], this.mFolderLeaveBehindCell[1], this.mTempLocation);
                View child2 = getChildAt(this.mFolderLeaveBehindCell[0], this.mFolderLeaveBehindCell[1]);
                if (child2 != null) {
                    int centerX2 = this.mTempLocation[0] + (this.mCellWidth / 2);
                    int centerY2 = this.mTempLocation[1] + (previewOffset / 2) + child2.getPaddingTop() + grid.folderBackgroundOffset;
                    canvas.save();
                    canvas.translate(centerX2 - (width3 / 2), centerY2 - (width3 / 2));
                    d3.setBounds(0, 0, width3, height);
                    d3.draw(canvas);
                    canvas.restore();
                }
            }
        }
    }

    public void showFolderAccept(FolderIcon.FolderRingAnimator fra) {
        this.mFolderOuterRings.add(fra);
    }

    public void hideFolderAccept(FolderIcon.FolderRingAnimator fra) {
        if (this.mFolderOuterRings.contains(fra)) {
            this.mFolderOuterRings.remove(fra);
        }
        invalidate();
    }

    public void setFolderLeaveBehindCell(int x, int y) {
        this.mFolderLeaveBehindCell[0] = x;
        this.mFolderLeaveBehindCell[1] = y;
        invalidate();
    }

    public void clearFolderLeaveBehind() {
        this.mFolderLeaveBehindCell[0] = -1;
        this.mFolderLeaveBehindCell[1] = -1;
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void restoreInstanceState(SparseArray<Parcelable> states) {
        try {
            dispatchRestoreInstanceState(states);
        } catch (ClassCastException | IllegalArgumentException ex) {
            if (LauncherAppState.isDogfoodBuild()) {
                throw ex;
            }
            Log.e(TAG, "Ignoring an error while restoring a view instance state", ex);
        }
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            child.cancelLongPress();
        }
    }

    public void setOnInterceptTouchListener(View.OnTouchListener listener) {
        this.mInterceptTouchListener = listener;
    }

    public int getCountX() {
        return this.mCountX;
    }

    public int getCountY() {
        return this.mCountY;
    }

    public void setIsHotseat(boolean isHotseat) {
        this.mIsHotseat = isHotseat;
        this.mShortcutsAndWidgets.setIsHotseat(isHotseat);
    }

    public boolean isHotseat() {
        return this.mIsHotseat;
    }

    public boolean addViewToCellLayout(View child, int index, int childId, LayoutParams params, boolean markCells) {
        if (child instanceof BubbleTextView) {
            BubbleTextView bubbleChild = (BubbleTextView) child;
            bubbleChild.setTextVisibility(!this.mIsHotseat);
        }
        child.setScaleX(getChildrenScale());
        child.setScaleY(getChildrenScale());
        if (params.cellX < 0 || params.cellX > this.mCountX - 1 || params.cellY < 0 || params.cellY > this.mCountY - 1) {
            return false;
        }
        if (params.cellHSpan < 0) {
            params.cellHSpan = this.mCountX;
        }
        if (params.cellVSpan < 0) {
            params.cellVSpan = this.mCountY;
        }
        child.setId(childId);
        this.mShortcutsAndWidgets.addView(child, index, params);
        if (!markCells) {
            return true;
        }
        markCellsAsOccupiedForView(child);
        markCellsAsOccupiedForView(child, this.mTmpOccupied);
        return true;
    }

    public boolean addOverlayView(View child) {
        if (!(child instanceof ImageView)) {
            return false;
        }
        this.mAddScreenOverlay = (ImageView) child;
        addView(this.mAddScreenOverlay);
        return true;
    }

    public void removeOverlayView() {
        super.removeView(this.mAddScreenOverlay);
        this.mAddScreenOverlay = null;
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        clearOccupiedCells();
        this.mShortcutsAndWidgets.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            clearOccupiedCells();
            this.mShortcutsAndWidgets.removeAllViewsInLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int index) {
        markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(index));
        this.mShortcutsAndWidgets.removeViewAt(index);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int start, int count) {
        for (int i = start; i < start + count; i++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        }
        this.mShortcutsAndWidgets.removeViews(start, count);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int start, int count) {
        for (int i = start; i < start + count; i++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        }
        this.mShortcutsAndWidgets.removeViewsInLayout(start, count);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        LauncherAppWidgetProviderInfo widgetInfo;
        switch (ev.getAction() & 255) {
            case 0:
                View v = getChildAt(ev.getRawX(), ev.getRawY());
                if (this.mIsCustomContentScreen || ((v instanceof LauncherAppWidgetHostView) && (widgetInfo = (LauncherAppWidgetProviderInfo) ((LauncherAppWidgetHostView) v).getAppWidgetInfo()) != null && !widgetInfo.isCustomWidget)) {
                    this.mLauncher.getDragLayer().cancelSwipeUpDownGesture();
                    break;
                }
                break;
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            this.mTouchDownX = (int) ev.getX();
            this.mTouchDownY = (int) ev.getY();
        }
        if (!this.mUseTouchHelper) {
            if (this.mInterceptTouchListener != null) {
                if (this.mInterceptTouchListener.onTouch(this, ev)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        boolean handled = super.onTouchEvent(ev);
        if (this.mLauncher.mWorkspace.isInOverviewMode() && this.mStylusEventHelper.checkAndPerformStylusEvent(ev)) {
            return true;
        }
        return handled;
    }

    public void pointToCellExact(int x, int y, int[] result) {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        result[0] = (x - hStartPadding) / (this.mCellWidth + this.mWidthGap);
        result[1] = (y - vStartPadding) / (this.mCellHeight + this.mHeightGap);
        int xAxis = this.mCountX;
        int yAxis = this.mCountY;
        if (result[0] < 0) {
            result[0] = 0;
        }
        if (result[0] >= xAxis) {
            result[0] = xAxis - 1;
        }
        if (result[1] < 0) {
            result[1] = 0;
        }
        if (result[1] >= yAxis) {
            result[1] = yAxis - 1;
        }
    }

    void pointToCellRounded(int x, int y, int[] result) {
        pointToCellExact((this.mCellWidth / 2) + x, (this.mCellHeight / 2) + y, result);
    }

    void cellToPoint(int cellX, int cellY, int[] result) {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        result[0] = ((this.mCellWidth + this.mWidthGap) * cellX) + hStartPadding;
        result[1] = ((this.mCellHeight + this.mHeightGap) * cellY) + vStartPadding;
    }

    void cellToCenterPoint(int cellX, int cellY, int[] result) {
        regionToCenterPoint(cellX, cellY, 1, 1, result);
    }

    void regionToCenterPoint(int cellX, int cellY, int spanX, int spanY, int[] result) {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        result[0] = ((this.mCellWidth + this.mWidthGap) * cellX) + hStartPadding + (((this.mCellWidth * spanX) + ((spanX - 1) * this.mWidthGap)) / 2);
        result[1] = ((this.mCellHeight + this.mHeightGap) * cellY) + vStartPadding + (((this.mCellHeight * spanY) + ((spanY - 1) * this.mHeightGap)) / 2);
    }

    void regionToRect(int cellX, int cellY, int spanX, int spanY, Rect result) {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        int left = hStartPadding + ((this.mCellWidth + this.mWidthGap) * cellX);
        int top = vStartPadding + ((this.mCellHeight + this.mHeightGap) * cellY);
        result.set(left, top, (this.mCellWidth * spanX) + ((spanX - 1) * this.mWidthGap) + left, (this.mCellHeight * spanY) + ((spanY - 1) * this.mHeightGap) + top);
    }

    public float getDistanceFromCell(float x, float y, int[] cell) {
        cellToCenterPoint(cell[0], cell[1], this.mTmpPoint);
        return (float) Math.hypot(x - this.mTmpPoint[0], y - this.mTmpPoint[1]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCellWidth() {
        return this.mCellWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCellHeight() {
        return this.mCellHeight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidthGap() {
        return this.mWidthGap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHeightGap() {
        return this.mHeightGap;
    }

    public void setFixedSize(int width, int height) {
        this.mFixedWidth = width;
        this.mFixedHeight = height;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int widthSpecMode = View.MeasureSpec.getMode(widthMeasureSpec);
        int heightSpecMode = View.MeasureSpec.getMode(heightMeasureSpec);
        int widthSize = View.MeasureSpec.getSize(widthMeasureSpec);
        int heightSize = View.MeasureSpec.getSize(heightMeasureSpec);
        int childWidthSize = widthSize - (getPaddingLeft() + getPaddingRight());
        int childHeightSize = heightSize - (getPaddingTop() + getPaddingBottom());
        if (this.mFixedCellWidth < 0 || this.mFixedCellHeight < 0) {
            int cw = DeviceProfile.calculateCellWidth(childWidthSize, this.mCountX);
            int ch = DeviceProfile.calculateCellHeight(childHeightSize, this.mCountY);
            if (cw != this.mCellWidth || ch != this.mCellHeight) {
                this.mCellWidth = cw;
                this.mCellHeight = ch;
                this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap, this.mCountX, this.mCountY);
            }
        }
        int newWidth = childWidthSize;
        int newHeight = childHeightSize;
        if (this.mFixedWidth > 0 && this.mFixedHeight > 0) {
            newWidth = this.mFixedWidth;
            newHeight = this.mFixedHeight;
        } else if (widthSpecMode == 0 || heightSpecMode == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        int numWidthGaps = this.mCountX - 1;
        int numHeightGaps = this.mCountY - 1;
        if (this.mOriginalWidthGap < 0 || this.mOriginalHeightGap < 0) {
            int hFreeSpace = childWidthSize - (this.mCountX * this.mCellWidth);
            int vFreeSpace = childHeightSize - (this.mCountY * this.mCellHeight);
            this.mWidthGap = Math.min(this.mMaxGap, numWidthGaps > 0 ? hFreeSpace / numWidthGaps : 0);
            this.mHeightGap = Math.min(this.mMaxGap, numHeightGaps > 0 ? vFreeSpace / numHeightGaps : 0);
            this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap, this.mCountX, this.mCountY);
        } else {
            this.mWidthGap = this.mOriginalWidthGap;
            this.mHeightGap = this.mOriginalHeightGap;
        }
        this.mTouchFeedbackView.measure(View.MeasureSpec.makeMeasureSpec(this.mCellWidth + this.mTouchFeedbackView.getExtraSize(), LauncherActivityInfoCompat.FLAG_SUSPENDED), View.MeasureSpec.makeMeasureSpec(this.mCellHeight + this.mTouchFeedbackView.getExtraSize(), LauncherActivityInfoCompat.FLAG_SUSPENDED));
        this.mShortcutsAndWidgets.measure(View.MeasureSpec.makeMeasureSpec(newWidth, LauncherActivityInfoCompat.FLAG_SUSPENDED), View.MeasureSpec.makeMeasureSpec(newHeight, LauncherActivityInfoCompat.FLAG_SUSPENDED));
        if (this.mAddScreenOverlay != null) {
            this.mAddScreenOverlay.measure(View.MeasureSpec.makeMeasureSpec(this.mAddScreenOverlay.getDrawable().getIntrinsicWidth(), LauncherActivityInfoCompat.FLAG_SUSPENDED), View.MeasureSpec.makeMeasureSpec(this.mAddScreenOverlay.getDrawable().getIntrinsicHeight(), LauncherActivityInfoCompat.FLAG_SUSPENDED));
        }
        int maxWidth = this.mShortcutsAndWidgets.getMeasuredWidth();
        int maxHeight = this.mShortcutsAndWidgets.getMeasuredHeight();
        if (this.mFixedWidth > 0 && this.mFixedHeight > 0) {
            setMeasuredDimension(maxWidth, maxHeight);
        } else {
            setMeasuredDimension(widthSize, heightSize);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        boolean isFullscreen = this.mShortcutsAndWidgets.getChildCount() > 0 && ((LayoutParams) this.mShortcutsAndWidgets.getChildAt(0).getLayoutParams()).isFullscreen;
        int left = getPaddingLeft();
        if (!isFullscreen) {
            int offset = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - (this.mCountX * this.mCellWidth);
            left += (int) Math.ceil(offset / 2.0f);
        }
        int top = getPaddingTop();
        this.mTouchFeedbackView.layout(left, top, this.mTouchFeedbackView.getMeasuredWidth() + left, this.mTouchFeedbackView.getMeasuredHeight() + top);
        this.mShortcutsAndWidgets.layout(left, top, (left + r) - l, (top + b) - t);
        if (this.mAddScreenOverlay != null) {
            int newLeft = left + ((r - l) / 2);
            int newTop = top + ((b - t) / 2);
            int offsetWidth = this.mAddScreenOverlay.getMeasuredWidth() / 2;
            int offsetHeight = this.mAddScreenOverlay.getMeasuredHeight() / 2;
            this.mAddScreenOverlay.layout(newLeft - offsetWidth, newTop - offsetHeight, newLeft + offsetWidth, newTop + offsetHeight);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mBackground.getPadding(this.mTempRect);
        this.mBackground.setBounds(-this.mTempRect.left, -this.mTempRect.top, this.mTempRect.right + w, this.mTempRect.bottom + h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public void setChildrenDrawingCacheEnabled(boolean enabled) {
        this.mShortcutsAndWidgets.setChildrenDrawingCacheEnabled(enabled);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public void setChildrenDrawnWithCacheEnabled(boolean enabled) {
        this.mShortcutsAndWidgets.setChildrenDrawnWithCacheEnabled(enabled);
    }

    @Override // android.view.View
    public void setBackground(Drawable background) {
        this.mDrawBackground = background == null;
        super.setBackground(background);
    }

    public float getBackgroundAlpha() {
        return this.mBackgroundAlpha;
    }

    public void setBackgroundAlpha(float alpha) {
        if (this.mBackgroundAlpha != alpha) {
            this.mBackgroundAlpha = alpha;
            this.mBackground.setAlpha((int) (this.mBackgroundAlpha * 255.0f));
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return super.verifyDrawable(who) || (this.mIsDragTarget && who == this.mBackground);
    }

    public void setShortcutAndWidgetAlpha(float alpha) {
        this.mShortcutsAndWidgets.setAlpha(alpha);
    }

    public ShortcutAndWidgetContainer getShortcutsAndWidgets() {
        return this.mShortcutsAndWidgets;
    }

    public View getChildAt(int x, int y) {
        return this.mShortcutsAndWidgets.getChildAt(x, y);
    }

    public View getChildAt(float x, float y) {
        return this.mShortcutsAndWidgets.getChildAt(x, y);
    }

    public void reloadOccupiedViews() {
        clearOccupiedCells();
        for (int x = 0; x < this.mCountX; x++) {
            for (int y = 0; y < this.mCountY; y++) {
                markCellsAsOccupiedForView(this.mShortcutsAndWidgets.getChildAt(x, y));
                markCellsAsOccupiedForView(this.mShortcutsAndWidgets.getChildAt(x, y), this.mTmpOccupied);
            }
        }
    }

    public boolean animateChildToPosition(final View child, int cellX, int cellY, int duration, int delay, boolean permanent, boolean adjustOccupied) {
        ShortcutAndWidgetContainer clc = getShortcutsAndWidgets();
        boolean[][] occupied = this.mOccupied;
        if (!permanent) {
            occupied = this.mTmpOccupied;
        }
        if (clc.indexOfChild(child) != -1) {
            final LayoutParams lp = (LayoutParams) child.getLayoutParams();
            ItemInfo info = (ItemInfo) child.getTag();
            if (this.mReorderAnimators.containsKey(lp)) {
                this.mReorderAnimators.get(lp).cancel();
                this.mReorderAnimators.remove(lp);
            }
            final int oldX = lp.x;
            final int oldY = lp.y;
            if (adjustOccupied) {
                occupied[permanent ? lp.cellX : lp.tmpCellX][permanent ? lp.cellY : lp.tmpCellY] = false;
                occupied[cellX][cellY] = true;
            }
            lp.isLockedToGrid = true;
            if (permanent) {
                info.cellX = cellX;
                lp.cellX = cellX;
                info.cellY = cellY;
                lp.cellY = cellY;
            } else {
                lp.tmpCellX = cellX;
                lp.tmpCellY = cellY;
            }
            clc.setupLp(lp);
            lp.isLockedToGrid = false;
            final int newX = lp.x;
            final int newY = lp.y;
            lp.x = oldX;
            lp.y = oldY;
            if (oldX == newX && oldY == newY) {
                lp.isLockedToGrid = true;
                return true;
            }
            ValueAnimator va = LauncherAnimUtils.ofFloat(child, 0.0f, 1.0f);
            va.setDuration(duration);
            this.mReorderAnimators.put(lp, va);
            va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.CellLayout.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float r = ((Float) animation.getAnimatedValue()).floatValue();
                    lp.x = (int) (((1.0f - r) * oldX) + (newX * r));
                    lp.y = (int) (((1.0f - r) * oldY) + (newY * r));
                    child.requestLayout();
                }
            });
            va.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.CellLayout.4
                boolean cancelled = false;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (!this.cancelled) {
                        lp.isLockedToGrid = true;
                        child.requestLayout();
                    }
                    if (CellLayout.this.mReorderAnimators.containsKey(lp)) {
                        CellLayout.this.mReorderAnimators.remove(lp);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                    this.cancelled = true;
                }
            });
            va.setStartDelay(delay);
            va.start();
            return true;
        }
        return false;
    }

    private boolean hasChildBeenSwapped(int x, int y) {
        Iterator<SwapInfo> it = this.mSwapInformation.iterator();
        while (it.hasNext()) {
            SwapInfo info = it.next();
            if (info.newX == x && info.newY == y) {
                return true;
            }
        }
        return false;
    }

    private SwapInfo getLastOccupiedChild(int newX, int newY) {
        for (int y = this.mCountY - 1; y >= 0; y--) {
            for (int x = 0; x < this.mCountX; x++) {
                if (this.mTmpOccupied[x][y] && !hasChildBeenSwapped(x, y) && !(getChildAt(x, y) instanceof LauncherAppWidgetHostView)) {
                    return new SwapInfo(x, y, newX, newY);
                }
            }
        }
        return null;
    }

    public boolean isTouchDownCellEmpty() {
        int[] cell = new int[2];
        pointToCellExact(this.mTouchDownX, this.mTouchDownY, cell);
        return !this.mOccupied[cell[0]][cell[1]];
    }

    public boolean hasSortableChild() {
        int totalIconCount = 0;
        for (int y = this.mCountY - 1; y >= 0; y--) {
            for (int x = 0; x < this.mCountX; x++) {
                View child = getChildAt(x, y);
                if (!(child instanceof LauncherAppWidgetHostView) && child != null) {
                    totalIconCount++;
                }
            }
        }
        if (totalIconCount == 0) {
            return false;
        }
        int sortedIconCount = totalIconCount;
        for (int y2 = this.mCountY - 1; y2 >= 0; y2--) {
            for (int x2 = 0; x2 < this.mCountX; x2++) {
                View child2 = getChildAt(x2, y2);
                if (!(child2 instanceof LauncherAppWidgetHostView)) {
                    if (child2 != null) {
                        sortedIconCount--;
                    }
                    totalIconCount--;
                    if (totalIconCount == 0) {
                        return sortedIconCount != totalIconCount;
                    }
                    if (sortedIconCount != totalIconCount) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void sortAllChildrens() {
        SwapInfo info;
        reloadOccupiedViews();
        this.mSwapInformation.clear();
        setUseTempCoords(true);
        setItemPlacementDirty(true);
        revertTempState(true);
        for (int y = this.mCountY - 1; y >= 0; y--) {
            for (int x = 0; x < this.mCountX; x++) {
                if (!(getChildAt(x, y) instanceof LauncherAppWidgetHostView) && (info = getLastOccupiedChild(x, y)) != null) {
                    this.mSwapInformation.add(info);
                    View child = getChildAt(info.oldX, info.oldY);
                    if (child != null) {
                        animateChildToPosition(child, info.newX, info.newY, REORDER_ANIMATION_DURATION, 0, false, true);
                    }
                }
            }
        }
    }

    public void revertSortAllChildrens() {
        setItemPlacementDirty(true);
        revertTempState(true);
        this.mSwapInformation.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void visualizeDropLocation(View v, Bitmap dragOutline, int originX, int originY, int cellX, int cellY, int spanX, int spanY, boolean resize, Point dragOffset, Rect dragRegion) {
        int left;
        int top;
        int oldDragCellX = this.mDragCell[0];
        int oldDragCellY = this.mDragCell[1];
        if (dragOutline != null || v != null) {
            if (cellX != oldDragCellX || cellY != oldDragCellY) {
                this.mDragCell[0] = cellX;
                this.mDragCell[1] = cellY;
                int[] topLeft = this.mTmpPoint;
                cellToPoint(cellX, cellY, topLeft);
                int left2 = topLeft[0];
                int top2 = topLeft[1];
                if (v != null && dragOffset == null) {
                    ViewGroup.MarginLayoutParams lp = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
                    int left3 = left2 + lp.leftMargin;
                    top = top2 + lp.topMargin + ((v.getHeight() - dragOutline.getHeight()) / 2);
                    left = left3 + ((((this.mCellWidth * spanX) + ((spanX - 1) * this.mWidthGap)) - dragOutline.getWidth()) / 2);
                } else if (dragOffset != null && dragRegion != null) {
                    left = left2 + dragOffset.x + ((((this.mCellWidth * spanX) + ((spanX - 1) * this.mWidthGap)) - dragRegion.width()) / 2);
                    int cHeight = getShortcutsAndWidgets().getCellContentHeight();
                    int cellPaddingY = (int) Math.max(0.0f, (this.mCellHeight - cHeight) / 2.0f);
                    top = top2 + dragOffset.y + cellPaddingY;
                } else {
                    left = left2 + ((((this.mCellWidth * spanX) + ((spanX - 1) * this.mWidthGap)) - dragOutline.getWidth()) / 2);
                    top = top2 + ((((this.mCellHeight * spanY) + ((spanY - 1) * this.mHeightGap)) - dragOutline.getHeight()) / 2);
                }
                int oldIndex = this.mDragOutlineCurrent;
                this.mDragOutlineAnims[oldIndex].animateOut();
                this.mDragOutlineCurrent = (oldIndex + 1) % this.mDragOutlines.length;
                Rect r = this.mDragOutlines[this.mDragOutlineCurrent];
                r.set(left, top, dragOutline.getWidth() + left, dragOutline.getHeight() + top);
                if (resize) {
                    cellToRect(cellX, cellY, spanX, spanY, r);
                }
                this.mDragOutlineAnims[this.mDragOutlineCurrent].setTag(dragOutline);
                this.mDragOutlineAnims[this.mDragOutlineCurrent].animateIn();
            }
        }
    }

    public void clearDragOutlines() {
        int oldIndex = this.mDragOutlineCurrent;
        this.mDragOutlineAnims[oldIndex].animateOut();
        int[] iArr = this.mDragCell;
        this.mDragCell[1] = -1;
        iArr[0] = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] findNearestVacantArea(int pixelX, int pixelY, int spanX, int spanY, int[] result) {
        return findNearestVacantArea(pixelX, pixelY, spanX, spanY, spanX, spanY, result, null);
    }

    int[] findNearestVacantArea(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, int[] result, int[] resultSpan) {
        return findNearestArea(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, true, result, resultSpan);
    }

    private void lazyInitTempRectStack() {
        if (this.mTempRectStack.isEmpty()) {
            for (int i = 0; i < this.mCountX * this.mCountY; i++) {
                this.mTempRectStack.push(new Rect());
            }
        }
    }

    private void recycleTempRects(Stack<Rect> used) {
        while (!used.isEmpty()) {
            this.mTempRectStack.push(used.pop());
        }
    }

    private int[] findNearestArea(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, boolean ignoreOccupied, int[] result, int[] resultSpan) {
        lazyInitTempRectStack();
        int pixelX2 = (int) (pixelX - (((this.mCellWidth + this.mWidthGap) * (spanX - 1)) / 2.0f));
        int pixelY2 = (int) (pixelY - (((this.mCellHeight + this.mHeightGap) * (spanY - 1)) / 2.0f));
        int[] bestXY = result != null ? result : new int[2];
        double bestDistance = Double.MAX_VALUE;
        Rect bestRect = new Rect(-1, -1, -1, -1);
        Stack<Rect> validRegions = new Stack<>();
        int countX = this.mCountX;
        int countY = this.mCountY;
        if (minSpanX > 0 && minSpanY > 0 && spanX > 0 && spanY > 0 && spanX >= minSpanX && spanY >= minSpanY) {
            for (int y = 0; y < countY - (minSpanY - 1); y++) {
                for (int x = 0; x < countX - (minSpanX - 1); x++) {
                    int ySize = -1;
                    int xSize = -1;
                    if (ignoreOccupied) {
                        for (int i = 0; i < minSpanX; i++) {
                            for (int j = 0; j < minSpanY; j++) {
                                if (this.mOccupied[x + i][y + j]) {
                                    break;
                                }
                            }
                        }
                        xSize = minSpanX;
                        ySize = minSpanY;
                        boolean incX = true;
                        boolean hitMaxX = xSize >= spanX;
                        boolean hitMaxY = ySize >= spanY;
                        while (true) {
                            if (hitMaxX && hitMaxY) {
                                break;
                            }
                            if (incX && !hitMaxX) {
                                for (int j2 = 0; j2 < ySize; j2++) {
                                    if (x + xSize > countX - 1 || this.mOccupied[x + xSize][y + j2]) {
                                        hitMaxX = true;
                                    }
                                }
                                if (!hitMaxX) {
                                    xSize++;
                                }
                            } else if (!hitMaxY) {
                                for (int i2 = 0; i2 < xSize; i2++) {
                                    if (y + ySize > countY - 1 || this.mOccupied[x + i2][y + ySize]) {
                                        hitMaxY = true;
                                    }
                                }
                                if (!hitMaxY) {
                                    ySize++;
                                }
                            }
                            hitMaxX |= xSize >= spanX;
                            hitMaxY |= ySize >= spanY;
                            incX = !incX;
                        }
                        if (xSize >= spanX) {
                        }
                        if (ySize >= spanY) {
                        }
                    }
                    int[] cellXY = this.mTmpPoint;
                    cellToCenterPoint(x, y, cellXY);
                    Rect currentRect = this.mTempRectStack.pop();
                    currentRect.set(x, y, x + xSize, y + ySize);
                    boolean contained = false;
                    Iterator<Rect> it = validRegions.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Rect r = it.next();
                        if (r.contains(currentRect)) {
                            contained = true;
                            break;
                        }
                    }
                    validRegions.push(currentRect);
                    double distance = Math.hypot(cellXY[0] - pixelX2, cellXY[1] - pixelY2);
                    if ((distance <= bestDistance && !contained) || currentRect.contains(bestRect)) {
                        bestDistance = distance;
                        bestXY[0] = x;
                        bestXY[1] = y;
                        if (resultSpan != null) {
                            resultSpan[0] = xSize;
                            resultSpan[1] = ySize;
                        }
                        bestRect.set(currentRect);
                    }
                }
            }
            if (bestDistance == Double.MAX_VALUE) {
                bestXY[0] = -1;
                bestXY[1] = -1;
            }
            recycleTempRects(validRegions);
        }
        return bestXY;
    }

    private int[] findNearestArea(int cellX, int cellY, int spanX, int spanY, int[] direction, boolean[][] occupied, boolean[][] blockOccupied, int[] result) {
        int j;
        int[] bestXY = result != null ? result : new int[2];
        float bestDistance = Float.MAX_VALUE;
        int bestDirectionScore = Integer.MIN_VALUE;
        int countX = this.mCountX;
        int countY = this.mCountY;
        for (int y = 0; y < countY - (spanY - 1); y++) {
            for (int x = 0; x < countX - (spanX - 1); x++) {
                int i = 0;
                while (true) {
                    if (i < spanX) {
                        while (j < spanY) {
                            j = (occupied[x + i][y + j] && (blockOccupied == null || blockOccupied[i][j])) ? 0 : j + 1;
                        }
                        i++;
                    } else {
                        float distance = (float) Math.hypot(x - cellX, y - cellY);
                        int[] curDirection = this.mTmpPoint;
                        computeDirectionVector(x - cellX, y - cellY, curDirection);
                        int curDirectionScore = (direction[0] * curDirection[0]) + (direction[1] * curDirection[1]);
                        boolean directionMatches = direction[0] == curDirection[0] && direction[0] == curDirection[0];
                        if (((directionMatches || 0 == 0) && Float.compare(distance, bestDistance) < 0) || (Float.compare(distance, bestDistance) == 0 && curDirectionScore > bestDirectionScore)) {
                            bestDistance = distance;
                            bestDirectionScore = curDirectionScore;
                            bestXY[0] = x;
                            bestXY[1] = y;
                        }
                    }
                }
            }
        }
        if (bestDistance == Float.MAX_VALUE) {
            bestXY[0] = -1;
            bestXY[1] = -1;
        }
        return bestXY;
    }

    private boolean addViewToTempLocation(View v, Rect rectOccupiedByPotentialDrop, int[] direction, ItemConfiguration currentState) {
        CellAndSpan c = currentState.map.get(v);
        boolean success = false;
        markCellsForView(c.x, c.y, c.spanX, c.spanY, this.mTmpOccupied, false);
        markCellsForRect(rectOccupiedByPotentialDrop, this.mTmpOccupied, true);
        findNearestArea(c.x, c.y, c.spanX, c.spanY, direction, this.mTmpOccupied, (boolean[][]) null, this.mTempLocation);
        if (this.mTempLocation[0] >= 0 && this.mTempLocation[1] >= 0) {
            c.x = this.mTempLocation[0];
            c.y = this.mTempLocation[1];
            success = true;
        }
        markCellsForView(c.x, c.y, c.spanX, c.spanY, this.mTmpOccupied, true);
        return success;
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicIconContainer
    public void updateDynamicIconState() {
        Logger.d(TAG, "DynamicIcon CellLayout updateDynamicIconState should Update = " + this.mLauncher.shouldUpdateDynamicIconState());
        if (this.mLauncher.shouldUpdateDynamicIconState()) {
            int childCount = this.mShortcutsAndWidgets.getChildCount();
            for (int i = 0; i < childCount; i++) {
                KeyEvent.Callback childAt = this.mShortcutsAndWidgets.getChildAt(i);
                if (childAt instanceof IDynamicIcon) {
                    IDynamicIcon dynamicIcon = (IDynamicIcon) childAt;
                    dynamicIcon.performUpdateIcon();
                }
            }
        }
    }

    @Override // net.oneplus.h2launcher.dynamicicon.IDynamicIconContainer
    public void finishUpdateDynamicIconState() {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            KeyEvent.Callback childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt instanceof IDynamicIcon) {
                IDynamicIcon dynamicIcon = (IDynamicIcon) childAt;
                dynamicIcon.finishUpdateIcon();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ViewCluster {
        static final int BOTTOM = 3;
        static final int LEFT = 0;
        static final int RIGHT = 2;
        static final int TOP = 1;
        int[] bottomEdge;
        boolean bottomEdgeDirty;
        boolean boundingRectDirty;
        ItemConfiguration config;
        int[] leftEdge;
        boolean leftEdgeDirty;
        int[] rightEdge;
        boolean rightEdgeDirty;
        int[] topEdge;
        boolean topEdgeDirty;
        ArrayList<View> views;
        Rect boundingRect = new Rect();
        PositionComparator comparator = new PositionComparator();

        public ViewCluster(ArrayList<View> views, ItemConfiguration config) {
            this.leftEdge = new int[CellLayout.this.mCountY];
            this.rightEdge = new int[CellLayout.this.mCountY];
            this.topEdge = new int[CellLayout.this.mCountX];
            this.bottomEdge = new int[CellLayout.this.mCountX];
            this.views = (ArrayList) views.clone();
            this.config = config;
            resetEdges();
        }

        void resetEdges() {
            for (int i = 0; i < CellLayout.this.mCountX; i++) {
                this.topEdge[i] = -1;
                this.bottomEdge[i] = -1;
            }
            for (int i2 = 0; i2 < CellLayout.this.mCountY; i2++) {
                this.leftEdge[i2] = -1;
                this.rightEdge[i2] = -1;
            }
            this.leftEdgeDirty = true;
            this.rightEdgeDirty = true;
            this.bottomEdgeDirty = true;
            this.topEdgeDirty = true;
            this.boundingRectDirty = true;
        }

        void computeEdge(int which, int[] edge) {
            int count = this.views.size();
            for (int i = 0; i < count; i++) {
                CellAndSpan cs = this.config.map.get(this.views.get(i));
                switch (which) {
                    case 0:
                        int left = cs.x;
                        for (int j = cs.y; j < cs.y + cs.spanY; j++) {
                            if (left < edge[j] || edge[j] < 0) {
                                edge[j] = left;
                            }
                        }
                        break;
                    case 1:
                        int top = cs.y;
                        for (int j2 = cs.x; j2 < cs.x + cs.spanX; j2++) {
                            if (top < edge[j2] || edge[j2] < 0) {
                                edge[j2] = top;
                            }
                        }
                        break;
                    case 2:
                        int right = cs.x + cs.spanX;
                        for (int j3 = cs.y; j3 < cs.y + cs.spanY; j3++) {
                            if (right > edge[j3]) {
                                edge[j3] = right;
                            }
                        }
                        break;
                    case 3:
                        int bottom = cs.y + cs.spanY;
                        for (int j4 = cs.x; j4 < cs.x + cs.spanX; j4++) {
                            if (bottom > edge[j4]) {
                                edge[j4] = bottom;
                            }
                        }
                        break;
                }
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        boolean isViewTouchingEdge(View v, int whichEdge) {
            CellAndSpan cs = this.config.map.get(v);
            int[] edge = getEdge(whichEdge);
            switch (whichEdge) {
                case 0:
                    for (int i = cs.y; i < cs.y + cs.spanY; i++) {
                        if (edge[i] == cs.x + cs.spanX) {
                            return true;
                        }
                    }
                    return false;
                case 1:
                    for (int i2 = cs.x; i2 < cs.x + cs.spanX; i2++) {
                        if (edge[i2] == cs.y + cs.spanY) {
                            return true;
                        }
                    }
                    return false;
                case 2:
                    for (int i3 = cs.y; i3 < cs.y + cs.spanY; i3++) {
                        if (edge[i3] == cs.x) {
                            return true;
                        }
                    }
                    return false;
                case 3:
                    for (int i4 = cs.x; i4 < cs.x + cs.spanX; i4++) {
                        if (edge[i4] == cs.y) {
                            return true;
                        }
                    }
                    return false;
                default:
                    return false;
            }
        }

        void shift(int whichEdge, int delta) {
            Iterator<View> it = this.views.iterator();
            while (it.hasNext()) {
                View v = it.next();
                CellAndSpan c = this.config.map.get(v);
                switch (whichEdge) {
                    case 0:
                        c.x -= delta;
                        break;
                    case 1:
                        c.y -= delta;
                        break;
                    case 2:
                        c.x += delta;
                        break;
                    default:
                        c.y += delta;
                        break;
                }
            }
            resetEdges();
        }

        public void addView(View v) {
            this.views.add(v);
            resetEdges();
        }

        public Rect getBoundingRect() {
            if (this.boundingRectDirty) {
                boolean first = true;
                Iterator<View> it = this.views.iterator();
                while (it.hasNext()) {
                    View v = it.next();
                    CellAndSpan c = this.config.map.get(v);
                    if (first) {
                        this.boundingRect.set(c.x, c.y, c.x + c.spanX, c.y + c.spanY);
                        first = false;
                    } else {
                        this.boundingRect.union(c.x, c.y, c.x + c.spanX, c.y + c.spanY);
                    }
                }
            }
            return this.boundingRect;
        }

        public int[] getEdge(int which) {
            switch (which) {
                case 0:
                    return getLeftEdge();
                case 1:
                    return getTopEdge();
                case 2:
                    return getRightEdge();
                default:
                    return getBottomEdge();
            }
        }

        public int[] getLeftEdge() {
            if (this.leftEdgeDirty) {
                computeEdge(0, this.leftEdge);
            }
            return this.leftEdge;
        }

        public int[] getRightEdge() {
            if (this.rightEdgeDirty) {
                computeEdge(2, this.rightEdge);
            }
            return this.rightEdge;
        }

        public int[] getTopEdge() {
            if (this.topEdgeDirty) {
                computeEdge(1, this.topEdge);
            }
            return this.topEdge;
        }

        public int[] getBottomEdge() {
            if (this.bottomEdgeDirty) {
                computeEdge(3, this.bottomEdge);
            }
            return this.bottomEdge;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class PositionComparator implements Comparator<View> {
            int whichEdge = 0;

            PositionComparator() {
            }

            @Override // java.util.Comparator
            public int compare(View left, View right) {
                CellAndSpan l = ViewCluster.this.config.map.get(left);
                CellAndSpan r = ViewCluster.this.config.map.get(right);
                switch (this.whichEdge) {
                    case 0:
                        return (r.x + r.spanX) - (l.x + l.spanX);
                    case 1:
                        return (r.y + r.spanY) - (l.y + l.spanY);
                    case 2:
                        return l.x - r.x;
                    default:
                        return l.y - r.y;
                }
            }
        }

        public void sortConfigurationForEdgePush(int edge) {
            this.comparator.whichEdge = edge;
            Collections.sort(this.config.sortedViews, this.comparator);
        }
    }

    private boolean pushViewsToTempLocation(ArrayList<View> views, Rect rectOccupiedByPotentialDrop, int[] direction, View dragView, ItemConfiguration currentState) {
        int whichEdge;
        int pushDistance;
        ViewCluster cluster = new ViewCluster(views, currentState);
        Rect clusterRect = cluster.getBoundingRect();
        boolean fail = false;
        if (direction[0] < 0) {
            whichEdge = 0;
            pushDistance = clusterRect.right - rectOccupiedByPotentialDrop.left;
        } else if (direction[0] > 0) {
            whichEdge = 2;
            pushDistance = rectOccupiedByPotentialDrop.right - clusterRect.left;
        } else if (direction[1] < 0) {
            whichEdge = 1;
            pushDistance = clusterRect.bottom - rectOccupiedByPotentialDrop.top;
        } else {
            whichEdge = 3;
            pushDistance = rectOccupiedByPotentialDrop.bottom - clusterRect.top;
        }
        if (pushDistance <= 0) {
            return false;
        }
        Iterator<View> it = views.iterator();
        while (it.hasNext()) {
            CellAndSpan c = currentState.map.get(it.next());
            markCellsForView(c.x, c.y, c.spanX, c.spanY, this.mTmpOccupied, false);
        }
        currentState.save();
        cluster.sortConfigurationForEdgePush(whichEdge);
        while (pushDistance > 0 && !fail) {
            Iterator<View> it2 = currentState.sortedViews.iterator();
            while (true) {
                if (it2.hasNext()) {
                    View v = it2.next();
                    if (!cluster.views.contains(v) && v != dragView && cluster.isViewTouchingEdge(v, whichEdge)) {
                        LayoutParams lp = (LayoutParams) v.getLayoutParams();
                        if (!lp.canReorder) {
                            fail = true;
                            break;
                        }
                        cluster.addView(v);
                        CellAndSpan c2 = currentState.map.get(v);
                        markCellsForView(c2.x, c2.y, c2.spanX, c2.spanY, this.mTmpOccupied, false);
                    }
                }
            }
            pushDistance--;
            cluster.shift(whichEdge, 1);
        }
        boolean foundSolution = false;
        Rect clusterRect2 = cluster.getBoundingRect();
        if (!fail && clusterRect2.left >= 0 && clusterRect2.right <= this.mCountX && clusterRect2.top >= 0 && clusterRect2.bottom <= this.mCountY) {
            foundSolution = true;
        } else {
            currentState.restore();
        }
        Iterator<View> it3 = cluster.views.iterator();
        while (it3.hasNext()) {
            CellAndSpan c3 = currentState.map.get(it3.next());
            markCellsForView(c3.x, c3.y, c3.spanX, c3.spanY, this.mTmpOccupied, true);
        }
        return foundSolution;
    }

    private boolean addViewsToTempLocation(ArrayList<View> views, Rect rectOccupiedByPotentialDrop, int[] direction, View dragView, ItemConfiguration currentState) {
        if (views.size() == 0) {
            return true;
        }
        boolean success = false;
        Rect boundingRect = null;
        Iterator<View> it = views.iterator();
        while (it.hasNext()) {
            View v = it.next();
            CellAndSpan c = currentState.map.get(v);
            if (boundingRect == null) {
                boundingRect = new Rect(c.x, c.y, c.x + c.spanX, c.y + c.spanY);
            } else {
                boundingRect.union(c.x, c.y, c.x + c.spanX, c.y + c.spanY);
            }
        }
        Iterator<View> it2 = views.iterator();
        while (it2.hasNext()) {
            View v2 = it2.next();
            CellAndSpan c2 = currentState.map.get(v2);
            markCellsForView(c2.x, c2.y, c2.spanX, c2.spanY, this.mTmpOccupied, false);
        }
        boolean[][] blockOccupied = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, boundingRect.width(), boundingRect.height());
        int top = boundingRect.top;
        int left = boundingRect.left;
        Iterator<View> it3 = views.iterator();
        while (it3.hasNext()) {
            View v3 = it3.next();
            CellAndSpan c3 = currentState.map.get(v3);
            markCellsForView(c3.x - left, c3.y - top, c3.spanX, c3.spanY, blockOccupied, true);
        }
        markCellsForRect(rectOccupiedByPotentialDrop, this.mTmpOccupied, true);
        findNearestArea(boundingRect.left, boundingRect.top, boundingRect.width(), boundingRect.height(), direction, this.mTmpOccupied, blockOccupied, this.mTempLocation);
        if (this.mTempLocation[0] >= 0 && this.mTempLocation[1] >= 0) {
            int deltaX = this.mTempLocation[0] - boundingRect.left;
            int deltaY = this.mTempLocation[1] - boundingRect.top;
            Iterator<View> it4 = views.iterator();
            while (it4.hasNext()) {
                View v4 = it4.next();
                CellAndSpan c4 = currentState.map.get(v4);
                c4.x += deltaX;
                c4.y += deltaY;
            }
            success = true;
        }
        Iterator<View> it5 = views.iterator();
        while (it5.hasNext()) {
            View v5 = it5.next();
            CellAndSpan c5 = currentState.map.get(v5);
            markCellsForView(c5.x, c5.y, c5.spanX, c5.spanY, this.mTmpOccupied, true);
        }
        return success;
    }

    private void markCellsForRect(Rect r, boolean[][] occupied, boolean value) {
        markCellsForView(r.left, r.top, r.width(), r.height(), occupied, value);
    }

    private boolean attemptPushInDirection(ArrayList<View> intersectingViews, Rect occupied, int[] direction, View ignoreView, ItemConfiguration solution) {
        if (Math.abs(direction[0]) + Math.abs(direction[1]) > 1) {
            int temp = direction[1];
            direction[1] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[1] = temp;
            int temp2 = direction[0];
            direction[0] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = temp2;
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            int temp3 = direction[1];
            direction[1] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[1] = temp3;
            int temp4 = direction[0];
            direction[0] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = temp4;
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
        } else {
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            int temp5 = direction[1];
            direction[1] = direction[0];
            direction[0] = temp5;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            int temp6 = direction[1];
            direction[1] = direction[0];
            direction[0] = temp6;
        }
        return false;
    }

    private boolean rearrangementExists(int cellX, int cellY, int spanX, int spanY, int[] direction, View ignoreView, ItemConfiguration solution) {
        CellAndSpan c;
        if (cellX < 0 || cellY < 0) {
            return false;
        }
        this.mIntersectingViews.clear();
        this.mOccupiedRect.set(cellX, cellY, cellX + spanX, cellY + spanY);
        if (ignoreView != null && (c = solution.map.get(ignoreView)) != null) {
            c.x = cellX;
            c.y = cellY;
        }
        Rect r0 = new Rect(cellX, cellY, cellX + spanX, cellY + spanY);
        Rect r1 = new Rect();
        for (View child : solution.map.keySet()) {
            if (child != ignoreView) {
                CellAndSpan c2 = solution.map.get(child);
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                r1.set(c2.x, c2.y, c2.x + c2.spanX, c2.y + c2.spanY);
                if (!Rect.intersects(r0, r1)) {
                    continue;
                } else {
                    if (!lp.canReorder) {
                        return false;
                    }
                    this.mIntersectingViews.add(child);
                }
            }
        }
        solution.intersectingViews = new ArrayList<>(this.mIntersectingViews);
        if (attemptPushInDirection(this.mIntersectingViews, this.mOccupiedRect, direction, ignoreView, solution) || addViewsToTempLocation(this.mIntersectingViews, this.mOccupiedRect, direction, ignoreView, solution)) {
            return true;
        }
        Iterator<View> it = this.mIntersectingViews.iterator();
        while (it.hasNext()) {
            View v = it.next();
            if (!addViewToTempLocation(v, this.mOccupiedRect, direction, solution)) {
                return false;
            }
        }
        return true;
    }

    private void computeDirectionVector(float deltaX, float deltaY, int[] result) {
        double angle = Math.atan(deltaY / deltaX);
        result[0] = 0;
        result[1] = 0;
        if (Math.abs(Math.cos(angle)) > 0.5d) {
            result[0] = (int) Math.signum(deltaX);
        }
        if (Math.abs(Math.sin(angle)) > 0.5d) {
            result[1] = (int) Math.signum(deltaY);
        }
    }

    private void copyOccupiedArray(boolean[][] occupied) {
        for (int i = 0; i < this.mCountX; i++) {
            for (int j = 0; j < this.mCountY; j++) {
                occupied[i][j] = this.mOccupied[i][j];
            }
        }
    }

    private ItemConfiguration findReorderSolution(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, int[] direction, View dragView, boolean decX, ItemConfiguration solution) {
        copyCurrentStateToSolution(solution, false);
        copyOccupiedArray(this.mTmpOccupied);
        int[] result = findNearestArea(pixelX, pixelY, spanX, spanY, new int[2]);
        boolean success = rearrangementExists(result[0], result[1], spanX, spanY, direction, dragView, solution);
        if (!success) {
            if (spanX > minSpanX && (minSpanY == spanY || decX)) {
                return findReorderSolution(pixelX, pixelY, minSpanX, minSpanY, spanX - 1, spanY, direction, dragView, false, solution);
            }
            if (spanY > minSpanY) {
                return findReorderSolution(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY - 1, direction, dragView, true, solution);
            }
            solution.isSolution = false;
            return solution;
        }
        solution.isSolution = true;
        solution.dragViewX = result[0];
        solution.dragViewY = result[1];
        solution.dragViewSpanX = spanX;
        solution.dragViewSpanY = spanY;
        return solution;
    }

    private void copyCurrentStateToSolution(ItemConfiguration solution, boolean temp) {
        CellAndSpan c;
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = this.mShortcutsAndWidgets.getChildAt(i);
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            if (temp) {
                c = new CellAndSpan(lp.tmpCellX, lp.tmpCellY, lp.cellHSpan, lp.cellVSpan);
            } else {
                c = new CellAndSpan(lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan);
            }
            solution.add(child, c);
        }
    }

    private void copySolutionToTempState(ItemConfiguration solution, View dragView) {
        for (int i = 0; i < this.mCountX; i++) {
            for (int j = 0; j < this.mCountY; j++) {
                this.mTmpOccupied[i][j] = false;
            }
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View child = this.mShortcutsAndWidgets.getChildAt(i2);
            if (child != dragView) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                CellAndSpan c = solution.map.get(child);
                if (c != null) {
                    lp.tmpCellX = c.x;
                    lp.tmpCellY = c.y;
                    lp.cellHSpan = c.spanX;
                    lp.cellVSpan = c.spanY;
                    markCellsForView(c.x, c.y, c.spanX, c.spanY, this.mTmpOccupied, true);
                }
            }
        }
        markCellsForView(solution.dragViewX, solution.dragViewY, solution.dragViewSpanX, solution.dragViewSpanY, this.mTmpOccupied, true);
    }

    private void animateItemsToSolution(ItemConfiguration solution, View dragView, boolean commitDragView) {
        CellAndSpan c;
        boolean[][] occupied = this.mTmpOccupied;
        for (int i = 0; i < this.mCountX; i++) {
            for (int j = 0; j < this.mCountY; j++) {
                occupied[i][j] = false;
            }
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View child = this.mShortcutsAndWidgets.getChildAt(i2);
            if (child != dragView && (c = solution.map.get(child)) != null) {
                animateChildToPosition(child, c.x, c.y, REORDER_ANIMATION_DURATION, 0, false, false);
                markCellsForView(c.x, c.y, c.spanX, c.spanY, occupied, true);
            }
        }
        if (commitDragView) {
            markCellsForView(solution.dragViewX, solution.dragViewY, solution.dragViewSpanX, solution.dragViewSpanY, occupied, true);
        }
    }

    private void beginOrAdjustReorderPreviewAnimations(ItemConfiguration solution, View dragView, int delay, int mode) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = this.mShortcutsAndWidgets.getChildAt(i);
            if (child != dragView) {
                CellAndSpan c = solution.map.get(child);
                boolean skip = (mode != 0 || solution.intersectingViews == null || solution.intersectingViews.contains(child)) ? false : true;
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (c != null && !skip) {
                    ReorderPreviewAnimation rha = new ReorderPreviewAnimation(child, mode, lp.cellX, lp.cellY, c.x, c.y, c.spanX, c.spanY);
                    rha.animate();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ReorderPreviewAnimation {
        private static final int HINT_DURATION = 300;
        public static final int MODE_HINT = 0;
        public static final int MODE_PREVIEW = 1;
        private static final int PREVIEW_DURATION = 300;
        Animator a;
        View child;
        float finalDeltaX;
        float finalDeltaY;
        float finalScale;
        float initDeltaX;
        float initDeltaY;
        float initScale;
        int mode;
        boolean repeating = false;

        public ReorderPreviewAnimation(View child, int mode, int cellX0, int cellY0, int cellX1, int cellY1, int spanX, int spanY) {
            CellLayout.this.regionToCenterPoint(cellX0, cellY0, spanX, spanY, CellLayout.this.mTmpPoint);
            int x0 = CellLayout.this.mTmpPoint[0];
            int y0 = CellLayout.this.mTmpPoint[1];
            CellLayout.this.regionToCenterPoint(cellX1, cellY1, spanX, spanY, CellLayout.this.mTmpPoint);
            int x1 = CellLayout.this.mTmpPoint[0];
            int y1 = CellLayout.this.mTmpPoint[1];
            int dX = x1 - x0;
            int dY = y1 - y0;
            this.finalDeltaX = 0.0f;
            this.finalDeltaY = 0.0f;
            int dir = mode == 0 ? -1 : 1;
            if (dX != dY || dX != 0) {
                if (dY == 0) {
                    this.finalDeltaX = (-dir) * Math.signum(dX) * CellLayout.this.mReorderPreviewAnimationMagnitude;
                } else if (dX == 0) {
                    this.finalDeltaY = (-dir) * Math.signum(dY) * CellLayout.this.mReorderPreviewAnimationMagnitude;
                } else {
                    double angle = Math.atan(dY / dX);
                    this.finalDeltaX = (int) ((-dir) * Math.signum(dX) * Math.abs(Math.cos(angle) * CellLayout.this.mReorderPreviewAnimationMagnitude));
                    this.finalDeltaY = (int) ((-dir) * Math.signum(dY) * Math.abs(Math.sin(angle) * CellLayout.this.mReorderPreviewAnimationMagnitude));
                }
            }
            this.mode = mode;
            this.initDeltaX = child.getTranslationX();
            this.initDeltaY = child.getTranslationY();
            this.finalScale = CellLayout.this.getChildrenScale() - (4.0f / child.getWidth());
            this.initScale = child.getScaleX();
            this.child = child;
        }

        void animate() {
            if (CellLayout.this.mShakeAnimators.containsKey(this.child)) {
                ReorderPreviewAnimation oldAnimation = CellLayout.this.mShakeAnimators.get(this.child);
                oldAnimation.cancel();
                CellLayout.this.mShakeAnimators.remove(this.child);
                if (this.finalDeltaX == 0.0f && this.finalDeltaY == 0.0f) {
                    completeAnimationImmediately();
                    return;
                }
            }
            if (this.finalDeltaX != 0.0f || this.finalDeltaY != 0.0f) {
                ValueAnimator va = LauncherAnimUtils.ofFloat(this.child, 0.0f, 1.0f);
                this.a = va;
                va.setRepeatMode(2);
                va.setRepeatCount(-1);
                if (this.mode == 0) {
                }
                va.setDuration(300L);
                va.setStartDelay((int) (Math.random() * 60.0d));
                va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.CellLayout.ReorderPreviewAnimation.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        float r = ((Float) animation.getAnimatedValue()).floatValue();
                        float r1 = (ReorderPreviewAnimation.this.mode == 0 && ReorderPreviewAnimation.this.repeating) ? 1.0f : r;
                        float x = (ReorderPreviewAnimation.this.finalDeltaX * r1) + ((1.0f - r1) * ReorderPreviewAnimation.this.initDeltaX);
                        float y = (ReorderPreviewAnimation.this.finalDeltaY * r1) + ((1.0f - r1) * ReorderPreviewAnimation.this.initDeltaY);
                        ReorderPreviewAnimation.this.child.setTranslationX(x);
                        ReorderPreviewAnimation.this.child.setTranslationY(y);
                        float s = (ReorderPreviewAnimation.this.finalScale * r) + ((1.0f - r) * ReorderPreviewAnimation.this.initScale);
                        ReorderPreviewAnimation.this.child.setScaleX(s);
                        ReorderPreviewAnimation.this.child.setScaleY(s);
                    }
                });
                va.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.CellLayout.ReorderPreviewAnimation.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                        ReorderPreviewAnimation.this.initDeltaX = 0.0f;
                        ReorderPreviewAnimation.this.initDeltaY = 0.0f;
                        ReorderPreviewAnimation.this.initScale = CellLayout.this.getChildrenScale();
                        ReorderPreviewAnimation.this.repeating = true;
                    }
                });
                CellLayout.this.mShakeAnimators.put(this.child, this);
                va.start();
            }
        }

        private void cancel() {
            if (this.a != null) {
                this.a.cancel();
            }
        }

        void completeAnimationImmediately() {
            if (this.a != null) {
                this.a.cancel();
            }
            AnimatorSet s = LauncherAnimUtils.createAnimatorSet();
            this.a = s;
            s.playTogether(LauncherAnimUtils.ofFloat(this.child, "scaleX", CellLayout.this.getChildrenScale()), LauncherAnimUtils.ofFloat(this.child, "scaleY", CellLayout.this.getChildrenScale()), LauncherAnimUtils.ofFloat(this.child, "translationX", 0.0f), LauncherAnimUtils.ofFloat(this.child, "translationY", 0.0f));
            s.setDuration(150L);
            s.setInterpolator(new DecelerateInterpolator(1.5f));
            s.start();
        }
    }

    private void completeAndClearReorderPreviewAnimations() {
        for (ReorderPreviewAnimation a : this.mShakeAnimators.values()) {
            a.completeAnimationImmediately();
        }
        this.mShakeAnimators.clear();
    }

    public void commitTempPlacement() {
        setUseTempCoords(false);
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = this.mShortcutsAndWidgets.getChildAt(i);
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            ItemInfo info = (ItemInfo) child.getTag();
            if (info != null) {
                if (info.cellX != lp.tmpCellX || info.cellY != lp.tmpCellY || info.spanX != lp.cellHSpan || info.spanY != lp.cellVSpan) {
                    info.requiresDbUpdate = true;
                }
                int i2 = lp.tmpCellX;
                lp.cellX = i2;
                info.cellX = i2;
                int i3 = lp.tmpCellY;
                lp.cellY = i3;
                info.cellY = i3;
                info.spanX = lp.cellHSpan;
                info.spanY = lp.cellVSpan;
            }
        }
        if (this.mLauncher != null) {
            this.mLauncher.getWorkspace().updateItemLocationsInDatabase(this);
        }
    }

    private void setUseTempCoords(boolean useTempCoords) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams lp = (LayoutParams) this.mShortcutsAndWidgets.getChildAt(i).getLayoutParams();
            lp.useTmpCoords = useTempCoords;
        }
        for (int i2 = 0; i2 < this.mCountX; i2++) {
            for (int j = 0; j < this.mCountY; j++) {
                if (useTempCoords) {
                    this.mTmpOccupied[i2][j] = this.mOccupied[i2][j];
                } else {
                    this.mOccupied[i2][j] = this.mTmpOccupied[i2][j];
                }
            }
        }
    }

    private ItemConfiguration findConfigurationNoShuffle(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, View dragView, ItemConfiguration solution) {
        int[] result = new int[2];
        int[] resultSpan = new int[2];
        findNearestVacantArea(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, result, resultSpan);
        if (result[0] >= 0 && result[1] >= 0) {
            copyCurrentStateToSolution(solution, false);
            solution.dragViewX = result[0];
            solution.dragViewY = result[1];
            solution.dragViewSpanX = resultSpan[0];
            solution.dragViewSpanY = resultSpan[1];
            solution.isSolution = true;
        } else {
            solution.isSolution = false;
        }
        return solution;
    }

    public void prepareChildForDrag(View child) {
        markCellsAsUnoccupiedForView(child);
    }

    private void getDirectionVectorForDrop(int dragViewCenterX, int dragViewCenterY, int spanX, int spanY, View dragView, int[] resultDirection) {
        int[] targetDestination = new int[2];
        findNearestArea(dragViewCenterX, dragViewCenterY, spanX, spanY, targetDestination);
        Rect dragRect = new Rect();
        regionToRect(targetDestination[0], targetDestination[1], spanX, spanY, dragRect);
        dragRect.offset(dragViewCenterX - dragRect.centerX(), dragViewCenterY - dragRect.centerY());
        Rect dropRegionRect = new Rect();
        getViewsIntersectingRegion(targetDestination[0], targetDestination[1], spanX, spanY, dragView, dropRegionRect, this.mIntersectingViews);
        int dropRegionSpanX = dropRegionRect.width();
        int dropRegionSpanY = dropRegionRect.height();
        regionToRect(dropRegionRect.left, dropRegionRect.top, dropRegionRect.width(), dropRegionRect.height(), dropRegionRect);
        int deltaX = (dropRegionRect.centerX() - dragViewCenterX) / spanX;
        int deltaY = (dropRegionRect.centerY() - dragViewCenterY) / spanY;
        if (dropRegionSpanX == this.mCountX || spanX == this.mCountX) {
            deltaX = 0;
        }
        if (dropRegionSpanY == this.mCountY || spanY == this.mCountY) {
            deltaY = 0;
        }
        if (deltaX == 0 && deltaY == 0) {
            resultDirection[0] = 1;
            resultDirection[1] = 0;
        } else {
            computeDirectionVector(deltaX, deltaY, resultDirection);
        }
    }

    private void getViewsIntersectingRegion(int cellX, int cellY, int spanX, int spanY, View dragView, Rect boundingRect, ArrayList<View> intersectingViews) {
        if (boundingRect != null) {
            boundingRect.set(cellX, cellY, cellX + spanX, cellY + spanY);
        }
        intersectingViews.clear();
        Rect r0 = new Rect(cellX, cellY, cellX + spanX, cellY + spanY);
        Rect r1 = new Rect();
        int count = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < count; i++) {
            View child = this.mShortcutsAndWidgets.getChildAt(i);
            if (child != dragView) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                r1.set(lp.cellX, lp.cellY, lp.cellX + lp.cellHSpan, lp.cellY + lp.cellVSpan);
                if (Rect.intersects(r0, r1)) {
                    this.mIntersectingViews.add(child);
                    if (boundingRect != null) {
                        boundingRect.union(r1);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNearestDropLocationOccupied(int pixelX, int pixelY, int spanX, int spanY, View dragView, int[] result) {
        int[] result2 = findNearestArea(pixelX, pixelY, spanX, spanY, result);
        getViewsIntersectingRegion(result2[0], result2[1], spanX, spanY, dragView, null, this.mIntersectingViews);
        return !this.mIntersectingViews.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void revertTempState() {
        revertTempState(false);
    }

    void revertTempState(boolean adjustOccupied) {
        completeAndClearReorderPreviewAnimations();
        if (isItemPlacementDirty()) {
            int count = this.mShortcutsAndWidgets.getChildCount();
            for (int i = 0; i < count; i++) {
                View child = this.mShortcutsAndWidgets.getChildAt(i);
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (lp.tmpCellX != lp.cellX || lp.tmpCellY != lp.cellY) {
                    lp.tmpCellX = lp.cellX;
                    lp.tmpCellY = lp.cellY;
                    animateChildToPosition(child, lp.cellX, lp.cellY, REORDER_ANIMATION_DURATION, 0, false, adjustOccupied);
                }
            }
            setItemPlacementDirty(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean createAreaForResize(int cellX, int cellY, int spanX, int spanY, View dragView, int[] direction, boolean commit) {
        int[] pixelXY = new int[2];
        regionToCenterPoint(cellX, cellY, spanX, spanY, pixelXY);
        ItemConfiguration swapSolution = findReorderSolution(pixelXY[0], pixelXY[1], spanX, spanY, spanX, spanY, direction, dragView, true, new ItemConfiguration());
        setUseTempCoords(true);
        if (swapSolution != null && swapSolution.isSolution) {
            copySolutionToTempState(swapSolution, dragView);
            setItemPlacementDirty(true);
            animateItemsToSolution(swapSolution, dragView, commit);
            if (commit) {
                commitTempPlacement();
                completeAndClearReorderPreviewAnimations();
                setItemPlacementDirty(false);
            } else {
                beginOrAdjustReorderPreviewAnimations(swapSolution, dragView, REORDER_ANIMATION_DURATION, 1);
            }
            this.mShortcutsAndWidgets.requestLayout();
        }
        return swapSolution.isSolution;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] performReorder(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, View dragView, int[] result, int[] resultSpan, int mode) {
        int[] result2 = findNearestArea(pixelX, pixelY, spanX, spanY, result);
        if (resultSpan == null) {
            resultSpan = new int[2];
        }
        if ((mode == 2 || mode == 3 || mode == 4) && this.mPreviousReorderDirection[0] != -100) {
            this.mDirectionVector[0] = this.mPreviousReorderDirection[0];
            this.mDirectionVector[1] = this.mPreviousReorderDirection[1];
            if (mode == 2 || mode == 3) {
                this.mPreviousReorderDirection[0] = -100;
                this.mPreviousReorderDirection[1] = -100;
            }
        } else {
            getDirectionVectorForDrop(pixelX, pixelY, spanX, spanY, dragView, this.mDirectionVector);
            this.mPreviousReorderDirection[0] = this.mDirectionVector[0];
            this.mPreviousReorderDirection[1] = this.mDirectionVector[1];
        }
        ItemConfiguration swapSolution = findReorderSolution(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, this.mDirectionVector, dragView, true, new ItemConfiguration());
        ItemConfiguration noShuffleSolution = findConfigurationNoShuffle(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, dragView, new ItemConfiguration());
        ItemConfiguration finalSolution = null;
        if (swapSolution.isSolution && swapSolution.area() >= noShuffleSolution.area()) {
            finalSolution = swapSolution;
        } else if (noShuffleSolution.isSolution) {
            finalSolution = noShuffleSolution;
        }
        if (mode == 0) {
            if (finalSolution != null) {
                beginOrAdjustReorderPreviewAnimations(finalSolution, dragView, 0, 0);
                result2[0] = finalSolution.dragViewX;
                result2[1] = finalSolution.dragViewY;
                resultSpan[0] = finalSolution.dragViewSpanX;
                resultSpan[1] = finalSolution.dragViewSpanY;
            } else {
                resultSpan[1] = -1;
                resultSpan[0] = -1;
                result2[1] = -1;
                result2[0] = -1;
            }
        } else {
            boolean foundSolution = true;
            setUseTempCoords(true);
            if (finalSolution != null) {
                result2[0] = finalSolution.dragViewX;
                result2[1] = finalSolution.dragViewY;
                resultSpan[0] = finalSolution.dragViewSpanX;
                resultSpan[1] = finalSolution.dragViewSpanY;
                if (mode == 1 || mode == 2 || mode == 3) {
                    copySolutionToTempState(finalSolution, dragView);
                    setItemPlacementDirty(true);
                    animateItemsToSolution(finalSolution, dragView, mode == 2);
                    if (mode == 2 || mode == 3) {
                        commitTempPlacement();
                        completeAndClearReorderPreviewAnimations();
                        setItemPlacementDirty(false);
                    } else {
                        beginOrAdjustReorderPreviewAnimations(finalSolution, dragView, REORDER_ANIMATION_DURATION, 1);
                    }
                }
            } else {
                foundSolution = false;
                resultSpan[1] = -1;
                resultSpan[0] = -1;
                result2[1] = -1;
                result2[0] = -1;
            }
            if (mode == 2 || !foundSolution) {
                setUseTempCoords(false);
            }
            this.mShortcutsAndWidgets.requestLayout();
        }
        return result2;
    }

    void setItemPlacementDirty(boolean dirty) {
        this.mItemPlacementDirty = dirty;
    }

    boolean isItemPlacementDirty() {
        return this.mItemPlacementDirty;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ItemConfiguration {
        int dragViewSpanX;
        int dragViewSpanY;
        int dragViewX;
        int dragViewY;
        ArrayList<View> intersectingViews;
        HashMap<View, CellAndSpan> map = new HashMap<>();
        private HashMap<View, CellAndSpan> savedMap = new HashMap<>();
        ArrayList<View> sortedViews = new ArrayList<>();
        boolean isSolution = false;

        ItemConfiguration() {
        }

        void save() {
            for (View v : this.map.keySet()) {
                this.map.get(v).copy(this.savedMap.get(v));
            }
        }

        void restore() {
            for (View v : this.savedMap.keySet()) {
                this.savedMap.get(v).copy(this.map.get(v));
            }
        }

        void add(View v, CellAndSpan cs) {
            this.map.put(v, cs);
            this.savedMap.put(v, new CellAndSpan());
            this.sortedViews.add(v);
        }

        int area() {
            return this.dragViewSpanX * this.dragViewSpanY;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class CellAndSpan {
        int spanX;
        int spanY;
        int x;
        int y;

        public CellAndSpan() {
        }

        public void copy(CellAndSpan copy) {
            copy.x = this.x;
            copy.y = this.y;
            copy.spanX = this.spanX;
            copy.spanY = this.spanY;
        }

        public CellAndSpan(int x, int y, int spanX, int spanY) {
            this.x = x;
            this.y = y;
            this.spanX = spanX;
            this.spanY = spanY;
        }

        public String toString() {
            return "(" + this.x + ", " + this.y + ": " + this.spanX + ", " + this.spanY + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, int[] result) {
        return findNearestArea(pixelX, pixelY, spanX, spanY, spanX, spanY, false, result, null);
    }

    boolean existsEmptyCell() {
        return findCellForSpan(null, 1, 1);
    }

    public boolean findCellForSpan(int[] cellXY, int spanX, int spanY) {
        int i;
        boolean foundCell = false;
        int endX = this.mCountX - (spanX - 1);
        int endY = this.mCountY - (spanY - 1);
        for (int y = 0; y < endY && !foundCell; y++) {
            int x = 0;
            while (true) {
                if (x < endX) {
                    i = 0;
                    while (i < spanX) {
                        for (int j = 0; j < spanY; j++) {
                            if (this.mOccupied[x + i][y + j]) {
                                break;
                            }
                        }
                        i++;
                    }
                    if (cellXY != null) {
                        cellXY[0] = x;
                        cellXY[1] = y;
                    }
                    foundCell = true;
                }
                x = x + i + 1;
            }
        }
        return foundCell;
    }

    public boolean getVacantCell(int[] vacant, int spanX, int spanY) {
        return findVacantCell(vacant, spanX, spanY, this.mCountX, this.mCountY, this.mOccupied);
    }

    static boolean findVacantCell(int[] vacant, int spanX, int spanY, int xCount, int yCount, boolean[][] occupied) {
        ArrayList<Boolean> occupiedList = new ArrayList<>();
        for (int y = 0; y < yCount; y++) {
            for (int x = 0; x < xCount; x++) {
                occupiedList.add(Boolean.valueOf(occupied[x][y]));
            }
        }
        int sum = 0;
        for (int y2 = 0; y2 < yCount; y2++) {
            for (int x2 = 0; x2 < xCount; x2++) {
                boolean available = !occupied[x2][y2];
                sum++;
                if (available) {
                    int index = occupiedList.lastIndexOf(true);
                    int occupiedX = index % xCount;
                    int occupiedY = index / xCount;
                    if (index <= sum && index + 1 < xCount) {
                        vacant[0] = index + 1;
                        vacant[1] = y2;
                        return true;
                    }
                    if (occupiedY >= y2 && occupiedX + 1 < xCount) {
                        vacant[0] = occupiedX + 1;
                        vacant[1] = occupiedY;
                        return true;
                    }
                    if (occupiedY + 1 < yCount) {
                        vacant[0] = 0;
                        vacant[1] = occupiedY + 1;
                        return true;
                    }
                    return false;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDragEnter() {
        this.mDragging = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDragExit() {
        if (this.mDragging) {
            this.mDragging = false;
        }
        int[] iArr = this.mDragCell;
        this.mDragCell[1] = -1;
        iArr[0] = -1;
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        this.mDragOutlineCurrent = (this.mDragOutlineCurrent + 1) % this.mDragOutlineAnims.length;
        revertTempState();
        setIsDragOverlapping(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDropChild(View child) {
        if (child != null) {
            LayoutParams lp = (LayoutParams) child.getLayoutParams();
            lp.dropped = true;
            child.requestLayout();
            markCellsAsOccupiedForView(child);
        }
    }

    public void cellToRect(int cellX, int cellY, int cellHSpan, int cellVSpan, Rect resultRect) {
        int cellWidth = this.mCellWidth;
        int cellHeight = this.mCellHeight;
        int widthGap = this.mWidthGap;
        int heightGap = this.mHeightGap;
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        int width = (cellHSpan * cellWidth) + ((cellHSpan - 1) * widthGap);
        int height = (cellVSpan * cellHeight) + ((cellVSpan - 1) * heightGap);
        int x = hStartPadding + ((cellWidth + widthGap) * cellX);
        int y = vStartPadding + ((cellHeight + heightGap) * cellY);
        resultRect.set(x, y, x + width, y + height);
    }

    private void clearOccupiedCells() {
        for (int x = 0; x < this.mCountX; x++) {
            for (int y = 0; y < this.mCountY; y++) {
                this.mOccupied[x][y] = false;
                this.mTmpOccupied[x][y] = false;
            }
        }
    }

    public void markCellsAsOccupiedForView(View view) {
        if (view != null && view.getParent() == this.mShortcutsAndWidgets) {
            LayoutParams lp = (LayoutParams) view.getLayoutParams();
            markCellsForView(lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan, this.mOccupied, true);
        }
    }

    public void markCellsAsOccupiedForView(View view, boolean[][] occupied) {
        if (view != null && view.getParent() == this.mShortcutsAndWidgets) {
            LayoutParams lp = (LayoutParams) view.getLayoutParams();
            markCellsForView(lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan, occupied, true);
        }
    }

    public void markCellsAsUnoccupiedForView(View view) {
        if (view != null && view.getParent() == this.mShortcutsAndWidgets) {
            LayoutParams lp = (LayoutParams) view.getLayoutParams();
            markCellsForView(lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan, this.mOccupied, false);
        }
    }

    private void markCellsForView(int cellX, int cellY, int spanX, int spanY, boolean[][] occupied, boolean value) {
        if (cellX >= 0 && cellY >= 0) {
            for (int x = cellX; x < cellX + spanX && x < this.mCountX; x++) {
                for (int y = cellY; y < cellY + spanY && y < this.mCountY; y++) {
                    occupied[x][y] = value;
                }
            }
        }
    }

    public int getDesiredWidth() {
        return getPaddingLeft() + getPaddingRight() + (this.mCountX * this.mCellWidth) + (Math.max(this.mCountX - 1, 0) * this.mWidthGap);
    }

    public int getDesiredHeight() {
        return getPaddingTop() + getPaddingBottom() + (this.mCountY * this.mCellHeight) + (Math.max(this.mCountY - 1, 0) * this.mHeightGap);
    }

    public boolean isOccupied(int x, int y) {
        if (x < this.mCountX && y < this.mCountY) {
            return this.mOccupied[x][y];
        }
        throw new RuntimeException("Position exceeds the bound of this CellLayout");
    }

    public void setDeleted(boolean deleted) {
        this.mDeleted = deleted;
    }

    public boolean isDeleted() {
        return this.mDeleted;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return new LayoutParams(p);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean canReorder;

        @ViewDebug.ExportedProperty
        public int cellHSpan;

        @ViewDebug.ExportedProperty
        public int cellVSpan;

        @ViewDebug.ExportedProperty
        public int cellX;

        @ViewDebug.ExportedProperty
        public int cellY;
        boolean dropped;
        public boolean isFullscreen;
        public boolean isLockedToGrid;
        public int tmpCellX;
        public int tmpCellY;
        public boolean useTmpCoords;

        @ViewDebug.ExportedProperty
        int x;

        @ViewDebug.ExportedProperty
        int y;

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.isLockedToGrid = true;
            this.isFullscreen = false;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.isLockedToGrid = true;
            this.isFullscreen = false;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.isLockedToGrid = true;
            this.isFullscreen = false;
            this.canReorder = true;
            this.cellX = source.cellX;
            this.cellY = source.cellY;
            this.cellHSpan = source.cellHSpan;
            this.cellVSpan = source.cellVSpan;
        }

        public LayoutParams(int cellX, int cellY, int cellHSpan, int cellVSpan) {
            super(-1, -1);
            this.isLockedToGrid = true;
            this.isFullscreen = false;
            this.canReorder = true;
            this.cellX = cellX;
            this.cellY = cellY;
            this.cellHSpan = cellHSpan;
            this.cellVSpan = cellVSpan;
        }

        public void setup(int cellWidth, int cellHeight, int widthGap, int heightGap, boolean invertHorizontally, int colCount) {
            if (this.isLockedToGrid) {
                int myCellHSpan = this.cellHSpan;
                int myCellVSpan = this.cellVSpan;
                int myCellX = this.useTmpCoords ? this.tmpCellX : this.cellX;
                int myCellY = this.useTmpCoords ? this.tmpCellY : this.cellY;
                if (invertHorizontally) {
                    myCellX = (colCount - myCellX) - this.cellHSpan;
                }
                this.width = (((myCellHSpan * cellWidth) + ((myCellHSpan - 1) * widthGap)) - this.leftMargin) - this.rightMargin;
                this.height = (((myCellVSpan * cellHeight) + ((myCellVSpan - 1) * heightGap)) - this.topMargin) - this.bottomMargin;
                this.x = ((cellWidth + widthGap) * myCellX) + this.leftMargin;
                this.y = ((cellHeight + heightGap) * myCellY) + this.topMargin;
            }
        }

        public String toString() {
            return "(" + this.cellX + ", " + this.cellY + ")";
        }

        public void setWidth(int width) {
            this.width = width;
        }

        public int getWidth() {
            return this.width;
        }

        public void setHeight(int height) {
            this.height = height;
        }

        public int getHeight() {
            return this.height;
        }

        public void setX(int x) {
            this.x = x;
        }

        public int getX() {
            return this.x;
        }

        public void setY(int y) {
            this.y = y;
        }

        public int getY() {
            return this.y;
        }
    }

    @Override // net.oneplus.h2launcher.DoubleTapTouchListener.OnDoubleTapSettingsChangeListener
    public void onDoubleTapSettingsChange(boolean enabled) {
        View.OnTouchListener l = enabled ? new DoubleTapTouchListener(this.mLauncher) : null;
        setOnTouchListener(l);
    }

    /* loaded from: classes.dex */
    public class SwapInfo {
        int newX;
        int newY;
        int oldX;
        int oldY;

        public SwapInfo(int oldX, int oldY, int newX, int newY) {
            this.oldX = oldX;
            this.oldY = oldY;
            this.newX = newX;
            this.newY = newY;
        }

        public String toString() {
            return "{oldX: " + this.oldX + ", oldY: " + this.oldY + ", newX: " + this.newX + ", newY: " + this.newY + "}";
        }
    }

    /* loaded from: classes.dex */
    public static final class CellInfo {
        View cell;
        int cellX;
        int cellY;
        long container;
        long screenId;
        int spanX;
        int spanY;

        public CellInfo(View v, ItemInfo info) {
            this.cellX = -1;
            this.cellY = -1;
            this.cell = v;
            this.cellX = info.cellX;
            this.cellY = info.cellY;
            this.spanX = info.spanX;
            this.spanY = info.spanY;
            this.screenId = info.screenId;
            this.container = info.container;
        }

        public String toString() {
            return "Cell[view=" + (this.cell == null ? "null" : this.cell.getClass()) + ", x=" + this.cellX + ", y=" + this.cellY + "]";
        }
    }

    public boolean findVacantCell(int spanX, int spanY, int[] outXY) {
        return Utilities.findVacantCell(outXY, spanX, spanY, this.mCountX, this.mCountY, this.mOccupied);
    }

    public boolean isRegionVacant(int x, int y, int spanX, int spanY) {
        int x2 = (x + spanX) - 1;
        int y2 = (y + spanY) - 1;
        if (x < 0 || y < 0 || x2 >= this.mCountX || y2 >= this.mCountY) {
            return false;
        }
        for (int i = x; i <= x2; i++) {
            for (int j = y; j <= y2; j++) {
                if (this.mOccupied[i][j]) {
                    return false;
                }
            }
        }
        return true;
    }
}
