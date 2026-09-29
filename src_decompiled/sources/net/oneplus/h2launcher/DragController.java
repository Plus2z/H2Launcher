package net.oneplus.h2launcher;

import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TouchController;

/* loaded from: classes.dex */
public class DragController implements TouchController {
    private static final float MAX_FLING_DEGREES = 35.0f;
    private static final boolean PROFILE_DRAWING_DURING_DRAG = false;
    public static final int RESCROLL_DELAY = 900;
    public static final int SCROLL_DELAY = 500;
    static final int SCROLL_LEFT = 0;
    static final int SCROLL_NONE = -1;
    private static final int SCROLL_OUTSIDE_ZONE = 0;
    static final int SCROLL_RIGHT = 1;
    private static final int SCROLL_WAITING_IN_ZONE = 1;
    private static final String TAG = "Launcher.DragController";
    private DropTarget.DragObject mDragObject;
    DragScroller mDragScroller;
    private boolean mDragging;
    private DropTarget mFlingToDeleteDropTarget;
    protected int mFlingToDeleteThresholdVelocity;
    private Handler mHandler;
    private InputMethodManager mInputMethodManager;
    private boolean mIsAccessibleDrag;
    private final boolean mIsRtl;
    private DropTarget mLastDropTarget;
    Launcher mLauncher;
    private int mMotionDownX;
    private int mMotionDownY;
    private View mMoveTarget;
    private View mScrollView;
    private int mScrollZone;
    private VelocityTracker mVelocityTracker;
    private IBinder mWindowToken;
    public static int DRAG_ACTION_MOVE = 0;
    public static int DRAG_ACTION_COPY = 1;
    private Rect mRectTemp = new Rect();
    private final int[] mCoordinatesTemp = new int[2];
    private ArrayList<DropTarget> mDropTargets = new ArrayList<>();
    private ArrayList<DragListener> mListeners = new ArrayList<>();
    int mScrollState = 0;
    private ScrollRunnable mScrollRunnable = new ScrollRunnable();
    int[] mLastTouch = new int[2];
    long mLastTouchUpTime = -1;
    int mDistanceSinceScroll = 0;
    private int[] mTmpPoint = new int[2];
    private Rect mDragLayerRect = new Rect();
    private final int TWO_FINGER_SCROLL_NONE_SCROLL_X = -1;
    private final int TWO_FINGER_SCROLL_THRESHOLD = 150;
    private float mSecondDownX = 0.0f;
    private int mSecondPointIndex = 0;
    private float mSecondStartScrollX = -1.0f;

    /* loaded from: classes.dex */
    public interface DragListener {
        void onDragEnd();

        void onDragStart(DragSource dragSource, Object obj, int i);
    }

    public DragController(Launcher launcher) {
        Resources r = launcher.getResources();
        this.mLauncher = launcher;
        this.mHandler = new Handler();
        this.mScrollZone = r.getDimensionPixelSize(R.dimen.scroll_zone);
        this.mVelocityTracker = VelocityTracker.obtain();
        float density = r.getDisplayMetrics().density;
        this.mFlingToDeleteThresholdVelocity = (int) (r.getInteger(R.integer.config_flingToDeleteMinVelocity) * density);
        this.mIsRtl = Utilities.isRtl(r);
    }

    public boolean dragging() {
        return this.mDragging;
    }

    public void startDrag(View v, Bitmap bmp, DragSource source, Object dragInfo, Rect viewImageBounds, int dragAction, float initialDragViewScale) {
        int[] loc = this.mCoordinatesTemp;
        this.mLauncher.getDragLayer().getLocationInDragLayer(v, loc);
        int dragLayerX = loc[0] + viewImageBounds.left + ((int) (((bmp.getWidth() * initialDragViewScale) - bmp.getWidth()) / 2.0f));
        int dragLayerY = loc[1] + viewImageBounds.top + ((int) (((bmp.getHeight() * initialDragViewScale) - bmp.getHeight()) / 2.0f));
        startDrag(v, bmp, dragLayerX, dragLayerY, source, dragInfo, dragAction, null, null, initialDragViewScale, false);
        if (dragAction == DRAG_ACTION_MOVE) {
            v.setVisibility(8);
        }
    }

    public DragView startDrag(View v, Bitmap b, int dragLayerX, int dragLayerY, DragSource source, Object dragInfo, int dragAction, Point dragOffset, Rect dragRegion, float initialDragViewScale, boolean accessible) {
        if (this.mInputMethodManager == null) {
            this.mInputMethodManager = (InputMethodManager) this.mLauncher.getSystemService("input_method");
        }
        this.mInputMethodManager.hideSoftInputFromWindow(this.mWindowToken, 0);
        Iterator<DragListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            DragListener listener = it.next();
            listener.onDragStart(source, dragInfo, dragAction);
        }
        int registrationX = this.mMotionDownX - dragLayerX;
        int registrationY = this.mMotionDownY - dragLayerY;
        int dragRegionLeft = dragRegion == null ? 0 : dragRegion.left;
        int dragRegionTop = dragRegion == null ? 0 : dragRegion.top;
        this.mDragging = true;
        this.mIsAccessibleDrag = accessible;
        this.mDragObject = new DropTarget.DragObject();
        this.mDragObject.dragComplete = false;
        if (this.mIsAccessibleDrag) {
            this.mDragObject.xOffset = b.getWidth() / 2;
            this.mDragObject.yOffset = b.getHeight() / 2;
            this.mDragObject.accessibleDrag = true;
        } else {
            this.mDragObject.xOffset = this.mMotionDownX - (dragLayerX + dragRegionLeft);
            this.mDragObject.yOffset = this.mMotionDownY - (dragLayerY + dragRegionTop);
        }
        this.mDragObject.dragSource = source;
        this.mDragObject.dragInfo = dragInfo;
        DropTarget.DragObject dragObject = this.mDragObject;
        DragView dragView = new DragView(this.mLauncher, v, b, registrationX, registrationY, 0, 0, b.getWidth(), b.getHeight(), initialDragViewScale);
        dragObject.dragView = dragView;
        if (dragOffset != null) {
            dragView.setDragVisualizeOffset(new Point(dragOffset));
        }
        if (dragRegion != null) {
            dragView.setDragRegion(new Rect(dragRegion));
        }
        this.mLauncher.getDragLayer().performHapticFeedback(0);
        dragView.show(this.mMotionDownX, this.mMotionDownY);
        handleMoveEvent(this.mMotionDownX, this.mMotionDownY);
        return dragView;
    }

    Bitmap getViewBitmap(View v) {
        v.clearFocus();
        v.setPressed(false);
        boolean willNotCache = v.willNotCacheDrawing();
        v.setWillNotCacheDrawing(false);
        int color = v.getDrawingCacheBackgroundColor();
        v.setDrawingCacheBackgroundColor(0);
        float alpha = v.getAlpha();
        v.setAlpha(1.0f);
        if (color != 0) {
            v.destroyDrawingCache();
        }
        v.buildDrawingCache();
        Bitmap cacheBitmap = v.getDrawingCache();
        if (cacheBitmap == null) {
            Log.e(TAG, "failed getViewBitmap(" + v + ")", new RuntimeException());
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(cacheBitmap);
        v.destroyDrawingCache();
        v.setAlpha(alpha);
        v.setWillNotCacheDrawing(willNotCache);
        v.setDrawingCacheBackgroundColor(color);
        return createBitmap;
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        return this.mDragging;
    }

    public boolean isDragging() {
        return this.mDragging;
    }

    public void cancelDrag() {
        if (this.mDragging) {
            if (this.mLastDropTarget != null) {
                this.mLastDropTarget.onDragExit(this.mDragObject);
            }
            this.mDragObject.deferDragViewCleanupPostAnimation = false;
            this.mDragObject.cancelled = true;
            this.mDragObject.dragComplete = true;
            this.mDragObject.dragSource.onDropCompleted(null, this.mDragObject, false, false);
        }
        endDrag();
    }

    public void onAppsRemoved(ArrayList<String> packageNames, HashSet<ComponentName> cns) {
        ShortcutInfo dragInfo;
        Intent intent;
        ComponentName cn;
        if (this.mDragObject != null) {
            Object rawDragInfo = this.mDragObject.dragInfo;
            if ((rawDragInfo instanceof ShortcutInfo) && (dragInfo = (ShortcutInfo) rawDragInfo) != null && (intent = dragInfo.intent) != null && (cn = intent.getComponent()) != null) {
                Iterator<ComponentName> it = cns.iterator();
                while (it.hasNext()) {
                    ComponentName componentName = it.next();
                    boolean isSameComponent = cn.equals(componentName);
                    boolean isSamePackage = packageNames == null ? false : packageNames.contains(cn.getPackageName());
                    if (isSameComponent || isSamePackage) {
                        cancelDrag();
                        return;
                    }
                }
            }
        }
    }

    private void endDrag() {
        if (this.mDragging) {
            this.mDragging = false;
            this.mIsAccessibleDrag = false;
            clearScrollRunnable();
            boolean isDeferred = false;
            if (this.mDragObject.dragView != null && !(isDeferred = this.mDragObject.deferDragViewCleanupPostAnimation)) {
                this.mDragObject.dragView.remove();
            }
            if (!isDeferred) {
                Iterator it = new ArrayList(this.mListeners).iterator();
                while (it.hasNext()) {
                    DragListener listener = (DragListener) it.next();
                    listener.onDragEnd();
                }
            }
        }
        releaseVelocityTracker();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDeferredEndDrag(DragView dragView) {
        dragView.remove();
        if (this.mDragObject.deferDragViewCleanupPostAnimation) {
            Iterator it = new ArrayList(this.mListeners).iterator();
            while (it.hasNext()) {
                DragListener listener = (DragListener) it.next();
                listener.onDragEnd();
            }
        }
    }

    public void onDeferredEndFling(DropTarget.DragObject d) {
        d.dragSource.onFlingToDeleteCompleted();
    }

    private int[] getClampedDragLayerPos(float x, float y) {
        this.mLauncher.getDragLayer().getLocalVisibleRect(this.mDragLayerRect);
        this.mTmpPoint[0] = (int) Math.max(this.mDragLayerRect.left, Math.min(x, this.mDragLayerRect.right - 1));
        this.mTmpPoint[1] = (int) Math.max(this.mDragLayerRect.top, Math.min(y, this.mDragLayerRect.bottom - 1));
        return this.mTmpPoint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLastGestureUpTime() {
        return this.mDragging ? System.currentTimeMillis() : this.mLastTouchUpTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetLastGestureUpTime() {
        this.mLastTouchUpTime = -1L;
    }

    @Override // net.oneplus.h2launcher.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        if (this.mIsAccessibleDrag) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(ev);
        int action = ev.getAction();
        int[] dragLayerPos = getClampedDragLayerPos(ev.getX(), ev.getY());
        int dragLayerX = dragLayerPos[0];
        int dragLayerY = dragLayerPos[1];
        switch (action) {
            case 0:
                this.mMotionDownX = dragLayerX;
                this.mMotionDownY = dragLayerY;
                this.mLastDropTarget = null;
                break;
            case 1:
                this.mLastTouchUpTime = System.currentTimeMillis();
                if (this.mDragging) {
                    PointF vec = isFlingingToDelete(this.mDragObject.dragSource);
                    if (!DeleteDropTarget.supportsDrop(this.mDragObject.dragInfo)) {
                        vec = null;
                    }
                    if (vec != null) {
                        StyleManager.getInstance();
                        if (StyleManager.isStandardLayout()) {
                            dropOnFlingToDeleteTarget(dragLayerX, dragLayerY, vec);
                        }
                    }
                    drop(dragLayerX, dragLayerY);
                }
                endDrag();
                break;
            case 3:
                cancelDrag();
                break;
        }
        return this.mDragging;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMoveTarget(View view) {
        this.mMoveTarget = view;
    }

    public boolean dispatchUnhandledMove(View focused, int direction) {
        return this.mMoveTarget != null && this.mMoveTarget.dispatchUnhandledMove(focused, direction);
    }

    private void clearScrollRunnable() {
        this.mHandler.removeCallbacks(this.mScrollRunnable);
        if (this.mScrollState == 1) {
            this.mScrollState = 0;
            this.mScrollRunnable.setDirection(1);
            this.mDragScroller.onExitScrollArea();
            this.mLauncher.getDragLayer().onExitScrollArea();
        }
    }

    private void handleMoveEvent(int x, int y) {
        this.mDragObject.dragView.move(x, y);
        int[] coordinates = this.mCoordinatesTemp;
        DropTarget dropTarget = findDropTarget(x, y, coordinates);
        this.mDragObject.x = coordinates[0];
        this.mDragObject.y = coordinates[1];
        checkTouchMove(dropTarget);
        this.mDistanceSinceScroll = (int) (this.mDistanceSinceScroll + Math.hypot(this.mLastTouch[0] - x, this.mLastTouch[1] - y));
        this.mLastTouch[0] = x;
        this.mLastTouch[1] = y;
        checkScrollState(x, y);
    }

    public void forceTouchMove() {
        int[] dummyCoordinates = this.mCoordinatesTemp;
        DropTarget dropTarget = findDropTarget(this.mLastTouch[0], this.mLastTouch[1], dummyCoordinates);
        this.mDragObject.x = dummyCoordinates[0];
        this.mDragObject.y = dummyCoordinates[1];
        checkTouchMove(dropTarget);
    }

    private void checkTouchMove(DropTarget dropTarget) {
        if (dropTarget != null) {
            if (this.mLastDropTarget != dropTarget) {
                if (this.mLastDropTarget != null) {
                    this.mLastDropTarget.onDragExit(this.mDragObject);
                }
                dropTarget.onDragEnter(this.mDragObject);
            }
            dropTarget.onDragOver(this.mDragObject);
        } else if (this.mLastDropTarget != null) {
            this.mLastDropTarget.onDragExit(this.mDragObject);
        }
        this.mLastDropTarget = dropTarget;
    }

    void checkScrollState(int x, int y) {
        int slop = ViewConfiguration.get(this.mLauncher).getScaledWindowTouchSlop();
        int delay = this.mDistanceSinceScroll < slop ? RESCROLL_DELAY : 500;
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        int forwardDirection = this.mIsRtl ? 1 : 0;
        int backwardsDirection = this.mIsRtl ? 0 : 1;
        if (x < this.mScrollZone) {
            if (this.mScrollState == 0) {
                this.mScrollState = 1;
                if (this.mDragScroller.onEnterScrollArea(x, y, forwardDirection)) {
                    dragLayer.onEnterScrollArea(forwardDirection);
                    this.mScrollRunnable.setDirection(forwardDirection);
                    this.mHandler.postDelayed(this.mScrollRunnable, delay);
                    return;
                }
                return;
            }
            return;
        }
        if (x > this.mScrollView.getWidth() - this.mScrollZone) {
            if (this.mScrollState == 0) {
                this.mScrollState = 1;
                if (this.mDragScroller.onEnterScrollArea(x, y, backwardsDirection)) {
                    dragLayer.onEnterScrollArea(backwardsDirection);
                    this.mScrollRunnable.setDirection(backwardsDirection);
                    this.mHandler.postDelayed(this.mScrollRunnable, delay);
                    return;
                }
                return;
            }
            return;
        }
        clearScrollRunnable();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // net.oneplus.h2launcher.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent ev) {
        if (!this.mDragging || this.mIsAccessibleDrag) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(ev);
        int action = ev.getActionMasked();
        int[] dragLayerPos = getClampedDragLayerPos(ev.getX(), ev.getY());
        int dragLayerX = dragLayerPos[0];
        int dragLayerY = dragLayerPos[1];
        Workspace workspace = this.mLauncher.getWorkspace();
        int pointerCount = ev.getPointerCount();
        switch (action) {
            case 0:
                this.mMotionDownX = dragLayerX;
                this.mMotionDownY = dragLayerY;
                if (dragLayerX < this.mScrollZone || dragLayerX > this.mScrollView.getWidth() - this.mScrollZone) {
                    this.mScrollState = 1;
                    this.mHandler.postDelayed(this.mScrollRunnable, 500L);
                } else {
                    this.mScrollState = 0;
                }
                handleMoveEvent(dragLayerX, dragLayerY);
                return true;
            case 1:
                handleMoveEvent(dragLayerX, dragLayerY);
                this.mHandler.removeCallbacks(this.mScrollRunnable);
                if (this.mDragging) {
                    PointF vec = isFlingingToDelete(this.mDragObject.dragSource);
                    if (!DeleteDropTarget.supportsDrop(this.mDragObject.dragInfo)) {
                        vec = null;
                    }
                    if (vec != null) {
                        StyleManager.getInstance();
                        if (StyleManager.isStandardLayout()) {
                            dropOnFlingToDeleteTarget(dragLayerX, dragLayerY, vec);
                        }
                    }
                    drop(dragLayerX, dragLayerY);
                }
                endDrag();
                return true;
            case 2:
                handleMoveEvent(dragLayerX, dragLayerY);
                if (pointerCount == 2 && !isFolderOpen()) {
                    if (this.mSecondStartScrollX == -1.0f || this.mSecondPointIndex > 1) {
                        this.mSecondPointIndex = 1;
                        this.mSecondDownX = ev.getX(this.mSecondPointIndex);
                        this.mSecondStartScrollX = workspace.getScrollX();
                    }
                    if (this.mSecondPointIndex >= pointerCount) {
                        return true;
                    }
                    float moveX = ev.getX(this.mSecondPointIndex);
                    float disX = this.mSecondDownX - moveX;
                    if (workspace != null) {
                        boolean isOverScroll = false;
                        boolean scrollLeft = disX < 0.0f;
                        int currentPage = workspace.getNextPage();
                        int childCount = workspace.getChildCount();
                        if (scrollLeft) {
                            if (this.mIsRtl) {
                                if (currentPage == childCount - 1) {
                                    isOverScroll = true;
                                }
                            } else if (currentPage == 0 || (currentPage == 1 && workspace.hasCustomContent())) {
                                isOverScroll = true;
                            }
                        } else if (this.mIsRtl) {
                            if (currentPage == 0 || (currentPage == 1 && workspace.hasCustomContent())) {
                                isOverScroll = true;
                            }
                        } else if (currentPage == childCount - 1) {
                            isOverScroll = true;
                        }
                        if (!isOverScroll) {
                            workspace.scrollTo((int) (this.mSecondStartScrollX + disX), 0);
                        } else {
                            workspace.scrollTo((int) this.mSecondStartScrollX, 0);
                        }
                        Folder folder = workspace.getOpenFolder();
                        if (folder != null) {
                            folder.completeDragExit();
                        }
                    }
                }
                return true;
            case 3:
                this.mHandler.removeCallbacks(this.mScrollRunnable);
                cancelDrag();
                if (!StyleManager.getInstance().showSearchBar()) {
                    this.mLauncher.exitSpringLoadedDragModeDelayed(true, 300, null);
                }
                return true;
            case 4:
            default:
                return true;
            case 5:
                if (!isFolderOpen()) {
                    this.mSecondPointIndex = ev.getActionIndex();
                    this.mSecondDownX = ev.getX(this.mSecondPointIndex);
                    this.mSecondStartScrollX = workspace.getScrollX();
                }
                return true;
            case 6:
                if (!isFolderOpen()) {
                    if (pointerCount == 0 || this.mSecondPointIndex >= pointerCount || pointerCount > 2) {
                        cancelDrag();
                        return true;
                    }
                    float secondUpX = ev.getX(this.mSecondPointIndex);
                    float secondDisX = secondUpX - this.mSecondDownX;
                    int currentPage2 = workspace.getNextPage();
                    int childCount2 = workspace.getChildCount();
                    if (secondDisX > 150.0f) {
                        boolean acceptScrollLeft = true;
                        if (this.mIsRtl) {
                            if (currentPage2 == childCount2 - 1) {
                                acceptScrollLeft = false;
                            }
                        } else if (currentPage2 == 0 || (currentPage2 == 1 && workspace.hasCustomContent())) {
                            acceptScrollLeft = false;
                        }
                        if (acceptScrollLeft) {
                            if (this.mIsRtl) {
                                workspace.scrollRight(true);
                            } else {
                                workspace.scrollLeft(true);
                            }
                        } else {
                            workspace.scrollTo((int) this.mSecondStartScrollX, 0);
                        }
                    } else if (secondDisX < -150.0f) {
                        boolean acceptScrollRight = true;
                        if (this.mIsRtl) {
                            if (currentPage2 == 0 || (currentPage2 == 1 && workspace.hasCustomContent())) {
                                acceptScrollRight = false;
                            }
                        } else if (currentPage2 == childCount2 - 1) {
                            acceptScrollRight = false;
                        }
                        if (acceptScrollRight) {
                            if (this.mIsRtl) {
                                workspace.scrollLeft(true);
                            } else {
                                workspace.scrollRight(true);
                            }
                        } else {
                            workspace.scrollTo((int) this.mSecondStartScrollX, 0);
                        }
                    } else {
                        workspace.scrollTo((int) this.mSecondStartScrollX, 0);
                    }
                    this.mSecondStartScrollX = -1.0f;
                }
                return true;
        }
    }

    private boolean isFolderOpen() {
        if (this.mLauncher == null) {
            Logger.w(TAG, "[isFolderOpen] mLauncher is null.");
            return false;
        }
        Workspace workspace = this.mLauncher.getWorkspace();
        if (workspace != null) {
            return workspace.getOpenFolder() != null;
        }
        Logger.w(TAG, "[isFolderOpen] workspace is null.");
        return false;
    }

    public void prepareAccessibleDrag(int x, int y) {
        this.mMotionDownX = x;
        this.mMotionDownY = y;
        this.mLastDropTarget = null;
    }

    public void completeAccessibleDrag(int[] location) {
        int[] coordinates = this.mCoordinatesTemp;
        DropTarget dropTarget = findDropTarget(location[0], location[1], coordinates);
        this.mDragObject.x = coordinates[0];
        this.mDragObject.y = coordinates[1];
        checkTouchMove(dropTarget);
        dropTarget.prepareAccessibilityDrop();
        drop(location[0], location[1]);
        endDrag();
    }

    private PointF isFlingingToDelete(DragSource source) {
        if (this.mFlingToDeleteDropTarget != null && source.supportsFlingToDelete()) {
            ViewConfiguration config = ViewConfiguration.get(this.mLauncher);
            this.mVelocityTracker.computeCurrentVelocity(1000, config.getScaledMaximumFlingVelocity());
            if (this.mVelocityTracker.getYVelocity() < this.mFlingToDeleteThresholdVelocity) {
                PointF vel = new PointF(this.mVelocityTracker.getXVelocity(), this.mVelocityTracker.getYVelocity());
                PointF upVec = new PointF(0.0f, -1.0f);
                float theta = (float) Math.acos(((vel.x * upVec.x) + (vel.y * upVec.y)) / (vel.length() * upVec.length()));
                if (theta <= Math.toRadians(35.0d)) {
                    return vel;
                }
            }
            return null;
        }
        return null;
    }

    private void dropOnFlingToDeleteTarget(float x, float y, PointF vel) {
        int[] coordinates = this.mCoordinatesTemp;
        this.mDragObject.x = coordinates[0];
        this.mDragObject.y = coordinates[1];
        if (this.mLastDropTarget != null && this.mFlingToDeleteDropTarget != this.mLastDropTarget) {
            this.mLastDropTarget.onDragExit(this.mDragObject);
        }
        boolean accepted = false;
        this.mFlingToDeleteDropTarget.onDragEnter(this.mDragObject);
        this.mDragObject.dragComplete = true;
        this.mFlingToDeleteDropTarget.onDragExit(this.mDragObject);
        if (this.mFlingToDeleteDropTarget.acceptDrop(this.mDragObject)) {
            this.mFlingToDeleteDropTarget.onFlingToDelete(this.mDragObject, vel);
            accepted = true;
        }
        this.mDragObject.dragSource.onDropCompleted((View) this.mFlingToDeleteDropTarget, this.mDragObject, true, accepted);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void drop(float x, float y) {
        int[] coordinates = this.mCoordinatesTemp;
        DropTarget findDropTarget = findDropTarget((int) x, (int) y, coordinates);
        this.mDragObject.x = coordinates[0];
        this.mDragObject.y = coordinates[1];
        boolean accepted = false;
        if (findDropTarget != 0) {
            this.mDragObject.dragComplete = true;
            findDropTarget.onDragExit(this.mDragObject);
            if (findDropTarget.acceptDrop(this.mDragObject)) {
                findDropTarget.onDrop(this.mDragObject);
                accepted = true;
            }
        }
        this.mDragObject.dragSource.onDropCompleted((View) findDropTarget, this.mDragObject, false, accepted);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DropTarget findDropTarget(int x, int y, int[] dropCoordinates) {
        Rect r = this.mRectTemp;
        ArrayList<DropTarget> dropTargets = this.mDropTargets;
        int count = dropTargets.size();
        for (int i = count - 1; i >= 0; i--) {
            DropTarget dropTarget = dropTargets.get(i);
            if (dropTarget.isDropEnabled()) {
                dropTarget.getHitRectRelativeToDragLayer(r);
                this.mDragObject.x = x;
                this.mDragObject.y = y;
                if (r.contains(x, y)) {
                    dropCoordinates[0] = x;
                    dropCoordinates[1] = y;
                    this.mLauncher.getDragLayer().mapCoordInSelfToDescendent((View) dropTarget, dropCoordinates);
                    return dropTarget;
                }
            }
        }
        return null;
    }

    public void setDragScoller(DragScroller scroller) {
        this.mDragScroller = scroller;
    }

    public void setWindowToken(IBinder token) {
        this.mWindowToken = token;
    }

    public void addDragListener(DragListener l) {
        this.mListeners.add(l);
    }

    public void removeDragListener(DragListener l) {
        this.mListeners.remove(l);
    }

    public void addDropTarget(DropTarget target) {
        this.mDropTargets.add(target);
    }

    public void removeDropTarget(DropTarget target) {
        this.mDropTargets.remove(target);
    }

    public void setFlingToDeleteDropTarget(DropTarget target) {
        this.mFlingToDeleteDropTarget = target;
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent ev) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
    }

    private void releaseVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void setScrollView(View v) {
        this.mScrollView = v;
    }

    DragView getDragView() {
        return this.mDragObject.dragView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ScrollRunnable implements Runnable {
        private int mDirection;

        ScrollRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DragController.this.mDragScroller != null) {
                if (this.mDirection == 0) {
                    DragController.this.mDragScroller.scrollLeft();
                } else {
                    DragController.this.mDragScroller.scrollRight();
                }
                DragController.this.mScrollState = 0;
                DragController.this.mDistanceSinceScroll = 0;
                DragController.this.mDragScroller.onExitScrollArea();
                DragController.this.mLauncher.getDragLayer().onExitScrollArea();
                if (DragController.this.isDragging()) {
                    DragController.this.checkScrollState(DragController.this.mLastTouch[0], DragController.this.mLastTouch[1]);
                }
            }
        }

        void setDirection(int direction) {
            this.mDirection = direction;
        }
    }
}
