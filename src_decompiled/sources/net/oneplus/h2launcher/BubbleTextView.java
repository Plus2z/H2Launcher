package net.oneplus.h2launcher;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import com.oneplus.sdk.wrapper.android.view.OpView;
import net.oneplus.h2launcher.BaseRecyclerViewFastScrollBar;
import net.oneplus.h2launcher.IconCache;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.model.PackageItemInfo;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class BubbleTextView extends TextView implements BaseRecyclerViewFastScrollBar.FastScrollFocusableView {
    private static final int DISPLAY_ALL_APPS = 1;
    private static final int DISPLAY_FOLDER = 2;
    private static final int DISPLAY_WORKSPACE = 0;
    private static final int FAST_SCROLL_FOCUS_FADE_IN_DURATION = 175;
    private static final int FAST_SCROLL_FOCUS_FADE_OUT_DURATION = 125;
    private static final float FAST_SCROLL_FOCUS_MAX_SCALE = 1.15f;
    private static final int FAST_SCROLL_FOCUS_MODE_DRAW_CIRCLE_BG = 2;
    private static final int FAST_SCROLL_FOCUS_MODE_NONE = 0;
    private static final int FAST_SCROLL_FOCUS_MODE_SCALE_ICON = 1;
    private static SparseArray<Resources.Theme> sPreloaderThemes = new SparseArray<>(2);
    protected AssetCache mAssetCache;
    private final Drawable mBackground;
    private boolean mBackgroundSizeChanged;
    private final boolean mCustomShadowsEnabled;
    private final boolean mDeferShadowGenerationOnTouch;
    private boolean mDisableRelayout;
    private final int mDisplay;
    private ObjectAnimator mFastScrollFocusAnimator;
    private Paint mFastScrollFocusBgPaint;
    private float mFastScrollFocusFraction;
    private boolean mFastScrollFocused;
    private final int mFastScrollMode;
    protected Drawable mIcon;
    private IconCache.IconLoadRequest mIconLoadRequest;
    protected int mIconSize;
    private float mIconSizeScale;
    private boolean mIgnorePressedStateChange;
    private boolean mIsInIconRearrangementView;
    protected final Launcher mLauncher;
    private final boolean mLayoutHorizontal;
    private final CheckLongPressHelper mLongPressHelper;
    private final HolographicOutlineHelper mOutlineHelper;
    private Bitmap mPressedBackground;
    private float mSlop;
    protected boolean mStayPressed;
    private final StylusEventHelper mStylusEventHelper;
    private int mTextColor;
    private final int mTextShadowColor;
    private final int mTextShadowDy;
    private final int mTextShadowRadius;
    private final int mTopPadding;

    /* loaded from: classes.dex */
    public interface BubbleTextShadowHandler {
        void setPressedIcon(BubbleTextView bubbleTextView, Bitmap bitmap);
    }

    public BubbleTextView(Context context) {
        this(context, null, 0);
    }

    public BubbleTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BubbleTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mBackground = null;
        this.mIconSizeScale = 1.0f;
        this.mDisableRelayout = false;
        this.mFastScrollMode = 1;
        this.mLauncher = (Launcher) context;
        DeviceProfile grid = this.mLauncher.getDeviceProfile();
        this.mAssetCache = LauncherAppState.getInstance().getAssetCache();
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.BubbleTextView, defStyle, 0);
        this.mCustomShadowsEnabled = a.getBoolean(4, true);
        this.mLayoutHorizontal = a.getBoolean(0, false);
        this.mDeferShadowGenerationOnTouch = a.getBoolean(3, false);
        this.mDisplay = a.getInteger(2, 0);
        int defaultIconSize = grid.iconSizePx;
        int textSize = getResources().getDimensionPixelSize(R.dimen.icon_text_size);
        if (this.mDisplay == 0) {
            setTextSize(0, textSize);
        } else if (this.mDisplay == 1) {
            setTextSize(2, grid.allAppsIconTextSizeSp);
            defaultIconSize = grid.allAppsIconSizePx;
        } else if (this.mDisplay == 2) {
            setTextSize(0, textSize);
        }
        this.mTopPadding = getResources().getDimensionPixelSize(R.dimen.bubble_text_view_top_padding_17819);
        this.mIconSize = a.getDimensionPixelSize(1, defaultIconSize);
        a.recycle();
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mStylusEventHelper = new StylusEventHelper(this);
        this.mOutlineHelper = HolographicOutlineHelper.obtain(getContext());
        this.mTextShadowColor = getResources().getColor(R.color.bubble_textview_shadow_color);
        this.mTextShadowRadius = getResources().getInteger(R.integer.bubble_textview_shadow_radius);
        this.mTextShadowDy = getResources().getInteger(R.integer.bubble_textview_shadow_dy);
        applyShadowStyle();
        setAccessibilityDelegate(LauncherAppState.getInstance().getAccessibilityDelegate());
        OpView.enableQuickClick(this);
    }

    public void setIconSizeScale(float iconSizeScale) {
        if (!this.mIsInIconRearrangementView) {
            this.mIconSizeScale = iconSizeScale;
        }
    }

    public void applyIconSizeScale(float iconSizeScale) {
        if (!this.mIsInIconRearrangementView) {
            this.mIconSizeScale = iconSizeScale;
            setIcon(this.mIcon, (int) (this.mIconSize * this.mIconSizeScale));
        }
    }

    public void applyFromShortcutInfo(ShortcutInfo info) {
        applyFromShortcutInfo(info, false);
    }

    public void applyFromShortcutInfo(ShortcutInfo info, boolean promiseStateChanged) {
        applyFromShortcutInfo(info, promiseStateChanged, true);
    }

    public void applyFromShortcutInfo(ShortcutInfo info, boolean promiseStateChanged, boolean animateChange) {
        applyFromShortcutInfo(info, promiseStateChanged, animateChange, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void applyFromShortcutInfo(ShortcutInfo shortcutInfo, boolean promiseStateChanged, boolean animateChange, boolean inIconRearrangeView) {
        FastBitmapDrawable iconDrawable;
        this.mIsInIconRearrangementView = inIconRearrangeView;
        if (shortcutInfo instanceof IDynamicShortcut) {
            shortcutInfo.getIcon(this.mAssetCache, promiseStateChanged);
            ((IDynamicShortcut) shortcutInfo).refreshConfig();
            iconDrawable = ((IDynamicShortcut) shortcutInfo).getStaticDrawable();
            if (!this.mAssetCache.containsDynamicIconCache(shortcutInfo.getTargetComponent())) {
                ((IDynamicShortcut) shortcutInfo).updateIconCache();
            }
        } else {
            Bitmap b = shortcutInfo.getIcon(this.mAssetCache, promiseStateChanged);
            iconDrawable = this.mLauncher.createIconDrawable(b);
        }
        iconDrawable.setGhostModeEnabled(shortcutInfo.isDisabled());
        if (this.mIsInIconRearrangementView) {
            setIconSizeScale(1.0f);
            int iconSize = this.mLauncher.getResources().getDimensionPixelSize(R.dimen.icon_rearrangement_icon_size);
            this.mIconSize = iconSize;
            this.mLauncher.getDeviceProfile();
            setIcon(iconDrawable, this.mIconSize);
            Resources res = getResources();
            int textSize = res.getDimensionPixelSize(R.dimen.icon_rearrangement_icon_text_size);
            setTextSize(0, textSize);
            setCompoundDrawablePadding(res.getDimensionPixelSize(R.dimen.icon_rearrangement_icon_text_padding));
        } else {
            setIcon(iconDrawable, (int) (this.mIconSize * Utilities.getIconScaleValue(getContext())));
        }
        if (shortcutInfo.contentDescription != null) {
            setContentDescription(shortcutInfo.contentDescription);
        }
        setText(shortcutInfo.getLabel(this.mAssetCache, promiseStateChanged));
        setTag(shortcutInfo);
        if ((promiseStateChanged || shortcutInfo.isPromise()) && animateChange) {
            applyState(promiseStateChanged);
        }
    }

    public void applyFromApplicationInfo(AppInfo info) {
        applyFromApplicationInfo(info, false);
    }

    public void applyFromApplicationInfo(AppInfo info, boolean promiseStateChanged) {
        applyFromApplicationInfo(info, promiseStateChanged, false);
    }

    public void applyFromApplicationInfo(final AppInfo info, final boolean promiseStateChanged, boolean applyInBackground) {
        Runnable applyRunnable = new Runnable() { // from class: net.oneplus.h2launcher.BubbleTextView.1
            @Override // java.lang.Runnable
            public void run() {
                final FastBitmapDrawable drawable = BubbleTextView.this.mLauncher.createIconDrawable(info.getIcon(BubbleTextView.this.mAssetCache, promiseStateChanged));
                final String label = info.getLabel(BubbleTextView.this.mAssetCache, promiseStateChanged);
                TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.BubbleTextView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BubbleTextView.this.setIconAndText(info, drawable, label);
                    }
                });
            }
        };
        if (applyInBackground) {
            TaskWorker.get().post(applyRunnable);
        } else {
            setIconAndText(info, this.mLauncher.createIconDrawable(info.getIcon(this.mAssetCache, promiseStateChanged)), info.getLabel(this.mAssetCache, promiseStateChanged));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconAndText(AppInfo info, FastBitmapDrawable drawable, String label) {
        if (info.isDisabled()) {
            drawable.setGhostModeEnabled(info.isDisabled());
        }
        setIcon(drawable, (int) (this.mIconSizeScale * this.mIconSize));
        setText(label);
        if (info.contentDescription != null) {
            setContentDescription(info.contentDescription);
        }
        super.setTag(info);
        verifyHighRes();
    }

    public void applyFromPackageItemInfo(PackageItemInfo info) {
        setIcon(this.mLauncher.createIconDrawable(info.getIcon()), this.mIconSize);
        setText(info.title);
        if (info.contentDescription != null) {
            setContentDescription(info.contentDescription);
        }
        super.setTag(info);
        verifyHighRes();
    }

    public void setLongPressTimeout(int longPressTimeout) {
        this.mLongPressHelper.setLongPressTimeout(longPressTimeout);
    }

    @Override // android.widget.TextView
    protected boolean setFrame(int left, int top, int right, int bottom) {
        if (getLeft() != left || getRight() != right || getTop() != top || getBottom() != bottom) {
            this.mBackgroundSizeChanged = true;
        }
        return super.setFrame(left, top, right, bottom);
    }

    @Override // android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return who == this.mBackground || super.verifyDrawable(who);
    }

    @Override // android.view.View
    public void setTag(Object tag) {
        if (tag != null) {
            LauncherModel.checkItemInfo((ItemInfo) tag);
        }
        super.setTag(tag);
    }

    @Override // android.view.View
    public void setPressed(boolean pressed) {
        super.setPressed(pressed);
        if (!this.mIgnorePressedStateChange) {
            updateIconState();
        }
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public boolean isLayoutHorizontal() {
        return this.mLayoutHorizontal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateIconState() {
        if (this.mIcon != null && (this.mIcon instanceof FastBitmapDrawable)) {
            ((FastBitmapDrawable) this.mIcon).setPressed(isPressed() || this.mStayPressed);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
    
        return r0;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = super.onTouchEvent(r5)
            net.oneplus.h2launcher.StylusEventHelper r1 = r4.mStylusEventHelper
            boolean r1 = r1.checkAndPerformStylusEvent(r5)
            if (r1 == 0) goto L12
            net.oneplus.h2launcher.CheckLongPressHelper r1 = r4.mLongPressHelper
            r1.cancelLongPress()
            r0 = 1
        L12:
            int r1 = r5.getAction()
            switch(r1) {
                case 0: goto L1a;
                case 1: goto L38;
                case 2: goto L47;
                case 3: goto L38;
                default: goto L19;
            }
        L19:
            return r0
        L1a:
            boolean r1 = r4.mDeferShadowGenerationOnTouch
            if (r1 != 0) goto L2a
            android.graphics.Bitmap r1 = r4.mPressedBackground
            if (r1 != 0) goto L2a
            net.oneplus.h2launcher.HolographicOutlineHelper r1 = r4.mOutlineHelper
            android.graphics.Bitmap r1 = r1.createMediumDropShadow(r4)
            r4.mPressedBackground = r1
        L2a:
            net.oneplus.h2launcher.StylusEventHelper r1 = r4.mStylusEventHelper
            boolean r1 = r1.inStylusButtonPressed()
            if (r1 != 0) goto L19
            net.oneplus.h2launcher.CheckLongPressHelper r1 = r4.mLongPressHelper
            r1.postCheckForLongPress()
            goto L19
        L38:
            boolean r1 = r4.isPressed()
            if (r1 != 0) goto L41
            r1 = 0
            r4.mPressedBackground = r1
        L41:
            net.oneplus.h2launcher.CheckLongPressHelper r1 = r4.mLongPressHelper
            r1.cancelLongPress()
            goto L19
        L47:
            float r1 = r5.getX()
            float r2 = r5.getY()
            float r3 = r4.mSlop
            boolean r1 = net.oneplus.h2launcher.Utilities.pointInView(r4, r1, r2, r3)
            if (r1 != 0) goto L19
            net.oneplus.h2launcher.CheckLongPressHelper r1 = r4.mLongPressHelper
            r1.cancelLongPress()
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.BubbleTextView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStayPressed(boolean stayPressed) {
        this.mStayPressed = stayPressed;
        if (!stayPressed) {
            this.mPressedBackground = null;
        } else if (this.mPressedBackground == null) {
            this.mPressedBackground = this.mOutlineHelper.createMediumDropShadow(this);
        }
        ViewParent parent = getParent();
        if (parent != null && (parent.getParent() instanceof BubbleTextShadowHandler)) {
            ((BubbleTextShadowHandler) parent.getParent()).setPressedIcon(this, this.mPressedBackground);
        }
        updateIconState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearPressedBackground() {
        setPressed(false);
        setStayPressed(false);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (!super.onKeyDown(keyCode, event)) {
            return false;
        }
        if (this.mPressedBackground == null) {
            this.mPressedBackground = this.mOutlineHelper.createMediumDropShadow(this);
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        this.mIgnorePressedStateChange = true;
        boolean result = super.onKeyUp(keyCode, event);
        this.mPressedBackground = null;
        this.mIgnorePressedStateChange = false;
        updateIconState();
        return result;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.mCustomShadowsEnabled) {
            super.draw(canvas);
        } else if (getCurrentTextColor() == getResources().getColor(android.R.color.transparent)) {
            getPaint().clearShadowLayer();
            super.draw(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mBackground != null) {
            this.mBackground.setCallback(this);
        }
        if (this.mIcon instanceof PreloadIconDrawable) {
            ((PreloadIconDrawable) this.mIcon).applyPreloaderTheme(getPreloaderTheme());
        }
        this.mSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mBackground != null) {
            this.mBackground.setCallback(null);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int color) {
        this.mTextColor = color;
        super.setTextColor(color);
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colors) {
        this.mTextColor = colors.getDefaultColor();
        super.setTextColor(colors);
    }

    public void setTextVisibility(boolean visible) {
        Resources res = getResources();
        if (visible) {
            super.setTextColor(this.mTextColor);
            applyShadowStyle();
        } else {
            super.setTextColor(res.getColor(android.R.color.transparent));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public void applyState(boolean promiseStateChanged) {
        int progressLevel;
        PreloadIconDrawable preloadDrawable;
        if (getTag() instanceof ShortcutInfo) {
            ShortcutInfo info = (ShortcutInfo) getTag();
            boolean isPromise = info.isPromise();
            if (isPromise) {
                progressLevel = info.hasStatusFlag(4) ? info.getInstallProgress() : 0;
            } else {
                progressLevel = 100;
            }
            if (this.mIcon != null) {
                if (this.mIcon instanceof PreloadIconDrawable) {
                    preloadDrawable = (PreloadIconDrawable) this.mIcon;
                } else {
                    preloadDrawable = new PreloadIconDrawable(this.mIcon, getPreloaderTheme());
                    setIcon(preloadDrawable, this.mIconSize);
                }
                preloadDrawable.setLevel(progressLevel);
                if (promiseStateChanged) {
                    preloadDrawable.maybePerformFinishedAnimation();
                }
            }
        }
    }

    private Resources.Theme getPreloaderTheme() {
        Object tag = getTag();
        int style = (tag == null || !(tag instanceof ShortcutInfo) || ((ShortcutInfo) tag).container < 0) ? R.style.PreloadIcon : R.style.PreloadIcon_Folder;
        Resources.Theme theme = sPreloaderThemes.get(style);
        if (theme == null) {
            Resources.Theme theme2 = getResources().newTheme();
            theme2.applyStyle(style, true);
            sPreloaderThemes.put(style, theme2);
            return theme2;
        }
        return theme;
    }

    @TargetApi(17)
    public Drawable setIcon(Drawable icon) {
        this.mIcon = icon;
        return icon;
    }

    @TargetApi(17)
    public Drawable setIcon(Drawable icon, int iconSize) {
        this.mIcon = icon;
        if (iconSize != -1) {
            this.mIcon.setBounds(0, 0, iconSize, iconSize);
        }
        if (this.mLayoutHorizontal) {
            if (Utilities.ATLEAST_JB_MR1) {
                setCompoundDrawablesRelative(this.mIcon, null, null, null);
            } else {
                setCompoundDrawables(this.mIcon, null, null, null);
            }
        } else {
            setCompoundDrawables(null, this.mIcon, null, null);
        }
        return icon;
    }

    @Override // android.view.View
    public void requestLayout() {
        if (!this.mDisableRelayout) {
            super.requestLayout();
        }
    }

    public void reapplyItemInfo(ItemInfo info) {
        Workspace workspace;
        View folderIcon;
        if (getTag() == info) {
            this.mIconLoadRequest = null;
            this.mDisableRelayout = true;
            if (info instanceof AppInfo) {
                applyFromApplicationInfo((AppInfo) info);
            } else if (info instanceof ShortcutInfo) {
                applyFromShortcutInfo((ShortcutInfo) info);
                if (info.rank < FolderIcon.getNumItemsInPreview() && info.container >= 0 && (workspace = this.mLauncher.getWorkspace()) != null && (folderIcon = workspace.getHomescreenIconByItemId(info.container)) != null) {
                    folderIcon.invalidate();
                }
            } else if (info instanceof PackageItemInfo) {
                applyFromPackageItemInfo((PackageItemInfo) info);
            }
            this.mDisableRelayout = false;
        }
    }

    public void verifyHighRes() {
        if (this.mIconLoadRequest != null) {
            this.mIconLoadRequest.cancel();
            this.mIconLoadRequest = null;
        }
        if (getTag() instanceof AppInfo) {
            AppInfo info = (AppInfo) getTag();
            if (info.usingLowResIcon) {
                this.mIconLoadRequest = LauncherAppState.getInstance().getAssetCache().updateIconInBackground(this, info);
                return;
            }
            return;
        }
        if (getTag() instanceof ShortcutInfo) {
            ShortcutInfo info2 = (ShortcutInfo) getTag();
            if (info2.usingLowResIcon) {
                this.mIconLoadRequest = LauncherAppState.getInstance().getAssetCache().updateIconInBackground(this, info2);
                return;
            }
            return;
        }
        if (getTag() instanceof PackageItemInfo) {
            PackageItemInfo info3 = (PackageItemInfo) getTag();
            if (info3.usingLowResIcon) {
                this.mIconLoadRequest = LauncherAppState.getInstance().getAssetCache().updateIconInBackground(this, info3);
            }
        }
    }

    public void setFastScrollFocus(float fraction) {
        this.mFastScrollFocusFraction = fraction;
        setScaleX((fraction * 0.14999998f) + 1.0f);
        setScaleY((fraction * 0.14999998f) + 1.0f);
    }

    public float getFastScrollFocus() {
        return this.mFastScrollFocusFraction;
    }

    @Override // net.oneplus.h2launcher.BaseRecyclerViewFastScrollBar.FastScrollFocusableView
    public void setFastScrollFocused(boolean focused, boolean animated) {
        if (this.mFastScrollFocused != focused) {
            this.mFastScrollFocused = focused;
            if (animated) {
                if (this.mFastScrollFocusAnimator != null) {
                    this.mFastScrollFocusAnimator.cancel();
                }
                float[] fArr = new float[1];
                fArr[0] = focused ? 1.0f : 0.0f;
                this.mFastScrollFocusAnimator = ObjectAnimator.ofFloat(this, "fastScrollFocus", fArr);
                if (focused) {
                    this.mFastScrollFocusAnimator.setInterpolator(new DecelerateInterpolator());
                } else {
                    this.mFastScrollFocusAnimator.setInterpolator(new AccelerateInterpolator());
                }
                this.mFastScrollFocusAnimator.setDuration(focused ? 175L : 125L);
                this.mFastScrollFocusAnimator.start();
                return;
            }
            this.mFastScrollFocusFraction = focused ? 1.0f : 0.0f;
        }
    }

    private void applyShadowStyle() {
        if (this.mCustomShadowsEnabled) {
            setShadowLayer(this.mTextShadowRadius, 0.0f, this.mTextShadowDy, this.mTextShadowColor);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
        if (this.mDisplay == 0) {
            top += Utilities.getIconTopOffset(getContext(), (ItemInfo) getTag());
        }
        super.setPadding(left, top, right, bottom);
    }
}
