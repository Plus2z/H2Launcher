package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.customizations.BaseViewPager;
import net.oneplus.h2launcher.oos.StyleConfigurationInfo;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class CustomizationPager extends BaseViewPager {
    private static final String TAG = CustomizationPager.class.getSimpleName();

    public CustomizationPager(Context context) {
        this(context, null);
    }

    public CustomizationPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mCustomizations = getCustomizations();
        setOffscreenPageLimit(this.mCustomizations.length - 1);
        setAdapter(new CustomizationPagerAdapter());
    }

    @Override // net.oneplus.h2launcher.customizations.BaseViewPager
    protected BaseViewPager.Customization[] getCustomizations() {
        StyleConfigurationInfo.OptionCards cards = StyleManager.getInstance().getCardType();
        if (cards.equals(StyleConfigurationInfo.OptionCards.SIMPLIFIED)) {
            return new BaseViewPager.Customization[]{BaseViewPager.Customization.ICONS};
        }
        if (cards.equals(StyleConfigurationInfo.OptionCards.STANDARD)) {
            if (StyleManager.getInstance().showSearchBarInOptions()) {
                return new BaseViewPager.Customization[]{BaseViewPager.Customization.SEARCH_BAR, BaseViewPager.Customization.ICONS};
            }
            return new BaseViewPager.Customization[]{BaseViewPager.Customization.ICONS};
        }
        throw new RuntimeException("Invalid card type: " + cards);
    }

    /* loaded from: classes.dex */
    public class CustomizationPagerAdapter extends PagerAdapter {
        public CustomizationPagerAdapter() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return CustomizationPager.this.mCustomizations.length;
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            BaseViewPager.Customization customization = CustomizationPager.this.mCustomizations[position];
            BaseCustomizationCard card = null;
            switch (customization) {
                case SEARCH_BAR:
                    card = new SearchBarCustomizationCard(CustomizationPager.this.getContext());
                    break;
                case ICONS:
                    card = new IconCustomizationCard(CustomizationPager.this.getContext());
                    break;
                default:
                    Logger.w(CustomizationPager.TAG, "Unknown customization: " + customization);
                    break;
            }
            if (card != null) {
                card.setTag(Integer.valueOf(position));
                card.setTitle(customization.getTitleResId());
                card.setCardContainer(((Launcher) CustomizationPager.this.getContext()).getCustomizationsView());
                container.addView(card);
            }
            return card;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }
    }
}
