package com.oneplus.lib.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.ActionBar;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.view.GravityCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.oneplus.commonctrl.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public class OPTabLayout extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;
    private static final int DEFAULT_HEIGHT = 48;
    private static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    private static final int MOTION_NON_ADJACENT_OFFSET = 24;
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private Interpolator fast_out_slow_in_interpolator;
    private int mContentInsetStart;
    private ValueAnimator mIndicatorAnimator;
    private int mMode;
    private OnTabSelectedListener mOnTabSelectedListener;
    private final int mRequestedTabMaxWidth;
    private ValueAnimator mScrollAnimator;
    private Tab mSelectedTab;
    private final int mTabBackgroundResId;
    private View.OnClickListener mTabClickListener;
    private int mTabGravity;
    private int mTabHorizontalSpacing;
    private int mTabMaxWidth;
    private final int mTabMinWidth;
    private int mTabPaddingBottom;
    private int mTabPaddingEnd;
    private int mTabPaddingStart;
    private int mTabPaddingTop;
    private final SlidingTabStrip mTabStrip;
    private int mTabTextAppearance;
    private ColorStateList mTabTextColors;
    private final ArrayList<Tab> mTabs;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    /* loaded from: classes.dex */
    public interface OnTabSelectedListener {
        void onTabReselected(Tab tab);

        void onTabSelected(Tab tab);

        void onTabUnselected(Tab tab);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TabGravity {
    }

    public OPTabLayout(Context context) {
        this(context, null);
    }

    public OPTabLayout(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.OPTabLayoutStyle);
    }

    public OPTabLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTabs = new ArrayList<>();
        this.mTabMaxWidth = Integer.MAX_VALUE;
        this.fast_out_slow_in_interpolator = AnimationUtils.loadInterpolator(context, android.R.interpolator.fast_out_slow_in);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.mTabStrip = new SlidingTabStrip(context);
        addView(this.mTabStrip, -2, -1);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.OPTabLayout, defStyleAttr, R.style.Oneplus_Widget_Design_OPTabLayout);
        this.mTabStrip.setSelectedIndicatorHeight(a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabIndicatorHeight, 0));
        this.mTabStrip.setSelectedIndicatorColor(a.getColor(R.styleable.OPTabLayout_op_tabIndicatorColor, 0));
        this.mTabTextAppearance = a.getResourceId(R.styleable.OPTabLayout_op_tabTextAppearance, R.style.Oneplus_TextAppearance_Design_Tab);
        int dimensionPixelSize = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabPadding, 0);
        this.mTabPaddingBottom = dimensionPixelSize;
        this.mTabPaddingEnd = dimensionPixelSize;
        this.mTabPaddingTop = dimensionPixelSize;
        this.mTabPaddingStart = dimensionPixelSize;
        this.mTabPaddingStart = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabPaddingStart, this.mTabPaddingStart);
        this.mTabPaddingTop = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabPaddingTop, this.mTabPaddingTop);
        this.mTabPaddingEnd = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabPaddingEnd, this.mTabPaddingEnd);
        this.mTabPaddingBottom = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabPaddingBottom, this.mTabPaddingBottom);
        this.mTabTextColors = loadTextColorFromTextAppearance(this.mTabTextAppearance);
        if (a.hasValue(R.styleable.OPTabLayout_op_tabTextColor)) {
            this.mTabTextColors = a.getColorStateList(R.styleable.OPTabLayout_op_tabTextColor);
        }
        if (a.hasValue(R.styleable.OPTabLayout_op_tabSelectedTextColor)) {
            int selected = a.getColor(R.styleable.OPTabLayout_op_tabSelectedTextColor, 0);
            this.mTabTextColors = createColorStateList(this.mTabTextColors.getDefaultColor(), selected);
        }
        this.mTabMinWidth = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabMinWidth, 0);
        this.mRequestedTabMaxWidth = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabMaxWidth, 0);
        this.mTabBackgroundResId = a.getResourceId(R.styleable.OPTabLayout_op_tabBackground, 0);
        this.mContentInsetStart = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_tabContentStart, 0);
        this.mTabHorizontalSpacing = a.getDimensionPixelSize(R.styleable.OPTabLayout_op_horizontalSpacing, 0);
        this.mMode = a.getInt(R.styleable.OPTabLayout_op_tabMode, 1);
        this.mTabGravity = a.getInt(R.styleable.OPTabLayout_op_tabGravity, 0);
        a.recycle();
        applyModeAndGravity();
    }

    public void setSelectedTabIndicatorColor(int color) {
        this.mTabStrip.setSelectedIndicatorColor(color);
    }

    public void setSelectedTabIndicatorHeight(int height) {
        this.mTabStrip.setSelectedIndicatorHeight(height);
    }

    public void setScrollPosition(int position, float positionOffset, boolean updateSelectedText) {
        if ((this.mIndicatorAnimator == null || !this.mIndicatorAnimator.isRunning()) && position >= 0 && position < this.mTabStrip.getChildCount()) {
            this.mTabStrip.setIndicatorPositionFromTabPosition(position, positionOffset);
            scrollTo(calculateScrollXForTab(position, positionOffset), 0);
            if (updateSelectedText) {
                setSelectedTabView(Math.round(position + positionOffset));
            }
        }
    }

    public void addTab(Tab tab) {
        addTab(tab, this.mTabs.isEmpty());
    }

    public void addTab(Tab tab, int position) {
        addTab(tab, position, this.mTabs.isEmpty());
    }

    public void addTab(Tab tab, boolean setSelected) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab belongs to a different OPTabLayout.");
        }
        addTabView(tab, setSelected);
        configureTab(tab, this.mTabs.size());
        if (setSelected) {
            tab.select();
        }
    }

    public void addTab(Tab tab, int position, boolean setSelected) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab belongs to a different OPTabLayout.");
        }
        addTabView(tab, position, setSelected);
        configureTab(tab, position);
        if (setSelected) {
            tab.select();
        }
    }

    public void setOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        this.mOnTabSelectedListener = onTabSelectedListener;
    }

    public Tab newTab() {
        return new Tab(this);
    }

    public int getTabCount() {
        return this.mTabs.size();
    }

    public Tab getTabAt(int index) {
        return this.mTabs.get(index);
    }

    public int getSelectedTabPosition() {
        if (this.mSelectedTab != null) {
            return this.mSelectedTab.getPosition();
        }
        return -1;
    }

    public void removeTab(Tab tab) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab does not belong to this OPTabLayout.");
        }
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int position) {
        int selectedTabPosition = this.mSelectedTab != null ? this.mSelectedTab.getPosition() : 0;
        removeTabViewAt(position);
        Tab removedTab = this.mTabs.remove(position);
        if (removedTab != null) {
            removedTab.setPosition(-1);
        }
        int newTabCount = this.mTabs.size();
        for (int i = position; i < newTabCount; i++) {
            this.mTabs.get(i).setPosition(i);
        }
        if (selectedTabPosition == position) {
            selectTab(this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, position - 1)));
        }
    }

    public void removeAllTabs() {
        this.mTabStrip.removeAllViews();
        Iterator<Tab> i = this.mTabs.iterator();
        while (i.hasNext()) {
            Tab tab = i.next();
            tab.setPosition(-1);
            i.remove();
        }
        this.mSelectedTab = null;
    }

    public void setTabMode(int mode) {
        if (mode != this.mMode) {
            this.mMode = mode;
            applyModeAndGravity();
        }
    }

    public int getTabMode() {
        return this.mMode;
    }

    public void setTabGravity(int gravity) {
        if (this.mTabGravity != gravity) {
            this.mTabGravity = gravity;
            applyModeAndGravity();
        }
    }

    public int getTabGravity() {
        return this.mTabGravity;
    }

    public void setTabTextColors(ColorStateList textColor) {
        if (this.mTabTextColors != textColor) {
            this.mTabTextColors = textColor;
            updateAllTabs();
        }
    }

    public ColorStateList getTabTextColors() {
        return this.mTabTextColors;
    }

    public void setTabTextColors(int normalColor, int selectedColor) {
        setTabTextColors(createColorStateList(normalColor, selectedColor));
    }

    private void updateAllTabs() {
        int z = this.mTabStrip.getChildCount();
        for (int i = 0; i < z; i++) {
            updateTab(i);
        }
    }

    private TabView createTabView(Tab tab) {
        TabView tabView = new TabView(getContext(), tab);
        tabView.setFocusable(true);
        if (this.mTabClickListener == null) {
            this.mTabClickListener = new View.OnClickListener() { // from class: com.oneplus.lib.widget.OPTabLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TabView tabView2 = (TabView) view;
                    tabView2.getTab().select();
                }
            };
        }
        tabView.setOnClickListener(this.mTabClickListener);
        return tabView;
    }

    private void configureTab(Tab tab, int position) {
        tab.setPosition(position);
        this.mTabs.add(position, tab);
        int count = this.mTabs.size();
        for (int i = position + 1; i < count; i++) {
            this.mTabs.get(i).setPosition(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTab(int position) {
        TabView view = (TabView) this.mTabStrip.getChildAt(position);
        if (view != null) {
            view.update();
        }
    }

    private void addTabView(Tab tab, boolean setSelected) {
        TabView tabView = createTabView(tab);
        this.mTabStrip.addView(tabView, createLayoutParamsForTabs());
        updateTabViewsMargin();
        if (setSelected) {
            tabView.setSelected(true);
        }
    }

    private void addTabView(Tab tab, int position, boolean setSelected) {
        TabView tabView = createTabView(tab);
        this.mTabStrip.addView(tabView, position, createLayoutParamsForTabs());
        updateTabViewsMargin();
        if (setSelected) {
            tabView.setSelected(true);
        }
    }

    private void updateTabViewsMargin() {
        if (this.mTabStrip.getChildCount() > 0) {
            View child = this.mTabStrip.getChildAt(0);
            LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) child.getLayoutParams();
            lp.setMarginStart(0);
        }
    }

    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -1);
        lp.setMarginStart(this.mTabHorizontalSpacing);
        updateTabViewLayoutParams(lp);
        return lp;
    }

    private void updateTabViewLayoutParams(LinearLayout.LayoutParams lp) {
        if (this.mMode == 1 && this.mTabGravity == 0) {
            lp.width = 0;
            lp.weight = 1.0f;
        } else {
            lp.width = -2;
            lp.weight = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dpToPx(int dps) {
        return Math.round(getResources().getDisplayMetrics().density * dps);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int idealHeight = getContext().getResources().getDimensionPixelSize(R.dimen.tab_layout_default_height_material) + getPaddingTop() + getPaddingBottom();
        switch (View.MeasureSpec.getMode(heightMeasureSpec)) {
            case Integer.MIN_VALUE:
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(idealHeight, View.MeasureSpec.getSize(heightMeasureSpec)), LauncherActivityInfoCompat.FLAG_SUSPENDED);
                break;
            case 0:
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(idealHeight, LauncherActivityInfoCompat.FLAG_SUSPENDED);
                break;
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.mMode == 1 && getChildCount() == 1) {
            View child = getChildAt(0);
            int width = getMeasuredWidth();
            if (child.getMeasuredWidth() > width) {
                int childHeightMeasureSpec = getChildMeasureSpec(heightMeasureSpec, getPaddingTop() + getPaddingBottom(), child.getLayoutParams().height);
                int childWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(width, LauncherActivityInfoCompat.FLAG_SUSPENDED);
                child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
            }
        }
        int maxTabWidth = this.mRequestedTabMaxWidth;
        int defaultTabMaxWidth = getMeasuredWidth() - dpToPx(56);
        if (maxTabWidth == 0 || maxTabWidth > defaultTabMaxWidth) {
            maxTabWidth = defaultTabMaxWidth;
        }
        if (this.mTabMaxWidth != maxTabWidth) {
            this.mTabMaxWidth = maxTabWidth;
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    private void removeTabViewAt(int position) {
        this.mTabStrip.removeViewAt(position);
        updateTabViewsMargin();
        requestLayout();
    }

    private void animateToTab(int newPosition) {
        if (newPosition != -1) {
            if (getWindowToken() == null || !isLaidOut() || this.mTabStrip.childrenNeedLayout()) {
                setScrollPosition(newPosition, 0.0f, true);
                return;
            }
            int startScrollX = getScrollX();
            int targetScrollX = calculateScrollXForTab(newPosition, 0.0f);
            if (startScrollX != targetScrollX) {
                if (this.mScrollAnimator == null) {
                    this.mScrollAnimator = new ValueAnimator();
                    this.mScrollAnimator.setInterpolator(this.fast_out_slow_in_interpolator);
                    this.mScrollAnimator.setDuration(300L);
                    this.mScrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.oneplus.lib.widget.OPTabLayout.2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator animation) {
                            OPTabLayout.this.scrollTo(((Integer) animation.getAnimatedValue()).intValue(), 0);
                        }
                    });
                }
                this.mScrollAnimator.setIntValues(startScrollX, targetScrollX);
                this.mScrollAnimator.start();
            }
            this.mTabStrip.animateIndicatorToPosition(newPosition, 300);
        }
    }

    private void setSelectedTabView(int position) {
        int tabCount = this.mTabStrip.getChildCount();
        if (position < tabCount && !this.mTabStrip.getChildAt(position).isSelected()) {
            int i = 0;
            while (i < tabCount) {
                View child = this.mTabStrip.getChildAt(i);
                child.setSelected(i == position);
                i++;
            }
        }
    }

    void selectTab(Tab tab) {
        selectTab(tab, true);
    }

    void selectTab(Tab tab, boolean updateIndicator) {
        if (this.mSelectedTab == tab) {
            if (this.mSelectedTab != null) {
                if (this.mOnTabSelectedListener != null) {
                    this.mOnTabSelectedListener.onTabReselected(this.mSelectedTab);
                }
                animateToTab(tab.getPosition());
                return;
            }
            return;
        }
        int newPosition = tab != null ? tab.getPosition() : -1;
        setSelectedTabView(newPosition);
        if (updateIndicator) {
            if ((this.mSelectedTab == null || this.mSelectedTab.getPosition() == -1) && newPosition != -1) {
                setScrollPosition(newPosition, 0.0f, true);
            } else {
                animateToTab(newPosition);
            }
        }
        if (this.mSelectedTab != null && this.mOnTabSelectedListener != null) {
            this.mOnTabSelectedListener.onTabUnselected(this.mSelectedTab);
        }
        this.mSelectedTab = tab;
        if (this.mSelectedTab != null && this.mOnTabSelectedListener != null) {
            this.mOnTabSelectedListener.onTabSelected(this.mSelectedTab);
        }
    }

    private int calculateScrollXForTab(int position, float positionOffset) {
        if (this.mMode != 0) {
            return 0;
        }
        View selectedChild = this.mTabStrip.getChildAt(position);
        View nextChild = position + 1 < this.mTabStrip.getChildCount() ? this.mTabStrip.getChildAt(position + 1) : null;
        int selectedWidth = selectedChild != null ? selectedChild.getWidth() : 0;
        int nextWidth = nextChild != null ? nextChild.getWidth() : 0;
        return ((selectedChild.getLeft() + ((int) (((selectedWidth + nextWidth) * positionOffset) * 0.5f))) + (selectedChild.getWidth() / 2)) - (getWidth() / 2);
    }

    private void applyModeAndGravity() {
        int paddingStart = 0;
        if (this.mMode == 0) {
            paddingStart = Math.max(0, this.mContentInsetStart - this.mTabPaddingStart);
        }
        this.mTabStrip.setPaddingRelative(paddingStart, 0, 0, 0);
        switch (this.mMode) {
            case 0:
                this.mTabStrip.setGravity(GravityCompat.START);
                break;
            case 1:
                this.mTabStrip.setGravity(1);
                break;
        }
        updateTabViewsLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabViewsLayoutParams() {
        for (int i = 0; i < this.mTabStrip.getChildCount(); i++) {
            View child = this.mTabStrip.getChildAt(i);
            updateTabViewLayoutParams((LinearLayout.LayoutParams) child.getLayoutParams());
            child.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public static final class Tab {
        public static final int INVALID_POSITION = -1;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        private final OPTabLayout mParent;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;

        Tab(OPTabLayout parent) {
            this.mParent = parent;
        }

        public Object getTag() {
            return this.mTag;
        }

        public Tab setTag(Object tag) {
            this.mTag = tag;
            return this;
        }

        public View getCustomView() {
            return this.mCustomView;
        }

        public Tab setCustomView(View view) {
            this.mCustomView = view;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        public Tab setCustomView(int layoutResId) {
            return setCustomView(LayoutInflater.from(this.mParent.getContext()).inflate(layoutResId, (ViewGroup) null));
        }

        public Drawable getIcon() {
            return this.mIcon;
        }

        public int getPosition() {
            return this.mPosition;
        }

        void setPosition(int position) {
            this.mPosition = position;
        }

        public CharSequence getText() {
            return this.mText;
        }

        public Tab setIcon(Drawable icon) {
            this.mIcon = icon;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        public Tab setIcon(int resId) {
            return setIcon(this.mParent.getContext().getDrawable(resId));
        }

        public Tab setText(CharSequence text) {
            this.mText = text;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        public Tab setText(int resId) {
            return setText(this.mParent.getResources().getText(resId));
        }

        public void select() {
            this.mParent.selectTab(this);
        }

        public boolean isSelected() {
            return this.mParent.getSelectedTabPosition() == this.mPosition;
        }

        public Tab setContentDescription(int resId) {
            return setContentDescription(this.mParent.getResources().getText(resId));
        }

        public Tab setContentDescription(CharSequence contentDesc) {
            this.mContentDesc = contentDesc;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        public CharSequence getContentDescription() {
            return this.mContentDesc;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class TabView extends LinearLayout implements View.OnLongClickListener {
        private ImageView mCustomIconView;
        private TextView mCustomTextView;
        private View mCustomView;
        private ImageView mIconView;
        private final Tab mTab;
        private TextView mTextView;

        public TabView(Context context, Tab tab) {
            super(context);
            this.mTab = tab;
            if (OPTabLayout.this.mTabBackgroundResId != 0) {
                setBackgroundDrawable(context.getDrawable(OPTabLayout.this.mTabBackgroundResId));
            }
            setPaddingRelative(OPTabLayout.this.mTabPaddingStart, OPTabLayout.this.mTabPaddingTop, OPTabLayout.this.mTabPaddingEnd, OPTabLayout.this.mTabPaddingBottom);
            setGravity(17);
            update();
        }

        @Override // android.view.View
        public void setSelected(boolean selected) {
            boolean changed = isSelected() != selected;
            super.setSelected(selected);
            if (changed && selected) {
                sendAccessibilityEvent(4);
                if (this.mTextView != null) {
                    this.mTextView.setSelected(selected);
                }
                if (this.mIconView != null) {
                    this.mIconView.setSelected(selected);
                }
            }
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
            super.onInitializeAccessibilityEvent(event);
            event.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
            super.onInitializeAccessibilityNodeInfo(info);
            info.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            int measuredWidth = getMeasuredWidth();
            if (measuredWidth < OPTabLayout.this.mTabMinWidth || measuredWidth > OPTabLayout.this.mTabMaxWidth) {
                int widthMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(OPMathUtils.constrain(measuredWidth, OPTabLayout.this.mTabMinWidth, OPTabLayout.this.mTabMaxWidth), LauncherActivityInfoCompat.FLAG_SUSPENDED);
                super.onMeasure(widthMeasureSpec2, heightMeasureSpec);
            }
        }

        final void update() {
            Tab tab = this.mTab;
            View custom = tab.getCustomView();
            if (custom != null) {
                ViewParent customParent = custom.getParent();
                if (customParent != this) {
                    if (customParent != null) {
                        ((ViewGroup) customParent).removeView(custom);
                    }
                    addView(custom);
                }
                this.mCustomView = custom;
                if (this.mTextView != null) {
                    this.mTextView.setVisibility(8);
                }
                if (this.mIconView != null) {
                    this.mIconView.setVisibility(8);
                    this.mIconView.setImageDrawable(null);
                }
                this.mCustomTextView = (TextView) custom.findViewById(android.R.id.text1);
                this.mCustomIconView = (ImageView) custom.findViewById(android.R.id.icon);
            } else {
                if (this.mCustomView != null) {
                    removeView(this.mCustomView);
                    this.mCustomView = null;
                }
                this.mCustomTextView = null;
                this.mCustomIconView = null;
            }
            if (this.mCustomView == null) {
                if (this.mIconView == null) {
                    ImageView iconView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.op_layout_tab_icon, (ViewGroup) this, false);
                    addView(iconView, 0);
                    this.mIconView = iconView;
                }
                if (this.mTextView == null) {
                    TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.op_layout_tab_text, (ViewGroup) this, false);
                    addView(textView);
                    this.mTextView = textView;
                }
                this.mTextView.setTextAppearance(getContext(), OPTabLayout.this.mTabTextAppearance);
                if (OPTabLayout.this.mTabTextColors != null) {
                    this.mTextView.setTextColor(OPTabLayout.this.mTabTextColors);
                }
                updateTextAndIcon(tab, this.mTextView, this.mIconView);
                return;
            }
            if (this.mCustomTextView != null || this.mCustomIconView != null) {
                updateTextAndIcon(tab, this.mCustomTextView, this.mCustomIconView);
            }
        }

        private void updateTextAndIcon(Tab tab, TextView textView, ImageView iconView) {
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (iconView != null) {
                if (icon != null) {
                    iconView.setImageDrawable(icon);
                    iconView.setVisibility(0);
                    setVisibility(0);
                } else {
                    iconView.setVisibility(8);
                    iconView.setImageDrawable(null);
                }
                iconView.setContentDescription(tab.getContentDescription());
            }
            boolean hasText = !TextUtils.isEmpty(text);
            if (textView != null) {
                if (hasText) {
                    textView.setText(text);
                    textView.setContentDescription(tab.getContentDescription());
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (!hasText && !TextUtils.isEmpty(tab.getContentDescription())) {
                setOnLongClickListener(this);
            } else {
                setOnLongClickListener(null);
                setLongClickable(false);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v) {
            int[] screenPos = new int[2];
            getLocationOnScreen(screenPos);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int screenWidth = context.getResources().getDisplayMetrics().widthPixels;
            Toast cheatSheet = Toast.makeText(context, this.mTab.getContentDescription(), 0);
            cheatSheet.setGravity(49, (screenPos[0] + (width / 2)) - (screenWidth / 2), height);
            cheatSheet.show();
            return true;
        }

        public Tab getTab() {
            return this.mTab;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SlidingTabStrip extends LinearLayout {
        private int mIndicatorLeft;
        private int mIndicatorRight;
        private int mSelectedIndicatorHeight;
        private final Paint mSelectedIndicatorPaint;
        private int mSelectedPosition;
        private float mSelectionOffset;

        SlidingTabStrip(Context context) {
            super(context);
            this.mSelectedPosition = -1;
            this.mIndicatorLeft = -1;
            this.mIndicatorRight = -1;
            setWillNotDraw(false);
            this.mSelectedIndicatorPaint = new Paint();
        }

        void setSelectedIndicatorColor(int color) {
            if (this.mSelectedIndicatorPaint.getColor() != color) {
                this.mSelectedIndicatorPaint.setColor(color);
                postInvalidateOnAnimation();
            }
        }

        void setSelectedIndicatorHeight(int height) {
            if (this.mSelectedIndicatorHeight != height) {
                this.mSelectedIndicatorHeight = height;
                postInvalidateOnAnimation();
            }
        }

        boolean childrenNeedLayout() {
            int z = getChildCount();
            for (int i = 0; i < z; i++) {
                View child = getChildAt(i);
                if (child.getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        void setIndicatorPositionFromTabPosition(int position, float positionOffset) {
            this.mSelectedPosition = position;
            this.mSelectionOffset = positionOffset;
            updateIndicatorPosition();
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            if (View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824 && OPTabLayout.this.mMode == 1 && OPTabLayout.this.mTabGravity == 1) {
                int count = getChildCount();
                int unspecifiedSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int largestTabWidth = 0;
                for (int i = 0; i < count; i++) {
                    View child = getChildAt(i);
                    child.measure(unspecifiedSpec, heightMeasureSpec);
                    largestTabWidth = Math.max(largestTabWidth, child.getMeasuredWidth());
                }
                if (largestTabWidth > 0) {
                    int gutter = OPTabLayout.this.dpToPx(16);
                    if (largestTabWidth * count > getMeasuredWidth() - (gutter * 2)) {
                        OPTabLayout.this.mTabGravity = 0;
                        OPTabLayout.this.updateTabViewsLayoutParams();
                    } else {
                        for (int i2 = 0; i2 < count; i2++) {
                            LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) getChildAt(i2).getLayoutParams();
                            lp.width = largestTabWidth;
                            lp.weight = 0.0f;
                        }
                    }
                    super.onMeasure(widthMeasureSpec, heightMeasureSpec);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            super.onLayout(changed, l, t, r, b);
            updateIndicatorPosition();
        }

        private void updateIndicatorPosition() {
            int right;
            int left;
            View selectedTitle = getChildAt(this.mSelectedPosition);
            if (selectedTitle != null && selectedTitle.getWidth() > 0) {
                left = selectedTitle.getLeft();
                right = selectedTitle.getRight();
                if (this.mSelectionOffset > 0.0f && this.mSelectedPosition < getChildCount() - 1) {
                    View nextTitle = getChildAt(this.mSelectedPosition + 1);
                    left = (int) ((this.mSelectionOffset * nextTitle.getLeft()) + ((1.0f - this.mSelectionOffset) * left));
                    right = (int) ((this.mSelectionOffset * nextTitle.getRight()) + ((1.0f - this.mSelectionOffset) * right));
                }
            } else {
                right = -1;
                left = -1;
            }
            setIndicatorPosition(left, right);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIndicatorPosition(int left, int right) {
            if (left != this.mIndicatorLeft || right != this.mIndicatorRight) {
                this.mIndicatorLeft = left;
                this.mIndicatorRight = right;
                postInvalidateOnAnimation();
            }
        }

        void animateIndicatorToPosition(final int position, int duration) {
            final int startRight;
            final int startLeft;
            boolean isRtl = getLayoutDirection() == 1;
            View targetView = getChildAt(position);
            final int targetLeft = targetView.getLeft();
            final int targetRight = targetView.getRight();
            if (Math.abs(position - this.mSelectedPosition) > 1) {
                int offset = OPTabLayout.this.dpToPx(24);
                if (position < this.mSelectedPosition) {
                    if (isRtl) {
                        startRight = targetLeft - offset;
                        startLeft = startRight;
                    } else {
                        startRight = targetRight + offset;
                        startLeft = startRight;
                    }
                } else if (isRtl) {
                    startRight = targetRight + offset;
                    startLeft = startRight;
                } else {
                    startRight = targetLeft - offset;
                    startLeft = startRight;
                }
            } else {
                startLeft = this.mIndicatorLeft;
                startRight = this.mIndicatorRight;
            }
            if (startLeft != targetLeft || startRight != targetRight) {
                ValueAnimator animator = OPTabLayout.this.mIndicatorAnimator = new ValueAnimator();
                animator.setInterpolator(OPTabLayout.this.fast_out_slow_in_interpolator);
                animator.setDuration(duration);
                animator.setFloatValues(0.0f, 1.0f);
                animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.oneplus.lib.widget.OPTabLayout.SlidingTabStrip.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        float fraction = animation.getAnimatedFraction();
                        SlidingTabStrip.this.setIndicatorPosition(OPAnimationUtils.lerp(startLeft, targetLeft, fraction), OPAnimationUtils.lerp(startRight, targetRight, fraction));
                    }
                });
                animator.addListener(new AnimatorListenerAdapter() { // from class: com.oneplus.lib.widget.OPTabLayout.SlidingTabStrip.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        SlidingTabStrip.this.mSelectedPosition = position;
                        SlidingTabStrip.this.mSelectionOffset = 0.0f;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                        SlidingTabStrip.this.mSelectedPosition = position;
                        SlidingTabStrip.this.mSelectionOffset = 0.0f;
                    }
                });
                animator.start();
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.mIndicatorLeft >= 0 && this.mIndicatorRight > this.mIndicatorLeft) {
                canvas.drawRect(this.mIndicatorLeft, getHeight() - this.mSelectedIndicatorHeight, this.mIndicatorRight, getHeight(), this.mSelectedIndicatorPaint);
            }
        }
    }

    private static ColorStateList createColorStateList(int defaultColor, int selectedColor) {
        int[][] states = new int[2];
        int[] colors = new int[2];
        states[0] = SELECTED_STATE_SET;
        colors[0] = selectedColor;
        int i = 0 + 1;
        states[i] = EMPTY_STATE_SET;
        colors[i] = defaultColor;
        int i2 = i + 1;
        return new ColorStateList(states, colors);
    }

    private ColorStateList loadTextColorFromTextAppearance(int textAppearanceResId) {
        TypedArray a = getContext().obtainStyledAttributes(textAppearanceResId, R.styleable.TextAppearance);
        try {
            return a.getColorStateList(R.styleable.TextAppearance_android_textColor);
        } finally {
            a.recycle();
        }
    }
}
