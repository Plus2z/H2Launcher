package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.content.Intent;
import android.support.v4.view.PagerAdapter;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.customizations.BaseViewPager;
import net.oneplus.h2launcher.oos.StyleConfigurationInfo;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class WallpaperPager extends BaseViewPager {
    private static final String TAG = WallpaperPager.class.getSimpleName();
    private WallpaperCard mWallpaperCard;
    private WallpaperColorCustomizationCard mWallpaperColorCard;

    public WallpaperPager(Context context) {
        this(context, null);
    }

    public WallpaperPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mCustomizations = getCustomizations();
        setOffscreenPageLimit(this.mCustomizations.length - 1);
        setAdapter(new WallpaperPagerAdapter());
    }

    @Override // net.oneplus.h2launcher.customizations.BaseViewPager
    protected BaseViewPager.Customization[] getCustomizations() {
        StyleConfigurationInfo.OptionCards cards = StyleManager.getInstance().getCardType();
        if (cards.equals(StyleConfigurationInfo.OptionCards.SIMPLIFIED)) {
            return new BaseViewPager.Customization[]{BaseViewPager.Customization.TIME_WIDGET, BaseViewPager.Customization.WALLPAPERS, BaseViewPager.Customization.COLOR};
        }
        if (cards.equals(StyleConfigurationInfo.OptionCards.STANDARD)) {
            return new BaseViewPager.Customization[]{BaseViewPager.Customization.WALLPAPERS};
        }
        throw new RuntimeException("Invalid card type: " + cards);
    }

    public void init(WallpaperPreview wallpaperPreview, int requestCode, int resultCode, Intent data) {
        Logger.d(TAG, "WallpaperPager init, requestCode:%d", Integer.valueOf(requestCode));
        boolean isWallpaperScrollable = StyleManager.getInstance().isWallpaperScrollable();
        int homeScreenRequestCode = !isWallpaperScrollable ? 15 : 10;
        int lockScreenRequestCode = !isWallpaperScrollable ? 16 : 25;
        if (requestCode == homeScreenRequestCode || requestCode == lockScreenRequestCode) {
            if (this.mWallpaperCard.isMemoryTrimmed()) {
                ((Launcher) getContext()).updateWallpaperPreview();
                wallpaperPreview.selectPage(1, false);
                this.mWallpaperCard.setSlideOffset(0.0f);
                this.mWallpaperCard.loadWallpaper(wallpaperPreview);
                this.mWallpaperCard.performLoadThumbnails();
            }
            this.mWallpaperCard.onActivityResult(requestCode, resultCode, data);
        } else {
            wallpaperPreview.selectPage(1, true);
            this.mWallpaperCard.loadWallpaper(wallpaperPreview);
            this.mWallpaperCard.performLoadThumbnails();
            refreshWallpaperCards();
        }
        setCurrentItem(Arrays.asList(this.mCustomizations).indexOf(BaseViewPager.Customization.WALLPAPERS));
    }

    public WallpaperCard getWallpaperCard() {
        return this.mWallpaperCard;
    }

    public WallpaperColorCustomizationCard getWallpaperColorCard() {
        return this.mWallpaperColorCard;
    }

    private void refreshWallpaperCards() {
        if (getWallpaperCard() != null) {
            getWallpaperCard().reloadCustomizationSettings();
        }
        if (getWallpaperColorCard() != null) {
            getWallpaperColorCard().reloadCustomizationSettings();
        }
    }

    /* loaded from: classes.dex */
    public class WallpaperPagerAdapter extends PagerAdapter {
        public WallpaperPagerAdapter() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return WallpaperPager.this.mCustomizations.length;
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            Context context = WallpaperPager.this.getContext();
            WallpapersContainerView wallpapersView = ((Launcher) context).getWallpapersView();
            WallpaperPreview preview = wallpapersView.getWallpaperPreview();
            BaseViewPager.Customization customization = WallpaperPager.this.mCustomizations[position];
            BaseCustomizationCard card = null;
            switch (customization) {
                case WALLPAPERS:
                    card = new WallpaperCard(context);
                    WallpaperPager.this.mWallpaperCard = (WallpaperCard) card;
                    if (preview != null) {
                        WallpaperPager.this.mWallpaperCard.setWallpaperPreview(preview);
                        break;
                    }
                    break;
                case COLOR:
                    card = new WallpaperColorCustomizationCard(context);
                    WallpaperPager.this.mWallpaperColorCard = (WallpaperColorCustomizationCard) card;
                    if (preview != null && WallpaperPager.this.mWallpaperCard != null) {
                        WallpaperPager.this.mWallpaperCard.setWallpaperColorsListener(WallpaperPager.this.mWallpaperColorCard);
                        break;
                    }
                    break;
                case TIME_WIDGET:
                    card = new TimeWidgetCustomizationCard(context);
                    break;
                default:
                    Logger.w(WallpaperPager.TAG, "Unknown customization: " + customization);
                    break;
            }
            if (card != null) {
                card.setTag(Integer.valueOf(position));
                card.setTitle(customization.getTitleResId());
                card.setCardContainer(wallpapersView);
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
