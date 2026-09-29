package android.support.v4.view;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.os.BuildCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.view.Display;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    static final ViewCompatBaseImpl IMPL;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;

    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;

    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;

    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;

    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;

    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;

    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;

    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;

    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;

    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;

    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    private static final String TAG = "ViewCompat";

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface ScrollIndicators {
    }

    /* loaded from: classes.dex */
    static class ViewCompatBaseImpl {
        static boolean sAccessibilityDelegateCheckFailed = false;
        static Field sAccessibilityDelegateField;
        private static Method sChildrenDrawingOrderMethod;
        private static Field sMinHeightField;
        private static boolean sMinHeightFieldFetched;
        private static Field sMinWidthField;
        private static boolean sMinWidthFieldFetched;
        private static WeakHashMap<View, String> sTransitionNameMap;
        private Method mDispatchFinishTemporaryDetach;
        private Method mDispatchStartTemporaryDetach;
        private boolean mTempDetachBound;
        WeakHashMap<View, ViewPropertyAnimatorCompat> mViewPropertyAnimatorCompatMap = null;

        ViewCompatBaseImpl() {
        }

        public void setAccessibilityDelegate(View v, @Nullable AccessibilityDelegateCompat delegate) {
            v.setAccessibilityDelegate(delegate == null ? null : delegate.getBridge());
        }

        public boolean hasAccessibilityDelegate(View v) {
            if (sAccessibilityDelegateCheckFailed) {
                return false;
            }
            if (sAccessibilityDelegateField == null) {
                try {
                    sAccessibilityDelegateField = View.class.getDeclaredField("mAccessibilityDelegate");
                    sAccessibilityDelegateField.setAccessible(true);
                } catch (Throwable th) {
                    sAccessibilityDelegateCheckFailed = true;
                    return false;
                }
            }
            try {
                return sAccessibilityDelegateField.get(v) != null;
            } catch (Throwable th2) {
                sAccessibilityDelegateCheckFailed = true;
                return false;
            }
        }

        public void onInitializeAccessibilityNodeInfo(View v, AccessibilityNodeInfoCompat info) {
            v.onInitializeAccessibilityNodeInfo((AccessibilityNodeInfo) info.getInfo());
        }

        public boolean startDragAndDrop(View v, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
            return v.startDrag(data, shadowBuilder, localState, flags);
        }

        public void cancelDragAndDrop(View v) {
        }

        public void updateDragShadow(View v, View.DragShadowBuilder shadowBuilder) {
        }

        public boolean hasTransientState(View view) {
            return false;
        }

        public void setHasTransientState(View view, boolean hasTransientState) {
        }

        public void postInvalidateOnAnimation(View view) {
            view.invalidate();
        }

        public void postInvalidateOnAnimation(View view, int left, int top, int right, int bottom) {
            view.invalidate(left, top, right, bottom);
        }

        public void postOnAnimation(View view, Runnable action) {
            view.postDelayed(action, getFrameTime());
        }

        public void postOnAnimationDelayed(View view, Runnable action, long delayMillis) {
            view.postDelayed(action, getFrameTime() + delayMillis);
        }

        long getFrameTime() {
            return ValueAnimator.getFrameDelay();
        }

        public int getImportantForAccessibility(View view) {
            return 0;
        }

        public void setImportantForAccessibility(View view, int mode) {
        }

        public boolean isImportantForAccessibility(View view) {
            return true;
        }

        public boolean performAccessibilityAction(View view, int action, Bundle arguments) {
            return false;
        }

        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            return null;
        }

        public int getLabelFor(View view) {
            return 0;
        }

        public void setLabelFor(View view, int id) {
        }

        public void setLayerPaint(View view, Paint paint) {
            view.setLayerType(view.getLayerType(), paint);
            view.invalidate();
        }

        public int getLayoutDirection(View view) {
            return 0;
        }

        public void setLayoutDirection(View view, int layoutDirection) {
        }

        public ViewParent getParentForAccessibility(View view) {
            return view.getParent();
        }

        public int getAccessibilityLiveRegion(View view) {
            return 0;
        }

        public void setAccessibilityLiveRegion(View view, int mode) {
        }

        public int getPaddingStart(View view) {
            return view.getPaddingLeft();
        }

        public int getPaddingEnd(View view) {
            return view.getPaddingRight();
        }

        public void setPaddingRelative(View view, int start, int top, int end, int bottom) {
            view.setPadding(start, top, end, bottom);
        }

        public void dispatchStartTemporaryDetach(View view) {
            if (!this.mTempDetachBound) {
                bindTempDetach();
            }
            if (this.mDispatchStartTemporaryDetach != null) {
                try {
                    this.mDispatchStartTemporaryDetach.invoke(view, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.d(ViewCompat.TAG, "Error calling dispatchStartTemporaryDetach", e);
                    return;
                }
            }
            view.onStartTemporaryDetach();
        }

        public void dispatchFinishTemporaryDetach(View view) {
            if (!this.mTempDetachBound) {
                bindTempDetach();
            }
            if (this.mDispatchFinishTemporaryDetach != null) {
                try {
                    this.mDispatchFinishTemporaryDetach.invoke(view, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.d(ViewCompat.TAG, "Error calling dispatchFinishTemporaryDetach", e);
                    return;
                }
            }
            view.onFinishTemporaryDetach();
        }

        public boolean hasOverlappingRendering(View view) {
            return true;
        }

        private void bindTempDetach() {
            try {
                this.mDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
                this.mDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
            } catch (NoSuchMethodException e) {
                Log.e(ViewCompat.TAG, "Couldn't find method", e);
            }
            this.mTempDetachBound = true;
        }

        public int getMinimumWidth(View view) {
            if (!sMinWidthFieldFetched) {
                try {
                    sMinWidthField = View.class.getDeclaredField("mMinWidth");
                    sMinWidthField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                }
                sMinWidthFieldFetched = true;
            }
            if (sMinWidthField != null) {
                try {
                    return ((Integer) sMinWidthField.get(view)).intValue();
                } catch (Exception e2) {
                }
            }
            return 0;
        }

        public int getMinimumHeight(View view) {
            if (!sMinHeightFieldFetched) {
                try {
                    sMinHeightField = View.class.getDeclaredField("mMinHeight");
                    sMinHeightField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                }
                sMinHeightFieldFetched = true;
            }
            if (sMinHeightField != null) {
                try {
                    return ((Integer) sMinHeightField.get(view)).intValue();
                } catch (Exception e2) {
                }
            }
            return 0;
        }

        public ViewPropertyAnimatorCompat animate(View view) {
            if (this.mViewPropertyAnimatorCompatMap == null) {
                this.mViewPropertyAnimatorCompatMap = new WeakHashMap<>();
            }
            ViewPropertyAnimatorCompat vpa = this.mViewPropertyAnimatorCompatMap.get(view);
            if (vpa == null) {
                ViewPropertyAnimatorCompat vpa2 = new ViewPropertyAnimatorCompat(view);
                this.mViewPropertyAnimatorCompatMap.put(view, vpa2);
                return vpa2;
            }
            return vpa;
        }

        public void setTransitionName(View view, String transitionName) {
            if (sTransitionNameMap == null) {
                sTransitionNameMap = new WeakHashMap<>();
            }
            sTransitionNameMap.put(view, transitionName);
        }

        public String getTransitionName(View view) {
            if (sTransitionNameMap == null) {
                return null;
            }
            return sTransitionNameMap.get(view);
        }

        public int getWindowSystemUiVisibility(View view) {
            return 0;
        }

        public void requestApplyInsets(View view) {
        }

        public void setElevation(View view, float elevation) {
        }

        public float getElevation(View view) {
            return 0.0f;
        }

        public void setTranslationZ(View view, float translationZ) {
        }

        public float getTranslationZ(View view) {
            return 0.0f;
        }

        public void setClipBounds(View view, Rect clipBounds) {
        }

        public Rect getClipBounds(View view) {
            return null;
        }

        public void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean enabled) {
            if (sChildrenDrawingOrderMethod == null) {
                try {
                    sChildrenDrawingOrderMethod = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                } catch (NoSuchMethodException e) {
                    Log.e(ViewCompat.TAG, "Unable to find childrenDrawingOrderEnabled", e);
                }
                sChildrenDrawingOrderMethod.setAccessible(true);
            }
            try {
                sChildrenDrawingOrderMethod.invoke(viewGroup, Boolean.valueOf(enabled));
            } catch (IllegalAccessException e2) {
                Log.e(ViewCompat.TAG, "Unable to invoke childrenDrawingOrderEnabled", e2);
            } catch (IllegalArgumentException e3) {
                Log.e(ViewCompat.TAG, "Unable to invoke childrenDrawingOrderEnabled", e3);
            } catch (InvocationTargetException e4) {
                Log.e(ViewCompat.TAG, "Unable to invoke childrenDrawingOrderEnabled", e4);
            }
        }

        public boolean getFitsSystemWindows(View view) {
            return false;
        }

        public void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener listener) {
        }

        public WindowInsetsCompat onApplyWindowInsets(View v, WindowInsetsCompat insets) {
            return insets;
        }

        public WindowInsetsCompat dispatchApplyWindowInsets(View v, WindowInsetsCompat insets) {
            return insets;
        }

        public boolean isPaddingRelative(View view) {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void setNestedScrollingEnabled(View view, boolean enabled) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild) view).setNestedScrollingEnabled(enabled);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean isNestedScrollingEnabled(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).isNestedScrollingEnabled();
            }
            return false;
        }

        public void setBackground(View view, Drawable background) {
            view.setBackgroundDrawable(background);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ColorStateList getBackgroundTintList(View view) {
            if (view instanceof TintableBackgroundView) {
                return ((TintableBackgroundView) view).getSupportBackgroundTintList();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void setBackgroundTintList(View view, ColorStateList tintList) {
            if (view instanceof TintableBackgroundView) {
                ((TintableBackgroundView) view).setSupportBackgroundTintList(tintList);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            if (view instanceof TintableBackgroundView) {
                ((TintableBackgroundView) view).setSupportBackgroundTintMode(mode);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public PorterDuff.Mode getBackgroundTintMode(View view) {
            if (view instanceof TintableBackgroundView) {
                return ((TintableBackgroundView) view).getSupportBackgroundTintMode();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean startNestedScroll(View view, int axes) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).startNestedScroll(axes);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void stopNestedScroll(View view) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild) view).stopNestedScroll();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean hasNestedScrollingParent(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).hasNestedScrollingParent();
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean dispatchNestedScroll(View view, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean dispatchNestedPreScroll(View view, int dx, int dy, int[] consumed, int[] offsetInWindow) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean dispatchNestedFling(View view, float velocityX, float velocityY, boolean consumed) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedFling(velocityX, velocityY, consumed);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean dispatchNestedPreFling(View view, float velocityX, float velocityY) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedPreFling(velocityX, velocityY);
            }
            return false;
        }

        public boolean isInLayout(View view) {
            return false;
        }

        public boolean isLaidOut(View view) {
            return view.getWidth() > 0 && view.getHeight() > 0;
        }

        public boolean isLayoutDirectionResolved(View view) {
            return false;
        }

        public float getZ(View view) {
            return getTranslationZ(view) + getElevation(view);
        }

        public void setZ(View view, float z) {
        }

        public boolean isAttachedToWindow(View view) {
            return view.getWindowToken() != null;
        }

        public boolean hasOnClickListeners(View view) {
            return false;
        }

        public int getScrollIndicators(View view) {
            return 0;
        }

        public void setScrollIndicators(View view, int indicators) {
        }

        public void setScrollIndicators(View view, int indicators, int mask) {
        }

        public void offsetLeftAndRight(View view, int offset) {
            view.offsetLeftAndRight(offset);
            if (view.getVisibility() == 0) {
                tickleInvalidationFlag(view);
                Object parent = view.getParent();
                if (parent instanceof View) {
                    tickleInvalidationFlag((View) parent);
                }
            }
        }

        public void offsetTopAndBottom(View view, int offset) {
            view.offsetTopAndBottom(offset);
            if (view.getVisibility() == 0) {
                tickleInvalidationFlag(view);
                Object parent = view.getParent();
                if (parent instanceof View) {
                    tickleInvalidationFlag((View) parent);
                }
            }
        }

        private static void tickleInvalidationFlag(View view) {
            float y = view.getTranslationY();
            view.setTranslationY(1.0f + y);
            view.setTranslationY(y);
        }

        public void setPointerIcon(View view, PointerIconCompat pointerIcon) {
        }

        public Display getDisplay(View view) {
            if (!isAttachedToWindow(view)) {
                return null;
            }
            WindowManager wm = (WindowManager) view.getContext().getSystemService("window");
            return wm.getDefaultDisplay();
        }

        public void setTooltipText(View view, CharSequence tooltipText) {
            ViewCompatICS.setTooltipText(view, tooltipText);
        }
    }

    @TargetApi(15)
    /* loaded from: classes.dex */
    static class ViewCompatApi15Impl extends ViewCompatBaseImpl {
        ViewCompatApi15Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean hasOnClickListeners(View view) {
            return view.hasOnClickListeners();
        }
    }

    @TargetApi(16)
    /* loaded from: classes.dex */
    static class ViewCompatApi16Impl extends ViewCompatApi15Impl {
        ViewCompatApi16Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean hasTransientState(View view) {
            return view.hasTransientState();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setHasTransientState(View view, boolean hasTransientState) {
            view.setHasTransientState(hasTransientState);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void postInvalidateOnAnimation(View view) {
            view.postInvalidateOnAnimation();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void postInvalidateOnAnimation(View view, int left, int top, int right, int bottom) {
            view.postInvalidateOnAnimation(left, top, right, bottom);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void postOnAnimation(View view, Runnable action) {
            view.postOnAnimation(action);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void postOnAnimationDelayed(View view, Runnable action, long delayMillis) {
            view.postOnAnimationDelayed(action, delayMillis);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getImportantForAccessibility(View view) {
            return view.getImportantForAccessibility();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setImportantForAccessibility(View view, int mode) {
            if (mode == 4) {
                mode = 2;
            }
            view.setImportantForAccessibility(mode);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean performAccessibilityAction(View view, int action, Bundle arguments) {
            return view.performAccessibilityAction(action, arguments);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            AccessibilityNodeProvider provider = view.getAccessibilityNodeProvider();
            if (provider != null) {
                return new AccessibilityNodeProviderCompat(provider);
            }
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public ViewParent getParentForAccessibility(View view) {
            return view.getParentForAccessibility();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getMinimumWidth(View view) {
            return view.getMinimumWidth();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getMinimumHeight(View view) {
            return view.getMinimumHeight();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void requestApplyInsets(View view) {
            view.requestFitSystemWindows();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean getFitsSystemWindows(View view) {
            return view.getFitsSystemWindows();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean hasOverlappingRendering(View view) {
            return view.hasOverlappingRendering();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setBackground(View view, Drawable background) {
            view.setBackground(background);
        }
    }

    @TargetApi(17)
    /* loaded from: classes.dex */
    static class ViewCompatApi17Impl extends ViewCompatApi16Impl {
        ViewCompatApi17Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getLabelFor(View view) {
            return view.getLabelFor();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setLabelFor(View view, int id) {
            view.setLabelFor(id);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setLayerPaint(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getLayoutDirection(View view) {
            return view.getLayoutDirection();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setLayoutDirection(View view, int layoutDirection) {
            view.setLayoutDirection(layoutDirection);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getPaddingStart(View view) {
            return view.getPaddingStart();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getPaddingEnd(View view) {
            return view.getPaddingEnd();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setPaddingRelative(View view, int start, int top, int end, int bottom) {
            view.setPaddingRelative(start, top, end, bottom);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getWindowSystemUiVisibility(View view) {
            return view.getWindowSystemUiVisibility();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isPaddingRelative(View view) {
            return view.isPaddingRelative();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public Display getDisplay(View view) {
            return view.getDisplay();
        }
    }

    @TargetApi(18)
    /* loaded from: classes.dex */
    static class ViewCompatApi18Impl extends ViewCompatApi17Impl {
        ViewCompatApi18Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setClipBounds(View view, Rect clipBounds) {
            view.setClipBounds(clipBounds);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public Rect getClipBounds(View view) {
            return view.getClipBounds();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isInLayout(View view) {
            return view.isInLayout();
        }
    }

    @TargetApi(19)
    /* loaded from: classes.dex */
    static class ViewCompatApi19Impl extends ViewCompatApi18Impl {
        ViewCompatApi19Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getAccessibilityLiveRegion(View view) {
            return view.getAccessibilityLiveRegion();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setAccessibilityLiveRegion(View view, int mode) {
            view.setAccessibilityLiveRegion(mode);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatApi16Impl, android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setImportantForAccessibility(View view, int mode) {
            view.setImportantForAccessibility(mode);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isLaidOut(View view) {
            return view.isLaidOut();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isLayoutDirectionResolved(View view) {
            return view.isLayoutDirectionResolved();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isAttachedToWindow(View view) {
            return view.isAttachedToWindow();
        }
    }

    @TargetApi(21)
    /* loaded from: classes.dex */
    static class ViewCompatApi21Impl extends ViewCompatApi19Impl {
        private static ThreadLocal<Rect> sThreadLocalRect;

        ViewCompatApi21Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setTransitionName(View view, String transitionName) {
            view.setTransitionName(transitionName);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public String getTransitionName(View view) {
            return view.getTransitionName();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatApi16Impl, android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void requestApplyInsets(View view) {
            view.requestApplyInsets();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setElevation(View view, float elevation) {
            view.setElevation(elevation);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public float getElevation(View view) {
            return view.getElevation();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setTranslationZ(View view, float translationZ) {
            view.setTranslationZ(translationZ);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public float getTranslationZ(View view) {
            return view.getTranslationZ();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setOnApplyWindowInsetsListener(View view, final OnApplyWindowInsetsListener listener) {
            if (listener == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: android.support.v4.view.ViewCompat.ViewCompatApi21Impl.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets insets) {
                        WindowInsetsCompat compatInsets = WindowInsetsCompat.wrap(insets);
                        return (WindowInsets) WindowInsetsCompat.unwrap(listener.onApplyWindowInsets(view2, compatInsets));
                    }
                });
            }
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setNestedScrollingEnabled(View view, boolean enabled) {
            view.setNestedScrollingEnabled(enabled);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isNestedScrollingEnabled(View view) {
            return view.isNestedScrollingEnabled();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean startNestedScroll(View view, int axes) {
            return view.startNestedScroll(axes);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void stopNestedScroll(View view) {
            view.stopNestedScroll();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean hasNestedScrollingParent(View view) {
            return view.hasNestedScrollingParent();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean dispatchNestedScroll(View view, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
            return view.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean dispatchNestedPreScroll(View view, int dx, int dy, int[] consumed, int[] offsetInWindow) {
            return view.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean dispatchNestedFling(View view, float velocityX, float velocityY, boolean consumed) {
            return view.dispatchNestedFling(velocityX, velocityY, consumed);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean dispatchNestedPreFling(View view, float velocityX, float velocityY) {
            return view.dispatchNestedPreFling(velocityX, velocityY);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean isImportantForAccessibility(View view) {
            return view.isImportantForAccessibility();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public ColorStateList getBackgroundTintList(View view) {
            return view.getBackgroundTintList();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setBackgroundTintList(View view, ColorStateList tintList) {
            view.setBackgroundTintList(tintList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean hasTint = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && hasTint) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean hasTint = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && hasTint) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public PorterDuff.Mode getBackgroundTintMode(View view) {
            return view.getBackgroundTintMode();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public WindowInsetsCompat onApplyWindowInsets(View v, WindowInsetsCompat insets) {
            WindowInsets unwrapped = (WindowInsets) WindowInsetsCompat.unwrap(insets);
            WindowInsets result = v.onApplyWindowInsets(unwrapped);
            if (result != unwrapped) {
                unwrapped = new WindowInsets(result);
            }
            return WindowInsetsCompat.wrap(unwrapped);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public WindowInsetsCompat dispatchApplyWindowInsets(View v, WindowInsetsCompat insets) {
            WindowInsets unwrapped = (WindowInsets) WindowInsetsCompat.unwrap(insets);
            WindowInsets result = v.dispatchApplyWindowInsets(unwrapped);
            if (result != unwrapped) {
                unwrapped = new WindowInsets(result);
            }
            return WindowInsetsCompat.wrap(unwrapped);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public float getZ(View view) {
            return view.getZ();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setZ(View view, float z) {
            view.setZ(z);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void offsetLeftAndRight(View view, int offset) {
            Rect parentRect = getEmptyTempRect();
            boolean needInvalidateWorkaround = false;
            Object parent = view.getParent();
            if (parent instanceof View) {
                View p = (View) parent;
                parentRect.set(p.getLeft(), p.getTop(), p.getRight(), p.getBottom());
                needInvalidateWorkaround = !parentRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            super.offsetLeftAndRight(view, offset);
            if (needInvalidateWorkaround && parentRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(parentRect);
            }
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void offsetTopAndBottom(View view, int offset) {
            Rect parentRect = getEmptyTempRect();
            boolean needInvalidateWorkaround = false;
            Object parent = view.getParent();
            if (parent instanceof View) {
                View p = (View) parent;
                parentRect.set(p.getLeft(), p.getTop(), p.getRight(), p.getBottom());
                needInvalidateWorkaround = !parentRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            super.offsetTopAndBottom(view, offset);
            if (needInvalidateWorkaround && parentRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(parentRect);
            }
        }

        private static Rect getEmptyTempRect() {
            if (sThreadLocalRect == null) {
                sThreadLocalRect = new ThreadLocal<>();
            }
            Rect rect = sThreadLocalRect.get();
            if (rect == null) {
                rect = new Rect();
                sThreadLocalRect.set(rect);
            }
            rect.setEmpty();
            return rect;
        }
    }

    @TargetApi(23)
    /* loaded from: classes.dex */
    static class ViewCompatApi23Impl extends ViewCompatApi21Impl {
        ViewCompatApi23Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setScrollIndicators(View view, int indicators) {
            view.setScrollIndicators(indicators);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setScrollIndicators(View view, int indicators, int mask) {
            view.setScrollIndicators(indicators, mask);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public int getScrollIndicators(View view) {
            return view.getScrollIndicators();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatApi21Impl, android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void offsetLeftAndRight(View view, int offset) {
            view.offsetLeftAndRight(offset);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatApi21Impl, android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void offsetTopAndBottom(View view, int offset) {
            view.offsetTopAndBottom(offset);
        }
    }

    @TargetApi(24)
    /* loaded from: classes.dex */
    static class ViewCompatApi24Impl extends ViewCompatApi23Impl {
        ViewCompatApi24Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void dispatchStartTemporaryDetach(View view) {
            view.dispatchStartTemporaryDetach();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void dispatchFinishTemporaryDetach(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setPointerIcon(View view, PointerIconCompat pointerIconCompat) {
            view.setPointerIcon((PointerIcon) (pointerIconCompat != null ? pointerIconCompat.getPointerIcon() : null));
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public boolean startDragAndDrop(View view, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
            return view.startDragAndDrop(data, shadowBuilder, localState, flags);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void cancelDragAndDrop(View view) {
            view.cancelDragAndDrop();
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void updateDragShadow(View view, View.DragShadowBuilder shadowBuilder) {
            view.updateDragShadow(shadowBuilder);
        }
    }

    @TargetApi(26)
    /* loaded from: classes.dex */
    static class ViewCompatApi26Impl extends ViewCompatApi24Impl {
        ViewCompatApi26Impl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatBaseImpl
        public void setTooltipText(View view, CharSequence tooltipText) {
            view.setTooltipText(tooltipText);
        }
    }

    static {
        int version = Build.VERSION.SDK_INT;
        if (BuildCompat.isAtLeastO()) {
            IMPL = new ViewCompatApi26Impl();
            return;
        }
        if (version >= 24) {
            IMPL = new ViewCompatApi24Impl();
            return;
        }
        if (version >= 23) {
            IMPL = new ViewCompatApi23Impl();
            return;
        }
        if (version >= 21) {
            IMPL = new ViewCompatApi21Impl();
            return;
        }
        if (version >= 19) {
            IMPL = new ViewCompatApi19Impl();
            return;
        }
        if (version >= 18) {
            IMPL = new ViewCompatApi18Impl();
            return;
        }
        if (version >= 17) {
            IMPL = new ViewCompatApi17Impl();
            return;
        }
        if (version >= 16) {
            IMPL = new ViewCompatApi16Impl();
        } else if (version >= 15) {
            IMPL = new ViewCompatApi15Impl();
        } else {
            IMPL = new ViewCompatBaseImpl();
        }
    }

    @Deprecated
    public static boolean canScrollHorizontally(View view, int direction) {
        return view.canScrollHorizontally(direction);
    }

    @Deprecated
    public static boolean canScrollVertically(View view, int direction) {
        return view.canScrollVertically(direction);
    }

    @Deprecated
    public static int getOverScrollMode(View v) {
        return v.getOverScrollMode();
    }

    @Deprecated
    public static void setOverScrollMode(View v, int overScrollMode) {
        v.setOverScrollMode(overScrollMode);
    }

    @Deprecated
    public static void onPopulateAccessibilityEvent(View v, AccessibilityEvent event) {
        v.onPopulateAccessibilityEvent(event);
    }

    @Deprecated
    public static void onInitializeAccessibilityEvent(View v, AccessibilityEvent event) {
        v.onInitializeAccessibilityEvent(event);
    }

    public static void onInitializeAccessibilityNodeInfo(View v, AccessibilityNodeInfoCompat info) {
        IMPL.onInitializeAccessibilityNodeInfo(v, info);
    }

    public static void setAccessibilityDelegate(View v, AccessibilityDelegateCompat delegate) {
        IMPL.setAccessibilityDelegate(v, delegate);
    }

    public static boolean hasAccessibilityDelegate(View v) {
        return IMPL.hasAccessibilityDelegate(v);
    }

    public static boolean hasTransientState(View view) {
        return IMPL.hasTransientState(view);
    }

    public static void setHasTransientState(View view, boolean hasTransientState) {
        IMPL.setHasTransientState(view, hasTransientState);
    }

    public static void postInvalidateOnAnimation(View view) {
        IMPL.postInvalidateOnAnimation(view);
    }

    public static void postInvalidateOnAnimation(View view, int left, int top, int right, int bottom) {
        IMPL.postInvalidateOnAnimation(view, left, top, right, bottom);
    }

    public static void postOnAnimation(View view, Runnable action) {
        IMPL.postOnAnimation(view, action);
    }

    public static void postOnAnimationDelayed(View view, Runnable action, long delayMillis) {
        IMPL.postOnAnimationDelayed(view, action, delayMillis);
    }

    public static int getImportantForAccessibility(View view) {
        return IMPL.getImportantForAccessibility(view);
    }

    public static void setImportantForAccessibility(View view, int mode) {
        IMPL.setImportantForAccessibility(view, mode);
    }

    public static boolean isImportantForAccessibility(View view) {
        return IMPL.isImportantForAccessibility(view);
    }

    public static boolean performAccessibilityAction(View view, int action, Bundle arguments) {
        return IMPL.performAccessibilityAction(view, action, arguments);
    }

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return IMPL.getAccessibilityNodeProvider(view);
    }

    @Deprecated
    public static float getAlpha(View view) {
        return view.getAlpha();
    }

    @Deprecated
    public static void setLayerType(View view, int layerType, Paint paint) {
        view.setLayerType(layerType, paint);
    }

    @Deprecated
    public static int getLayerType(View view) {
        return view.getLayerType();
    }

    public static int getLabelFor(View view) {
        return IMPL.getLabelFor(view);
    }

    public static void setLabelFor(View view, @IdRes int labeledId) {
        IMPL.setLabelFor(view, labeledId);
    }

    public static void setLayerPaint(View view, Paint paint) {
        IMPL.setLayerPaint(view, paint);
    }

    public static int getLayoutDirection(View view) {
        return IMPL.getLayoutDirection(view);
    }

    public static void setLayoutDirection(View view, int layoutDirection) {
        IMPL.setLayoutDirection(view, layoutDirection);
    }

    public static ViewParent getParentForAccessibility(View view) {
        return IMPL.getParentForAccessibility(view);
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    @Deprecated
    public static int resolveSizeAndState(int size, int measureSpec, int childMeasuredState) {
        return View.resolveSizeAndState(size, measureSpec, childMeasuredState);
    }

    @Deprecated
    public static int getMeasuredWidthAndState(View view) {
        return view.getMeasuredWidthAndState();
    }

    @Deprecated
    public static int getMeasuredHeightAndState(View view) {
        return view.getMeasuredHeightAndState();
    }

    @Deprecated
    public static int getMeasuredState(View view) {
        return view.getMeasuredState();
    }

    @Deprecated
    public static int combineMeasuredStates(int curState, int newState) {
        return View.combineMeasuredStates(curState, newState);
    }

    public static int getAccessibilityLiveRegion(View view) {
        return IMPL.getAccessibilityLiveRegion(view);
    }

    public static void setAccessibilityLiveRegion(View view, int mode) {
        IMPL.setAccessibilityLiveRegion(view, mode);
    }

    public static int getPaddingStart(View view) {
        return IMPL.getPaddingStart(view);
    }

    public static int getPaddingEnd(View view) {
        return IMPL.getPaddingEnd(view);
    }

    public static void setPaddingRelative(View view, int start, int top, int end, int bottom) {
        IMPL.setPaddingRelative(view, start, top, end, bottom);
    }

    public static void dispatchStartTemporaryDetach(View view) {
        IMPL.dispatchStartTemporaryDetach(view);
    }

    public static void dispatchFinishTemporaryDetach(View view) {
        IMPL.dispatchFinishTemporaryDetach(view);
    }

    @Deprecated
    public static float getTranslationX(View view) {
        return view.getTranslationX();
    }

    @Deprecated
    public static float getTranslationY(View view) {
        return view.getTranslationY();
    }

    @Nullable
    @Deprecated
    public static Matrix getMatrix(View view) {
        return view.getMatrix();
    }

    public static int getMinimumWidth(View view) {
        return IMPL.getMinimumWidth(view);
    }

    public static int getMinimumHeight(View view) {
        return IMPL.getMinimumHeight(view);
    }

    public static ViewPropertyAnimatorCompat animate(View view) {
        return IMPL.animate(view);
    }

    @Deprecated
    public static void setTranslationX(View view, float value) {
        view.setTranslationX(value);
    }

    @Deprecated
    public static void setTranslationY(View view, float value) {
        view.setTranslationY(value);
    }

    @Deprecated
    public static void setAlpha(View view, @FloatRange(from = 0.0d, to = 1.0d) float value) {
        view.setAlpha(value);
    }

    @Deprecated
    public static void setX(View view, float value) {
        view.setX(value);
    }

    @Deprecated
    public static void setY(View view, float value) {
        view.setY(value);
    }

    @Deprecated
    public static void setRotation(View view, float value) {
        view.setRotation(value);
    }

    @Deprecated
    public static void setRotationX(View view, float value) {
        view.setRotationX(value);
    }

    @Deprecated
    public static void setRotationY(View view, float value) {
        view.setRotationY(value);
    }

    @Deprecated
    public static void setScaleX(View view, float value) {
        view.setScaleX(value);
    }

    @Deprecated
    public static void setScaleY(View view, float value) {
        view.setScaleY(value);
    }

    @Deprecated
    public static float getPivotX(View view) {
        return view.getPivotX();
    }

    @Deprecated
    public static void setPivotX(View view, float value) {
        view.setPivotX(value);
    }

    @Deprecated
    public static float getPivotY(View view) {
        return view.getPivotY();
    }

    @Deprecated
    public static void setPivotY(View view, float value) {
        view.setPivotY(value);
    }

    @Deprecated
    public static float getRotation(View view) {
        return view.getRotation();
    }

    @Deprecated
    public static float getRotationX(View view) {
        return view.getRotationX();
    }

    @Deprecated
    public static float getRotationY(View view) {
        return view.getRotationY();
    }

    @Deprecated
    public static float getScaleX(View view) {
        return view.getScaleX();
    }

    @Deprecated
    public static float getScaleY(View view) {
        return view.getScaleY();
    }

    @Deprecated
    public static float getX(View view) {
        return view.getX();
    }

    @Deprecated
    public static float getY(View view) {
        return view.getY();
    }

    public static void setElevation(View view, float elevation) {
        IMPL.setElevation(view, elevation);
    }

    public static float getElevation(View view) {
        return IMPL.getElevation(view);
    }

    public static void setTranslationZ(View view, float translationZ) {
        IMPL.setTranslationZ(view, translationZ);
    }

    public static float getTranslationZ(View view) {
        return IMPL.getTranslationZ(view);
    }

    public static void setTransitionName(View view, String transitionName) {
        IMPL.setTransitionName(view, transitionName);
    }

    public static String getTransitionName(View view) {
        return IMPL.getTransitionName(view);
    }

    public static int getWindowSystemUiVisibility(View view) {
        return IMPL.getWindowSystemUiVisibility(view);
    }

    public static void requestApplyInsets(View view) {
        IMPL.requestApplyInsets(view);
    }

    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean enabled) {
        IMPL.setChildrenDrawingOrderEnabled(viewGroup, enabled);
    }

    public static boolean getFitsSystemWindows(View v) {
        return IMPL.getFitsSystemWindows(v);
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean fitSystemWindows) {
        view.setFitsSystemWindows(fitSystemWindows);
    }

    @Deprecated
    public static void jumpDrawablesToCurrentState(View v) {
        v.jumpDrawablesToCurrentState();
    }

    public static void setOnApplyWindowInsetsListener(View v, OnApplyWindowInsetsListener listener) {
        IMPL.setOnApplyWindowInsetsListener(v, listener);
    }

    public static WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat insets) {
        return IMPL.onApplyWindowInsets(view, insets);
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat insets) {
        return IMPL.dispatchApplyWindowInsets(view, insets);
    }

    @Deprecated
    public static void setSaveFromParentEnabled(View v, boolean enabled) {
        v.setSaveFromParentEnabled(enabled);
    }

    @Deprecated
    public static void setActivated(View view, boolean activated) {
        view.setActivated(activated);
    }

    public static boolean hasOverlappingRendering(View view) {
        return IMPL.hasOverlappingRendering(view);
    }

    public static boolean isPaddingRelative(View view) {
        return IMPL.isPaddingRelative(view);
    }

    public static void setBackground(View view, Drawable background) {
        IMPL.setBackground(view, background);
    }

    public static ColorStateList getBackgroundTintList(View view) {
        return IMPL.getBackgroundTintList(view);
    }

    public static void setBackgroundTintList(View view, ColorStateList tintList) {
        IMPL.setBackgroundTintList(view, tintList);
    }

    public static PorterDuff.Mode getBackgroundTintMode(View view) {
        return IMPL.getBackgroundTintMode(view);
    }

    public static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        IMPL.setBackgroundTintMode(view, mode);
    }

    public static void setNestedScrollingEnabled(View view, boolean enabled) {
        IMPL.setNestedScrollingEnabled(view, enabled);
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return IMPL.isNestedScrollingEnabled(view);
    }

    public static boolean startNestedScroll(View view, int axes) {
        return IMPL.startNestedScroll(view, axes);
    }

    public static void stopNestedScroll(View view) {
        IMPL.stopNestedScroll(view);
    }

    public static boolean hasNestedScrollingParent(View view) {
        return IMPL.hasNestedScrollingParent(view);
    }

    public static boolean dispatchNestedScroll(View view, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return IMPL.dispatchNestedScroll(view, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    public static boolean dispatchNestedPreScroll(View view, int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return IMPL.dispatchNestedPreScroll(view, dx, dy, consumed, offsetInWindow);
    }

    public static boolean dispatchNestedFling(View view, float velocityX, float velocityY, boolean consumed) {
        return IMPL.dispatchNestedFling(view, velocityX, velocityY, consumed);
    }

    public static boolean dispatchNestedPreFling(View view, float velocityX, float velocityY) {
        return IMPL.dispatchNestedPreFling(view, velocityX, velocityY);
    }

    public static boolean isInLayout(View view) {
        return IMPL.isInLayout(view);
    }

    public static boolean isLaidOut(View view) {
        return IMPL.isLaidOut(view);
    }

    public static boolean isLayoutDirectionResolved(View view) {
        return IMPL.isLayoutDirectionResolved(view);
    }

    public static float getZ(View view) {
        return IMPL.getZ(view);
    }

    public static void setZ(View view, float z) {
        IMPL.setZ(view, z);
    }

    public static void offsetTopAndBottom(View view, int offset) {
        IMPL.offsetTopAndBottom(view, offset);
    }

    public static void offsetLeftAndRight(View view, int offset) {
        IMPL.offsetLeftAndRight(view, offset);
    }

    public static void setClipBounds(View view, Rect clipBounds) {
        IMPL.setClipBounds(view, clipBounds);
    }

    public static Rect getClipBounds(View view) {
        return IMPL.getClipBounds(view);
    }

    public static boolean isAttachedToWindow(View view) {
        return IMPL.isAttachedToWindow(view);
    }

    public static boolean hasOnClickListeners(View view) {
        return IMPL.hasOnClickListeners(view);
    }

    public static void setScrollIndicators(@NonNull View view, int indicators) {
        IMPL.setScrollIndicators(view, indicators);
    }

    public static void setScrollIndicators(@NonNull View view, int indicators, int mask) {
        IMPL.setScrollIndicators(view, indicators, mask);
    }

    public static int getScrollIndicators(@NonNull View view) {
        return IMPL.getScrollIndicators(view);
    }

    public static void setPointerIcon(@NonNull View view, PointerIconCompat pointerIcon) {
        IMPL.setPointerIcon(view, pointerIcon);
    }

    public static Display getDisplay(@NonNull View view) {
        return IMPL.getDisplay(view);
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence tooltipText) {
        IMPL.setTooltipText(view, tooltipText);
    }

    public static boolean startDragAndDrop(View v, ClipData data, View.DragShadowBuilder shadowBuilder, Object localState, int flags) {
        return IMPL.startDragAndDrop(v, data, shadowBuilder, localState, flags);
    }

    public static void cancelDragAndDrop(View v) {
        IMPL.cancelDragAndDrop(v);
    }

    public static void updateDragShadow(View v, View.DragShadowBuilder shadowBuilder) {
        IMPL.updateDragShadow(v, shadowBuilder);
    }

    protected ViewCompat() {
    }
}
