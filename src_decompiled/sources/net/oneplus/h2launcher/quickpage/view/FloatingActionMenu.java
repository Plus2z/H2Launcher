package net.oneplus.h2launcher.quickpage.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.annotation.IdRes;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.OvershootInterpolator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.compat.AppWidgetManagerCompat;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.quickpage.DataProvider;
import net.oneplus.h2launcher.widget.WidgetConstant;

/* loaded from: classes.dex */
public class FloatingActionMenu extends RelativeLayout implements View.OnClickListener {
    private final int ITEM_COUNT;
    private boolean mAnimating;
    private ActionMenuCallback mCallback;
    private boolean mExpanded;
    private boolean mHasMeasuredOffsets;
    private FloatingActionMenuItem[] mItems;
    private Toast mLimitToast;
    private OnePlusFloatingActionButton mMainButton;
    private View.OnClickListener mMainButtonOnClickListener;
    private ViewTreeObserver.OnGlobalLayoutListener mOffsetListener;
    private DataProvider mProvider;
    private boolean mUserHasClicked;

    /* loaded from: classes.dex */
    public interface ActionMenuCallback {
        void onButtonPressed(MenuItem menuItem);

        void onCollapse();

        void onExpand();
    }

    /* loaded from: classes.dex */
    public enum MenuItem {
        WIDGETS(0),
        NOTE(1),
        CALENDAR(2),
        CARD(3),
        APPS(4),
        CONTACTS(5),
        MEMO(6);

        int index;

        MenuItem(int index) {
            this.index = index;
        }

        public static int size() {
            return values().length;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class FloatingActionMenuItem {
        View buttonText;
        View container;
        boolean isRemoved;
        float offset;

        private FloatingActionMenuItem() {
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (!this.mUserHasClicked && this.mCallback != null && !hasReachedLimit() && v.getTag() != null) {
            this.mCallback.onButtonPressed((MenuItem) v.getTag());
            this.mUserHasClicked = true;
        }
        collapse();
    }

    public FloatingActionMenu(Context context) {
        super(context);
        this.ITEM_COUNT = MenuItem.size();
        this.mItems = new FloatingActionMenuItem[this.ITEM_COUNT];
    }

    public FloatingActionMenu(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.ITEM_COUNT = MenuItem.size();
        this.mItems = new FloatingActionMenuItem[this.ITEM_COUNT];
    }

    public FloatingActionMenu(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.ITEM_COUNT = MenuItem.size();
        this.mItems = new FloatingActionMenuItem[this.ITEM_COUNT];
    }

    public void setDataProvider(DataProvider provider) {
        this.mProvider = provider;
    }

    public void setMainButtonClickable(boolean clickable) {
        this.mMainButton.setOnClickListener(clickable ? this.mMainButtonOnClickListener : null);
    }

    public void hideMainButton() {
        if (!this.mAnimating) {
            this.mMainButton.animate().scaleX(0.0f).scaleY(0.0f).withLayer().setDuration(getResources().getInteger(R.integer.fab_animation_duration)).setInterpolator(new FastOutSlowInInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    FloatingActionMenu.this.mMainButton.setVisibility(4);
                    FloatingActionMenu.this.mAnimating = false;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    FloatingActionMenu.this.mAnimating = true;
                    FloatingActionMenu.this.mMainButton.setShadow(false);
                    FloatingActionMenu.this.setMainButtonClickable(false);
                }
            }).start();
        }
    }

    public void showMainButton() {
        this.mMainButton.animate().scaleX(1.0f).scaleY(1.0f).withLayer().setDuration(getResources().getInteger(R.integer.fab_animation_duration)).setInterpolator(new FastOutSlowInInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                FloatingActionMenu.this.setMainButtonClickable(true);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                FloatingActionMenu.this.mMainButton.setShadow(true);
                FloatingActionMenu.this.mMainButton.setVisibility(0);
            }
        }).start();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        configureButton(MenuItem.WIDGETS, R.id.fab_action_widgets_container, R.id.fab_action_widgets, R.id.fab_action_widgets_text);
        configureButton(MenuItem.NOTE, R.id.fab_action_note_container, R.id.fab_action_note, R.id.fab_action_note_text);
        configureButton(MenuItem.CALENDAR, R.id.fab_action_calendar_container, R.id.fab_action_calendar, R.id.fab_action_calendar_text);
        configureButton(MenuItem.CARD, R.id.fab_action_card_container, R.id.fab_action_card, R.id.fab_action_card_text);
        configureButton(MenuItem.APPS, R.id.fab_action_apps_container, R.id.fab_action_apps, R.id.fab_action_apps_text);
        configureButton(MenuItem.CONTACTS, R.id.fab_action_contacts_container, R.id.fab_action_contacts, R.id.fab_action_contacts_text);
        configureButton(MenuItem.MEMO, R.id.fab_action_memo_container, R.id.fab_action_memo, R.id.fab_action_memo_text);
        this.mMainButton = (OnePlusFloatingActionButton) findViewById(R.id.main_fab);
        this.mMainButtonOnClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (FloatingActionMenu.this.hasReachedLimit()) {
                    if (FloatingActionMenu.this.mLimitToast == null || !FloatingActionMenu.this.mLimitToast.getView().isShown()) {
                        FloatingActionMenu.this.mLimitToast = Toast.makeText(FloatingActionMenu.this.getContext(), R.string.board_limit_reached, 0);
                        FloatingActionMenu.this.mLimitToast.show();
                        return;
                    }
                    return;
                }
                if (!FloatingActionMenu.this.mExpanded) {
                    FloatingActionMenu.this.updateVisibilities(true);
                    FloatingActionMenu.this.expand();
                } else {
                    FloatingActionMenu.this.collapse();
                }
                FloatingActionMenu.this.mUserHasClicked = false;
            }
        };
        setMainButtonClickable(true);
        updateVisibilities(false);
        this.mOffsetListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                FloatingActionMenu.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int itemPadding = FloatingActionMenu.this.getResources().getDimensionPixelSize(R.dimen.item_padding);
                for (int itemType = 0; itemType < FloatingActionMenu.this.ITEM_COUNT; itemType++) {
                    FloatingActionMenu.this.mItems[itemType].offset = ((itemType + 1) * FloatingActionMenu.this.getResources().getDimensionPixelSize(R.dimen.fab_magic_padding)) + itemPadding;
                }
                FloatingActionMenu.this.mHasMeasuredOffsets = true;
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.mOffsetListener);
    }

    private void configureButton(MenuItem type, @IdRes int containerId, @IdRes int buttonId, @IdRes int textId) {
        FloatingActionMenuItem item = new FloatingActionMenuItem();
        item.container = findViewById(containerId);
        View button = findViewById(buttonId);
        button.setTag(type);
        button.setOnClickListener(this);
        item.buttonText = item.container.findViewById(textId);
        item.buttonText.setAlpha(0.0f);
        this.mItems[type.index] = item;
    }

    private float getOffsetForItem(int itemType) {
        int hiddenItems = 0;
        for (int i = 0; i < itemType; i++) {
            if (this.mItems[i].isRemoved) {
                hiddenItems++;
            }
        }
        return this.mItems[itemType - hiddenItems].offset;
    }

    private void startAnimation(boolean expand) {
        ArrayList<Animator> animators = new ArrayList<>();
        AnimatorSet animatorSet = new AnimatorSet();
        for (int itemType = 0; itemType < this.ITEM_COUNT; itemType++) {
            animators.add(createTranslationAnimator(itemType, expand));
            animators.add(createFadingAnimator(this.mItems[itemType].container, expand));
            animators.add(createFadingAnimator(this.mItems[itemType].buttonText, expand));
        }
        animatorSet.playTogether(animators);
        animatorSet.start();
    }

    private Animator createTranslationAnimator(int itemType, boolean expand) {
        int itemPadding = getResources().getDimensionPixelSize(R.dimen.item_padding);
        if (expand) {
            return ObjectAnimator.ofFloat(this.mItems[itemType].container, (Property<View, Float>) TRANSLATION_Y, getOffsetForItem(itemType), itemPadding).setDuration(getResources().getInteger(android.R.integer.config_shortAnimTime));
        }
        return ObjectAnimator.ofFloat(this.mItems[itemType].container, (Property<View, Float>) TRANSLATION_Y, itemPadding, getOffsetForItem(itemType)).setDuration(getResources().getInteger(android.R.integer.config_shortAnimTime));
    }

    private Animator createFadingAnimator(View view, boolean expand) {
        if (expand) {
            return ObjectAnimator.ofFloat(view, (Property<View, Float>) ALPHA, 0.0f, 1.0f).setDuration(getResources().getInteger(android.R.integer.config_shortAnimTime));
        }
        return ObjectAnimator.ofFloat(view, (Property<View, Float>) ALPHA, 1.0f, 0.0f).setDuration(getResources().getInteger(android.R.integer.config_shortAnimTime));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVisibilities(boolean isVisible) {
        if (isVisible) {
            updateItems();
            return;
        }
        for (int itemType = 0; itemType < this.ITEM_COUNT; itemType++) {
            this.mItems[itemType].container.setVisibility(8);
        }
    }

    public void setMainButtonColor(int color) {
        this.mMainButton.setColorNormal(color);
        this.mMainButton.setColorPressed(color);
    }

    public void setCallback(ActionMenuCallback callback) {
        this.mCallback = callback;
    }

    public void collapse() {
        if (this.mExpanded) {
            startAnimation(false);
            this.mMainButton.animate().rotation(0.0f);
            this.mExpanded = false;
            if (this.mCallback != null) {
                this.mCallback.onCollapse();
            }
        }
    }

    public void expand() {
        if (!this.mExpanded) {
            startAnimation(true);
            this.mMainButton.animate().rotation(45.0f).setDuration(getResources().getInteger(android.R.integer.config_shortAnimTime)).setInterpolator(new OvershootInterpolator(4.0f)).setListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.quickpage.view.FloatingActionMenu.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    FloatingActionMenu.this.mMainButton.animate().setListener(null);
                }
            });
            this.mExpanded = true;
            if (this.mCallback != null) {
                this.mCallback.onExpand();
            }
        }
    }

    public void updateMargin(boolean forceNavigationBar) {
        CoordinatorLayout.LayoutParams params = (CoordinatorLayout.LayoutParams) getLayoutParams();
        params.bottomMargin = getResources().getDimensionPixelSize(forceNavigationBar ? R.dimen.fab_margin_software_keys : R.dimen.fab_margin_hardware_keys);
    }

    public void updateItems() {
        if (this.mHasMeasuredOffsets) {
            boolean isInQuickPageCard = this.mProvider.containsWidget(WidgetConstant.COM_ONEPLUS_CARD);
            boolean isInProviderCard = false;
            this.mProvider.containsWidget(WidgetConstant.COM_ONEPLUS_NOTE, WidgetConstant.COM_ONEPLUS_NOTE_QUICKNOTEWIDGETPROVIDER);
            boolean isInQuickPageCalendar = this.mProvider.containsWidget(WidgetConstant.COM_ONEPLUS_CALENDAR);
            boolean isInProviderCalendar = false;
            AppWidgetManagerCompat mWidgetManager = AppWidgetManagerCompat.getInstance(getContext().getApplicationContext());
            List<AppWidgetProviderInfo> allWidgets = mWidgetManager.getAllProviders();
            for (AppWidgetProviderInfo info : allWidgets) {
                if (info != null) {
                    String packageName = info.provider.getPackageName();
                    String className = info.provider.getClassName();
                    PackageManager pm = getContext().getApplicationContext().getPackageManager();
                    if (WidgetConstant.COM_ONEPLUS_CARD.equals(packageName)) {
                        isInProviderCard = true;
                        ((TextView) this.mItems[MenuItem.CARD.index].buttonText).setText(info.loadLabel(pm));
                    }
                    if (WidgetConstant.COM_ONEPLUS_NOTE.equals(packageName) && WidgetConstant.COM_ONEPLUS_NOTE_QUICKNOTEWIDGETPROVIDER.equals(className)) {
                        ((TextView) this.mItems[MenuItem.NOTE.index].buttonText).setText(info.loadLabel(pm));
                    }
                    if (WidgetConstant.COM_ONEPLUS_CALENDAR.equals(packageName)) {
                        isInProviderCalendar = true;
                        ((TextView) this.mItems[MenuItem.CALENDAR.index].buttonText).setText(info.loadLabel(pm));
                    }
                }
            }
            this.mItems[MenuItem.WIDGETS.index].isRemoved = false;
            this.mItems[MenuItem.NOTE.index].isRemoved = true;
            this.mItems[MenuItem.CALENDAR.index].isRemoved = !isInProviderCalendar || isInQuickPageCalendar;
            this.mItems[MenuItem.CARD.index].isRemoved = !isInProviderCard || isInQuickPageCard;
            this.mItems[MenuItem.APPS.index].isRemoved = this.mProvider.contains(0);
            this.mItems[MenuItem.CONTACTS.index].isRemoved = this.mProvider.contains(1);
            this.mItems[MenuItem.MEMO.index].isRemoved = (StyleManager.getInstance().isSupportMemo() && this.mProvider.getCreateNotePanelIndex() == -1) ? false : true;
            for (int itemType = 0; itemType < this.ITEM_COUNT; itemType++) {
                this.mItems[itemType].container.setVisibility(this.mItems[itemType].isRemoved ? 8 : 0);
                this.mItems[itemType].container.setTranslationY(getOffsetForItem(itemType));
            }
        }
    }

    public boolean hasReachedLimit() {
        return this.mProvider.getCountExcludingNotes() == 16;
    }

    public void removeGlobalLayoutListeners() {
        if (this.mOffsetListener != null) {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.mOffsetListener);
        }
    }
}
