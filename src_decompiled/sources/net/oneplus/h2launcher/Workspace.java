package net.oneplus.h2launcher;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.Property;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.DoubleTapTouchListener;
import net.oneplus.h2launcher.DragController;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.FolderIcon;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.PageIndicator;
import net.oneplus.h2launcher.SearchDropTargetBar;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.UninstallDropTarget;
import net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate;
import net.oneplus.h2launcher.accessibility.OverviewScreenAccessibilityDelegate;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.LongArrayMap;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.util.WallpaperUtils;
import net.oneplus.h2launcher.widget.PendingAddShortcutInfo;
import net.oneplus.h2launcher.widget.PendingAddWidgetInfo;

/* loaded from: classes.dex */
public class Workspace extends PagedView implements DropTarget, DragSource, DragScroller, View.OnTouchListener, DragController.DragListener, LauncherTransitionable, ViewGroup.OnHierarchyChangeListener, Insettable, UninstallDropTarget.UninstallSource, LauncherAccessibilityDelegate.AccessibilityDragSource, Stats.LaunchSourceProvider, DoubleTapTouchListener.OnDoubleTapSettingsChangeListener {
    private static final int ADJACENT_SCREEN_DROP_DURATION = 300;
    public static final int ANIMATE_INTO_POSITION_AND_DISAPPEAR = 0;
    public static final int ANIMATE_INTO_POSITION_AND_REMAIN = 1;
    public static final int ANIMATE_INTO_POSITION_AND_RESIZE = 2;
    public static final int CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION = 4;
    public static final int COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION = 3;
    private static final long CUSTOM_CONTENT_SCREEN_ID = -301;
    public static final int DRAG_BITMAP_PADDING = 2;
    private static final int DRAG_MODE_ADD_TO_FOLDER = 2;
    private static final int DRAG_MODE_CREATE_FOLDER = 1;
    private static final int DRAG_MODE_NONE = 0;
    private static final int DRAG_MODE_REORDER = 3;
    static final long EXTRA_EMPTY_SCREEN_ID = -201;
    protected static final int FADE_EMPTY_SCREEN_DURATION = 150;
    private static final int FOLDER_CREATION_TIMEOUT = 0;
    static final boolean MAP_NO_RECURSE = false;
    static final boolean MAP_RECURSE = true;
    private static final float MAX_DISTANCE_FOR_FOLDER_CREATION = 0.85f;
    private static final float MAX_DISTANCE_FOR_FOLDER_CREATION_FOR_WORST_CASE = 0.7f;
    static final float MAX_SWIPE_ANGLE = 1.0471976f;
    private static final int MAX_UPDATE_DYNAMIC_ICON_PENDING_COUNT = 3;
    protected static final int PAGE_INDEX_ALL = Integer.MIN_VALUE;
    private static final long PENDING_DYNAMIC_ICON_DELAY = 500;
    private static final int REORDER_JITTER_PIXEL = 2;
    public static final int REORDER_TIMEOUT = 300;
    protected static final int SNAP_OFF_EMPTY_SCREEN_DURATION = 400;
    static final float START_DAMPING_TOUCH_SLOP_ANGLE = 0.5235988f;
    private static final String TAG = "Launcher.Workspace";
    static final float TOUCH_SLOP_DAMPING_FACTOR = 4.0f;
    boolean mAddNewPageOnDrag;
    private boolean mAddToExistingFolderOnDrop;
    boolean mAnimatingViewIntoPlace;
    AssetCache mAssetCache;
    private int mBaseIconSize;
    private final Canvas mCanvas;
    boolean mChildrenLayersEnabled;
    private boolean mCreateUserFolderOnDrop;
    private float mCurrentScale;
    Launcher.CustomContentCallbacks mCustomContentCallbacks;
    private String mCustomContentDescription;
    boolean mCustomContentShowing;
    private int mDefaultPage;
    private boolean mDeferDropAfterUninstall;
    boolean mDeferRemoveExtraEmptyScreen;
    Runnable mDeferredAction;
    private Runnable mDelayedRemoveExtraEmptyScreenRunnable;
    Runnable mDelayedResizeRunnable;
    private Runnable mDelayedSnapToPageRunnable;
    private Point mDisplaySize;
    DragController mDragController;
    FolderIcon.FolderRingAnimator mDragFolderRingAnimator;
    private CellLayout.CellInfo mDragInfo;
    private int mDragMode;
    Bitmap mDragOutline;
    private FolderIcon mDragOverFolderIcon;
    private int mDragOverReorderX;
    private int mDragOverReorderY;
    private int mDragOverX;
    private int mDragOverY;
    private CellLayout mDragOverlappingLayout;
    private ShortcutAndWidgetContainer mDragSourceInternal;
    CellLayout mDragTargetLayout;
    float[] mDragViewVisualCenter;
    private CellLayout mDropToLayout;
    private final Alarm mFolderCreationAlarm;
    private boolean mHasNavigationBar;
    private boolean mHasTouchSettled;
    private boolean mInScrollArea;
    private boolean mIsAttachedToWindow;
    boolean mIsDragOccuring;
    private boolean mIsSwitchingState;
    private float mLastCustomContentScrollProgress;
    int mLastOverlaySroll;
    int mLastReorderX;
    int mLastReorderY;
    float mLastSetWallpaperOffsetSteps;
    Launcher mLauncher;
    Launcher.LauncherOverlay mLauncherOverlay;
    private LayoutTransition mLayoutTransition;
    private float mMaxDistanceForFolderCreation;
    int mNumPagesForWallpaperParallax;
    private int mOriginalDefaultPage;
    private HolographicOutlineHelper mOutlineHelper;
    private float mOverviewModeShrinkFactor;
    private float[] mPageAlpha;
    private View.AccessibilityDelegate mPagesAccessibilityDelegate;
    Runnable mRemoveEmptyScreenRunnable;
    private final Alarm mReorderAlarm;
    private final ArrayList<Integer> mRestoredPages;
    private SparseArray<Parcelable> mSavedStates;
    private int mScaleIconSize;
    ArrayList<Long> mScreenOrder;
    boolean mScrollInteractionBegan;
    private float mSettledX;
    boolean mShouldSendPageSettled;
    private SpringLoadedDragController mSpringLoadedDragController;
    private float mSpringLoadedShrinkFactor;
    boolean mStartedSendingScrollEvents;
    private State mState;
    private WorkspaceStateTransitionAnimation mStateTransitionAnimation;
    private boolean mStripScreensOnPageStopMoving;
    int[] mTargetCell;
    private int[] mTempCell;
    private float[] mTempCellLayoutCenterCoordinates;
    private int[] mTempEstimate;
    private Matrix mTempInverseMatrix;
    private int[] mTempPt;
    private int[] mTempVisiblePagesRange;
    private final int[] mTempXY;
    private long mTouchDownTime;
    private float mTransitionProgress;
    private boolean mUninstallSuccessful;
    boolean mWallpaperIsLiveWallpaper;
    boolean mWallpaperIsOneplusBlurWallpaper;
    final WallpaperManager mWallpaperManager;
    WallpaperOffsetInterpolator mWallpaperOffset;
    IBinder mWindowToken;
    private boolean mWorkspaceFadeInAdjacentScreens;
    LongArrayMap<CellLayout> mWorkspaceScreens;
    private float mXDown;
    private float mYDown;
    boolean naviBarShow;
    private static boolean ENFORCE_DRAG_EVENT_ORDER = false;
    static Rect mLandscapeCellLayoutMetrics = null;
    static Rect mPortraitCellLayoutMetrics = null;
    private static final Rect sTempRect = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ItemOperator {
        boolean evaluate(ItemInfo itemInfo, View view, View view2);
    }

    @Override // net.oneplus.h2launcher.DoubleTapTouchListener.OnDoubleTapSettingsChangeListener
    public void onDoubleTapSettingsChange(boolean enabled) {
        for (int i = 0; i < getChildCount(); i++) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt instanceof DoubleTapTouchListener.OnDoubleTapSettingsChangeListener) {
                ((DoubleTapTouchListener.OnDoubleTapSettingsChangeListener) childAt).onDoubleTapSettingsChange(enabled);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum State {
        NORMAL(StyleManager.getInstance().showSearchBar() ? SearchDropTargetBar.State.SEARCH_BAR : SearchDropTargetBar.State.INVISIBLE),
        NORMAL_HIDDEN(SearchDropTargetBar.State.INVISIBLE),
        SPRING_LOADED(SearchDropTargetBar.State.DROP_TARGET),
        OVERVIEW(SearchDropTargetBar.State.INVISIBLE),
        OVERVIEW_HIDDEN(SearchDropTargetBar.State.INVISIBLE),
        CUSTOMIZATIONS(SearchDropTargetBar.State.INVISIBLE),
        SHRUNKEN_ALL_APPS(SearchDropTargetBar.State.INVISIBLE),
        WALLPAPERS(SearchDropTargetBar.State.INVISIBLE),
        ICON_REARRANGEMENT(SearchDropTargetBar.State.INVISIBLE);

        private final SearchDropTargetBar.State mBarState;

        State(SearchDropTargetBar.State searchBarState) {
            this.mBarState = searchBarState;
        }

        public SearchDropTargetBar.State getSearchDropTargetBarState() {
            if (equals(NORMAL)) {
                return StyleManager.getInstance().showSearchBar() ? SearchDropTargetBar.State.SEARCH_BAR : SearchDropTargetBar.State.INVISIBLE;
            }
            return this.mBarState;
        }
    }

    public Workspace(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Workspace(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mTouchDownTime = -1L;
        this.mWorkspaceScreens = new LongArrayMap<>();
        this.mScreenOrder = new ArrayList<>();
        this.mDeferRemoveExtraEmptyScreen = false;
        this.mAddNewPageOnDrag = true;
        this.mHasNavigationBar = false;
        this.mTargetCell = new int[2];
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        this.mLastCustomContentScrollProgress = -1.0f;
        this.mCustomContentDescription = "";
        this.mDragTargetLayout = null;
        this.mDragOverlappingLayout = null;
        this.mDropToLayout = null;
        this.mTempCell = new int[2];
        this.mTempPt = new int[2];
        this.mTempEstimate = new int[2];
        this.mDragViewVisualCenter = new float[2];
        this.mTempCellLayoutCenterCoordinates = new float[2];
        this.mTempInverseMatrix = new Matrix();
        this.mIsAttachedToWindow = false;
        this.mState = State.NORMAL;
        this.mIsSwitchingState = false;
        this.mAnimatingViewIntoPlace = false;
        this.mIsDragOccuring = false;
        this.mChildrenLayersEnabled = true;
        this.mStripScreensOnPageStopMoving = false;
        this.mInScrollArea = false;
        this.mDragOutline = null;
        this.mTempXY = new int[2];
        this.mTempVisiblePagesRange = new int[2];
        this.mLastSetWallpaperOffsetSteps = 0.0f;
        this.mDisplaySize = new Point();
        this.mFolderCreationAlarm = new Alarm();
        this.mReorderAlarm = new Alarm();
        this.mDragFolderRingAnimator = null;
        this.mDragOverFolderIcon = null;
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mScaleIconSize = 0;
        this.mBaseIconSize = 0;
        this.mDragOverReorderX = 0;
        this.mDragOverReorderY = 0;
        this.mCanvas = new Canvas();
        this.mDragMode = 0;
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
        this.mRestoredPages = new ArrayList<>();
        this.mLastOverlaySroll = 0;
        this.naviBarShow = false;
        this.mDelayedRemoveExtraEmptyScreenRunnable = null;
        this.mPageAlpha = new float[]{1.0f, 1.0f};
        this.mOutlineHelper = HolographicOutlineHelper.obtain(context);
        this.mLauncher = (Launcher) context;
        this.mStateTransitionAnimation = new WorkspaceStateTransitionAnimation(this.mLauncher, this);
        Resources res = getResources();
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        this.mWorkspaceFadeInAdjacentScreens = grid.shouldFadeAdjacentWorkspaceScreens();
        this.mFadeInAdjacentScreens = false;
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.Workspace, defStyle, 0);
        this.mSpringLoadedShrinkFactor = res.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f;
        this.mOverviewModeShrinkFactor = res.getInteger(R.integer.config_workspaceOverviewShrinkPercentage) / 100.0f;
        int i = a.getInt(0, 1);
        this.mDefaultPage = i;
        this.mOriginalDefaultPage = i;
        a.recycle();
        setOnHierarchyChangeListener(this);
        setHapticFeedbackEnabled(false);
        initWorkspace();
        setMotionEventSplittingEnabled(true);
        setOnTouchListener(new DoubleTapTouchListener(this.mLauncher, this));
    }

    @Override // net.oneplus.h2launcher.Insettable
    public void setInsets(Rect insets) {
        this.mHasNavigationBar = insets.bottom != 0;
        this.mInsets.set(insets);
        CellLayout customScreen = getScreenWithId(CUSTOM_CONTENT_SCREEN_ID);
        if (customScreen != null) {
            KeyEvent.Callback childAt = customScreen.getShortcutsAndWidgets().getChildAt(0);
            if (childAt instanceof Insettable) {
                ((Insettable) childAt).setInsets(this.mInsets);
            }
        }
        this.mLauncher.setupUtilsPanel();
    }

    public Rect getInsets() {
        return this.mInsets;
    }

    public int[] estimateItemSize(ItemInfo itemInfo, boolean springLoaded) {
        int[] size = new int[2];
        if (getChildCount() > 0) {
            CellLayout cl = (CellLayout) getChildAt(numCustomPages());
            Rect r = estimateItemPosition(cl, itemInfo, 0, 0, itemInfo.spanX, itemInfo.spanY);
            size[0] = r.width();
            size[1] = r.height();
            if (springLoaded) {
                size[0] = (int) (size[0] * this.mSpringLoadedShrinkFactor);
                size[1] = (int) (size[1] * this.mSpringLoadedShrinkFactor);
            }
        } else {
            size[0] = Integer.MAX_VALUE;
            size[1] = Integer.MAX_VALUE;
        }
        return size;
    }

    public Rect estimateItemPosition(CellLayout cl, ItemInfo pendingInfo, int hCell, int vCell, int hSpan, int vSpan) {
        Rect r = new Rect();
        cl.cellToRect(hCell, vCell, hSpan, vSpan, r);
        return r;
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragStart(DragSource source, Object info, int dragAction) {
        if (ENFORCE_DRAG_EVENT_ORDER) {
            enfoceDragParity("onDragStart", 0, 0);
        }
        this.mIsDragOccuring = true;
        updateChildrenLayersEnabled(false);
        this.mLauncher.lockScreenOrientation();
        this.mLauncher.onInteractionBegin();
        InstallShortcutReceiver.enableInstallQueue();
        if (this.mAddNewPageOnDrag) {
            this.mDeferRemoveExtraEmptyScreen = false;
            addExtraEmptyScreenOnDrag();
        }
    }

    public void setAddNewPageOnDrag(boolean addPage) {
        this.mAddNewPageOnDrag = addPage;
    }

    public void deferRemoveExtraEmptyScreen() {
        this.mDeferRemoveExtraEmptyScreen = true;
    }

    @Override // net.oneplus.h2launcher.DragController.DragListener
    public void onDragEnd() {
        if (ENFORCE_DRAG_EVENT_ORDER) {
            enfoceDragParity("onDragEnd", 0, 0);
        }
        if (!this.mDeferRemoveExtraEmptyScreen) {
            removeExtraEmptyScreen(true, this.mDragSourceInternal != null);
        }
        this.mIsDragOccuring = false;
        updateChildrenLayersEnabled(false);
        this.mLauncher.unlockScreenOrientation(false);
        InstallShortcutReceiver.disableAndFlushInstallQueue(getContext());
        this.mDragSourceInternal = null;
        this.mLauncher.onInteractionEnd();
    }

    protected void initWorkspace() {
        this.mCurrentPage = this.mDefaultPage;
        LauncherAppState app = LauncherAppState.getInstance();
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        this.mAssetCache = app.getAssetCache();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        setChildrenDrawnWithCacheEnabled(true);
        setMinScale(this.mOverviewModeShrinkFactor);
        setupLayoutTransition();
        this.mWallpaperOffset = new WallpaperOffsetInterpolator();
        Display display = this.mLauncher.getWindowManager().getDefaultDisplay();
        display.getSize(this.mDisplaySize);
        this.mBaseIconSize = grid.iconSizePx;
        updateIconSize(Utilities.getIconScaleValue(this.mLauncher));
        setWallpaperDimension();
        setEdgeGlowColor(getResources().getColor(R.color.workspace_edge_effect_color));
    }

    public void updateIconSize(float scaleValue) {
        this.mScaleIconSize = (int) (this.mBaseIconSize * scaleValue);
        if (scaleValue == 1.13f && Utilities.isDefaultDensity(this.mLauncher)) {
            this.mMaxDistanceForFolderCreation = MAX_DISTANCE_FOR_FOLDER_CREATION_FOR_WORST_CASE * this.mScaleIconSize;
            Logger.d(TAG, "merge folder using special rule, mMaxDistanceForFolderCreation = " + this.mMaxDistanceForFolderCreation);
        } else {
            this.mMaxDistanceForFolderCreation = MAX_DISTANCE_FOR_FOLDER_CREATION * this.mScaleIconSize;
            Logger.d(TAG, "merge folder using normal rule, mMaxDistanceForFolderCreation = " + this.mMaxDistanceForFolderCreation);
        }
    }

    private void setupLayoutTransition() {
        this.mLayoutTransition = new LayoutTransition();
        this.mLayoutTransition.enableTransitionType(3);
        this.mLayoutTransition.enableTransitionType(1);
        this.mLayoutTransition.disableTransitionType(2);
        this.mLayoutTransition.disableTransitionType(0);
        setLayoutTransition(this.mLayoutTransition);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableLayoutTransitions() {
        setLayoutTransition(this.mLayoutTransition);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableLayoutTransitions() {
        setLayoutTransition(null);
    }

    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View parent, View child) {
        if (!(child instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        CellLayout cl = (CellLayout) child;
        cl.setOnInterceptTouchListener(this);
        cl.setClickable(true);
        cl.setImportantForAccessibility(2);
        super.onChildViewAdded(parent, child);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public boolean shouldDrawChild(View child) {
        CellLayout cl = (CellLayout) child;
        return super.shouldDrawChild(child) && (this.mIsSwitchingState || cl.getShortcutsAndWidgets().getAlpha() > 0.0f || cl.getBackgroundAlpha() > 0.0f);
    }

    public Folder getOpenFolder() {
        FoldersContainerView foldersView = this.mLauncher.getFoldersView();
        if (foldersView == null) {
            Logger.w(TAG, "getOpenFolder# folders view is null");
            return null;
        }
        Folder folder = foldersView.getCurrentFolder();
        if (folder == null || !folder.getInfo().opened) {
            return null;
        }
        return folder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTouchActive() {
        return this.mTouchState != 0;
    }

    public void removeAllWorkspaceScreens() {
        disableLayoutTransitions();
        if (hasCustomContent()) {
            removeCustomContentPage();
        }
        removeAllViews();
        this.mScreenOrder.clear();
        this.mWorkspaceScreens.clear();
        enableLayoutTransitions();
    }

    public long insertNewWorkspaceScreenBeforeEmptyScreen(long screenId) {
        int insertIndex = this.mScreenOrder.indexOf(Long.valueOf(EXTRA_EMPTY_SCREEN_ID));
        if (insertIndex < 0) {
            insertIndex = this.mScreenOrder.size();
        }
        return insertNewWorkspaceScreen(screenId, insertIndex);
    }

    public long insertNewWorkspaceScreen(long screenId) {
        return insertNewWorkspaceScreen(screenId, getChildCount());
    }

    public long insertNewWorkspaceScreen(long screenId, int insertIndex) {
        if (this.mWorkspaceScreens.containsKey(screenId)) {
            throw new RuntimeException("Screen id " + screenId + " already exists!");
        }
        CellLayout newScreen = (CellLayout) this.mLauncher.getLayoutInflater().inflate(R.layout.workspace_screen, (ViewGroup) this, false);
        setupNewScreenAlpha(newScreen, insertIndex);
        newScreen.setOnLongClickListener(this.mLongClickListener);
        newScreen.setOnClickListener(this.mLauncher);
        newScreen.onDoubleTapSettingsChange(this.mLauncher.getDoubleTapEnabled());
        newScreen.setSoundEffectsEnabled(false);
        this.mWorkspaceScreens.put(screenId, newScreen);
        this.mScreenOrder.add(insertIndex, Long.valueOf(screenId));
        addView(newScreen, insertIndex);
        LauncherAccessibilityDelegate delegate = LauncherAppState.getInstance().getAccessibilityDelegate();
        if (delegate != null && delegate.isInAccessibleDrag()) {
            newScreen.enableAccessibleDrag(true, 2);
        }
        return screenId;
    }

    private void setupNewScreenAlpha(CellLayout newScreen, int insertIndex) {
        float alpha;
        TransitionStates states = new TransitionStates(getState(), getState());
        boolean isCurrentPage = insertIndex == getCurrentPage();
        float backgroundAlpha = (states.stateIsSpringLoaded || states.stateIsOverview || states.stateIsCustomizations || states.stateIsIconRearrangement) ? 1.0f : 0.0f;
        if (states.stateIsIconRearrangement) {
            alpha = 1.0f;
        } else if (states.stateIsNormalHidden || states.stateIsOverviewHidden || states.stateIsShrunkenAllApps) {
            alpha = 0.0f;
        } else if (states.stateIsNormal && this.mWorkspaceFadeInAdjacentScreens) {
            alpha = (isCurrentPage || insertIndex < numCustomPages()) ? 1.0f : 0.0f;
        } else if (states.stateIsCustomizations) {
            alpha = isCurrentPage ? 1.0f : 0.0f;
        } else {
            alpha = 1.0f;
        }
        newScreen.setBackgroundAlpha(backgroundAlpha);
        newScreen.setShortcutAndWidgetAlpha(alpha);
    }

    public void createCustomContentContainer() {
        CellLayout customScreen = (CellLayout) this.mLauncher.getLayoutInflater().inflate(R.layout.workspace_screen, (ViewGroup) this, false);
        customScreen.setIsCustomContentScreen(true);
        customScreen.disableDragTarget();
        this.mWorkspaceScreens.put(CUSTOM_CONTENT_SCREEN_ID, customScreen);
        this.mScreenOrder.add(0, Long.valueOf(CUSTOM_CONTENT_SCREEN_ID));
        customScreen.setPadding(0, 0, 0, 0);
        addFullScreenPage(customScreen);
        this.mDefaultPage = this.mOriginalDefaultPage + 1;
        if (this.mRestorePage != -1001) {
            this.mRestorePage++;
        } else {
            setCurrentPage(getCurrentPage() + 1);
        }
        hideCustomContentIfNecessary();
    }

    public void removeCustomContentPage() {
        CellLayout customScreen = getScreenWithId(CUSTOM_CONTENT_SCREEN_ID);
        if (customScreen == null) {
            throw new RuntimeException("Expected custom content screen to exist");
        }
        this.mWorkspaceScreens.remove(CUSTOM_CONTENT_SCREEN_ID);
        this.mScreenOrder.remove(Long.valueOf(CUSTOM_CONTENT_SCREEN_ID));
        disableLayoutTransitions();
        removeView(customScreen);
        enableLayoutTransitions();
        if (this.mCustomContentCallbacks != null) {
            this.mCustomContentCallbacks.onScrollProgressChanged(0.0f, 0.0f);
            this.mCustomContentCallbacks.onHide(true);
        }
        this.mCustomContentCallbacks = null;
        this.mDefaultPage = this.mOriginalDefaultPage - 1;
        if (this.mRestorePage != -1001) {
            this.mRestorePage--;
        } else {
            setCurrentPage(getCurrentPage() - 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addToCustomContentPage(View view, Launcher.CustomContentCallbacks callbacks, String description) {
        if (getPageIndexForScreenId(CUSTOM_CONTENT_SCREEN_ID) < 0) {
            throw new RuntimeException("Expected custom content screen to exist");
        }
        CellLayout customScreen = getScreenWithId(CUSTOM_CONTENT_SCREEN_ID);
        int spanX = customScreen.getCountX();
        int spanY = customScreen.getCountY();
        CellLayout.LayoutParams lp = new CellLayout.LayoutParams(0, 0, spanX, spanY);
        lp.canReorder = false;
        lp.isFullscreen = true;
        if (view instanceof Insettable) {
            ((Insettable) view).setInsets(this.mInsets);
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup parent = (ViewGroup) view.getParent();
            parent.removeView(view);
        }
        customScreen.removeAllViews();
        customScreen.addViewToCellLayout(view, 0, 0, lp, true);
        this.mCustomContentDescription = description;
        this.mCustomContentCallbacks = callbacks;
    }

    public void removeWorkspaceScreen(final CellLayout layout, boolean animated) {
        layout.setDeleted(true);
        final Runnable removeScreenRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.1
            @Override // java.lang.Runnable
            public void run() {
                long screenId = Workspace.this.getIdForScreen(layout);
                Workspace.this.mWorkspaceScreens.remove(screenId);
                Workspace.this.mScreenOrder.remove(Long.valueOf(screenId));
                Workspace.this.removeView(layout);
                if (Workspace.this.getCurrentPage() >= Workspace.this.getChildCount()) {
                    Workspace.this.setCurrentPage(Workspace.this.getCurrentPage() - 1);
                }
                Workspace.this.updateWorkspaceScreenOrder();
            }
        };
        if (!animated) {
            removeScreenRunnable.run();
            return;
        }
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", 0.0f);
        PropertyValuesHolder bgAlpha = PropertyValuesHolder.ofFloat("backgroundAlpha", 0.0f);
        ObjectAnimator oa = ObjectAnimator.ofPropertyValuesHolder(layout, alpha, bgAlpha);
        oa.setDuration(150L);
        oa.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.Workspace.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (removeScreenRunnable != null) {
                    removeScreenRunnable.run();
                }
            }
        });
        oa.start();
    }

    public void addExtraEmptyScreenOnDrag() {
        boolean lastChildOnScreen = false;
        boolean childOnFinalScreen = false;
        this.mRemoveEmptyScreenRunnable = null;
        if (this.mDragSourceInternal != null) {
            if (this.mDragSourceInternal.getChildCount() == 1) {
                lastChildOnScreen = true;
            }
            CellLayout cl = (CellLayout) this.mDragSourceInternal.getParent();
            if (indexOfChild(cl) == getChildCount() - 1) {
                childOnFinalScreen = true;
            }
        }
        if ((!lastChildOnScreen || !childOnFinalScreen) && !this.mWorkspaceScreens.containsKey(EXTRA_EMPTY_SCREEN_ID)) {
            insertNewWorkspaceScreen(EXTRA_EMPTY_SCREEN_ID);
        }
    }

    public boolean addExtraEmptyScreen() {
        if (this.mWorkspaceScreens.containsKey(EXTRA_EMPTY_SCREEN_ID)) {
            return false;
        }
        insertNewWorkspaceScreen(EXTRA_EMPTY_SCREEN_ID);
        return true;
    }

    private void convertFinalScreenToEmptyScreenIfNecessary() {
        if (this.mLauncher.isWorkspaceLoading()) {
            Launcher.addDumpLog(TAG, "    - workspace loading, skip", true);
            return;
        }
        if (!hasExtraEmptyScreen() && this.mScreenOrder.size() != 0) {
            long finalScreenId = this.mScreenOrder.get(this.mScreenOrder.size() - 1).longValue();
            if (finalScreenId != CUSTOM_CONTENT_SCREEN_ID) {
                CellLayout finalScreen = this.mWorkspaceScreens.get(finalScreenId);
                if (finalScreen.getShortcutsAndWidgets().getChildCount() == 0 && !finalScreen.isDropPending()) {
                    this.mWorkspaceScreens.remove(finalScreenId);
                    this.mScreenOrder.remove(Long.valueOf(finalScreenId));
                    this.mWorkspaceScreens.put(EXTRA_EMPTY_SCREEN_ID, finalScreen);
                    this.mScreenOrder.add(Long.valueOf(EXTRA_EMPTY_SCREEN_ID));
                    this.mLauncher.getModel().updateWorkspaceScreenOrder(this.mLauncher, this.mScreenOrder);
                }
            }
        }
    }

    public void removeExtraEmptyScreen(boolean animate, boolean stripEmptyScreens) {
        removeExtraEmptyScreenDelayed(animate, null, 0, stripEmptyScreens);
    }

    public void removeExtraEmptyScreenDelayed(final boolean animate, final Runnable onComplete, final int delay, final boolean stripEmptyScreens) {
        if (this.mLauncher.isWorkspaceLoading()) {
            Launcher.addDumpLog(TAG, "    - workspace loading, skip", true);
            return;
        }
        if (isReordering(false)) {
            Logger.d(TAG, "removeExtraEmptyScreenDelayed while reordering, delay do it");
            this.mDelayedRemoveExtraEmptyScreenRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.3
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.removeExtraEmptyScreenDelayed(animate, onComplete, delay, stripEmptyScreens);
                }
            };
            return;
        }
        if (delay > 0) {
            postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.Workspace.4
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.removeExtraEmptyScreenDelayed(animate, onComplete, 0, stripEmptyScreens);
                }
            }, delay);
            return;
        }
        convertFinalScreenToEmptyScreenIfNecessary();
        if (hasExtraEmptyScreen()) {
            int emptyIndex = this.mScreenOrder.indexOf(Long.valueOf(EXTRA_EMPTY_SCREEN_ID));
            if (getPageNearestToCenterOfScreen() == emptyIndex) {
                snapToPage(emptyIndex - 1, 400);
                fadeAndRemoveEmptyScreen(400, FADE_EMPTY_SCREEN_DURATION, onComplete, stripEmptyScreens);
                return;
            } else {
                snapToPage(getNextPage(), 0);
                fadeAndRemoveEmptyScreen(0, FADE_EMPTY_SCREEN_DURATION, onComplete, stripEmptyScreens);
                return;
            }
        }
        if (stripEmptyScreens) {
            stripEmptyScreens();
        }
        if (onComplete != null) {
            onComplete.run();
        }
    }

    private void fadeAndRemoveEmptyScreen(int delay, int duration, final Runnable onComplete, final boolean stripEmptyScreens) {
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", 0.0f);
        PropertyValuesHolder bgAlpha = PropertyValuesHolder.ofFloat("backgroundAlpha", 0.0f);
        final CellLayout cl = this.mWorkspaceScreens.get(EXTRA_EMPTY_SCREEN_ID);
        this.mRemoveEmptyScreenRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.5
            @Override // java.lang.Runnable
            public void run() {
                if (Workspace.this.hasExtraEmptyScreen()) {
                    Workspace.this.mWorkspaceScreens.remove(Workspace.EXTRA_EMPTY_SCREEN_ID);
                    Workspace.this.mScreenOrder.remove(Long.valueOf(Workspace.EXTRA_EMPTY_SCREEN_ID));
                    Workspace.this.removeView(cl);
                    if (stripEmptyScreens) {
                        Workspace.this.stripEmptyScreens();
                    }
                }
            }
        };
        cl.setDeleted(true);
        ObjectAnimator oa = ObjectAnimator.ofPropertyValuesHolder(cl, alpha, bgAlpha);
        oa.setDuration(duration);
        oa.setStartDelay(delay);
        oa.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.Workspace.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (Workspace.this.mRemoveEmptyScreenRunnable != null) {
                    Workspace.this.mRemoveEmptyScreenRunnable.run();
                }
                if (onComplete != null) {
                    onComplete.run();
                }
            }
        });
        oa.start();
    }

    public boolean isExtraEmptyScreen(CellLayout layout) {
        return getIdForScreen(layout) == EXTRA_EMPTY_SCREEN_ID;
    }

    public boolean hasExtraEmptyScreen() {
        int nScreens = getChildCount();
        return this.mWorkspaceScreens.containsKey(EXTRA_EMPTY_SCREEN_ID) && nScreens - numCustomPages() > 1;
    }

    public long commitExtraEmptyScreen() {
        if (this.mLauncher.isWorkspaceLoading()) {
            Launcher.addDumpLog(TAG, "    - workspace loading, skip", true);
            return -1L;
        }
        int index = getPageIndexForScreenId(EXTRA_EMPTY_SCREEN_ID);
        CellLayout cl = this.mWorkspaceScreens.get(EXTRA_EMPTY_SCREEN_ID);
        this.mWorkspaceScreens.remove(EXTRA_EMPTY_SCREEN_ID);
        this.mScreenOrder.remove(Long.valueOf(EXTRA_EMPTY_SCREEN_ID));
        long newId = LauncherAppState.getLauncherProvider().generateNewScreenId();
        this.mWorkspaceScreens.put(newId, cl);
        this.mScreenOrder.add(Long.valueOf(newId));
        if (getPageIndicator() != null) {
            getPageIndicator().updateMarker(index, getPageIndicatorMarker(index));
        }
        this.mLauncher.getModel().updateWorkspaceScreenOrder(this.mLauncher, this.mScreenOrder);
        return newId;
    }

    public CellLayout getScreenWithId(long screenId) {
        CellLayout layout = this.mWorkspaceScreens.get(screenId);
        return layout;
    }

    public long getIdForScreen(CellLayout layout) {
        int index = this.mWorkspaceScreens.indexOfValue(layout);
        if (index != -1) {
            return this.mWorkspaceScreens.keyAt(index);
        }
        return -1L;
    }

    public int getPageIndexForScreenId(long screenId) {
        return indexOfChild(this.mWorkspaceScreens.get(screenId));
    }

    public int getHomeScreenPageIndex() {
        return getPageIndexForScreenId(CUSTOM_CONTENT_SCREEN_ID) + 1;
    }

    public long getScreenIdForPageIndex(int index) {
        if (index < 0 || index >= this.mScreenOrder.size()) {
            return -1L;
        }
        return this.mScreenOrder.get(index).longValue();
    }

    public ArrayList<Long> getScreenOrder() {
        return this.mScreenOrder;
    }

    public void stripEmptyScreens() {
        if (this.mLauncher.isWorkspaceLoading()) {
            Launcher.addDumpLog(TAG, "    - workspace loading, skip", true);
            return;
        }
        if (isPageMoving()) {
            this.mStripScreensOnPageStopMoving = true;
            return;
        }
        int currentPage = getNextPage();
        ArrayList<Long> removeScreens = new ArrayList<>();
        int total = this.mWorkspaceScreens.size();
        for (int i = 0; i < total; i++) {
            long id = this.mWorkspaceScreens.keyAt(i);
            ShortcutAndWidgetContainer container = this.mWorkspaceScreens.valueAt(i).getShortcutsAndWidgets();
            if (id >= 0 && (container.getChildCount() == 0 || container.getScaleX() == 0.0f || container.getScaleY() == 0.0f)) {
                removeScreens.add(Long.valueOf(id));
            }
        }
        LauncherAccessibilityDelegate delegate = LauncherAppState.getInstance().getAccessibilityDelegate();
        int minScreens = numCustomPages() + 1;
        int pageShift = 0;
        Iterator<Long> it = removeScreens.iterator();
        while (it.hasNext()) {
            Long id2 = it.next();
            CellLayout cl = this.mWorkspaceScreens.get(id2.longValue());
            this.mWorkspaceScreens.remove(id2.longValue());
            this.mScreenOrder.remove(id2);
            cl.setDeleted(true);
            if (getChildCount() > minScreens) {
                if (indexOfChild(cl) < currentPage) {
                    pageShift++;
                }
                if (delegate != null && delegate.isInAccessibleDrag()) {
                    cl.enableAccessibleDrag(false, 2);
                }
                removeView(cl);
            } else {
                this.mRemoveEmptyScreenRunnable = null;
                this.mWorkspaceScreens.put(EXTRA_EMPTY_SCREEN_ID, cl);
                this.mScreenOrder.add(Long.valueOf(EXTRA_EMPTY_SCREEN_ID));
            }
        }
        if (!removeScreens.isEmpty()) {
            this.mLauncher.getModel().updateWorkspaceScreenOrder(this.mLauncher, this.mScreenOrder);
        }
        if (pageShift >= 0) {
            setCurrentPage(currentPage - pageShift);
        }
    }

    public void updateWorkspaceScreenOrder() {
        this.mLauncher.getModel().updateWorkspaceScreenOrder(this.mLauncher, this.mScreenOrder);
    }

    public void addInScreen(View child, long container, long screenId, int x, int y, int spanX, int spanY) {
        addInScreen(child, container, screenId, x, y, spanX, spanY, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addInScreenFromBind(View child, long container, long screenId, int x, int y, int spanX, int spanY) {
        addInScreen(child, container, screenId, x, y, spanX, spanY, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addInScreen(View child, long container, long screenId, int x, int y, int spanX, int spanY, boolean insert) {
        addInScreen(child, container, screenId, x, y, spanX, spanY, insert, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void addInScreen(View view, long container, long screenId, int x, int y, int spanX, int spanY, boolean insert, boolean computeXYFromRank) {
        CellLayout layout;
        CellLayout.LayoutParams lp;
        LauncherAppWidgetProviderInfo info;
        if (container == -100 && getScreenWithId(screenId) == null) {
            Log.w(TAG, "[addInScreen] screenId " + screenId + " not found. Find place to add.");
            ItemInfo item = (ItemInfo) view.getTag();
            LauncherModel.deleteItemFromDatabase(getContext(), item);
            ArrayList<ItemInfo> addShortcuts = new ArrayList<>();
            addShortcuts.add(item);
            LauncherAppState app = LauncherAppState.getInstance();
            app.getModel().addAndBindAddedWorkspaceItems(getContext(), addShortcuts);
            return;
        }
        if (screenId == EXTRA_EMPTY_SCREEN_ID) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        if (container == -101) {
            layout = this.mLauncher.getHotseatController().getLayout();
            view.setOnKeyListener(new HotseatIconKeyEventListener());
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).setTextVisible(false);
            }
            if (computeXYFromRank) {
                x = this.mLauncher.getHotseatController().getCellXFromOrder((int) screenId);
                y = this.mLauncher.getHotseatController().getCellYFromOrder((int) screenId);
            } else {
                this.mLauncher.getHotseatController().getOrderInHotseat(x, y);
            }
        } else {
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).setTextVisible(true);
            }
            layout = getScreenWithId(screenId);
            view.setOnKeyListener(new IconKeyEventListener());
        }
        ViewGroup.LayoutParams genericLp = view.getLayoutParams();
        if (genericLp == null || !(genericLp instanceof CellLayout.LayoutParams)) {
            lp = new CellLayout.LayoutParams(x, y, spanX, spanY);
        } else {
            lp = (CellLayout.LayoutParams) genericLp;
            lp.cellX = x;
            lp.cellY = y;
            lp.cellHSpan = spanX;
            lp.cellVSpan = spanY;
        }
        if ((view instanceof LauncherAppWidgetHostView) && (info = (LauncherAppWidgetProviderInfo) ((LauncherAppWidgetHostView) view).getAppWidgetInfo()) != null && info.isCustomWidget) {
            lp.canReorder = info.canReorder;
        }
        if (spanX < 0 && spanY < 0) {
            lp.isLockedToGrid = false;
        }
        int childId = this.mLauncher.getViewIdForItem((ItemInfo) view.getTag());
        boolean markCellsAsOccupied = !(view instanceof Folder);
        if (layout != null) {
            if (!layout.addViewToCellLayout(view, insert ? 0 : -1, childId, lp, markCellsAsOccupied)) {
                Launcher.addDumpLog(TAG, "Failed to add to item at (" + lp.cellX + "," + lp.cellY + ") to CellLayout", true);
            }
        }
        if (!(view instanceof Folder)) {
            view.setHapticFeedbackEnabled(false);
            view.setOnLongClickListener(this.mLongClickListener);
        }
        if (view instanceof DropTarget) {
            this.mDragController.addDropTarget((DropTarget) view);
        }
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View v, MotionEvent event) {
        return (!workspaceInModalState() && isFinishedSwitchingState() && (workspaceInModalState() || indexOfChild(v) == this.mCurrentPage)) ? false : true;
    }

    public boolean isSwitchingState() {
        return this.mIsSwitchingState;
    }

    public boolean isFinishedSwitchingState() {
        return !this.mIsSwitchingState || this.mTransitionProgress > 0.5f;
    }

    public boolean isTransiting() {
        LayoutTransition layoutTransition = getLayoutTransition();
        return this.mIsSwitchingState || (layoutTransition != null && layoutTransition.isRunning());
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        this.mLauncher.onWindowVisibilityChanged(visibility);
    }

    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View focused, int direction) {
        if (workspaceInModalState() || !isFinishedSwitchingState()) {
            return false;
        }
        return super.dispatchUnhandledMove(focused, direction);
    }

    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        switch (ev.getAction() & 255) {
            case 0:
                this.mXDown = ev.getX();
                this.mYDown = ev.getY();
                this.mTouchDownTime = System.currentTimeMillis();
                break;
            case 1:
            case 6:
                if (this.mTouchState == 0) {
                    CellLayout currentPage = (CellLayout) getChildAt(this.mCurrentPage);
                    if (currentPage != null) {
                        onWallpaperTap(ev);
                    }
                }
                this.mHasTouchSettled = true;
                break;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // net.oneplus.h2launcher.PagedView, android.view.View
    public boolean onGenericMotionEvent(MotionEvent event) {
        if (getScreenIdForPageIndex(getCurrentPage()) != CUSTOM_CONTENT_SCREEN_ID || this.mCustomContentCallbacks == null || this.mCustomContentCallbacks.isScrollingAllowed()) {
            return super.onGenericMotionEvent(event);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reinflateWidgetsIfNecessary() {
        int clCount = getChildCount();
        for (int i = 0; i < clCount; i++) {
            CellLayout cl = (CellLayout) getChildAt(i);
            ShortcutAndWidgetContainer swc = cl.getShortcutsAndWidgets();
            int itemCount = swc.getChildCount();
            for (int j = 0; j < itemCount; j++) {
                View v = swc.getChildAt(j);
                if (v != null && (v.getTag() instanceof LauncherAppWidgetInfo)) {
                    LauncherAppWidgetInfo info = (LauncherAppWidgetInfo) v.getTag();
                    LauncherAppWidgetHostView lahv = (LauncherAppWidgetHostView) info.hostView;
                    if (lahv != null && lahv.isReinflateRequired()) {
                        this.mLauncher.removeAppWidget(info);
                        cl.removeView(lahv);
                        this.mLauncher.bindAppWidget(info);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void determineScrollingStart(MotionEvent ev) {
        if (isFinishedSwitchingState() && !this.mLauncher.isDrawerOpen()) {
            float deltaX = ev.getX() - this.mXDown;
            float settledX = Math.abs(this.mSettledX - deltaX);
            float absDeltaX = Math.abs(deltaX);
            float absDeltaY = Math.abs(ev.getY() - this.mYDown);
            this.mSettledX = deltaX;
            if (Float.compare(absDeltaX, 0.0f) != 0) {
                float slope = absDeltaY / absDeltaX;
                float theta = (float) Math.atan(slope);
                if (absDeltaX > this.mTouchSlop || absDeltaY > this.mTouchSlop) {
                    cancelCurrentPageLongPress();
                }
                boolean onCustomContentScreen = getScreenIdForPageIndex(getCurrentPage()) == CUSTOM_CONTENT_SCREEN_ID;
                if (!onCustomContentScreen || this.mCustomContentCallbacks == null || this.mCustomContentCallbacks.isScrollingAllowed()) {
                    if (this.mHasTouchSettled) {
                        if (theta <= MAX_SWIPE_ANGLE) {
                            if (theta > START_DAMPING_TOUCH_SLOP_ANGLE) {
                                super.determineScrollingStart(ev, 1.0f + (TOUCH_SLOP_DAMPING_FACTOR * caculateExtraRatio(theta - START_DAMPING_TOUCH_SLOP_ANGLE)));
                                return;
                            } else if (isInOverviewMode()) {
                                super.determineScrollingStart(ev, 1.0f + (TOUCH_SLOP_DAMPING_FACTOR * caculateExtraRatio(theta)));
                                return;
                            } else {
                                super.determineScrollingStart(ev);
                                return;
                            }
                        }
                        return;
                    }
                    Logger.d(TAG, "isOverview: " + isInOverviewMode());
                    Logger.d(TAG, "settledX: " + settledX);
                    Logger.d(TAG, "getPageNearestToPoint: " + getPageNearestToPoint(this.mXDown));
                    Logger.d(TAG, "getPageNearestToCenterOfScreen: " + getPageNearestToCenterOfScreen());
                    if (!isInOverviewMode() || settledX == 0.0f || getPageNearestToPoint(this.mXDown) != getPageNearestToCenterOfScreen()) {
                        this.mHasTouchSettled = true;
                        this.mXDown = ev.getX();
                        this.mYDown = ev.getY();
                    }
                    Logger.d(TAG, "touchSettled: " + this.mHasTouchSettled);
                    Logger.w(TAG, "determineScrollingStart# skip the determination scrolling start");
                }
            }
        }
    }

    private float caculateExtraRatio(float theta) {
        return (float) Math.sqrt(theta / START_DAMPING_TOUCH_SLOP_ANGLE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void onPageBeginMoving() {
        super.onPageBeginMoving();
        if (isHardwareAccelerated()) {
            updateChildrenLayersEnabled(false);
        } else if (this.mNextPage != -1) {
            enableChildrenCache(this.mCurrentPage, this.mNextPage);
        } else {
            enableChildrenCache(this.mCurrentPage - 1, this.mCurrentPage + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void onPageEndMoving() {
        super.onPageEndMoving();
        if (isHardwareAccelerated()) {
            updateChildrenLayersEnabled(false);
        } else {
            clearChildrenCache();
        }
        if (this.mDragController.isDragging() && workspaceInModalState()) {
            this.mDragController.forceTouchMove();
        }
        if (this.mDelayedResizeRunnable != null) {
            this.mDelayedResizeRunnable.run();
            this.mDelayedResizeRunnable = null;
        }
        if (this.mDelayedSnapToPageRunnable != null) {
            this.mDelayedSnapToPageRunnable.run();
            this.mDelayedSnapToPageRunnable = null;
        }
        if (this.mStripScreensOnPageStopMoving) {
            stripEmptyScreens();
            this.mStripScreensOnPageStopMoving = false;
        }
        if (this.mShouldSendPageSettled) {
            this.mLauncherOverlay.onScrollSettled();
            this.mShouldSendPageSettled = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void onScrollInteractionBegin() {
        super.onScrollInteractionBegin();
        this.mScrollInteractionBegan = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void onScrollInteractionEnd() {
        super.onScrollInteractionEnd();
        this.mScrollInteractionBegan = false;
        if (this.mStartedSendingScrollEvents) {
            this.mStartedSendingScrollEvents = false;
            this.mLauncherOverlay.onScrollInteractionEnd();
        }
    }

    public void setLauncherOverlay(Launcher.LauncherOverlay overlay) {
        this.mLauncherOverlay = overlay;
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected void overScroll(float amount) {
        boolean shouldScrollOverlay = this.mLauncherOverlay != null && ((amount <= 0.0f && !this.mIsRtl) || (amount >= 0.0f && this.mIsRtl));
        boolean shouldZeroOverlay = (this.mLauncherOverlay == null || this.mLastOverlaySroll == 0 || ((amount < 0.0f || this.mIsRtl) && (amount > 0.0f || !this.mIsRtl))) ? false : true;
        if (shouldScrollOverlay) {
            if (!this.mStartedSendingScrollEvents && this.mScrollInteractionBegan) {
                this.mStartedSendingScrollEvents = true;
                this.mLauncherOverlay.onScrollInteractionBegin();
                this.mShouldSendPageSettled = true;
            }
            int screenSize = getViewportWidth();
            float f = amount / screenSize;
            int progress = (int) Math.abs(100.0f * f);
            this.mLastOverlaySroll = progress;
            this.mLauncherOverlay.onScrollChange(progress, this.mIsRtl);
        } else {
            dampedOverScroll(amount);
        }
        if (shouldZeroOverlay) {
            this.mLauncherOverlay.onScrollChange(0, this.mIsRtl);
        }
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected void getEdgeVerticalPostion(int[] pos) {
        View child = getChildAt(getPageCount() - 1);
        pos[0] = child.getTop();
        pos[1] = child.getBottom();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void notifyPageSwitchListener() {
        super.notifyPageSwitchListener();
        if (hasCustomContent() && getNextPage() == 0 && !this.mCustomContentShowing) {
            this.mCustomContentShowing = true;
            if (this.mCustomContentCallbacks != null) {
                this.mCustomContentCallbacks.onShow(false);
                return;
            }
            return;
        }
        if (hasCustomContent() && getNextPage() != 0 && this.mCustomContentShowing) {
            this.mCustomContentShowing = false;
            if (this.mCustomContentCallbacks != null) {
                this.mCustomContentCallbacks.onHide(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Launcher.CustomContentCallbacks getCustomContentCallbacks() {
        return this.mCustomContentCallbacks;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [net.oneplus.h2launcher.Workspace$7] */
    protected void setWallpaperDimension() {
        new AsyncTask<Void, Void, Void>() { // from class: net.oneplus.h2launcher.Workspace.7
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... args) {
                SharedPreferences sp = Workspace.this.mLauncher.getSharedPreferences(LauncherFiles.WALLPAPER_CROP_PREFERENCES_KEY, 4);
                WallpaperUtils.suggestWallpaperDimension(Workspace.this.mLauncher.getResources(), sp, Workspace.this.mLauncher.getWindowManager(), Workspace.this.mWallpaperManager, Workspace.this.mLauncher.overrideWallpaperDimensions());
                return null;
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Void) null);
    }

    protected void snapToPage(int whichPage, Runnable r) {
        snapToPage(whichPage, 950, r);
    }

    protected void snapToPage(int whichPage, int duration, Runnable r) {
        if (this.mDelayedSnapToPageRunnable != null) {
            this.mDelayedSnapToPageRunnable.run();
        }
        this.mDelayedSnapToPageRunnable = r;
        snapToPage(whichPage, duration);
    }

    public void snapToScreenId(long screenId) {
        snapToScreenId(screenId, null);
    }

    protected void snapToScreenId(long screenId, Runnable r) {
        snapToPage(getPageIndexForScreenId(screenId), r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AnimationObject {
        float mAnimationStartOffset;
        long mAnimationStartTime;

        AnimationObject() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class WallpaperOffsetInterpolator implements Choreographer.FrameCallback {
        boolean mAnimating;
        AnimationObject mAnimationObject;
        private long mLastFrameTimeNanos;
        int mNumScreens;
        boolean mWaitingForUpdate;
        float mFinalOffset = 0.0f;
        float mCurrentOffset = 0.5f;
        private final int ANIMATION_DURATION = 250;
        private final int MIN_PARALLAX_PAGE_SPAN = 3;
        Choreographer mChoreographer = Choreographer.getInstance();
        Interpolator mInterpolator = new DecelerateInterpolator(1.5f);

        public WallpaperOffsetInterpolator() {
            this.mAnimationObject = new AnimationObject();
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long frameTimeNanos) {
            if (this.mLastFrameTimeNanos != frameTimeNanos) {
                this.mLastFrameTimeNanos = frameTimeNanos;
                updateOffset(false);
            }
        }

        private void updateOffset(boolean force) {
            if (this.mWaitingForUpdate || force) {
                this.mWaitingForUpdate = false;
                if (computeScrollOffset() && Workspace.this.mWindowToken != null) {
                    try {
                        setWallpaperOffsetSteps();
                        Workspace.this.mWallpaperManager.setWallpaperOffsets(Workspace.this.mWindowToken, Workspace.this.mWallpaperOffset.getCurrX(), 0.5f);
                    } catch (IllegalArgumentException e) {
                        Log.e(Workspace.TAG, "Error updating wallpaper offset: " + e);
                    }
                }
            }
        }

        public boolean computeScrollOffset() {
            float oldOffset = this.mCurrentOffset;
            if (this.mAnimating) {
                AnimationObject currentAnimationObject = this.mAnimationObject;
                long durationSinceAnimation = System.currentTimeMillis() - currentAnimationObject.mAnimationStartTime;
                float t0 = ((float) durationSinceAnimation) / 250.0f;
                if (t0 > 1.0f) {
                    t0 = 1.0f;
                }
                float t1 = this.mInterpolator.getInterpolation(t0);
                this.mCurrentOffset = currentAnimationObject.mAnimationStartOffset + ((this.mFinalOffset - currentAnimationObject.mAnimationStartOffset) * t1);
                this.mAnimating = durationSinceAnimation < 250;
            } else {
                this.mCurrentOffset = this.mFinalOffset;
            }
            if (Math.abs(this.mCurrentOffset - this.mFinalOffset) > 1.0E-7f) {
                scheduleUpdate();
            }
            return Math.abs(oldOffset - this.mCurrentOffset) > 1.0E-7f;
        }

        private float wallpaperOffsetForCurrentScroll() {
            int parallaxPageSpan;
            int numScrollingPages = getNumScreensExcludingEmptyAndCustom();
            if (Workspace.this.mWallpaperIsLiveWallpaper) {
                parallaxPageSpan = numScrollingPages - 1;
            } else if (Workspace.this.mIsRtl) {
                parallaxPageSpan = numScrollingPages - 1;
            } else {
                parallaxPageSpan = Math.max(3, numScrollingPages - 1);
            }
            Workspace.this.mNumPagesForWallpaperParallax = parallaxPageSpan;
            if (Workspace.this.getChildCount() <= 1) {
                if (Workspace.this.mIsRtl) {
                    return 1.0f - (1.0f / Workspace.this.mNumPagesForWallpaperParallax);
                }
                return 0.0f;
            }
            int emptyExtraPages = numEmptyScreensToIgnore();
            int firstIndex = Workspace.this.numCustomPages();
            int lastIndex = (Workspace.this.getChildCount() - 1) - emptyExtraPages;
            if (Workspace.this.mIsRtl) {
                firstIndex = lastIndex;
                lastIndex = firstIndex;
            }
            int firstPageScrollX = Workspace.this.getScrollForPage(firstIndex);
            int scrollRange = Workspace.this.getScrollForPage(lastIndex) - firstPageScrollX;
            if (scrollRange == 0) {
                return 0.0f;
            }
            int adjustedScroll = (Workspace.this.getScrollX() - firstPageScrollX) - Workspace.this.getLayoutTransitionOffsetForPage(0);
            float offset = Math.max(0.0f, Math.min(1.0f, adjustedScroll / scrollRange));
            if (!Workspace.this.mWallpaperIsLiveWallpaper && numScrollingPages < 3 && Workspace.this.mIsRtl) {
                return (((parallaxPageSpan - numScrollingPages) + 1) * offset) / parallaxPageSpan;
            }
            return ((numScrollingPages - 1) * offset) / parallaxPageSpan;
        }

        private int numEmptyTempEnmptyScreen() {
            int emptyScreen = 0;
            TransitionStates states = new TransitionStates(Workspace.this.getState(), Workspace.this.getState());
            if (states.stateIsOverview || states.stateIsIconRearrangement) {
                for (int i = Workspace.this.getChildCount() - 1; i >= 0; i--) {
                    CellLayout layout = (CellLayout) Workspace.this.getChildAt(i);
                    if (layout != null && Workspace.this.getIdForScreen(layout) != Workspace.EXTRA_EMPTY_SCREEN_ID) {
                        if (layout.getShortcutsAndWidgets().getChildCount() != 0) {
                            break;
                        }
                        emptyScreen++;
                    }
                }
            }
            return emptyScreen;
        }

        private int numEmptyScreensToIgnore() {
            int numScrollingPages = Workspace.this.getChildCount();
            return (numScrollingPages < 3 || !Workspace.this.hasExtraEmptyScreen()) ? 0 : 1;
        }

        private int getNumScreensExcludingEmptyAndCustom() {
            int numScrollingPages = Workspace.this.getChildCount() - numEmptyScreensToIgnore();
            return numScrollingPages;
        }

        public void syncWithScroll() {
            float offset = wallpaperOffsetForCurrentScroll();
            Workspace.this.mWallpaperOffset.setFinalX(offset);
            updateOffset(true);
        }

        public float getCurrX() {
            return this.mCurrentOffset;
        }

        public float getFinalX() {
            return this.mFinalOffset;
        }

        private void animateToFinal() {
            this.mAnimating = true;
            AnimationObject newAnimationObject = new AnimationObject();
            newAnimationObject.mAnimationStartOffset = this.mCurrentOffset;
            newAnimationObject.mAnimationStartTime = System.currentTimeMillis();
            this.mAnimationObject = newAnimationObject;
        }

        private void setWallpaperOffsetSteps() {
            float xOffset = 1.0f / Workspace.this.mNumPagesForWallpaperParallax;
            if (xOffset != Workspace.this.mLastSetWallpaperOffsetSteps) {
                Workspace.this.mWallpaperManager.setWallpaperOffsetSteps(xOffset, 1.0f);
                Workspace.this.mLastSetWallpaperOffsetSteps = xOffset;
            }
        }

        public void setFinalX(float x) {
            scheduleUpdate();
            this.mFinalOffset = Math.max(0.0f, Math.min(x, 1.0f));
            if (getNumScreensExcludingEmptyAndCustom() != this.mNumScreens) {
                if (this.mNumScreens > 0) {
                    animateToFinal();
                }
                this.mNumScreens = getNumScreensExcludingEmptyAndCustom();
            }
        }

        private void scheduleUpdate() {
            if (!this.mWaitingForUpdate) {
                this.mChoreographer.postFrameCallback(this);
                this.mWaitingForUpdate = true;
            }
        }

        public void jumpToFinal() {
            this.mCurrentOffset = this.mFinalOffset;
        }
    }

    public float getCurrentWallpaperOffset() {
        return this.mWallpaperOffset.getCurrX();
    }

    @Override // net.oneplus.h2launcher.PagedView, android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (getChildCount() > 0) {
            this.mWallpaperOffset.syncWithScroll();
        }
    }

    @Override // android.view.View
    public void announceForAccessibility(CharSequence text) {
        if (!this.mLauncher.isAppsViewVisible()) {
            super.announceForAccessibility(text);
        }
    }

    public void showOutlinesTemporarily() {
        if (!this.mIsPageMoving && !isTouchActive()) {
            snapToPage(this.mCurrentPage);
        }
    }

    float backgroundAlphaInterpolator(float r) {
        if (r < 0.1f) {
            return 0.0f;
        }
        if (r <= 0.4f) {
            return (r - 0.1f) / (0.4f - 0.1f);
        }
        return 1.0f;
    }

    private void updatePageAlphaValues(int screenCenter) {
        int childCount = getChildCount();
        for (int i = numCustomPages(); i < childCount; i++) {
            CellLayout child = (CellLayout) getChildAt(i);
            if (child != null) {
                float alpha = 1.0f;
                if (this.mWorkspaceFadeInAdjacentScreens && this.mState == State.NORMAL && !this.mIsSwitchingState) {
                    float scrollProgress = getScrollProgress(screenCenter, child, i);
                    alpha = 1.0f - Math.abs(scrollProgress);
                }
                child.getShortcutsAndWidgets().setAlpha(alpha);
            }
        }
    }

    @Override // net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.AccessibilityDragSource
    @TargetApi(21)
    public void enableAccessibleDrag(boolean enable) {
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout child = (CellLayout) getChildAt(i);
            child.enableAccessibleDrag(enable, 2);
        }
        if (enable) {
            setOnClickListener(null);
        } else {
            setOnClickListener(this.mLauncher);
        }
        this.mLauncher.getSearchDropTargetBar().enableAccessibleDrag(enable);
        this.mLauncher.getHotseatController().enableAccessibleDrag(enable, 2);
    }

    public boolean hasCustomContent() {
        return this.mScreenOrder.size() > 0 && this.mScreenOrder.get(0).longValue() == CUSTOM_CONTENT_SCREEN_ID;
    }

    public int numCustomPages() {
        return hasCustomContent() ? 1 : 0;
    }

    public boolean isOnOrMovingToCustomContent() {
        return hasCustomContent() && getNextPage() == 0;
    }

    private void updateStateForCustomContent(int screenCenter) {
        float translationX = 0.0f;
        float progress = 0.0f;
        if (hasCustomContent()) {
            int index = this.mScreenOrder.indexOf(Long.valueOf(CUSTOM_CONTENT_SCREEN_ID));
            int scrollDelta = (getScrollX() - getScrollForPage(index)) - getLayoutTransitionOffsetForPage(index);
            float scrollRange = getScrollForPage(index + 1) - getScrollForPage(index);
            float translationX2 = scrollRange - scrollDelta;
            float progress2 = (scrollRange - scrollDelta) / scrollRange;
            if (this.mIsRtl) {
                translationX = Math.min(0.0f, translationX2);
            } else {
                translationX = Math.max(0.0f, translationX2);
            }
            progress = Math.max(0.0f, Math.min(progress2, 1.0f));
        }
        if (Float.compare(progress, this.mLastCustomContentScrollProgress) != 0) {
            CellLayout cc = this.mWorkspaceScreens.get(CUSTOM_CONTENT_SCREEN_ID);
            if (progress > 0.0f && cc.getVisibility() != 0 && !workspaceInModalState()) {
                cc.setVisibility(0);
            }
            if (cc != null && !workspaceInModalState()) {
                cc.getShortcutsAndWidgets().setAlpha(progress);
            }
            this.mLastCustomContentScrollProgress = progress;
            if (this.mState == State.NORMAL) {
                this.mLauncher.getDragLayer().setBackgroundAlpha(0.6f * progress);
            }
            HotseatController hotseatController = this.mLauncher.getHotseatController();
            if (hotseatController != null) {
                this.mLauncher.getHotseatController().setTranslationX(translationX);
                this.mLauncher.getHotseatController().setAlpha(1.0f - progress);
                if (progress == 1.0f) {
                    this.mLauncher.getWindow().addFlags(134217728);
                    this.mLauncher.getWindow().getDecorView().requestApplyInsets();
                    this.naviBarShow = true;
                } else if (this.naviBarShow) {
                    this.mLauncher.getWindow().clearFlags(134217728);
                    this.mLauncher.getWindow().getDecorView().requestApplyInsets();
                    this.naviBarShow = false;
                }
            }
            PageIndicator pageIndicator = getPageIndicator();
            if (pageIndicator != null) {
                pageIndicator.setTranslationX(translationX);
                pageIndicator.setAlpha(1.0f - progress);
            }
            if (this.mCustomContentCallbacks != null) {
                this.mCustomContentCallbacks.onScrollProgressChanged(progress, translationX);
            }
        }
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected View.OnClickListener getPageIndicatorClickListener() {
        AccessibilityManager am = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (!am.isTouchExplorationEnabled()) {
            return null;
        }
        return new View.OnClickListener() { // from class: net.oneplus.h2launcher.Workspace.8
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                Workspace.this.mLauncher.showOverviewMode(true);
            }
        };
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected void screenScrolled(int screenCenter) {
        updatePageAlphaValues(screenCenter);
        updateStateForCustomContent(screenCenter);
        enableHwLayersOnVisiblePages();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        this.mWindowToken = getWindowToken();
        computeScroll();
        if (this.mDragController != null) {
            this.mDragController.setWindowToken(this.mWindowToken);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWindowToken = null;
        this.mIsAttachedToWindow = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onResume() {
        View.OnClickListener listener;
        if (getPageIndicator() != null && (listener = getPageIndicatorClickListener()) != null) {
            getPageIndicator().setOnClickListener(listener);
        }
        if (LauncherAppState.getInstance().hasWallpaperChangedSinceLastCheck()) {
            setWallpaperDimension();
        }
        this.mWallpaperIsLiveWallpaper = this.mWallpaperManager.getWallpaperInfo() != null;
        this.mWallpaperIsOneplusBlurWallpaper = WallpaperUtils.isOnePlusBlurWallpaper(getContext());
        this.mLastSetWallpaperOffsetSteps = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mFirstLayout && this.mCurrentPage >= 0 && this.mCurrentPage < getChildCount()) {
            this.mWallpaperOffset.syncWithScroll();
            this.mWallpaperOffset.jumpToFinal();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        if (!this.mLauncher.isAppsViewVisible()) {
            Folder openFolder = getOpenFolder();
            if (openFolder != null) {
                return openFolder.requestFocus(direction, previouslyFocusedRect);
            }
            return super.onRequestFocusInDescendants(direction, previouslyFocusedRect);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (workspaceInModalState()) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    @Override // net.oneplus.h2launcher.PagedView, android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        if (!this.mLauncher.isAppsViewVisible()) {
            Folder openFolder = getOpenFolder();
            if (openFolder != null) {
                openFolder.addFocusables(views, direction);
            } else {
                super.addFocusables(views, direction, focusableMode);
            }
        }
    }

    public boolean workspaceInModalState() {
        return (this.mState == State.NORMAL || this.mState == State.ICON_REARRANGEMENT) ? false : true;
    }

    void enableChildrenCache(int fromPage, int toPage) {
        if (fromPage > toPage) {
            fromPage = toPage;
            toPage = fromPage;
        }
        int screenCount = getChildCount();
        int fromPage2 = Math.max(fromPage, 0);
        int toPage2 = Math.min(toPage, screenCount - 1);
        for (int i = fromPage2; i <= toPage2; i++) {
            CellLayout layout = (CellLayout) getChildAt(i);
            layout.setChildrenDrawnWithCacheEnabled(true);
            layout.setChildrenDrawingCacheEnabled(true);
        }
    }

    void clearChildrenCache() {
        int screenCount = getChildCount();
        for (int i = 0; i < screenCount; i++) {
            CellLayout layout = (CellLayout) getChildAt(i);
            layout.setChildrenDrawnWithCacheEnabled(false);
            if (!isHardwareAccelerated()) {
                layout.setChildrenDrawingCacheEnabled(false);
            }
        }
    }

    void updateChildrenLayersEnabled(boolean force) {
        boolean enableChildrenLayers = true;
        boolean small = this.mState == State.OVERVIEW || this.mIsSwitchingState;
        if (!force && !small && !this.mAnimatingViewIntoPlace && !isPageMoving()) {
            enableChildrenLayers = false;
        }
        if (enableChildrenLayers != this.mChildrenLayersEnabled) {
            this.mChildrenLayersEnabled = enableChildrenLayers;
            if (this.mChildrenLayersEnabled) {
                enableHwLayersOnVisiblePages();
                return;
            }
            for (int i = 0; i < getPageCount(); i++) {
                CellLayout cl = (CellLayout) getChildAt(i);
                cl.enableHardwareLayer(false);
            }
        }
    }

    private void enableHwLayersOnVisiblePages() {
        if (this.mChildrenLayersEnabled) {
            int screenCount = getChildCount();
            getVisiblePages(this.mTempVisiblePagesRange);
            int leftScreen = this.mTempVisiblePagesRange[0];
            int rightScreen = this.mTempVisiblePagesRange[1];
            if (leftScreen == rightScreen) {
                if (rightScreen < screenCount - 1) {
                    rightScreen++;
                } else if (leftScreen > 0) {
                    leftScreen--;
                }
            }
            CellLayout customScreen = this.mWorkspaceScreens.get(CUSTOM_CONTENT_SCREEN_ID);
            int i = 0;
            while (i < screenCount) {
                CellLayout layout = (CellLayout) getPageAt(i);
                boolean enableLayer = layout != customScreen && leftScreen <= i && i <= rightScreen && shouldDrawChild(layout);
                layout.enableHardwareLayer(enableLayer);
                i++;
            }
        }
    }

    public void buildPageHardwareLayers() {
        updateChildrenLayersEnabled(true);
        if (getWindowToken() != null) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                CellLayout cl = (CellLayout) getChildAt(i);
                cl.buildHardwareLayer();
            }
        }
        updateChildrenLayersEnabled(false);
    }

    protected void onWallpaperTap(MotionEvent ev) {
        int[] position = this.mTempCell;
        getLocationOnScreen(position);
        int pointerIndex = ev.getActionIndex();
        position[0] = position[0] + ((int) ev.getX(pointerIndex));
        position[1] = position[1] + ((int) ev.getY(pointerIndex));
        this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), ev.getAction() == 1 ? "android.wallpaper.tap" : "android.wallpaper.secondaryTap", position[0], position[1], 0, null);
    }

    private static Rect getDrawableBounds(Drawable d) {
        Rect bounds = new Rect();
        d.copyBounds(bounds);
        if (bounds.width() == 0 || bounds.height() == 0) {
            bounds.set(0, 0, d.getIntrinsicWidth(), d.getIntrinsicHeight());
        } else {
            bounds.offsetTo(0, 0);
        }
        if (d instanceof PreloadIconDrawable) {
            int inset = -((PreloadIconDrawable) d).getOutset();
            bounds.inset(inset, inset);
        }
        return bounds;
    }

    public void onExternalDragStartedWithItem(View v) {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        int iconSize = grid.iconSizePx;
        int bmpWidth = v.getMeasuredWidth();
        int bmpHeight = v.getMeasuredHeight();
        if (v instanceof TextView) {
            Drawable d = getTextViewIcon((TextView) v);
            Rect bounds = getDrawableBounds(d);
            bmpWidth = bounds.width();
            bmpHeight = bounds.height();
        }
        Bitmap b = Bitmap.createBitmap(bmpWidth, bmpHeight, Bitmap.Config.ARGB_8888);
        this.mCanvas.setBitmap(b);
        drawDragView(v, this.mCanvas, 0);
        this.mCanvas.setBitmap(null);
        this.mDragOutline = createDragOutline(b, 2, iconSize, iconSize, true);
    }

    public void onDragStartedWithItem(PendingAddItemInfo info, Bitmap b, boolean clipAlpha) {
        int[] size = estimateItemSize(info, false);
        this.mDragOutline = createDragOutline(b, 2, size[0], size[1], clipAlpha);
    }

    public void exitWidgetResizeMode() {
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        dragLayer.clearAllResizeFrames();
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected void getFreeScrollPageRange(int[] range) {
        getOverviewModePages(range);
    }

    private void getOverviewModePages(int[] range) {
        int start = numCustomPages();
        int end = getChildCount() - 1;
        range[0] = Math.max(0, Math.min(start, getChildCount() - 1));
        range[1] = Math.max(0, end);
    }

    @Override // net.oneplus.h2launcher.PagedView
    public void onStartReordering() {
        super.onStartReordering();
        disableLayoutTransitions();
    }

    @Override // net.oneplus.h2launcher.PagedView
    public void onEndReordering() {
        super.onEndReordering();
        if (!this.mLauncher.isWorkspaceLoading()) {
            this.mScreenOrder.clear();
            int count = getChildCount();
            for (int i = 0; i < count; i++) {
                CellLayout cl = (CellLayout) getChildAt(i);
                this.mScreenOrder.add(Long.valueOf(getIdForScreen(cl)));
            }
            this.mLauncher.getModel().updateWorkspaceScreenOrder(this.mLauncher, this.mScreenOrder);
            enableLayoutTransitions();
            if (this.mDelayedRemoveExtraEmptyScreenRunnable != null) {
                this.mHandler.post(this.mDelayedRemoveExtraEmptyScreenRunnable);
                this.mDelayedRemoveExtraEmptyScreenRunnable = null;
            }
        }
    }

    public boolean isInOverviewMode() {
        return this.mState == State.OVERVIEW;
    }

    public boolean isInNormalMode() {
        return this.mState == State.NORMAL;
    }

    public boolean isInCustomizationMode() {
        return this.mState == State.CUSTOMIZATIONS;
    }

    public boolean isIconRearrangementMode() {
        return this.mState == State.ICON_REARRANGEMENT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOverviewModeTranslationY() {
        int customizationOffset;
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        Rect workspacePadding = grid.getWorkspacePadding(Utilities.isRtl(getResources()));
        int overviewButtonBarHeight = grid.getOverviewModeButtonBarHeight();
        int scaledHeight = (int) (this.mOverviewModeShrinkFactor * getNormalChildHeight());
        int workspaceTop = this.mInsets.top + workspacePadding.top;
        int workspaceBottom = (getViewportHeight() - this.mInsets.bottom) - workspacePadding.bottom;
        int overviewTop = this.mInsets.top;
        int overviewBottom = (getViewportHeight() - this.mInsets.bottom) - overviewButtonBarHeight;
        int workspaceOffsetTopEdge = workspaceTop + (((workspaceBottom - workspaceTop) - scaledHeight) / 2);
        int overviewOffsetTopEdge = overviewTop + (((overviewBottom - overviewTop) - scaledHeight) / 2);
        if (this.mHasNavigationBar) {
            customizationOffset = getResources().getDimensionPixelOffset(R.dimen.customization_offset_with_navigation);
        } else {
            customizationOffset = getResources().getDimensionPixelOffset(R.dimen.customization_offset);
        }
        return ((-workspaceOffsetTopEdge) + overviewOffsetTopEdge) - customizationOffset;
    }

    public void updateInteractionForState() {
        if (this.mState != State.NORMAL) {
            this.mLauncher.onInteractionBegin();
        } else {
            this.mLauncher.onInteractionEnd();
        }
    }

    public Animator setStateWithAnimation(State toState, int toPage, boolean animated, HashMap<View, Integer> layerViews) {
        Logger.d(TAG, "setStateWithAnimation(" + toState + ", " + toPage + ", " + animated + ")");
        Animator workspaceAnim = this.mStateTransitionAnimation.getAnimationToState(this.mState, toState, toPage, animated, layerViews);
        this.mState = toState;
        updateAccessibilityFlags();
        return workspaceAnim;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State getState() {
        return this.mState;
    }

    public void updateAccessibilityFlags() {
        if (Utilities.ATLEAST_LOLLIPOP) {
            int total = getPageCount();
            for (int i = numCustomPages(); i < total; i++) {
                updateAccessibilityFlags((CellLayout) getPageAt(i), i);
            }
            setImportantForAccessibility((this.mState == State.NORMAL || this.mState == State.OVERVIEW) ? 0 : 4);
            return;
        }
        int accessible = this.mState == State.NORMAL ? 0 : 4;
        setImportantForAccessibility(accessible);
    }

    private void updateAccessibilityFlags(CellLayout page, int pageNo) {
        if (this.mState == State.OVERVIEW) {
            page.setImportantForAccessibility(1);
            page.getShortcutsAndWidgets().setImportantForAccessibility(4);
            page.setContentDescription(getPageDescription(pageNo));
            if (this.mPagesAccessibilityDelegate == null) {
                this.mPagesAccessibilityDelegate = new OverviewScreenAccessibilityDelegate(this);
            }
            page.setAccessibilityDelegate(this.mPagesAccessibilityDelegate);
            return;
        }
        int accessible = this.mState == State.NORMAL ? 0 : 4;
        page.setImportantForAccessibility(2);
        page.getShortcutsAndWidgets().setImportantForAccessibility(accessible);
        page.setContentDescription(null);
        page.setAccessibilityDelegate(null);
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionPrepare(Launcher l, boolean animated, boolean toWorkspace) {
        this.mIsSwitchingState = true;
        invalidate();
        updateChildrenLayersEnabled(false);
        hideCustomContentIfNecessary();
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionStart(Launcher l, boolean animated, boolean toWorkspace) {
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionStep(Launcher l, float t) {
        this.mTransitionProgress = t;
    }

    @Override // net.oneplus.h2launcher.LauncherTransitionable
    public void onLauncherTransitionEnd(Launcher l, boolean animated, boolean toWorkspace) {
        this.mIsSwitchingState = false;
        updateChildrenLayersEnabled(false);
        showCustomContentIfNecessary();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateCustomContentVisibility() {
        int visibility = this.mState == State.NORMAL ? 0 : 4;
        if (hasCustomContent()) {
            this.mWorkspaceScreens.get(CUSTOM_CONTENT_SCREEN_ID).setVisibility(visibility);
        }
    }

    void showCustomContentIfNecessary() {
        boolean show = this.mState == State.NORMAL;
        if (show && hasCustomContent()) {
            this.mWorkspaceScreens.get(CUSTOM_CONTENT_SCREEN_ID).setVisibility(0);
        }
    }

    void hideCustomContentIfNecessary() {
        boolean hide = this.mState != State.NORMAL;
        if (hide && hasCustomContent()) {
            disableLayoutTransitions();
            this.mWorkspaceScreens.get(CUSTOM_CONTENT_SCREEN_ID).setVisibility(4);
            enableLayoutTransitions();
        }
    }

    public static Drawable getTextViewIcon(TextView tv) {
        Drawable[] drawables = tv.getCompoundDrawables();
        for (int i = 0; i < drawables.length; i++) {
            if (drawables[i] != null) {
                return drawables[i];
            }
        }
        return null;
    }

    private static void drawDragView(View v, Canvas destCanvas, int padding) {
        Rect clipRect = sTempRect;
        v.getDrawingRect(clipRect);
        boolean textVisible = false;
        destCanvas.save();
        if (v instanceof TextView) {
            Drawable d = getTextViewIcon((TextView) v);
            Rect bounds = getDrawableBounds(d);
            clipRect.set(0, 0, bounds.width() + padding, bounds.height() + padding);
            destCanvas.translate((padding / 2) - bounds.left, (padding / 2) - bounds.top);
            d.draw(destCanvas);
        } else {
            if ((v instanceof FolderIcon) && ((FolderIcon) v).getTextVisible()) {
                ((FolderIcon) v).setTextVisible(false);
                textVisible = true;
            }
            destCanvas.translate((-v.getScrollX()) + (padding / 2), (-v.getScrollY()) + (padding / 2));
            destCanvas.clipRect(clipRect, Region.Op.REPLACE);
            v.draw(destCanvas);
            if (textVisible) {
                ((FolderIcon) v).setTextVisible(true);
            }
        }
        destCanvas.restore();
    }

    public Bitmap createDragBitmap(View v, AtomicInteger expectedPadding) {
        Bitmap b;
        int padding = expectedPadding.get();
        if (v instanceof TextView) {
            Drawable d = getTextViewIcon((TextView) v);
            Rect bounds = getDrawableBounds(d);
            b = Bitmap.createBitmap(bounds.width() + padding, bounds.height() + padding, Bitmap.Config.ARGB_8888);
            expectedPadding.set((padding - bounds.left) - bounds.top);
        } else {
            b = Bitmap.createBitmap(v.getWidth() + padding, v.getHeight() + padding, Bitmap.Config.ARGB_8888);
        }
        this.mCanvas.setBitmap(b);
        drawDragView(v, this.mCanvas, padding);
        this.mCanvas.setBitmap(null);
        return b;
    }

    private Bitmap createDragOutline(View v, int padding) {
        int outlineColor = getResources().getColor(R.color.outline_color);
        Bitmap b = Bitmap.createBitmap(v.getWidth() + padding, v.getHeight() + padding, Bitmap.Config.ARGB_8888);
        this.mCanvas.setBitmap(b);
        drawDragView(v, this.mCanvas, padding);
        this.mOutlineHelper.applyExpensiveOutlineWithBlur(b, this.mCanvas, outlineColor, outlineColor);
        this.mCanvas.setBitmap(null);
        return b;
    }

    private Bitmap createDragOutline(Bitmap orig, int padding, int w, int h, boolean clipAlpha) {
        int outlineColor = getResources().getColor(R.color.outline_color);
        Bitmap b = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        this.mCanvas.setBitmap(b);
        Rect src = new Rect(0, 0, orig.getWidth(), orig.getHeight());
        float scaleFactor = Math.min((w - padding) / orig.getWidth(), (h - padding) / orig.getHeight());
        int scaledWidth = (int) (orig.getWidth() * scaleFactor);
        int scaledHeight = (int) (orig.getHeight() * scaleFactor);
        Rect dst = new Rect(0, 0, scaledWidth, scaledHeight);
        dst.offset((w - scaledWidth) / 2, (h - scaledHeight) / 2);
        this.mCanvas.drawBitmap(orig, src, dst, (Paint) null);
        this.mOutlineHelper.applyExpensiveOutlineWithBlur(b, this.mCanvas, outlineColor, outlineColor, clipAlpha);
        this.mCanvas.setBitmap(null);
        return b;
    }

    public void startDrag(CellLayout.CellInfo cellInfo) {
        startDrag(cellInfo, false);
    }

    @Override // net.oneplus.h2launcher.accessibility.LauncherAccessibilityDelegate.AccessibilityDragSource
    public void startDrag(CellLayout.CellInfo cellInfo, boolean accessible) {
        View child = cellInfo.cell;
        if (child.isInTouchMode()) {
            this.mDragInfo = cellInfo;
            child.setVisibility(4);
            CellLayout layout = (CellLayout) child.getParent().getParent();
            layout.prepareChildForDrag(child);
            beginDragShared(child, this, accessible);
        }
    }

    public void beginDragShared(View child, DragSource source, boolean accessible) {
        beginDragShared(child, new Point(), source, accessible);
    }

    public void beginDragShared(View child, Point relativeTouchPos, DragSource source, boolean accessible) {
        child.clearFocus();
        child.setPressed(false);
        this.mDragOutline = createDragOutline(child, 2);
        this.mLauncher.onDragStarted(child);
        AtomicInteger padding = new AtomicInteger(2);
        Bitmap b = createDragBitmap(child, padding);
        int bmpWidth = b.getWidth();
        int bmpHeight = b.getHeight();
        float scale = this.mLauncher.getDragLayer().getLocationInDragLayer(child, this.mTempXY);
        int dragLayerX = Math.round(this.mTempXY[0] - ((bmpWidth - (child.getWidth() * scale)) / 2.0f));
        int dragLayerY = Math.round((this.mTempXY[1] - ((bmpHeight - (bmpHeight * scale)) / 2.0f)) - (padding.get() / 2));
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        Point dragVisualizeOffset = null;
        Rect dragRect = null;
        if (child instanceof BubbleTextView) {
            BubbleTextView icon = (BubbleTextView) child;
            int iconSize = grid.iconSizePx;
            int top = child.getPaddingTop();
            int left = (bmpWidth - iconSize) / 2;
            int right = left + iconSize;
            int bottom = top + iconSize;
            if (icon.isLayoutHorizontal()) {
                if (icon.getIcon().getBounds().contains(relativeTouchPos.x, relativeTouchPos.y)) {
                    dragLayerX = Math.round(this.mTempXY[0]);
                } else {
                    dragLayerX = Math.round((this.mTempXY[0] + relativeTouchPos.x) - (bmpWidth / 2));
                }
            }
            dragLayerY += top;
            dragVisualizeOffset = new Point((-padding.get()) / 2, padding.get() / 2);
            dragRect = new Rect(left, top, right, bottom);
        } else if (child instanceof FolderIcon) {
            int previewSize = grid.folderIconSizePx;
            dragVisualizeOffset = new Point((-padding.get()) / 2, (padding.get() / 2) - child.getPaddingTop());
            dragRect = new Rect(0, child.getPaddingTop(), child.getWidth(), previewSize);
        }
        if (child instanceof BubbleTextView) {
            ((BubbleTextView) child).clearPressedBackground();
        }
        if (child.getTag() == null || !(child.getTag() instanceof ItemInfo)) {
            String msg = "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + child + "  tag: " + child.getTag();
            throw new IllegalStateException(msg);
        }
        if (child.getParent() instanceof ShortcutAndWidgetContainer) {
            this.mDragSourceInternal = (ShortcutAndWidgetContainer) child.getParent();
        }
        DragView dv = this.mDragController.startDrag(child, b, dragLayerX, dragLayerY, source, child.getTag(), DragController.DRAG_ACTION_MOVE, dragVisualizeOffset, dragRect, scale, accessible);
        dv.setIntrinsicIconScaleFactor(source.getIntrinsicIconScaleFactor());
        b.recycle();
    }

    public void beginExternalDragShared(View child, DragSource source) {
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        int iconSize = grid.iconSizePx;
        this.mLauncher.onDragStarted(child);
        AtomicInteger padding = new AtomicInteger(2);
        Bitmap tmpB = createDragBitmap(child, padding);
        Bitmap b = Bitmap.createBitmap(iconSize, iconSize, Bitmap.Config.ARGB_8888);
        Paint p = new Paint();
        p.setFilterBitmap(true);
        this.mCanvas.setBitmap(b);
        this.mCanvas.drawBitmap(tmpB, new Rect(0, 0, tmpB.getWidth(), tmpB.getHeight()), new Rect(0, 0, iconSize, iconSize), p);
        this.mCanvas.setBitmap(null);
        int bmpWidth = tmpB.getWidth();
        float iconScale = bmpWidth / iconSize;
        float scale = this.mLauncher.getDragLayer().getLocationInDragLayer(child, this.mTempXY) * iconScale;
        int dragLayerX = Math.round(this.mTempXY[0] - ((bmpWidth - (child.getWidth() * scale)) / 2.0f));
        int dragLayerY = Math.round(this.mTempXY[1]);
        Point dragVisualizeOffset = new Point((-padding.get()) / 2, padding.get() / 2);
        Rect dragRect = new Rect(0, 0, iconSize, iconSize);
        if (child.getTag() == null || !(child.getTag() instanceof ItemInfo)) {
            String msg = "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + child + "  tag: " + child.getTag();
            throw new IllegalStateException(msg);
        }
        DragView dv = this.mDragController.startDrag(child, b, dragLayerX, dragLayerY, source, child.getTag(), DragController.DRAG_ACTION_MOVE, dragVisualizeOffset, dragRect, scale, false);
        dv.setIntrinsicIconScaleFactor(source.getIntrinsicIconScaleFactor());
        tmpB.recycle();
    }

    public boolean transitionStateShouldAllowDrop() {
        return (!isSwitchingState() || this.mTransitionProgress > 0.5f) && (this.mState == State.NORMAL || this.mState == State.SPRING_LOADED);
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public boolean acceptDrop(DropTarget.DragObject d) {
        int spanX;
        int spanY;
        CellLayout dropTargetLayout = this.mDropToLayout;
        if (d.dragSource != this) {
            if (dropTargetLayout == null || !transitionStateShouldAllowDrop()) {
                return false;
            }
            this.mDragViewVisualCenter = d.getVisualCenter(this.mDragViewVisualCenter);
            if (this.mLauncher.isHotseatLayout(dropTargetLayout)) {
                mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            } else {
                mapPointFromSelfToChild(dropTargetLayout, this.mDragViewVisualCenter, null);
            }
            if (this.mDragInfo != null) {
                CellLayout.CellInfo dragCellInfo = this.mDragInfo;
                spanX = dragCellInfo.spanX;
                spanY = dragCellInfo.spanY;
            } else {
                ItemInfo dragInfo = (ItemInfo) d.dragInfo;
                spanX = dragInfo.spanX;
                spanY = dragInfo.spanY;
            }
            int minSpanX = spanX;
            int minSpanY = spanY;
            if (d.dragInfo instanceof PendingAddWidgetInfo) {
                int dragInfoMinSpanX = ((PendingAddWidgetInfo) d.dragInfo).minSpanX;
                int dragInfoMinSpanY = ((PendingAddWidgetInfo) d.dragInfo).minSpanY;
                if (dragInfoMinSpanX < minSpanX) {
                    minSpanX = dragInfoMinSpanX;
                }
                if (dragInfoMinSpanY < minSpanY) {
                    minSpanY = dragInfoMinSpanY;
                }
            }
            this.mTargetCell = findNearestArea((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], minSpanX, minSpanY, dropTargetLayout, this.mTargetCell);
            float distance = dropTargetLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
            if (this.mCreateUserFolderOnDrop && willCreateUserFolder((ItemInfo) d.dragInfo, dropTargetLayout, this.mTargetCell, distance, true)) {
                return true;
            }
            if (this.mAddToExistingFolderOnDrop && willAddToExistingUserFolder((ItemInfo) d.dragInfo, dropTargetLayout, this.mTargetCell, distance)) {
                return true;
            }
            int[] resultSpan = new int[2];
            this.mTargetCell = dropTargetLayout.performReorder((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], minSpanX, minSpanY, spanX, spanY, null, this.mTargetCell, resultSpan, 4);
            boolean foundCell = this.mTargetCell[0] >= 0 && this.mTargetCell[1] >= 0;
            if (!foundCell) {
                boolean isHotseat = this.mLauncher.isHotseatLayout(dropTargetLayout);
                if (this.mTargetCell != null && isHotseat) {
                    Hotseat hotseat = this.mLauncher.getHotseat();
                    if (hotseat.isAllAppsButtonRank(hotseat.getOrderInHotseat(this.mTargetCell[0], this.mTargetCell[1]))) {
                        return false;
                    }
                }
                this.mLauncher.showOutOfSpaceMessage(isHotseat);
                return false;
            }
        }
        long screenId = getIdForScreen(dropTargetLayout);
        if (screenId == EXTRA_EMPTY_SCREEN_ID) {
            commitExtraEmptyScreen();
        }
        return true;
    }

    boolean willCreateUserFolder(ItemInfo info, CellLayout target, int[] targetCell, float distance, boolean considerTimeout) {
        if (distance > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View dropOverView = target.getChildAt(targetCell[0], targetCell[1]);
        if (dropOverView != null) {
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams) dropOverView.getLayoutParams();
            if (lp.useTmpCoords && (lp.tmpCellX != lp.cellX || lp.tmpCellY != lp.tmpCellY)) {
                return false;
            }
        }
        boolean hasntMoved = false;
        if (this.mDragInfo != null) {
            hasntMoved = dropOverView == this.mDragInfo.cell;
        }
        if (dropOverView == null || hasntMoved) {
            return false;
        }
        if (considerTimeout && !this.mCreateUserFolderOnDrop) {
            return false;
        }
        boolean aboveShortcut = dropOverView.getTag() instanceof ShortcutInfo;
        boolean willBecomeShortcut = info.itemType == 0 || info.itemType == 1 || info.itemType == 6;
        return aboveShortcut && willBecomeShortcut;
    }

    boolean willAddToExistingUserFolder(Object dragInfo, CellLayout target, int[] targetCell, float distance) {
        if (distance > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View dropOverView = target.getChildAt(targetCell[0], targetCell[1]);
        if (dropOverView != null) {
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams) dropOverView.getLayoutParams();
            if (lp.useTmpCoords && (lp.tmpCellX != lp.cellX || lp.tmpCellY != lp.tmpCellY)) {
                return false;
            }
        }
        if (!(dropOverView instanceof FolderIcon)) {
            return false;
        }
        FolderIcon fi = (FolderIcon) dropOverView;
        return fi.acceptDrop(dragInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean createUserFolderIfNecessary(View newView, long container, CellLayout target, int[] targetCell, float distance, boolean external, DragView dragView, Runnable postAnimationRunnable) {
        if (distance > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View v = target.getChildAt(targetCell[0], targetCell[1]);
        boolean hasntMoved = false;
        if (this.mDragInfo != null) {
            CellLayout cellParent = getParentCellLayoutForView(this.mDragInfo.cell);
            hasntMoved = this.mDragInfo.cellX == targetCell[0] && this.mDragInfo.cellY == targetCell[1] && cellParent == target;
        }
        if (v == null || hasntMoved || !this.mCreateUserFolderOnDrop) {
            return false;
        }
        this.mCreateUserFolderOnDrop = false;
        long screenId = targetCell == null ? this.mDragInfo.screenId : getIdForScreen(target);
        boolean aboveShortcut = v.getTag() instanceof ShortcutInfo;
        boolean willBecomeShortcut = newView.getTag() instanceof ShortcutInfo;
        if (aboveShortcut && willBecomeShortcut) {
            ShortcutInfo sourceInfo = (ShortcutInfo) newView.getTag();
            ShortcutInfo destInfo = (ShortcutInfo) v.getTag();
            if (!external) {
                getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
            }
            Rect folderLocation = new Rect();
            float scale = this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(v, folderLocation);
            target.removeView(v);
            FolderIcon fi = this.mLauncher.addFolder(target, container, screenId, targetCell[0], targetCell[1]);
            destInfo.cellX = -1;
            destInfo.cellY = -1;
            sourceInfo.cellX = -1;
            sourceInfo.cellY = -1;
            boolean animate = dragView != null;
            if (animate) {
                fi.performCreateAnimation(destInfo, v, sourceInfo, dragView, folderLocation, scale, postAnimationRunnable);
            } else {
                fi.addItem(destInfo);
                fi.addItem(sourceInfo);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean addToExistingFolderIfNecessary(View newView, CellLayout target, int[] targetCell, float distance, DropTarget.DragObject d, boolean external) {
        if (distance > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View dropOverView = target.getChildAt(targetCell[0], targetCell[1]);
        if (!this.mAddToExistingFolderOnDrop) {
            return false;
        }
        this.mAddToExistingFolderOnDrop = false;
        if (!(dropOverView instanceof FolderIcon)) {
            return false;
        }
        FolderIcon fi = (FolderIcon) dropOverView;
        if (!fi.acceptDrop(d.dragInfo)) {
            return false;
        }
        fi.onDrop(d);
        if (!external) {
            getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
        }
        if (!StyleManager.getInstance().showSearchBar()) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
        }
        return true;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void prepareAccessibilityDrop() {
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDrop(DropTarget.DragObject d) {
        final LauncherAppWidgetHostView hostView;
        AppWidgetProviderInfo pInfo;
        this.mDragViewVisualCenter = d.getVisualCenter(this.mDragViewVisualCenter);
        final CellLayout dropTargetLayout = this.mDropToLayout;
        if (dropTargetLayout != null) {
            if (this.mLauncher.isHotseatLayout(dropTargetLayout)) {
                mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            } else {
                mapPointFromSelfToChild(dropTargetLayout, this.mDragViewVisualCenter, null);
            }
        }
        int snapScreen = -1;
        boolean resizeOnDrop = false;
        if (d.dragSource != this) {
            int[] touchXY = {(int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1]};
            onDropExternal(touchXY, d.dragInfo, dropTargetLayout, false, d);
            return;
        }
        if (this.mDragInfo != null) {
            View cell = this.mDragInfo.cell;
            Runnable resizeRunnable = null;
            if (dropTargetLayout != null && !d.cancelled) {
                boolean hasMovedLayouts = getParentCellLayoutForView(cell) != dropTargetLayout;
                boolean hasMovedIntoHotseat = this.mLauncher.isHotseatLayout(dropTargetLayout);
                long container = hasMovedIntoHotseat ? -101L : -100L;
                long screenId = this.mTargetCell[0] < 0 ? this.mDragInfo.screenId : getIdForScreen(dropTargetLayout);
                int spanX = this.mDragInfo != null ? this.mDragInfo.spanX : 1;
                int spanY = this.mDragInfo != null ? this.mDragInfo.spanY : 1;
                this.mTargetCell = findNearestArea((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], spanX, spanY, dropTargetLayout, this.mTargetCell);
                float distance = dropTargetLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
                Runnable postAnimation = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!StyleManager.getInstance().showSearchBar()) {
                            Workspace.this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
                        }
                    }
                };
                if ((this.mInScrollArea || !createUserFolderIfNecessary(cell, container, dropTargetLayout, this.mTargetCell, distance, false, d.dragView, postAnimation)) && !addToExistingFolderIfNecessary(cell, dropTargetLayout, this.mTargetCell, distance, d, false)) {
                    ItemInfo item = (ItemInfo) d.dragInfo;
                    int minSpanX = item.spanX;
                    int minSpanY = item.spanY;
                    if (item.minSpanX > 0 && item.minSpanY > 0) {
                        minSpanX = item.minSpanX;
                        minSpanY = item.minSpanY;
                    }
                    int[] resultSpan = new int[2];
                    this.mTargetCell = dropTargetLayout.performReorder((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], minSpanX, minSpanY, spanX, spanY, cell, this.mTargetCell, resultSpan, 2);
                    boolean foundCell = this.mTargetCell[0] >= 0 && this.mTargetCell[1] >= 0;
                    if (foundCell && (cell instanceof AppWidgetHostView) && (resultSpan[0] != item.spanX || resultSpan[1] != item.spanY)) {
                        resizeOnDrop = true;
                        item.spanX = resultSpan[0];
                        item.spanY = resultSpan[1];
                        AppWidgetHostView awhv = (AppWidgetHostView) cell;
                        AppWidgetResizeFrame.updateWidgetSizeRanges(awhv, this.mLauncher, resultSpan[0], resultSpan[1]);
                    }
                    if (getScreenIdForPageIndex(this.mCurrentPage) != screenId && !hasMovedIntoHotseat) {
                        snapScreen = getPageIndexForScreenId(screenId);
                        snapToPage(snapScreen);
                    }
                    if (foundCell) {
                        final ItemInfo info = (ItemInfo) cell.getTag();
                        if (hasMovedLayouts) {
                            CellLayout parentCell = getParentCellLayoutForView(cell);
                            if (parentCell != null) {
                                parentCell.removeView(cell);
                            } else if (LauncherAppState.isDogfoodBuild()) {
                                throw new NullPointerException("mDragInfo.cell has null parent");
                            }
                            addInScreen(cell, container, screenId, this.mTargetCell[0], this.mTargetCell[1], info.spanX, info.spanY);
                        }
                        CellLayout.LayoutParams lp = (CellLayout.LayoutParams) cell.getLayoutParams();
                        int i = this.mTargetCell[0];
                        lp.tmpCellX = i;
                        lp.cellX = i;
                        int i2 = this.mTargetCell[1];
                        lp.tmpCellY = i2;
                        lp.cellY = i2;
                        lp.cellHSpan = item.spanX;
                        lp.cellVSpan = item.spanY;
                        lp.isLockedToGrid = true;
                        if (container != -101 && (cell instanceof LauncherAppWidgetHostView) && (pInfo = (hostView = (LauncherAppWidgetHostView) cell).getAppWidgetInfo()) != null && pInfo.resizeMode != 0 && !d.accessibleDrag) {
                            final Runnable addResizeFrame = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.10
                                @Override // java.lang.Runnable
                                public void run() {
                                    DragLayer dragLayer = Workspace.this.mLauncher.getDragLayer();
                                    dragLayer.addResizeFrame(info, hostView, dropTargetLayout);
                                }
                            };
                            resizeRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.11
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!Workspace.this.isPageMoving()) {
                                        addResizeFrame.run();
                                    } else {
                                        Workspace.this.mDelayedResizeRunnable = addResizeFrame;
                                    }
                                }
                            };
                        }
                        Logger.d(TAG, "[onDrop] - move " + item + ", to container = " + container + ", screenId = " + screenId + ", cellX = " + lp.cellX + ", cellY = " + lp.cellY);
                        LauncherModel.modifyItemInDatabase(this.mLauncher, info, container, screenId, lp.cellX, lp.cellY, item.spanX, item.spanY);
                    } else {
                        CellLayout.LayoutParams lp2 = (CellLayout.LayoutParams) cell.getLayoutParams();
                        this.mTargetCell[0] = lp2.cellX;
                        this.mTargetCell[1] = lp2.cellY;
                        CellLayout layout = (CellLayout) cell.getParent().getParent();
                        layout.markCellsAsOccupiedForView(cell);
                    }
                } else {
                    return;
                }
            }
            CellLayout parent = (CellLayout) cell.getParent().getParent();
            final Runnable finalResizeRunnable = resizeRunnable;
            Runnable onCompleteRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.12
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.mAnimatingViewIntoPlace = false;
                    Workspace.this.updateChildrenLayersEnabled(false);
                    if (!StyleManager.getInstance().showSearchBar() && Workspace.this.mState.equals(State.SPRING_LOADED)) {
                        Workspace.this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
                        Workspace.this.postDelayed(finalResizeRunnable, 300L);
                    } else if (finalResizeRunnable != null) {
                        finalResizeRunnable.run();
                    }
                }
            };
            this.mAnimatingViewIntoPlace = true;
            if (d.dragView.hasDrawn()) {
                ItemInfo info2 = (ItemInfo) cell.getTag();
                boolean isWidget = info2.itemType == 4 || info2.itemType == 5;
                if (isWidget) {
                    int animationType = resizeOnDrop ? 2 : 0;
                    animateWidgetDrop(info2, parent, d.dragView, onCompleteRunnable, animationType, cell, false);
                } else {
                    int duration = snapScreen < 0 ? -1 : 300;
                    this.mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, cell, duration, onCompleteRunnable, this);
                }
            } else {
                d.deferDragViewCleanupPostAnimation = false;
                cell.setVisibility(0);
                this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
            }
            parent.onDropChild(cell);
        }
    }

    public void getPageAreaRelativeToDragLayer(Rect outArea) {
        CellLayout child = (CellLayout) getChildAt(getNextPage());
        if (child != null) {
            ShortcutAndWidgetContainer boundingLayout = child.getShortcutsAndWidgets();
            this.mTempXY[0] = getViewportOffsetX() + getPaddingLeft() + boundingLayout.getLeft();
            this.mTempXY[1] = child.getTop() + boundingLayout.getTop();
            float scale = this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(this, this.mTempXY);
            outArea.set(this.mTempXY[0], this.mTempXY[1], (int) (this.mTempXY[0] + (boundingLayout.getMeasuredWidth() * scale)), (int) (this.mTempXY[1] + (boundingLayout.getMeasuredHeight() * scale)));
        }
    }

    public void getViewLocationRelativeToSelf(View v, int[] location) {
        getLocationInWindow(location);
        int x = location[0];
        int y = location[1];
        v.getLocationInWindow(location);
        int vX = location[0];
        int vY = location[1];
        location[0] = vX - x;
        location[1] = vY - y;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDragEnter(DropTarget.DragObject d) {
        if (ENFORCE_DRAG_EVENT_ORDER) {
            enfoceDragParity("onDragEnter", 1, 1);
        }
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDropToLayout = null;
        CellLayout layout = getCurrentDropLayout();
        setCurrentDropLayout(layout);
        setCurrentDragOverlappingLayout(layout);
        if (!workspaceInModalState() && StyleManager.getInstance().showSearchBar()) {
            this.mLauncher.getDragLayer().showPageHints();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect getCellLayoutMetrics(Activity activity, int orientation) {
        LauncherAppState app = LauncherAppState.getInstance();
        InvariantDeviceProfile inv = app.getInvariantDeviceProfile();
        Display display = activity.getWindowManager().getDefaultDisplay();
        Point smallestSize = new Point();
        Point largestSize = new Point();
        display.getCurrentSizeRange(smallestSize, largestSize);
        int countX = inv.numColumns;
        int countY = inv.numRows;
        boolean isLayoutRtl = Utilities.isRtl(activity.getResources());
        if (orientation == 0) {
            if (mLandscapeCellLayoutMetrics == null) {
                Rect padding = inv.landscapeProfile.getWorkspacePadding(isLayoutRtl);
                int width = (largestSize.x - padding.left) - padding.right;
                int height = (smallestSize.y - padding.top) - padding.bottom;
                mLandscapeCellLayoutMetrics = new Rect();
                mLandscapeCellLayoutMetrics.set(DeviceProfile.calculateCellWidth(width, countX), DeviceProfile.calculateCellHeight(height, countY), 0, 0);
            }
            return mLandscapeCellLayoutMetrics;
        }
        if (orientation == 1) {
            if (mPortraitCellLayoutMetrics == null) {
                Rect padding2 = inv.portraitProfile.getWorkspacePadding(isLayoutRtl);
                int width2 = (smallestSize.x - padding2.left) - padding2.right;
                int height2 = (largestSize.y - padding2.top) - padding2.bottom;
                mPortraitCellLayoutMetrics = new Rect();
                mPortraitCellLayoutMetrics.set(DeviceProfile.calculateCellWidth(width2, countX), DeviceProfile.calculateCellHeight(height2, countY), 0, 0);
            }
            return mPortraitCellLayoutMetrics;
        }
        return null;
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDragExit(DropTarget.DragObject d) {
        if (ENFORCE_DRAG_EVENT_ORDER) {
            enfoceDragParity("onDragExit", -1, 0);
        }
        if (this.mInScrollArea) {
            if (isPageMoving()) {
                this.mDropToLayout = (CellLayout) getPageAt(getNextPage());
            } else {
                this.mDropToLayout = this.mDragOverlappingLayout;
            }
        } else {
            this.mDropToLayout = this.mDragTargetLayout;
        }
        if (this.mDragMode == 1) {
            this.mCreateUserFolderOnDrop = true;
        } else if (this.mDragMode == 2) {
            this.mAddToExistingFolderOnDrop = true;
        }
        onResetScrollArea();
        setCurrentDropLayout(null);
        setCurrentDragOverlappingLayout(null);
        this.mSpringLoadedDragController.cancel();
        this.mLauncher.getDragLayer().hidePageHints();
    }

    private void enfoceDragParity(String event, int update, int expectedValue) {
        enfoceDragParity(this, event, update, expectedValue);
        for (int i = 0; i < getChildCount(); i++) {
            enfoceDragParity(getChildAt(i), event, update, expectedValue);
        }
    }

    private void enfoceDragParity(View v, String event, int update, int expectedValue) {
        Object tag = v.getTag(R.id.drag_event_parity);
        int value = (tag == null ? 0 : ((Integer) tag).intValue()) + update;
        v.setTag(R.id.drag_event_parity, Integer.valueOf(value));
        if (value != expectedValue) {
            Log.e(TAG, event + ": Drag contract violated: " + value);
        }
    }

    void setCurrentDropLayout(CellLayout layout) {
        if (this.mDragTargetLayout != null) {
            this.mDragTargetLayout.revertTempState();
            this.mDragTargetLayout.onDragExit();
        }
        this.mDragTargetLayout = layout;
        if (this.mDragTargetLayout != null) {
            this.mDragTargetLayout.onDragEnter();
        }
        cleanupReorder(true);
        cleanupFolderCreation();
        setCurrentDropOverCell(-1, -1);
    }

    void setCurrentDragOverlappingLayout(CellLayout layout) {
        if (this.mDragOverlappingLayout != null) {
            this.mDragOverlappingLayout.setIsDragOverlapping(false);
        }
        this.mDragOverlappingLayout = layout;
        if (this.mDragOverlappingLayout != null) {
            this.mDragOverlappingLayout.setIsDragOverlapping(true);
        }
        invalidate();
    }

    void setCurrentDropOverCell(int x, int y) {
        if (x != this.mDragOverX || y != this.mDragOverY) {
            this.mDragOverX = x;
            this.mDragOverY = y;
            setDragMode(0);
        }
    }

    void setDragMode(int dragMode) {
        if (dragMode != this.mDragMode) {
            if (dragMode == 0) {
                cleanupAddToFolder();
                cleanupReorder(false);
                cleanupFolderCreation();
            } else if (dragMode == 2) {
                cleanupReorder(true);
                cleanupFolderCreation();
            } else if (dragMode == 1) {
                cleanupAddToFolder();
                cleanupReorder(true);
            } else if (dragMode == 3) {
                cleanupAddToFolder();
                cleanupFolderCreation();
            }
            this.mDragMode = dragMode;
        }
    }

    private void cleanupFolderCreation() {
        if (this.mDragFolderRingAnimator != null) {
            this.mDragFolderRingAnimator.animateToNaturalState();
            this.mDragFolderRingAnimator = null;
        }
        this.mFolderCreationAlarm.setOnAlarmListener(null);
        this.mFolderCreationAlarm.cancelAlarm();
    }

    private void cleanupAddToFolder() {
        if (this.mDragOverFolderIcon != null) {
            this.mDragOverFolderIcon.onDragExit(null);
            this.mDragOverFolderIcon = null;
        }
    }

    private void cleanupReorder(boolean cancelAlarm) {
        if (cancelAlarm) {
            this.mReorderAlarm.cancelAlarm();
        }
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
    }

    void mapPointFromSelfToChild(View v, float[] xy, Matrix cachedInverseMatrix) {
        xy[0] = xy[0] - v.getLeft();
        xy[1] = xy[1] - v.getTop();
    }

    boolean isPointInSelfOverHotseat(int x, int y, Rect r) {
        if (r == null) {
            new Rect();
        }
        this.mTempPt[0] = x;
        this.mTempPt[1] = y;
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(this, this.mTempPt, true);
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        Rect r2 = grid.getHotseatRect();
        return r2.contains(this.mTempPt[0], this.mTempPt[1]);
    }

    void mapPointFromSelfToHotseatLayout(Hotseat hotseat, float[] xy) {
        this.mTempPt[0] = (int) xy[0];
        this.mTempPt[1] = (int) xy[1];
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(this, this.mTempPt, true);
        this.mLauncher.getDragLayer().mapCoordInSelfToDescendent(hotseat.getLayout(), this.mTempPt);
        xy[0] = this.mTempPt[0];
        xy[1] = this.mTempPt[1];
    }

    void mapPointFromChildToSelf(View v, float[] xy) {
        xy[0] = xy[0] + v.getLeft();
        xy[1] = xy[1] + v.getTop();
    }

    private static float squaredDistance(float[] point1, float[] point2) {
        float distanceX = point1[0] - point2[0];
        float distanceY = point2[1] - point2[1];
        return (distanceX * distanceX) + (distanceY * distanceY);
    }

    private CellLayout findMatchingPageForDragOver(DragView dragView, float originX, float originY, boolean exact) {
        int screenCount = getChildCount();
        CellLayout bestMatchingScreen = null;
        float smallestDistSoFar = Float.MAX_VALUE;
        for (int i = 0; i < screenCount; i++) {
            if (this.mScreenOrder.get(i).longValue() != CUSTOM_CONTENT_SCREEN_ID) {
                CellLayout cl = (CellLayout) getChildAt(i);
                float[] touchXy = {originX, originY};
                cl.getMatrix().invert(this.mTempInverseMatrix);
                mapPointFromSelfToChild(cl, touchXy, this.mTempInverseMatrix);
                if (touchXy[0] < 0.0f || touchXy[0] > cl.getWidth() || touchXy[1] < 0.0f || touchXy[1] > cl.getHeight()) {
                    if (!exact) {
                        float[] cellLayoutCenter = this.mTempCellLayoutCenterCoordinates;
                        cellLayoutCenter[0] = cl.getWidth() / 2;
                        cellLayoutCenter[1] = cl.getHeight() / 2;
                        mapPointFromChildToSelf(cl, cellLayoutCenter);
                        touchXy[0] = originX;
                        touchXy[1] = originY;
                        float dist = squaredDistance(touchXy, cellLayoutCenter);
                        if (dist < smallestDistSoFar) {
                            smallestDistSoFar = dist;
                            bestMatchingScreen = cl;
                        }
                    }
                } else {
                    return cl;
                }
            }
        }
        return bestMatchingScreen;
    }

    private boolean isDragWidget(DropTarget.DragObject d) {
        return (d.dragInfo instanceof LauncherAppWidgetInfo) || (d.dragInfo instanceof PendingAddWidgetInfo);
    }

    private boolean isExternalDragWidget(DropTarget.DragObject d) {
        return d.dragSource != this && isDragWidget(d);
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void onDragOver(DropTarget.DragObject d) {
        if (!this.mInScrollArea && transitionStateShouldAllowDrop()) {
            Rect r = new Rect();
            CellLayout layout = null;
            ItemInfo item = (ItemInfo) d.dragInfo;
            if (item == null) {
                if (LauncherAppState.isDogfoodBuild()) {
                    throw new NullPointerException("DragObject has null info");
                }
                return;
            }
            if (item.spanX < 0 || item.spanY < 0) {
                throw new RuntimeException("Improper spans found");
            }
            this.mDragViewVisualCenter = d.getVisualCenter(this.mDragViewVisualCenter);
            View child = this.mDragInfo == null ? null : this.mDragInfo.cell;
            if (workspaceInModalState()) {
                if (this.mLauncher.getHotseat() != null && !isExternalDragWidget(d) && isPointInSelfOverHotseat(d.x, d.y, r)) {
                    layout = this.mLauncher.getHotseat().getLayout();
                }
                if (layout == null) {
                    layout = findMatchingPageForDragOver(d.dragView, d.x, d.y, false);
                }
                if (layout != this.mDragTargetLayout) {
                    setCurrentDropLayout(layout);
                    setCurrentDragOverlappingLayout(layout);
                    boolean isInSpringLoadedMode = this.mState == State.SPRING_LOADED;
                    if (isInSpringLoadedMode) {
                        if (this.mLauncher.isHotseatLayout(layout)) {
                            this.mSpringLoadedDragController.cancel();
                        } else {
                            this.mSpringLoadedDragController.setAlarm(this.mDragTargetLayout);
                        }
                    }
                }
            } else {
                if (this.mLauncher.getHotseat() != null && !isDragWidget(d) && isPointInSelfOverHotseat(d.x, d.y, r)) {
                    layout = this.mLauncher.getHotseat().getLayout();
                }
                if (layout == null) {
                    layout = getCurrentDropLayout();
                }
                if (layout != this.mDragTargetLayout) {
                    setCurrentDropLayout(layout);
                    setCurrentDragOverlappingLayout(layout);
                }
            }
            if (this.mDragTargetLayout != null) {
                if (this.mLauncher.isHotseatLayout(this.mDragTargetLayout)) {
                    mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
                } else {
                    mapPointFromSelfToChild(this.mDragTargetLayout, this.mDragViewVisualCenter, null);
                }
                ItemInfo info = (ItemInfo) d.dragInfo;
                int minSpanX = item.spanX;
                int minSpanY = item.spanY;
                if (item.minSpanX > 0 && item.minSpanY > 0) {
                    minSpanX = item.minSpanX;
                    minSpanY = item.minSpanY;
                }
                this.mTargetCell = findNearestArea((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], minSpanX, minSpanY, this.mDragTargetLayout, this.mTargetCell);
                int reorderX = this.mTargetCell[0];
                int reorderY = this.mTargetCell[1];
                setCurrentDropOverCell(this.mTargetCell[0], this.mTargetCell[1]);
                float targetCellDistance = this.mDragTargetLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
                View dragOverView = this.mDragTargetLayout.getChildAt(this.mTargetCell[0], this.mTargetCell[1]);
                manageFolderFeedback(info, this.mDragTargetLayout, this.mTargetCell, targetCellDistance, dragOverView, d.accessibleDrag);
                boolean nearestDropOccupied = this.mDragTargetLayout.isNearestDropLocationOccupied((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], item.spanX, item.spanY, child, this.mTargetCell);
                if (!nearestDropOccupied) {
                    this.mDragTargetLayout.visualizeDropLocation(child, this.mDragOutline, (int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], this.mTargetCell[0], this.mTargetCell[1], item.spanX, item.spanY, false, d.dragView.getDragVisualizeOffset(), d.dragView.getDragRegion());
                } else if ((this.mDragMode == 0 || this.mDragMode == 3) && !this.mReorderAlarm.alarmPending() && (this.mLastReorderX != reorderX || this.mLastReorderY != reorderY)) {
                    int dx = d.x - this.mDragOverReorderX;
                    int dy = d.y - this.mDragOverReorderY;
                    double dis = Math.sqrt((dx * dx) + (dy * dy));
                    if (dis > 2.0d) {
                        int[] resultSpan = new int[2];
                        this.mDragTargetLayout.performReorder((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], minSpanX, minSpanY, item.spanX, item.spanY, child, this.mTargetCell, resultSpan, 0);
                        ReorderAlarmListener listener = new ReorderAlarmListener(this.mDragViewVisualCenter, minSpanX, minSpanY, item.spanX, item.spanY, d.dragView, child);
                        this.mReorderAlarm.setOnAlarmListener(listener);
                        this.mReorderAlarm.setAlarm(300L);
                    }
                    this.mDragOverReorderX = d.x;
                    this.mDragOverReorderY = d.y;
                }
                if ((this.mDragMode == 1 || this.mDragMode == 2 || !nearestDropOccupied) && this.mDragTargetLayout != null) {
                    this.mDragTargetLayout.revertTempState();
                }
            }
        }
    }

    private void manageFolderFeedback(ItemInfo info, CellLayout targetLayout, int[] targetCell, float distance, View dragOverView, boolean accessibleDrag) {
        boolean userFolderPending = willCreateUserFolder(info, targetLayout, targetCell, distance, false);
        if (this.mDragMode == 0 && userFolderPending && !this.mFolderCreationAlarm.alarmPending()) {
            FolderCreationAlarmListener listener = new FolderCreationAlarmListener(targetLayout, targetCell[0], targetCell[1]);
            if (!accessibleDrag) {
                this.mFolderCreationAlarm.setOnAlarmListener(listener);
                this.mFolderCreationAlarm.setAlarm(0L);
                return;
            } else {
                listener.onAlarm(this.mFolderCreationAlarm);
                return;
            }
        }
        boolean willAddToFolder = willAddToExistingUserFolder(info, targetLayout, targetCell, distance);
        if (willAddToFolder && this.mDragMode == 0) {
            this.mDragOverFolderIcon = (FolderIcon) dragOverView;
            this.mDragOverFolderIcon.onDragEnter(info);
            if (targetLayout != null) {
                targetLayout.clearDragOutlines();
            }
            setDragMode(2);
            return;
        }
        if (this.mDragMode == 2 && !willAddToFolder) {
            setDragMode(0);
        }
        if (this.mDragMode == 1 && !userFolderPending) {
            setDragMode(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class FolderCreationAlarmListener implements OnAlarmListener {
        int cellX;
        int cellY;
        CellLayout layout;

        public FolderCreationAlarmListener(CellLayout layout, int cellX, int cellY) {
            this.layout = layout;
            this.cellX = cellX;
            this.cellY = cellY;
        }

        @Override // net.oneplus.h2launcher.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            if (Workspace.this.mDragFolderRingAnimator != null) {
                Workspace.this.mDragFolderRingAnimator.animateToNaturalState();
            }
            Workspace.this.mDragFolderRingAnimator = new FolderIcon.FolderRingAnimator(Workspace.this.mLauncher, null);
            Workspace.this.mDragFolderRingAnimator.setCell(this.cellX, this.cellY);
            Workspace.this.mDragFolderRingAnimator.setCellLayout(this.layout);
            Workspace.this.mDragFolderRingAnimator.animateToAcceptState();
            this.layout.showFolderAccept(Workspace.this.mDragFolderRingAnimator);
            this.layout.clearDragOutlines();
            Workspace.this.setDragMode(1);
        }
    }

    /* loaded from: classes.dex */
    class ReorderAlarmListener implements OnAlarmListener {
        View child;
        DragView dragView;
        float[] dragViewCenter;
        int minSpanX;
        int minSpanY;
        int spanX;
        int spanY;

        public ReorderAlarmListener(float[] dragViewCenter, int minSpanX, int minSpanY, int spanX, int spanY, DragView dragView, View child) {
            this.dragViewCenter = dragViewCenter;
            this.minSpanX = minSpanX;
            this.minSpanY = minSpanY;
            this.spanX = spanX;
            this.spanY = spanY;
            this.child = child;
            this.dragView = dragView;
        }

        @Override // net.oneplus.h2launcher.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            int[] resultSpan = new int[2];
            Workspace.this.mTargetCell = Workspace.this.findNearestArea((int) Workspace.this.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], this.minSpanX, this.minSpanY, Workspace.this.mDragTargetLayout, Workspace.this.mTargetCell);
            Workspace.this.mLastReorderX = Workspace.this.mTargetCell[0];
            Workspace.this.mLastReorderY = Workspace.this.mTargetCell[1];
            Workspace.this.mTargetCell = Workspace.this.mDragTargetLayout.performReorder((int) Workspace.this.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], this.minSpanX, this.minSpanY, this.spanX, this.spanY, this.child, Workspace.this.mTargetCell, resultSpan, 1);
            if (Workspace.this.mTargetCell[0] < 0 || Workspace.this.mTargetCell[1] < 0) {
                Workspace.this.mDragTargetLayout.revertTempState();
            } else {
                Workspace.this.setDragMode(3);
            }
            boolean resize = (resultSpan[0] == this.spanX && resultSpan[1] == this.spanY) ? false : true;
            Workspace.this.mDragTargetLayout.visualizeDropLocation(this.child, Workspace.this.mDragOutline, (int) Workspace.this.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], Workspace.this.mTargetCell[0], Workspace.this.mTargetCell[1], resultSpan[0], resultSpan[1], resize, this.dragView.getDragVisualizeOffset(), this.dragView.getDragRegion());
        }
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void getHitRectRelativeToDragLayer(Rect outRect) {
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(this, outRect);
    }

    public boolean addExternalItemToScreen(ItemInfo dragInfo, CellLayout layout) {
        if (layout.findCellForSpan(this.mTempEstimate, dragInfo.spanX, dragInfo.spanY)) {
            onDropExternal(dragInfo.dropPos, dragInfo, layout, false);
            return true;
        }
        this.mLauncher.showOutOfSpaceMessage(this.mLauncher.isHotseatLayout(layout));
        return false;
    }

    private void onDropExternal(int[] touchXY, Object dragInfo, CellLayout cellLayout, boolean insertAtFirst) {
        onDropExternal(touchXY, dragInfo, cellLayout, insertAtFirst, null);
    }

    private void onDropExternal(int[] touchXY, Object dragInfo, CellLayout cellLayout, boolean insertAtFirst, DropTarget.DragObject d) {
        View view;
        Runnable exitSpringLoadedRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.13
            @Override // java.lang.Runnable
            public void run() {
                Workspace.this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
            }
        };
        ItemInfo info = (ItemInfo) dragInfo;
        int spanX = info.spanX;
        int spanY = info.spanY;
        if (this.mDragInfo != null) {
            spanX = this.mDragInfo.spanX;
            spanY = this.mDragInfo.spanY;
        }
        final long container = this.mLauncher.isHotseatLayout(cellLayout) ? -101L : -100L;
        final long screenId = getIdForScreen(cellLayout);
        if (!this.mLauncher.isHotseatLayout(cellLayout) && screenId != getScreenIdForPageIndex(this.mCurrentPage) && this.mState != State.SPRING_LOADED) {
            snapToScreenId(screenId, null);
        }
        if (info instanceof PendingAddItemInfo) {
            final PendingAddItemInfo pendingInfo = (PendingAddItemInfo) dragInfo;
            boolean findNearestVacantCell = true;
            if (pendingInfo.itemType == 1 || pendingInfo.itemType == 6) {
                this.mTargetCell = findNearestArea(touchXY[0], touchXY[1], spanX, spanY, cellLayout, this.mTargetCell);
                float distance = cellLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
                if (willCreateUserFolder((ItemInfo) d.dragInfo, cellLayout, this.mTargetCell, distance, true) || willAddToExistingUserFolder((ItemInfo) d.dragInfo, cellLayout, this.mTargetCell, distance)) {
                    findNearestVacantCell = false;
                }
            }
            final ItemInfo item = (ItemInfo) d.dragInfo;
            boolean updateWidgetSize = false;
            if (findNearestVacantCell) {
                int minSpanX = item.spanX;
                int minSpanY = item.spanY;
                if (item.minSpanX > 0 && item.minSpanY > 0) {
                    minSpanX = item.minSpanX;
                    minSpanY = item.minSpanY;
                }
                int[] resultSpan = new int[2];
                this.mTargetCell = cellLayout.performReorder((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], minSpanX, minSpanY, info.spanX, info.spanY, null, this.mTargetCell, resultSpan, 3);
                if (resultSpan[0] != item.spanX || resultSpan[1] != item.spanY) {
                    updateWidgetSize = true;
                }
                item.spanX = resultSpan[0];
                item.spanY = resultSpan[1];
            }
            Runnable onAnimationCompleteRunnable = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.14
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.deferRemoveExtraEmptyScreen();
                    Workspace.this.mLauncher.addPendingItem(pendingInfo, container, screenId, Workspace.this.mTargetCell, item.spanX, item.spanY);
                }
            };
            boolean isWidget = pendingInfo.itemType == 4 || pendingInfo.itemType == 5;
            View finalView = isWidget ? ((PendingAddWidgetInfo) pendingInfo).boundWidget : null;
            if ((finalView instanceof AppWidgetHostView) && updateWidgetSize) {
                AppWidgetHostView awhv = (AppWidgetHostView) finalView;
                AppWidgetResizeFrame.updateWidgetSizeRanges(awhv, this.mLauncher, item.spanX, item.spanY);
            }
            int animationStyle = 0;
            if (isWidget && ((PendingAddWidgetInfo) pendingInfo).info != null && ((PendingAddWidgetInfo) pendingInfo).info.configure != null) {
                animationStyle = 1;
            }
            animateWidgetDrop(info, cellLayout, d.dragView, onAnimationCompleteRunnable, animationStyle, finalView, true);
            return;
        }
        switch (info.itemType) {
            case 0:
            case 1:
            case 6:
                if (info.container == -1 && (info instanceof AppInfo)) {
                    info = ((AppInfo) info).makeShortcut();
                }
                view = this.mLauncher.createShortcut(cellLayout, (ShortcutInfo) info);
                break;
            case 2:
                view = FolderIcon.fromXml(R.layout.folder_icon, this.mLauncher, cellLayout, (FolderInfo) info, this.mAssetCache);
                break;
            case 3:
            case 4:
            case 5:
            default:
                throw new IllegalStateException("Unknown item type: " + info.itemType);
        }
        if (touchXY != null) {
            this.mTargetCell = findNearestArea(touchXY[0], touchXY[1], spanX, spanY, cellLayout, this.mTargetCell);
            float distance2 = cellLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
            d.postAnimationRunnable = exitSpringLoadedRunnable;
            if (createUserFolderIfNecessary(view, container, cellLayout, this.mTargetCell, distance2, true, d.dragView, d.postAnimationRunnable) || addToExistingFolderIfNecessary(view, cellLayout, this.mTargetCell, distance2, d, true)) {
                return;
            }
        }
        if (touchXY != null) {
            this.mTargetCell = cellLayout.performReorder((int) this.mDragViewVisualCenter[0], (int) this.mDragViewVisualCenter[1], 1, 1, 1, 1, null, this.mTargetCell, null, 3);
        } else {
            cellLayout.findCellForSpan(this.mTargetCell, 1, 1);
        }
        LauncherModel.addOrMoveItemInDatabase(this.mLauncher, info, container, screenId, this.mTargetCell[0], this.mTargetCell[1]);
        addInScreen(view, container, screenId, this.mTargetCell[0], this.mTargetCell[1], info.spanX, info.spanY, insertAtFirst);
        cellLayout.onDropChild(view);
        cellLayout.getShortcutsAndWidgets().measureChild(view);
        if (d.dragView != null) {
            setFinalTransitionTransform(cellLayout);
            this.mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, view, exitSpringLoadedRunnable, this);
            resetTransitionTransform(cellLayout);
        }
    }

    public Bitmap createWidgetBitmap(ItemInfo widgetInfo, View layout) {
        int[] unScaledSize = this.mLauncher.getWorkspace().estimateItemSize(widgetInfo, false);
        int visibility = layout.getVisibility();
        layout.setVisibility(0);
        int width = View.MeasureSpec.makeMeasureSpec(unScaledSize[0], LauncherActivityInfoCompat.FLAG_SUSPENDED);
        int height = View.MeasureSpec.makeMeasureSpec(unScaledSize[1], LauncherActivityInfoCompat.FLAG_SUSPENDED);
        Bitmap b = Bitmap.createBitmap(unScaledSize[0], unScaledSize[1], Bitmap.Config.ARGB_8888);
        this.mCanvas.setBitmap(b);
        layout.measure(width, height);
        layout.layout(0, 0, unScaledSize[0], unScaledSize[1]);
        layout.draw(this.mCanvas);
        this.mCanvas.setBitmap(null);
        layout.setVisibility(visibility);
        return b;
    }

    private void getFinalPositionForDropAnimation(int[] loc, float[] scaleXY, DragView dragView, CellLayout layout, ItemInfo info, int[] targetCell, boolean external, boolean scale) {
        float dragViewScaleX;
        float dragViewScaleY;
        int spanX = info.spanX;
        int spanY = info.spanY;
        Rect r = estimateItemPosition(layout, info, targetCell[0], targetCell[1], spanX, spanY);
        loc[0] = r.left;
        loc[1] = r.top;
        setFinalTransitionTransform(layout);
        float cellLayoutScale = this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(layout, loc, true);
        resetTransitionTransform(layout);
        if (scale) {
            dragViewScaleX = (1.0f * r.width()) / dragView.getMeasuredWidth();
            dragViewScaleY = (1.0f * r.height()) / dragView.getMeasuredHeight();
        } else {
            dragViewScaleX = 1.0f;
            dragViewScaleY = 1.0f;
        }
        loc[0] = (int) (loc[0] - ((dragView.getMeasuredWidth() - (r.width() * cellLayoutScale)) / 2.0f));
        loc[1] = (int) (loc[1] - ((dragView.getMeasuredHeight() - (r.height() * cellLayoutScale)) / 2.0f));
        scaleXY[0] = dragViewScaleX * cellLayoutScale;
        scaleXY[1] = dragViewScaleY * cellLayoutScale;
    }

    public void animateWidgetDrop(ItemInfo info, CellLayout cellLayout, DragView dragView, final Runnable onCompleteRunnable, int animationType, final View finalView, boolean external) {
        int endStyle;
        Rect from = new Rect();
        this.mLauncher.getDragLayer().getViewRectRelativeToSelf(dragView, from);
        int[] finalPos = new int[2];
        float[] scaleXY = new float[2];
        boolean scalePreview = !(info instanceof PendingAddShortcutInfo);
        getFinalPositionForDropAnimation(finalPos, scaleXY, dragView, cellLayout, info, this.mTargetCell, external, scalePreview);
        Resources res = this.mLauncher.getResources();
        int duration = res.getInteger(R.integer.config_dropAnimMaxDuration) - 200;
        if ((finalView instanceof AppWidgetHostView) && external) {
            this.mLauncher.getDragLayer().removeView(finalView);
        }
        boolean isWidget = info.itemType == 4 || info.itemType == 5;
        if ((animationType == 2 || external) && finalView != null) {
            int[] unScaledSize = this.mLauncher.getWorkspace().estimateItemSize(info, false);
            if (unScaledSize.length >= 2 && unScaledSize[0] > 0 && unScaledSize[1] > 0) {
                Bitmap crossFadeBitmap = createWidgetBitmap(info, finalView);
                dragView.setCrossFadeBitmap(crossFadeBitmap);
                dragView.crossFade((int) (duration * 0.8f));
            }
        } else if (isWidget && external) {
            float min = Math.min(scaleXY[0], scaleXY[1]);
            scaleXY[1] = min;
            scaleXY[0] = min;
        }
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        if (animationType == 4) {
            this.mLauncher.getDragLayer().animateViewIntoPosition(dragView, finalPos, 0.0f, 0.1f, 0.1f, 0, onCompleteRunnable, duration);
            return;
        }
        if (animationType == 1) {
            endStyle = 2;
        } else {
            endStyle = 0;
        }
        Runnable onComplete = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.15
            @Override // java.lang.Runnable
            public void run() {
                if (finalView != null) {
                    finalView.setVisibility(0);
                }
                if (onCompleteRunnable != null) {
                    onCompleteRunnable.run();
                }
            }
        };
        dragLayer.animateViewIntoPosition(dragView, from.left, from.top, finalPos[0], finalPos[1], 1.0f, 1.0f, 1.0f, scaleXY[0], scaleXY[1], onComplete, endStyle, duration, this);
    }

    public void setFinalTransitionTransform(CellLayout layout) {
        if (isSwitchingState()) {
            this.mCurrentScale = getScaleX();
            setScaleX(this.mStateTransitionAnimation.getFinalScale());
            setScaleY(this.mStateTransitionAnimation.getFinalScale());
        }
    }

    public void resetTransitionTransform(CellLayout layout) {
        if (isSwitchingState()) {
            setScaleX(this.mCurrentScale);
            setScaleY(this.mCurrentScale);
        }
    }

    public CellLayout getNearestLayout() {
        return (CellLayout) getChildAt(getPageNearestToCenterOfScreen());
    }

    public CellLayout getCurrentDropLayout() {
        return (CellLayout) getChildAt(getNextPage());
    }

    public CellLayout.CellInfo getDragInfo() {
        return this.mDragInfo;
    }

    public int getCurrentPageOffsetFromCustomContent() {
        return getNextPage() - numCustomPages();
    }

    int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, CellLayout layout, int[] recycle) {
        return layout.findNearestArea(pixelX, pixelY, spanX, spanY, recycle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setup(DragController dragController) {
        this.mSpringLoadedDragController = new SpringLoadedDragController(this.mLauncher);
        this.mDragController = dragController;
        if (this.mIsAttachedToWindow) {
            this.mDragController.setWindowToken(getWindowToken());
        }
        updateChildrenLayersEnabled(false);
    }

    @Override // net.oneplus.h2launcher.DragSource
    public void onDropCompleted(final View target, final DropTarget.DragObject d, final boolean isFlingToDelete, final boolean success) {
        if (this.mDeferDropAfterUninstall) {
            this.mDeferredAction = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.16
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.onDropCompleted(target, d, isFlingToDelete, success);
                    Workspace.this.mDeferredAction = null;
                }
            };
            return;
        }
        boolean beingCalledAfterUninstall = this.mDeferredAction != null;
        if (d.remove && success && (!beingCalledAfterUninstall || this.mUninstallSuccessful)) {
            if (target != this && this.mDragInfo != null) {
                removeWorkspaceItem(this.mDragInfo.cell);
            }
        } else if (this.mDragInfo != null) {
            CellLayout cellLayout = this.mLauncher.getCellLayout(this.mDragInfo.container, this.mDragInfo.screenId);
            if (cellLayout != null) {
                cellLayout.onDropChild(this.mDragInfo.cell);
            } else if (LauncherAppState.isDogfoodBuild()) {
                throw new RuntimeException("Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. ");
            }
            this.mLauncher.exitSpringLoadedDragMode();
        }
        if ((d.cancelled || (beingCalledAfterUninstall && !this.mUninstallSuccessful)) && this.mDragInfo.cell != null) {
            this.mDragInfo.cell.setVisibility(0);
        }
        this.mDragOutline = null;
        if (!(target instanceof EditDropTarget) && !(target instanceof UninstallDropTarget)) {
            this.mDragInfo = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeWorkspaceItem(View view) {
        CellLayout parentCell = getParentCellLayoutForView(view);
        if (parentCell != null) {
            parentCell.removeView(view);
        } else if (LauncherAppState.isDogfoodBuild()) {
            Log.e(TAG, "mDragInfo.cell has null parent");
        }
        if (view instanceof DropTarget) {
            this.mDragController.removeDropTarget((DropTarget) view);
        }
    }

    @Override // net.oneplus.h2launcher.UninstallDropTarget.UninstallSource
    public void deferCompleteDropAfterUninstallActivity() {
        this.mDeferDropAfterUninstall = true;
    }

    @Override // net.oneplus.h2launcher.UninstallDropTarget.UninstallSource
    public void onUninstallActivityReturned(boolean success) {
        this.mDeferDropAfterUninstall = false;
        this.mUninstallSuccessful = success;
        if (this.mDeferredAction != null) {
            this.mDeferredAction.run();
        }
        markCellsAsOccupiedForView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateItemLocationsInDatabase(CellLayout cl) {
        int count = cl.getShortcutsAndWidgets().getChildCount();
        long screenId = getIdForScreen(cl);
        int container = -100;
        if (this.mLauncher.isHotseatLayout(cl)) {
            screenId = -1;
            container = LauncherSettings.Favorites.CONTAINER_HOTSEAT;
        }
        for (int i = 0; i < count; i++) {
            View v = cl.getShortcutsAndWidgets().getChildAt(i);
            ItemInfo info = (ItemInfo) v.getTag();
            if (info != null && info.requiresDbUpdate) {
                info.requiresDbUpdate = false;
                LauncherModel.modifyItemInDatabase(this.mLauncher, info, container, screenId, info.cellX, info.cellY, info.spanX, info.spanY);
            }
        }
    }

    void saveWorkspaceToDb() {
        if (this.mLauncher.getHotseat() != null) {
            saveWorkspaceScreenToDb(this.mLauncher.getHotseat().getLayout());
        }
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            CellLayout cl = (CellLayout) getChildAt(i);
            saveWorkspaceScreenToDb(cl);
        }
    }

    void saveWorkspaceScreenToDb(CellLayout cl) {
        int count = cl.getShortcutsAndWidgets().getChildCount();
        long screenId = getIdForScreen(cl);
        int container = -100;
        if (this.mLauncher.isHotseatLayout(cl)) {
            screenId = -1;
            container = LauncherSettings.Favorites.CONTAINER_HOTSEAT;
        }
        for (int i = 0; i < count; i++) {
            View v = cl.getShortcutsAndWidgets().getChildAt(i);
            ItemInfo info = (ItemInfo) v.getTag();
            if (info != null) {
                int cellX = info.cellX;
                int cellY = info.cellY;
                if (container == -101) {
                    cellX = this.mLauncher.getHotseatController().getCellXFromOrder((int) info.screenId);
                    cellY = this.mLauncher.getHotseatController().getCellYFromOrder((int) info.screenId);
                }
                LauncherModel.addItemToDatabase(this.mLauncher, info, container, screenId, cellX, cellY);
            }
            if (v instanceof FolderIcon) {
                FolderIcon fi = (FolderIcon) v;
                fi.getFolder().addItemLocationsInDatabase();
            }
        }
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
        return false;
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

    @Override // net.oneplus.h2launcher.DropTarget
    public boolean isDropEnabled() {
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        this.mSavedStates = container;
    }

    public void restoreInstanceStateForChild(int child) {
        if (this.mSavedStates != null) {
            this.mRestoredPages.add(Integer.valueOf(child));
            CellLayout cl = (CellLayout) getChildAt(child);
            if (cl != null) {
                cl.restoreInstanceState(this.mSavedStates);
            }
        }
    }

    public void restoreInstanceStateForRemainingPages() {
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            if (!this.mRestoredPages.contains(Integer.valueOf(i))) {
                restoreInstanceStateForChild(i);
            }
        }
        this.mRestoredPages.clear();
        this.mSavedStates = null;
    }

    @Override // net.oneplus.h2launcher.PagedView, net.oneplus.h2launcher.DragScroller
    public void scrollLeft() {
        scrollLeft(false);
    }

    public void scrollLeft(boolean force) {
        if (force || (!workspaceInModalState() && !this.mIsSwitchingState)) {
            super.scrollLeft();
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            openFolder.completeDragExit();
        }
    }

    @Override // net.oneplus.h2launcher.PagedView, net.oneplus.h2launcher.DragScroller
    public void scrollRight() {
        scrollRight(false);
    }

    public void scrollRight(boolean force) {
        if (force || (!workspaceInModalState() && !this.mIsSwitchingState)) {
            super.scrollRight();
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            openFolder.completeDragExit();
        }
    }

    @Override // net.oneplus.h2launcher.DragScroller
    public boolean onEnterScrollArea(int x, int y, int direction) {
        boolean isPortrait = !this.mLauncher.getDeviceProfile().isLandscape;
        if (!this.mLauncher.getHotseatController().getHitRect(x, y, isPortrait)) {
            return false;
        }
        boolean result = false;
        if (!workspaceInModalState() && !this.mIsSwitchingState && getOpenFolder() == null) {
            this.mInScrollArea = true;
            int page = getNextPage() + (direction == 0 ? -1 : 1);
            setCurrentDropLayout(null);
            if (page >= 0 && page < getChildCount()) {
                if (getScreenIdForPageIndex(page) == CUSTOM_CONTENT_SCREEN_ID) {
                    return false;
                }
                CellLayout layout = (CellLayout) getChildAt(page);
                setCurrentDragOverlappingLayout(layout);
                invalidate();
                result = true;
            }
        }
        return result;
    }

    @Override // net.oneplus.h2launcher.DragScroller
    public boolean onExitScrollArea() {
        if (!this.mInScrollArea) {
            return false;
        }
        invalidate();
        CellLayout layout = getCurrentDropLayout();
        setCurrentDropLayout(layout);
        setCurrentDragOverlappingLayout(layout);
        this.mInScrollArea = false;
        return true;
    }

    private void onResetScrollArea() {
        setCurrentDragOverlappingLayout(null);
        this.mInScrollArea = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellLayout getParentCellLayoutForView(View v) {
        ArrayList<CellLayout> layouts = getWorkspaceAndHotseatCellLayouts();
        Iterator<CellLayout> it = layouts.iterator();
        while (it.hasNext()) {
            CellLayout layout = it.next();
            if (layout.getShortcutsAndWidgets().indexOfChild(v) > -1) {
                return layout;
            }
        }
        return null;
    }

    ArrayList<CellLayout> getWorkspaceAndHotseatCellLayouts() {
        ArrayList<CellLayout> layouts = new ArrayList<>();
        int screenCount = getChildCount();
        for (int screen = 0; screen < screenCount; screen++) {
            layouts.add((CellLayout) getChildAt(screen));
        }
        this.mLauncher.getHotseatController().addCellLayout(layouts);
        return layouts;
    }

    ArrayList<ShortcutAndWidgetContainer> getAllShortcutAndWidgetContainers() {
        return getShortcutAndWidgetContainerInPage(Integer.MIN_VALUE);
    }

    ArrayList<ShortcutAndWidgetContainer> getShortcutAndWidgetContainerInPage(int pageIndex) {
        ArrayList<ShortcutAndWidgetContainer> childrenLayouts = new ArrayList<>();
        if (pageIndex == Integer.MIN_VALUE) {
            int screenCount = getChildCount();
            for (int screen = 0; screen < screenCount; screen++) {
                childrenLayouts.add(((CellLayout) getChildAt(screen)).getShortcutsAndWidgets());
            }
            this.mLauncher.getHotseatController().addShortcutsAndWidgets(childrenLayouts);
        } else if (pageIndex == -101) {
            this.mLauncher.getHotseatController().addShortcutsAndWidgets(childrenLayouts);
        } else {
            CellLayout cellLayout = (CellLayout) getChildAt(pageIndex);
            if (cellLayout != null) {
                childrenLayouts.add(cellLayout.getShortcutsAndWidgets());
            }
        }
        return childrenLayouts;
    }

    public Folder getFolderForTag(final Object tag) {
        return (Folder) getFirstMatch(new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.17
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                return (v instanceof Folder) && ((Folder) v).getInfo() == tag && ((Folder) v).getInfo().opened;
            }
        });
    }

    public View getHomescreenIconByItemId(final long id) {
        return getFirstMatch(new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.18
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                return info != null && info.id == id;
            }
        });
    }

    public View getViewForTag(final Object tag) {
        return getFirstMatch(new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.19
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                return info == tag;
            }
        });
    }

    public LauncherAppWidgetHostView getWidgetForAppWidgetId(final int appWidgetId) {
        return (LauncherAppWidgetHostView) getFirstMatch(new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.20
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                return (info instanceof LauncherAppWidgetInfo) && ((LauncherAppWidgetInfo) info).appWidgetId == appWidgetId;
            }
        });
    }

    private View getFirstMatch(final ItemOperator operator) {
        final View[] value = new View[1];
        mapOverItems(false, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.21
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                if (!operator.evaluate(info, v, parent)) {
                    return false;
                }
                value[0] = v;
                return true;
            }
        });
        return value[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearDropTargets() {
        mapOverItems(false, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.22
            /* JADX WARN: Multi-variable type inference failed */
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view, View parent) {
                if (view instanceof DropTarget) {
                    Workspace.this.mDragController.removeDropTarget((DropTarget) view);
                    return false;
                }
                return false;
            }
        });
    }

    public void disableShortcutsByPackageName(ArrayList<String> packages, final UserHandleCompat user, final int reason) {
        final HashSet<String> packageNames = new HashSet<>();
        packageNames.addAll(packages);
        mapOverItems(true, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.23
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                if ((info instanceof ShortcutInfo) && (v instanceof BubbleTextView)) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) info;
                    ComponentName cn = shortcutInfo.getTargetComponent();
                    if (user.equals(shortcutInfo.user) && cn != null && packageNames.contains(cn.getPackageName())) {
                        shortcutInfo.isDisabled |= reason;
                        BubbleTextView shortcut = (BubbleTextView) v;
                        shortcut.applyFromShortcutInfo(shortcutInfo);
                        if (parent != null) {
                            parent.invalidate();
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeItemsByPackageName(ArrayList<String> packages, final UserHandleCompat user) {
        if (packages != null) {
            Iterator<String> it = packages.iterator();
            while (it.hasNext()) {
                String packageName = it.next();
                if (packageName != null && LauncherModel.STK_PACKAGE_NAME.equals(packageName)) {
                    Logger.d(TAG, "workspace removeItemsByPackageName for delete STK");
                }
            }
        }
        final HashSet<String> packageNames = new HashSet<>();
        packageNames.addAll(packages);
        HashSet<ItemInfo> infos = new HashSet<>();
        final HashSet<ComponentName> cns = new HashSet<>();
        ArrayList<CellLayout> cellLayouts = getWorkspaceAndHotseatCellLayouts();
        Iterator<CellLayout> it2 = cellLayouts.iterator();
        while (it2.hasNext()) {
            CellLayout layoutParent = it2.next();
            ViewGroup layout = layoutParent.getShortcutsAndWidgets();
            int childCount = layout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View view = layout.getChildAt(i);
                infos.add((ItemInfo) view.getTag());
            }
        }
        LauncherModel.ItemInfoFilter filter = new LauncherModel.ItemInfoFilter() { // from class: net.oneplus.h2launcher.Workspace.24
            @Override // net.oneplus.h2launcher.LauncherModel.ItemInfoFilter
            public boolean filterItem(ItemInfo parent, ItemInfo info, ComponentName cn) {
                if (!packageNames.contains(cn.getPackageName()) || !info.user.equals(user)) {
                    return false;
                }
                cns.add(cn);
                Logger.d(Workspace.TAG, "[removeItemsByPackageName] cn: " + cn);
                return true;
            }
        };
        LauncherModel.filterItemInfos(infos, filter);
        removeItemsByComponentName(cns, user);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void removeItemsByComponentName(final HashSet<ComponentName> componentNames, final UserHandleCompat user) {
        if (componentNames != null) {
            Iterator<ComponentName> it = componentNames.iterator();
            while (it.hasNext()) {
                ComponentName componentName = it.next();
                if (componentName != null && LauncherModel.STK_PACKAGE_NAME.equals(componentName.getPackageName())) {
                    Logger.d(TAG, "workspace removeItemsByComponentName for delete STK");
                }
            }
        }
        ArrayList<CellLayout> cellLayouts = getWorkspaceAndHotseatCellLayouts();
        Iterator<CellLayout> it2 = cellLayouts.iterator();
        while (it2.hasNext()) {
            CellLayout next = it2.next();
            ShortcutAndWidgetContainer layout = next.getShortcutsAndWidgets();
            final HashMap<ItemInfo, View> children = new HashMap<>();
            for (int j = 0; j < layout.getChildCount(); j++) {
                View view = layout.getChildAt(j);
                children.put((ItemInfo) view.getTag(), view);
            }
            final ArrayList<View> childrenToRemove = new ArrayList<>();
            final HashMap<FolderInfo, ArrayList<ShortcutInfo>> folderAppsToRemove = new HashMap<>();
            LauncherModel.ItemInfoFilter filter = new LauncherModel.ItemInfoFilter() { // from class: net.oneplus.h2launcher.Workspace.25
                @Override // net.oneplus.h2launcher.LauncherModel.ItemInfoFilter
                public boolean filterItem(ItemInfo parent, ItemInfo info, ComponentName cn) {
                    ArrayList<ShortcutInfo> appsToRemove;
                    if (parent instanceof FolderInfo) {
                        if (componentNames.contains(cn) && info.user.equals(user)) {
                            FolderInfo folder = (FolderInfo) parent;
                            if (folderAppsToRemove.containsKey(folder)) {
                                appsToRemove = (ArrayList) folderAppsToRemove.get(folder);
                            } else {
                                appsToRemove = new ArrayList<>();
                                folderAppsToRemove.put(folder, appsToRemove);
                            }
                            appsToRemove.add((ShortcutInfo) info);
                            Logger.d(Workspace.TAG, "[removeItemsByComponentName] appsToRemove: " + cn);
                            return true;
                        }
                    } else if (componentNames.contains(cn) && info.user.equals(user)) {
                        childrenToRemove.add(children.get(info));
                        Logger.d(Workspace.TAG, "[removeItemsByComponentName] ShortcutInfo, cn: " + cn);
                        return true;
                    }
                    return false;
                }
            };
            LauncherModel.filterItemInfos(children.keySet(), filter);
            for (FolderInfo folder : folderAppsToRemove.keySet()) {
                ArrayList<ShortcutInfo> appsToRemove = folderAppsToRemove.get(folder);
                Iterator<ShortcutInfo> it3 = appsToRemove.iterator();
                while (it3.hasNext()) {
                    ShortcutInfo info = it3.next();
                    folder.remove(info);
                    Logger.d(TAG, "[removeItemsByComponentName] folder remove: " + info);
                }
            }
            Iterator<View> it4 = childrenToRemove.iterator();
            while (it4.hasNext()) {
                View next2 = it4.next();
                next.removeViewInLayout(next2);
                Logger.d(TAG, "[removeItemsByComponentName] removeViewInLayout: " + (next2 == 0 ? "child is null." : next2.getTag()));
                if (next2 instanceof DropTarget) {
                    this.mDragController.removeDropTarget((DropTarget) next2);
                }
            }
            if (childrenToRemove.size() > 0) {
                layout.requestLayout();
                layout.invalidate();
            }
        }
        stripEmptyScreens();
    }

    void mapOverItems(boolean recurse, ItemOperator op) {
        mapOverItemsInPage(recurse, Integer.MIN_VALUE, op);
    }

    void mapOverItemsInPage(boolean recurse, int pageIndex, ItemOperator op) {
        ArrayList<ShortcutAndWidgetContainer> containers = getShortcutAndWidgetContainerInPage(pageIndex);
        int containerCount = containers.size();
        for (int containerIdx = 0; containerIdx < containerCount; containerIdx++) {
            ShortcutAndWidgetContainer container = containers.get(containerIdx);
            int itemCount = container.getChildCount();
            for (int itemIdx = 0; itemIdx < itemCount; itemIdx++) {
                View item = container.getChildAt(itemIdx);
                if (item != null) {
                    ItemInfo info = (ItemInfo) item.getTag();
                    if (recurse && (info instanceof FolderInfo) && (item instanceof FolderIcon)) {
                        FolderIcon folder = (FolderIcon) item;
                        ArrayList<View> folderChildren = folder.getFolder().getItemsInReadingOrder();
                        int childCount = folderChildren.size();
                        for (int childIdx = 0; childIdx < childCount; childIdx++) {
                            View child = folderChildren.get(childIdx);
                            if (op.evaluate((ItemInfo) child.getTag(), child, folder)) {
                                return;
                            }
                        }
                    } else if (op.evaluate(info, item, null)) {
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateShortcuts(ArrayList<ShortcutInfo> shortcuts) {
        final HashSet<ShortcutInfo> updates = new HashSet<>(shortcuts);
        mapOverItems(true, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.26
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                if ((info instanceof ShortcutInfo) && (v instanceof BubbleTextView) && updates.contains(info)) {
                    ShortcutInfo si = (ShortcutInfo) info;
                    BubbleTextView shortcut = (BubbleTextView) v;
                    Drawable oldIcon = Workspace.getTextViewIcon(shortcut);
                    boolean oldPromiseState = (oldIcon instanceof PreloadIconDrawable) && ((PreloadIconDrawable) oldIcon).hasNotCompleted();
                    shortcut.applyFromShortcutInfo(si, si.isPromise() != oldPromiseState);
                    if (parent != null) {
                        parent.invalidate();
                    }
                }
                return false;
            }
        });
    }

    void updateShortcutsWithPackageName(String packageName) {
        updateShortcutsInPage(Integer.MIN_VALUE, packageName);
    }

    void updateShortcutsWithPackageName(int index, String packageName) {
        updateShortcutsInPage(index, packageName);
    }

    public void updateShortcutsInPage(int pageIndex, final String pkgName) {
        mapOverItemsInPage(false, pageIndex, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.27
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view, View parent) {
                ComponentName component;
                if ((info instanceof FolderInfo) && (view instanceof FolderIcon)) {
                    FolderIcon folderIcon = (FolderIcon) view;
                    Folder folder = folderIcon.getFolder();
                    ArrayList<View> folderChildren = folder.getItemsInReadingOrder();
                    int childCount = folderChildren.size();
                    for (int childIdx = 0; childIdx < childCount; childIdx++) {
                        View child = folderChildren.get(childIdx);
                        Object childTag = child.getTag();
                        if ((childTag instanceof ShortcutInfo) && (child instanceof BubbleTextView)) {
                            ShortcutInfo shortcutInfo = (ShortcutInfo) childTag;
                            ComponentName component2 = shortcutInfo.getTargetComponent();
                            if (pkgName == null || component2 == null || component2.getPackageName().equals(pkgName)) {
                                Workspace.this.updateShortcut((BubbleTextView) child, shortcutInfo);
                            }
                        }
                    }
                    folder.setScaledSize();
                    folderIcon.setScaledLayout();
                    folderIcon.invalidate();
                    return false;
                }
                if ((info instanceof ShortcutInfo) && (view instanceof BubbleTextView) && (component = ((ShortcutInfo) info).getTargetComponent()) != null && component.getPackageName() != null && component.getPackageName().equals(pkgName)) {
                    Workspace.this.updateShortcut((BubbleTextView) view, (ShortcutInfo) info);
                    return false;
                }
                return false;
            }
        });
    }

    void updateShortcutsWithComponentName(UserHandleCompat user, String componentName) {
        updateShortcutsInPageWithComponentName(Integer.MIN_VALUE, user, componentName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateShortcutsWithComponentName(int index, UserHandleCompat user, String componentName) {
        updateShortcutsInPageWithComponentName(index, user, componentName);
    }

    public void updateShortcutsInPageWithComponentName(int pageIndex, final UserHandleCompat user, final String targetComponentName) {
        mapOverItemsInPage(false, pageIndex, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.28
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view, View parent) {
                ComponentName component;
                if (info == null || info.user.equals(user) || (info instanceof FolderInfo)) {
                    if ((info instanceof FolderInfo) && (view instanceof FolderIcon)) {
                        FolderIcon folderIcon = (FolderIcon) view;
                        Folder folder = folderIcon.getFolder();
                        ArrayList<View> folderChildren = folder.getItemsInReadingOrder();
                        int childCount = folderChildren.size();
                        for (int childIdx = 0; childIdx < childCount; childIdx++) {
                            View child = folderChildren.get(childIdx);
                            Object childTag = child.getTag();
                            if ((childTag instanceof ShortcutInfo) && (child instanceof BubbleTextView)) {
                                ShortcutInfo shortcutInfo = (ShortcutInfo) childTag;
                                if (shortcutInfo.user.equals(user)) {
                                    ComponentName component2 = shortcutInfo.getTargetComponent();
                                    if (targetComponentName == null || component2 == null || component2.flattenToString().equals(targetComponentName)) {
                                        Workspace.this.updateShortcut((BubbleTextView) child, shortcutInfo);
                                    }
                                }
                            }
                        }
                        folder.setScaledSize();
                        folderIcon.setScaledLayout();
                        folderIcon.invalidate();
                    } else if ((info instanceof ShortcutInfo) && (view instanceof BubbleTextView) && (component = ((ShortcutInfo) info).getTargetComponent()) != null && component.flattenToString() != null && targetComponentName != null && component.flattenToString().equals(targetComponentName)) {
                        Workspace.this.updateShortcut((BubbleTextView) view, (ShortcutInfo) info);
                    }
                }
                return false;
            }
        });
    }

    public void updateAllShortcutIconSize(float iconSizeScale, String pkgName) {
        updateShortcutIconSizeInPage(Integer.MIN_VALUE, iconSizeScale, pkgName);
    }

    public void updateShortcutIconSizeInPage(int pageIndex, final float iconSizeScale, final String pkgName) {
        mapOverItemsInPage(false, pageIndex, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.29
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view, View parent) {
                if ((info instanceof FolderInfo) && (view instanceof FolderIcon)) {
                    FolderIcon folderIcon = (FolderIcon) view;
                    Folder folder = folderIcon.getFolder();
                    ArrayList<View> folderChildren = folder.getItemsInReadingOrder();
                    int childCount = folderChildren.size();
                    for (int childIdx = 0; childIdx < childCount; childIdx++) {
                        View child = folderChildren.get(childIdx);
                        Object childTag = child.getTag();
                        if ((childTag instanceof ShortcutInfo) && (child instanceof BubbleTextView)) {
                            ShortcutInfo shortcutInfo = (ShortcutInfo) childTag;
                            ComponentName component = shortcutInfo.getTargetComponent();
                            if (pkgName == null || component == null || component.getPackageName().equals(pkgName)) {
                                Workspace.this.updateShortcutIconSize((BubbleTextView) child, iconSizeScale);
                            }
                        }
                    }
                    folder.setScaledSize();
                    folderIcon.setScaledLayout();
                    folderIcon.invalidate();
                    return false;
                }
                if ((info instanceof ShortcutInfo) && (view instanceof BubbleTextView)) {
                    Workspace.this.updateShortcutIconSize((BubbleTextView) view, iconSizeScale);
                    return false;
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShortcut(BubbleTextView shortcut, ShortcutInfo info) {
        shortcut.applyFromShortcutInfo(info, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShortcutIconSize(BubbleTextView shortcut, float iconSizeScale) {
        shortcut.applyIconSizeScale(iconSizeScale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Pair<View, ItemInfo>> getAllShortcuts() {
        List<Pair<View, ItemInfo>> shortcuts = new ArrayList<>();
        ArrayList<ShortcutAndWidgetContainer> containers = getAllShortcutAndWidgetContainers();
        int containerCount = containers.size();
        for (int containerIdx = 0; containerIdx < containerCount; containerIdx++) {
            ShortcutAndWidgetContainer container = containers.get(containerIdx);
            int itemCount = container.getChildCount();
            for (int itemIdx = 0; itemIdx < itemCount; itemIdx++) {
                View item = container.getChildAt(itemIdx);
                ItemInfo info = (ItemInfo) item.getTag();
                if ((info instanceof FolderInfo) && (item instanceof FolderIcon)) {
                    FolderIcon folderIcon = (FolderIcon) item;
                    Folder folder = folderIcon.getFolder();
                    ArrayList<View> folderChildren = folder.getItemsInReadingOrder();
                    int childCount = folderChildren.size();
                    for (int childIdx = 0; childIdx < childCount; childIdx++) {
                        View child = folderChildren.get(childIdx);
                        Object childTag = child.getTag();
                        if (child.getTag() instanceof ShortcutInfo) {
                            shortcuts.add(new Pair<>(child, (ItemInfo) childTag));
                        }
                    }
                    shortcuts.add(new Pair<>(item, info));
                } else if ((info instanceof ShortcutInfo) && (item instanceof BubbleTextView)) {
                    shortcuts.add(new Pair<>(item, info));
                }
            }
        }
        return shortcuts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Pair<View, ItemInfo>> getAllShortcutsInPage(int pageIndex) {
        List<Pair<View, ItemInfo>> shortcuts = new ArrayList<>();
        ArrayList<ShortcutAndWidgetContainer> containers = getAllShortcutAndWidgetContainers();
        ShortcutAndWidgetContainer container = containers.get(pageIndex);
        if (container != null) {
            int itemCount = container.getChildCount();
            for (int itemIdx = 0; itemIdx < itemCount; itemIdx++) {
                View item = container.getChildAt(itemIdx);
                ItemInfo info = (ItemInfo) item.getTag();
                if ((info instanceof FolderInfo) && (item instanceof FolderIcon)) {
                    FolderIcon folderIcon = (FolderIcon) item;
                    Folder folder = folderIcon.getFolder();
                    ArrayList<View> folderChildren = folder.getItemsInReadingOrder();
                    int childCount = folderChildren.size();
                    for (int childIdx = 0; childIdx < childCount; childIdx++) {
                        View child = folderChildren.get(childIdx);
                        Object childTag = child.getTag();
                        if (childTag instanceof ShortcutInfo) {
                            shortcuts.add(new Pair<>(child, (ItemInfo) childTag));
                        }
                    }
                    shortcuts.add(new Pair<>(item, info));
                } else if ((info instanceof ShortcutInfo) && (item instanceof BubbleTextView)) {
                    shortcuts.add(new Pair<>(item, info));
                }
            }
        }
        return shortcuts;
    }

    public void updateAllShortcuts() {
        updateShortcutsWithPackageName(null);
    }

    public void removeAbandonedPromise(String packageName, UserHandleCompat user) {
        ArrayList<String> packages = new ArrayList<>(1);
        packages.add(packageName);
        LauncherModel.deletePackageFromDatabase(this.mLauncher, packageName, user);
        removeItemsByPackageName(packages, user);
    }

    public void updateRestoreItems(final HashSet<ItemInfo> updates) {
        mapOverItems(true, new ItemOperator() { // from class: net.oneplus.h2launcher.Workspace.30
            @Override // net.oneplus.h2launcher.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v, View parent) {
                if ((info instanceof ShortcutInfo) && (v instanceof BubbleTextView) && updates.contains(info)) {
                    ((BubbleTextView) v).applyState(false);
                } else if ((v instanceof PendingAppWidgetHostView) && (info instanceof LauncherAppWidgetInfo) && updates.contains(info)) {
                    ((PendingAppWidgetHostView) v).applyState();
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void widgetsRestored(ArrayList<LauncherAppWidgetInfo> changedInfo) {
        if (!changedInfo.isEmpty()) {
            DeferredWidgetRefresh widgetRefresh = new DeferredWidgetRefresh(changedInfo, LauncherAppState.getInstance().getAppWidgetHost());
            if (LauncherModel.getProviderInfo(getContext(), changedInfo.get(0).providerName, changedInfo.get(0).user) != null) {
                widgetRefresh.run();
                return;
            }
            Iterator<LauncherAppWidgetInfo> it = changedInfo.iterator();
            while (it.hasNext()) {
                LauncherAppWidgetInfo info = it.next();
                if (info.hostView instanceof PendingAppWidgetHostView) {
                    info.installProgress = 100;
                    ((PendingAppWidgetHostView) info.hostView).applyState();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOnCustomContentScreen() {
        return getCurrentPage() == getPageIndexForScreenId(CUSTOM_CONTENT_SCREEN_ID);
    }

    public boolean isCustomContentPageIndex(int index) {
        return index == getPageIndexForScreenId(CUSTOM_CONTENT_SCREEN_ID);
    }

    void moveToScreen(int page, boolean animate) {
        if (!workspaceInModalState()) {
            if (animate) {
                snapToPage(page);
            } else {
                setCurrentPage(page);
            }
        }
        View child = getChildAt(page);
        if (child != null) {
            child.requestFocus();
        }
    }

    void moveToDefaultScreenIfNecessary() {
        if (getPageNearestToCenterOfScreen() == getPageIndexForScreenId(CUSTOM_CONTENT_SCREEN_ID)) {
            setCurrentPage(this.mDefaultPage);
            this.mLauncher.getDragLayer().setBackgroundAlpha(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void moveToDefaultScreen(boolean animate) {
        moveToScreen(this.mDefaultPage, animate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void moveToAlternateScreen(boolean animate) {
        if (isOnCustomContentScreen()) {
            moveToDefaultScreen(animate);
        } else {
            moveToCustomContentScreen(animate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void moveToCustomContentScreen(boolean animate) {
        if (hasCustomContent()) {
            int ccIndex = getPageIndexForScreenId(CUSTOM_CONTENT_SCREEN_ID);
            if (animate) {
                snapToPage(ccIndex);
            } else {
                setCurrentPage(ccIndex);
            }
            View child = getChildAt(ccIndex);
            if (child != null) {
                child.requestFocus();
            }
        }
        exitWidgetResizeMode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public PageIndicator.PageMarkerResources getPageIndicatorMarker(int pageIndex) {
        long screenId = getScreenIdForPageIndex(pageIndex);
        if (screenId == EXTRA_EMPTY_SCREEN_ID) {
            int count = this.mScreenOrder.size() - numCustomPages();
            if (count > 1) {
                return new PageIndicator.PageMarkerResources(R.drawable.ic_pageindicator_current, R.drawable.ic_pageindicator_add);
            }
        }
        if (screenId == CUSTOM_CONTENT_SCREEN_ID && numCustomPages() == 1) {
            return new PageIndicator.PageMarkerResources(R.drawable.ic_pageindicator_current, R.drawable.ic_pageindicator_add, R.drawable.ic_menu);
        }
        return super.getPageIndicatorMarker(pageIndex);
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected String getPageIndicatorDescription() {
        String settings = getResources().getString(R.string.settings_button_text);
        return getCurrentPageDescription() + ", " + settings;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public String getCurrentPageDescription() {
        if (hasCustomContent() && getNextPage() == 0) {
            return this.mCustomContentDescription;
        }
        int page = this.mNextPage != -1 ? this.mNextPage : this.mCurrentPage;
        return getPageDescription(page);
    }

    private String getPageDescription(int page) {
        int delta = numCustomPages();
        return String.format(getContext().getString(R.string.workspace_scroll_format), Integer.valueOf((page + 1) - delta), Integer.valueOf(getChildCount() - delta));
    }

    @Override // net.oneplus.h2launcher.DropTarget
    public void getLocationInDragLayer(int[] loc) {
        this.mLauncher.getDragLayer().getLocationInDragLayer(this, loc);
    }

    @Override // net.oneplus.h2launcher.Stats.LaunchSourceProvider
    public void fillInLaunchSourceData(Bundle sourceData) {
        sourceData.putString("container", Stats.CONTAINER_HOMESCREEN);
        sourceData.putInt(Stats.SOURCE_EXTRA_CONTAINER_PAGE, getCurrentPage());
    }

    protected void getShelfScrollPageRange(int[] range, boolean enable) {
        boolean isCustomContentExist = getScreenWithId(CUSTOM_CONTENT_SCREEN_ID) != null;
        if (isCustomContentExist) {
            range[0] = enable ? 0 : 1;
        } else {
            range[0] = 0;
        }
        range[1] = Math.max(range[0], getChildCount() - 1);
    }

    public void disableShelfScroll() {
        setEnableShelfScroll(false);
    }

    public void enableShelfScroll() {
        setEnableShelfScroll(true);
    }

    private void setEnableShelfScroll(boolean shelfScroll) {
        this.mEnableShelfScroll = shelfScroll;
        getShelfScrollPageRange(this.mTempVisiblePagesRange, this.mEnableShelfScroll);
        if (this.mIsRtl) {
            this.mFreeScrollMinScrollX = getScrollForPage(this.mTempVisiblePagesRange[1]);
            this.mFreeScrollMaxScrollX = getScrollForPage(this.mTempVisiblePagesRange[0]);
        } else {
            this.mFreeScrollMinScrollX = getScrollForPage(this.mTempVisiblePagesRange[0]);
            this.mFreeScrollMaxScrollX = getScrollForPage(this.mTempVisiblePagesRange[1]);
        }
        getShelfScrollPageRange(this.mTempVisiblePagesRange, this.mEnableShelfScroll);
        if (getCurrentPage() < this.mTempVisiblePagesRange[0]) {
            setCurrentPage(this.mTempVisiblePagesRange[0]);
        } else if (getCurrentPage() > this.mTempVisiblePagesRange[1]) {
            setCurrentPage(this.mTempVisiblePagesRange[1]);
        }
        setEnableOverscroll(shelfScroll);
    }

    public static long getCustomContentScreenId() {
        return CUSTOM_CONTENT_SCREEN_ID;
    }

    public void updateCurrentPageIconState() {
        updateCurrentPageIconState(0);
    }

    public void updateCurrentPageIconState(final int retryCount) {
        if (this.mLauncher.isLoaderTaskFinished() && !this.mWallpaperOffset.mAnimating) {
            Logger.d(TAG, "DynamicIcon Workspace updateCurrentPageIconState success");
            CellLayout child = (CellLayout) getChildAt(getNextPage());
            if (child != null && this.mLauncher.shouldUpdateDynamicIconState()) {
                child.updateDynamicIconState();
                return;
            }
            return;
        }
        Logger.d(TAG, "DynamicIcon Workspace update pending, loadTaskFinish = " + this.mLauncher.isLoaderTaskFinished() + ", wallpaperAnimating = " + this.mWallpaperOffset.mAnimating + ", retryCount = " + retryCount);
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.Workspace.31
            @Override // java.lang.Runnable
            public void run() {
                Workspace.this.updateCurrentPageIconState(retryCount + 1);
            }
        };
        if (retryCount < 3) {
            Handler handler = getHandler();
            if (handler != null) {
                handler.postDelayed(r, PENDING_DYNAMIC_ICON_DELAY);
                return;
            }
            return;
        }
        if (retryCount == 3) {
            TaskWorker.get().postUIIdle(r);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void markCellsAsOccupiedForView() {
        ViewParent shortcutAndWidgetContainer;
        CellLayout cellLayout;
        if (this.mDragInfo != null) {
            View cell = this.mDragInfo.cell;
            if (cell != null && (shortcutAndWidgetContainer = cell.getParent()) != null && (shortcutAndWidgetContainer.getParent() instanceof CellLayout) && (cellLayout = (CellLayout) shortcutAndWidgetContainer.getParent()) != null) {
                cellLayout.markCellsAsOccupiedForView(cell);
            }
            this.mDragInfo = null;
        }
    }

    @Override // net.oneplus.h2launcher.PagedView
    public int getNextPage() {
        return super.getNextPage();
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected boolean rescheduleMeasure(int width, int height) {
        boolean reschedule = width > height || getResources().getConfiguration().orientation == 2;
        if (reschedule) {
            Logger.d(TAG, "rescheduleMeasure# size: %dx%d, orientation: %d", Integer.valueOf(width), Integer.valueOf(height), Integer.valueOf(getResources().getConfiguration().orientation));
        }
        return reschedule;
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected void onRescheduleMeasure(int width, int height) {
        this.mHandler.removeMessages(1);
        this.mHandler.sendEmptyMessage(1);
        this.mHandler.removeMessages(2);
        this.mHandler.sendEmptyMessageDelayed(2, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DeferredWidgetRefresh implements Runnable {
        private final LauncherAppWidgetHost mHost;
        private final ArrayList<LauncherAppWidgetInfo> mInfos;
        private final Handler mHandler = new Handler();
        private boolean mRefreshPending = true;

        public DeferredWidgetRefresh(ArrayList<LauncherAppWidgetInfo> infos, LauncherAppWidgetHost host) {
            this.mInfos = infos;
            this.mHost = host;
            this.mHost.addProviderChangeListener(this);
            this.mHandler.postDelayed(this, 10000L);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mHost.removeProviderChangeListener(this);
            this.mHandler.removeCallbacks(this);
            if (this.mRefreshPending) {
                this.mRefreshPending = false;
                Iterator<LauncherAppWidgetInfo> it = this.mInfos.iterator();
                while (it.hasNext()) {
                    LauncherAppWidgetInfo info = it.next();
                    if (info.hostView instanceof PendingAppWidgetHostView) {
                        PendingAppWidgetHostView view = (PendingAppWidgetHostView) info.hostView;
                        Workspace.this.mLauncher.removeAppWidget(info);
                        CellLayout cl = (CellLayout) view.getParent().getParent();
                        cl.removeView(view);
                        Workspace.this.mLauncher.bindAppWidget(info);
                    }
                }
            }
        }
    }

    public void setWorkspaceYTranslationAndAlpha(float translation, float alpha, boolean includeShortcutWidgetContainer) {
        setWorkspaceTranslationAndAlpha(Direction.Y, translation, alpha, includeShortcutWidgetContainer);
    }

    private void setWorkspaceTranslationAndAlpha(Direction direction, float translation, float alpha, boolean includeShortcutWidgetContainer) {
        CellLayout child;
        CellLayout child2;
        Property<View, Float> property = direction.viewProperty;
        this.mPageAlpha[direction.ordinal()] = alpha;
        float finalAlpha = this.mPageAlpha[0] * this.mPageAlpha[1];
        CellLayout currentChild = (CellLayout) getChildAt(getCurrentPage());
        if (currentChild != null) {
            property.set(currentChild, Float.valueOf(translation));
            currentChild.setAlpha(finalAlpha);
            if (includeShortcutWidgetContainer && Float.compare(currentChild.getShortcutsAndWidgets().getAlpha(), 0.0f) == 0) {
                currentChild.setShortcutAndWidgetAlpha(1.0f);
            }
        }
        if (!this.mLauncher.isIconRearrangementMode()) {
            int currentPage = getCurrentPage();
            if (currentPage >= 1 && !isCustomContentPageIndex(currentPage - 1) && (child2 = (CellLayout) getChildAt(currentPage - 1)) != null) {
                property.set(child2, Float.valueOf(translation));
                child2.setAlpha(finalAlpha);
            }
            if (currentPage < getPageCount() - 1 && !isCustomContentPageIndex(currentPage + 1) && (child = (CellLayout) getChildAt(currentPage + 1)) != null) {
                property.set(child, Float.valueOf(translation));
                child.setAlpha(finalAlpha);
            }
            if (Float.compare(translation, 0.0f) == 0) {
                for (int i = getChildCount() - 1; i >= 0; i--) {
                    View child3 = getChildAt(i);
                    if (child3 != null) {
                        property.set(child3, Float.valueOf(translation));
                        child3.setAlpha(finalAlpha);
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Direction {
        X(View.TRANSLATION_X),
        Y(View.TRANSLATION_Y);

        private final Property<View, Float> viewProperty;

        Direction(Property property) {
            this.viewProperty = property;
        }
    }
}
