package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;

/* loaded from: classes.dex */
public class BaseViewPager extends ViewPager {
    protected Customization[] mCustomizations;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface CardOperation {
        void perform(int i, BaseCustomizationCard baseCustomizationCard);
    }

    public BaseViewPager(Context context) {
        this(context, null);
    }

    public BaseViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        Resources r = getResources();
        int pageMargin = -(r.getDimensionPixelSize(R.dimen.customization_card_padding_sides) + r.getDimensionPixelSize(R.dimen.customization_card_side_reveal));
        setClipToPadding(false);
        setPageMargin(pageMargin);
        setPageTransformer(false, new CustomizationPageTransformer());
        addOnPageChangeListener(new OnBasePageChangeListener());
        setOverScrollMode(2);
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        return null;
    }

    public void reloadCustomizations() {
        iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.1
            @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
            public void perform(int index, BaseCustomizationCard card) {
                card.reloadCustomizationSettings();
            }
        });
    }

    public List<BaseCustomizationCard.SaveCustomizationTask> gatherSaveCustomizationTasks() {
        final List<BaseCustomizationCard.SaveCustomizationTask> tasks = new ArrayList<>();
        iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.2
            @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
            public void perform(int index, BaseCustomizationCard card) {
                BaseCustomizationCard.SaveCustomizationTask task = card.getSaveCustomizationTask();
                if (task != null) {
                    tasks.add(task);
                }
            }
        });
        return tasks;
    }

    public void notifyLeavingCustomizations() {
        iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.3
            @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
            public void perform(int index, BaseCustomizationCard card) {
                card.onLeavingCustomization();
            }
        });
    }

    public void notifyLeftCustomizations() {
        iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.4
            @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
            public void perform(int index, BaseCustomizationCard card) {
                card.onLeftCustomization();
            }
        });
    }

    public void notifyShowCustomizations() {
        iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.5
            @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
            public void perform(int index, BaseCustomizationCard card) {
                card.setEnabled(index == BaseViewPager.this.getCurrentItem());
                card.onShowCustomization();
            }
        });
    }

    public void notifySystemOnLowMemory(final int level) {
        iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.6
            @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
            public void perform(int index, BaseCustomizationCard card) {
                card.trimMemory(level);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPageScrolled(View page, float position) {
        if (page instanceof BaseCustomizationCard) {
            float marginOffset = Math.abs(getPageMargin() / page.getWidth());
            float absPosition = Math.abs(position);
            BaseCustomizationCard card = (BaseCustomizationCard) page;
            card.onPageScrolled(Math.abs(position) + (absPosition * marginOffset));
        }
    }

    public int getMinCardTop() {
        View card;
        int top;
        int minCardTop = Integer.MAX_VALUE;
        int count = getChildCount();
        for (int index = 0; index < count; index++) {
            View child = getChildAt(index);
            if ((child instanceof BaseCustomizationCard) && (card = child.findViewById(R.id.card)) != null && (top = card.getTop()) < minCardTop) {
                minCardTop = top;
            }
        }
        if (minCardTop == Integer.MAX_VALUE) {
            return 0;
        }
        return minCardTop;
    }

    protected Customization[] getCustomizations() {
        throw new UnsupportedOperationException("Not implemented.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseCustomizationCard getCurrentCustomizationCard() {
        return getCustomizationCardAt(getCurrentItem());
    }

    private BaseCustomizationCard getCustomizationCardAt(int position) {
        Object tag;
        int count = getChildCount();
        for (int index = 0; index < count; index++) {
            View child = getChildAt(index);
            if ((child instanceof BaseCustomizationCard) && (tag = child.getTag()) != null && ((Integer) tag).intValue() == position) {
                return (BaseCustomizationCard) child;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iterateOverCards(CardOperation operation) {
        int count = getChildCount();
        for (int index = 0; index < count; index++) {
            View child = getChildAt(index);
            if ((child instanceof BaseCustomizationCard) && operation != null) {
                operation.perform(index, (BaseCustomizationCard) child);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public enum Customization {
        SEARCH_BAR(R.string.action_search),
        ICONS(R.string.customization_title_icons),
        APP_DRAWER(R.string.customization_title_app_drawer),
        WALLPAPERS(R.string.customization_title_wallpapers),
        COLOR(R.string.customization_title_color),
        TIME_WIDGET(R.string.customization_title_time_widget),
        ICON_REARRANGEMENT(R.string.customization_title_icon_rearrangement);

        private int mTitleResId;

        Customization(int titleResId) {
            this.mTitleResId = titleResId;
        }

        public int getTitleResId() {
            return this.mTitleResId;
        }
    }

    /* loaded from: classes.dex */
    public class CustomizationPageTransformer implements ViewPager.PageTransformer {
        public CustomizationPageTransformer() {
        }

        @Override // android.support.v4.view.ViewPager.PageTransformer
        public void transformPage(View page, float position) {
            if (position < -1.0f) {
                page.setAlpha(0.0f);
                return;
            }
            if (position <= 0.0f) {
                page.setAlpha((0.5f * position) + 1.0f);
                BaseViewPager.this.notifyPageScrolled(page, position);
            } else if (position <= 1.0f) {
                page.setAlpha(1.0f - (0.5f * position));
                BaseViewPager.this.notifyPageScrolled(page, position);
            } else {
                page.setAlpha(0.0f);
            }
        }
    }

    /* loaded from: classes.dex */
    public class OnBasePageChangeListener implements ViewPager.OnPageChangeListener {
        public OnBasePageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            if (state == 0) {
                BaseViewPager.this.iterateOverCards(new CardOperation() { // from class: net.oneplus.h2launcher.customizations.BaseViewPager.OnBasePageChangeListener.1
                    @Override // net.oneplus.h2launcher.customizations.BaseViewPager.CardOperation
                    public void perform(int index, BaseCustomizationCard card) {
                        card.setEnabled(index == BaseViewPager.this.getCurrentItem());
                        if (index == BaseViewPager.this.getCurrentItem()) {
                            card.onPageIdle();
                        }
                    }
                });
            }
        }
    }
}
