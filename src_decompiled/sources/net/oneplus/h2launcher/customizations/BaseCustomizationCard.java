package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.customizations.DragHelper;
import net.oneplus.h2launcher.customizations.ScrollableViewHelper;
import net.oneplus.h2launcher.util.ScrimUtil;

/* loaded from: classes.dex */
public abstract class BaseCustomizationCard extends LinearLayout {
    protected static final float CARD_COLLAPSED_FRACTION = 0.353125f;
    protected static final float CARD_EXPANDED_FRACTION = 0.4859375f;
    private static final float CUTOFF_THRESHOLD = 0.01f;
    protected static final float DISABLED_VIEW_ALPHA = 0.26f;
    private static final float DRAG_HELPER_SENSITIVITY = 2.0f;
    View mCard;
    private int mCardHeight;
    BaseCardContainer mContainer;
    ViewGroup mContent;
    private DragHelper mDragHelper;
    private boolean mEnabled;
    View mHeaderShadow;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsScrollableViewHandlingTouch;
    private boolean mIsUnableToDrag;
    Launcher mLauncher;
    private float mPagePosition;
    private float mPrevMotionY;
    private int mScreenHeight;
    private ScrollableViewHelper mScrollableViewHelper;
    private float mSlideOffset;
    private int mSlideRange;
    TextView mTitle;

    protected abstract View getContentView();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract SaveCustomizationTask getSaveCustomizationTask();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void reloadCustomizationSettings();

    public BaseCustomizationCard(Context context) {
        this(context, null, 0);
    }

    public BaseCustomizationCard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BaseCustomizationCard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mScrollableViewHelper = new ScrollableViewHelper();
        this.mEnabled = true;
        this.mPagePosition = 0.0f;
        this.mLauncher = (Launcher) context;
        inflate(context, R.layout.customization_card, this);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mContent = (LinearLayout) findViewById(R.id.content);
        if (this.mContent != null) {
            View content = getContentView();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            this.mContent.addView(content, layoutParams);
        }
        int screenHeight = Utilities.getScreenDimensions(getContext(), true).y;
        this.mCard = findViewById(R.id.card);
        if (this.mCard != null) {
            Drawable background = this.mCard.getBackground();
            if (background != null) {
                int backgroundColor = context.getColor(R.color.customization_card_background_color);
                background.setColorFilter(backgroundColor, PorterDuff.Mode.SRC_ATOP);
            }
            LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) this.mCard.getLayoutParams();
            lp.height = (int) (screenHeight * CARD_EXPANDED_FRACTION);
            lp.bottomMargin = (int) (screenHeight * (-0.1328125f));
        }
        this.mHeaderShadow = findViewById(R.id.header_shadow);
        if (this.mHeaderShadow != null) {
            int shadowColor = getContext().getColor(R.color.customization_header_shadow_color);
            Drawable shadow = ScrimUtil.makeCubicGradientScrimDrawable(shadowColor, 2, 48);
            this.mHeaderShadow.setBackground(shadow);
        }
        View scrollableView = getScrollableView();
        if (scrollableView != null) {
            this.mScrollableViewHelper.monitorTopScrolled(scrollableView, new ScrollableViewHelper.OnScrollListener() { // from class: net.oneplus.h2launcher.customizations.BaseCustomizationCard.1
                @Override // net.oneplus.h2launcher.customizations.ScrollableViewHelper.OnScrollListener
                public void onScroll(int scrollY) {
                    BaseCustomizationCard.this.setHeaderShadowVisible(scrollY != 0);
                }
            });
        }
        this.mCardHeight = (int) (screenHeight * CARD_COLLAPSED_FRACTION);
        this.mSlideRange = (int) (screenHeight * 0.1328125f);
        this.mDragHelper = DragHelper.create(this, DRAG_HELPER_SENSITIVITY, new DragHelperCallback());
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) this.mLauncher.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        this.mScreenHeight = metrics.heightPixels;
    }

    public static int getCollapsedHeight(Context context) {
        return (int) (Utilities.getScreenDimensions(context, true).y * CARD_COLLAPSED_FRACTION);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        this.mEnabled = enabled;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        if (!this.mEnabled) {
            return true;
        }
        if (this.mDragHelper == null) {
            return super.onInterceptTouchEvent(event);
        }
        if (this.mIsScrollableViewHandlingTouch) {
            this.mDragHelper.cancel();
            return false;
        }
        int action = event.getActionMasked();
        float x = event.getX();
        float y = event.getY();
        float adx = Math.abs(x - this.mInitialMotionX);
        float ady = Math.abs(y - this.mInitialMotionY);
        int dragSlop = this.mDragHelper.getTouchSlop();
        switch (action) {
            case 0:
                this.mIsUnableToDrag = false;
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                break;
            case 1:
            case 3:
                if (this.mDragHelper.isDragging()) {
                    this.mDragHelper.processTouchEvent(event);
                    return true;
                }
                break;
            case 2:
                if ((ady > dragSlop && adx > ady) || !isViewUnder(this.mCard, (int) this.mInitialMotionX, (int) this.mInitialMotionY)) {
                    this.mDragHelper.cancel();
                    this.mIsUnableToDrag = true;
                    return false;
                }
                break;
        }
        return this.mDragHelper.shouldInterceptTouchEvent(event);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent event) {
        if (!this.mEnabled || !this.mContainer.isShowing()) {
            return true;
        }
        if (!isSlideEnabled() || this.mDragHelper == null) {
            return super.onTouchEvent(event);
        }
        try {
            this.mDragHelper.processTouchEvent(event);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NonNull MotionEvent ev) {
        int action = ev.getActionMasked();
        if (!isSlideEnabled() || (this.mIsUnableToDrag && action != 0)) {
            this.mDragHelper.cancel();
            return super.dispatchTouchEvent(ev);
        }
        float y = ev.getY();
        if (action == 0) {
            this.mIsScrollableViewHandlingTouch = false;
            this.mPrevMotionY = y;
        } else if (action == 2) {
            float dy = y - this.mPrevMotionY;
            this.mPrevMotionY = y;
            if (!isViewUnder(getScrollableView(), (int) this.mInitialMotionX, (int) this.mInitialMotionY)) {
                return super.dispatchTouchEvent(ev);
            }
            if (dy > 0.0f) {
                int scrollableDistanceToTop = this.mScrollableViewHelper.getScrollableViewScrollPosition(getScrollableView(), true);
                if (scrollableDistanceToTop > 0) {
                    this.mIsScrollableViewHandlingTouch = true;
                    return super.dispatchTouchEvent(ev);
                }
                if (this.mIsScrollableViewHandlingTouch) {
                    MotionEvent up = MotionEvent.obtain(ev);
                    up.setAction(3);
                    super.dispatchTouchEvent(up);
                    up.recycle();
                    ev.setAction(0);
                }
                this.mIsScrollableViewHandlingTouch = false;
                return onTouchEvent(ev);
            }
            if (dy < 0.0f) {
                if (this.mSlideOffset < 1.0f) {
                    this.mIsScrollableViewHandlingTouch = false;
                    return onTouchEvent(ev);
                }
                if (!this.mIsScrollableViewHandlingTouch && this.mDragHelper.isDragging()) {
                    this.mDragHelper.cancel();
                    int scrollableDistanceToBottom = this.mScrollableViewHelper.getScrollableViewScrollPosition(getScrollableView(), false);
                    if (scrollableDistanceToBottom > 0) {
                        ev.setAction(0);
                    }
                }
                this.mIsScrollableViewHandlingTouch = true;
                return super.dispatchTouchEvent(ev);
            }
        } else if (action == 1 && this.mIsScrollableViewHandlingTouch) {
            this.mDragHelper.setDragState(0);
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mDragHelper != null && this.mDragHelper.continueSettling(true)) {
            postInvalidateOnAnimation();
        }
    }

    protected View getScrollableView() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getBottommostViewInScrollableView() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getSlideOffset() {
        return this.mSlideOffset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSlideOffset(float slideOffset) {
        this.mSlideOffset = slideOffset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onLeavingCustomization() {
        this.mDragHelper.stopSettling();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onShowCustomization() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onLeftCustomization() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPageScrolled(float position) {
        this.mPagePosition = position;
        float clampedPosition = position;
        if (CUTOFF_THRESHOLD + clampedPosition > 1.0f) {
            clampedPosition = 1.0f;
        }
        float slideOffset = 1.0f - clampedPosition;
        if (isSlideEnabled() && slideOffset < this.mSlideOffset) {
            slideTo(slideOffset);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPageIdle() {
        if (isSlideEnabled()) {
            float targetSlideOffset = this.mSlideOffset >= 0.5f ? 1.0f : 0.0f;
            if (targetSlideOffset != this.mSlideOffset) {
                smoothSlideTo(targetSlideOffset);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void trimMemory(int level) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTitle(int titleResId) {
        this.mTitle.setText(titleResId);
    }

    public BaseCardContainer getCardContainer() {
        return this.mContainer;
    }

    public void setCardContainer(BaseCardContainer container) {
        this.mContainer = container;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSlideRange() {
        return this.mSlideRange;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSlideEnabled() {
        View lastVisibleView;
        if (getScrollableView() == null || (lastVisibleView = getBottommostViewInScrollableView()) == null) {
            return false;
        }
        int[] loc = new int[2];
        lastVisibleView.getLocationOnScreen(loc);
        int bottomOnScreen = loc[1] + lastVisibleView.getHeight();
        return (this.mSlideOffset == 0.0f && bottomOnScreen > this.mScreenHeight) || this.mSlideOffset > 0.0f;
    }

    private boolean isViewUnder(View view, int x, int y) {
        if (view == null) {
            return false;
        }
        int[] viewLocation = new int[2];
        view.getLocationOnScreen(viewLocation);
        int[] parentLocation = new int[2];
        getLocationOnScreen(parentLocation);
        int screenX = parentLocation[0] + x;
        int screenY = parentLocation[1] + y;
        return screenX >= viewLocation[0] && screenX < viewLocation[0] + view.getWidth() && screenY >= viewLocation[1] && screenY < viewLocation[1] + view.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHeaderShadowVisible(boolean visible) {
        float alpha = visible ? 1.0f : 0.0f;
        if (this.mHeaderShadow != null && this.mHeaderShadow.getAlpha() != alpha) {
            this.mHeaderShadow.setAlpha(alpha);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void slideTo(float slideOffset) {
        if (isSlideEnabled()) {
            int top = computePanelTopPosition(slideOffset);
            this.mDragHelper.slideTo(this.mCard, top);
        }
    }

    void smoothSlideTo(float slideOffset) {
        if (isSlideEnabled()) {
            int top = computePanelTopPosition(slideOffset);
            if (this.mDragHelper.smoothSlideViewTo(this, top)) {
                postInvalidateOnAnimation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int computePanelTopPosition(float slideOffset) {
        int slidePixelOffset = (int) (getSlideRange() * slideOffset);
        return ((getMeasuredHeight() - getPaddingBottom()) - this.mCardHeight) - slidePixelOffset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float computeSlideOffset(int topPosition) {
        int topBoundCollapsed = computePanelTopPosition(0.0f);
        return (topBoundCollapsed - topPosition) / getSlideRange();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class SaveCustomizationTask implements Runnable {
        private final String mTag;

        public SaveCustomizationTask(String tag) {
            this.mTag = tag;
        }

        public String getTag() {
            return this.mTag;
        }
    }

    /* loaded from: classes.dex */
    private class DragHelperCallback extends DragHelper.Callback {
        private DragHelperCallback() {
        }

        @Override // net.oneplus.h2launcher.customizations.DragHelper.Callback
        public void onViewPositionChanged(View changedView, int top, int dy) {
            BaseCustomizationCard.this.mSlideOffset = BaseCustomizationCard.this.computeSlideOffset(top);
            if (BaseCustomizationCard.this.isSlideEnabled()) {
                BaseCustomizationCard.this.getCardContainer().onCardSlided(BaseCustomizationCard.this.mSlideOffset);
            }
        }

        @Override // net.oneplus.h2launcher.customizations.DragHelper.Callback
        public void onViewReleased(View releasedChild, float yVel) {
            float targetSlideOffset;
            if (BaseCustomizationCard.this.mPagePosition == 0.0f) {
                float direction = -yVel;
                if (direction > 0.0f) {
                    targetSlideOffset = 1.0f;
                } else if (direction < 0.0f) {
                    targetSlideOffset = 0.0f;
                } else if (BaseCustomizationCard.this.mSlideOffset >= 0.5f) {
                    targetSlideOffset = 1.0f;
                } else {
                    targetSlideOffset = 0.0f;
                }
                if (targetSlideOffset != BaseCustomizationCard.this.mSlideOffset) {
                    int target = BaseCustomizationCard.this.computePanelTopPosition(targetSlideOffset);
                    BaseCustomizationCard.this.mDragHelper.settleCapturedViewAt(target);
                    BaseCustomizationCard.this.invalidate();
                }
            }
        }

        @Override // net.oneplus.h2launcher.customizations.DragHelper.Callback
        public int getViewVerticalDragRange(View child) {
            if (BaseCustomizationCard.this.isSlideEnabled()) {
                return BaseCustomizationCard.this.getSlideRange();
            }
            return super.getViewVerticalDragRange(child);
        }

        @Override // net.oneplus.h2launcher.customizations.DragHelper.Callback
        public int clampViewPositionVertical(View child, int top) {
            int collapsedTop = BaseCustomizationCard.this.computePanelTopPosition(0.0f);
            int expandedTop = BaseCustomizationCard.this.computePanelTopPosition(1.0f);
            return Math.min(Math.max(top, expandedTop), collapsedTop);
        }
    }
}
