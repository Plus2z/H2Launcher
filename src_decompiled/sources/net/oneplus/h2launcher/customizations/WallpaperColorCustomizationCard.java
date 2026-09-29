package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.graphics.Palette;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.config.PreferencesHelper;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.wallpaper.BlurWallpaperSettings;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperColor;
import net.oneplus.h2launcher.customizations.wallpaper.WallpaperTaskWorker;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class WallpaperColorCustomizationCard extends BaseCustomizationCard implements WallpaperCard.WallpaperColorsListener {
    private static final int COLORS_PER_GROUP = 5;
    private static final String TAG = WallpaperColorCustomizationCard.class.getSimpleName();
    private ViewGroup mBlurBox;
    private Switch mBlurSwitch;
    private BlurWallpaperSettings mBlurWallpaperSettings;
    private View mChangeColors;
    private List<ColorCircleView> mColorCircles;
    private View.OnClickListener mOnColorCircleClickListener;
    private WallpaperPreview.OnPageChangeListenerAdapter mPreviewItemChangeListener;
    private ColorCircleView mSelectedCircle;
    private WallpaperColor mSelectedColor;
    private WallpaperTileInfo mSelectedTileInfo;
    private WallpaperColor mWallpaperColor;
    private List<Palette.Swatch> mWallpaperSwatches;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum Component {
        CHANGE_COLOR_BUTTON,
        CARD,
        BLUR_SWITCH
    }

    public WallpaperColorCustomizationCard(Context context) {
        this(context, null, 0);
    }

    public WallpaperColorCustomizationCard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WallpaperColorCustomizationCard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mColorCircles = new ArrayList();
        this.mWallpaperSwatches = new ArrayList();
        this.mOnColorCircleClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ColorCircleView circleView = (ColorCircleView) view;
                Palette.Swatch swatch = circleView.getSwatch();
                if (swatch != null) {
                    WallpaperColorCustomizationCard.this.getWallpaperPreview().setMaskColor(swatch.getRgb());
                    if (WallpaperColorCustomizationCard.this.mSelectedTileInfo != null) {
                        int screen = WallpaperColorCustomizationCard.this.getWallpaperPreview().getCurrentPage();
                        WallpaperColorCustomizationCard.this.mSelectedTileInfo.onClick(WallpaperColorCustomizationCard.this.getWallpaperCard(), screen, true);
                    }
                    WallpaperColorCustomizationCard.this.selectColorCircle(circleView);
                }
            }
        };
        this.mPreviewItemChangeListener = new WallpaperPreview.OnPageChangeListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.2
            @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.OnPageChangeListenerAdapter, android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (this.mCurrentPosition != position) {
                    Component[] components = {Component.CARD};
                    WallpaperColorCustomizationCard.this.setComponentsEnabled(components, WallpaperColorCustomizationCard.this.mSelectedTileInfo != null && position == 1);
                }
                super.onPageSelected(position);
            }
        };
        setupContentView(this.mContent);
        reloadCustomizationSettings();
        getWallpaperPreview().addOnPageChangeListener(this.mPreviewItemChangeListener);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getContentView() {
        LayoutInflater inflater = LayoutInflater.from(getContext());
        return inflater.inflate(R.layout.customization_wallpaper_color, (ViewGroup) this, false);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getScrollableView() {
        return findViewById(R.id.change_color_set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public View getBottommostViewInScrollableView() {
        return findViewById(R.id.change_color_set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void reloadCustomizationSettings() {
        this.mSelectedCircle = null;
        this.mSelectedColor = null;
        this.mSelectedTileInfo = PreferencesHelper.getWallpaperTile(getContext());
        this.mWallpaperColor = PreferencesHelper.getWallpaperColor(getContext());
        this.mBlurWallpaperSettings = PreferencesHelper.getBlurWallpaperSettings(getContext());
        if (this.mSelectedTileInfo != null) {
            Runnable onLoaded = new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.3
                @Override // java.lang.Runnable
                public void run() {
                    int index;
                    if (WallpaperColorCustomizationCard.this.mWallpaperColor != null) {
                        index = WallpaperColorCustomizationCard.this.mWallpaperColor.index;
                    } else {
                        index = 0;
                    }
                    WallpaperColorCustomizationCard.this.updateColorCirclesForIndex(index);
                }
            };
            loadWallpaperColors(this.mSelectedTileInfo, onLoaded);
            int maskColor = this.mWallpaperColor != null ? this.mWallpaperColor.rgb : this.mBlurWallpaperSettings.maskColor;
            getWallpaperPreview().setMaskColor(maskColor);
        } else {
            this.mWallpaperSwatches = Collections.emptyList();
            updateColorCirclesForIndex(0);
            getWallpaperPreview().setMaskColor(this.mBlurWallpaperSettings.maskColor);
            Component[] components = {Component.CARD};
            setComponentsEnabled(components, false);
        }
        WallpaperTaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.4
            boolean mIsBlurEnabled;
            boolean mIsBlurWallpaper;

            {
                this.mIsBlurWallpaper = WallpaperUtils.isOnePlusBlurWallpaper(WallpaperColorCustomizationCard.this.getContext());
                this.mIsBlurEnabled = WallpaperColorCustomizationCard.this.mBlurWallpaperSettings.blurEnabled;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (WallpaperColorCustomizationCard.this.mBlurSwitch != null) {
                    WallpaperColorCustomizationCard.this.mBlurSwitch.setChecked(this.mIsBlurEnabled);
                    WallpaperColorCustomizationCard.this.updateBlurSwitch(this.mIsBlurWallpaper);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public BaseCustomizationCard.SaveCustomizationTask getSaveCustomizationTask() {
        if (this.mSelectedColor != null) {
            this.mSelectedColor.setBlurEnabled(getBlurWallpaperSettings().blurEnabled);
        }
        if (this.mSelectedColor == null || this.mSelectedColor.equals(this.mWallpaperColor)) {
            return null;
        }
        final WallpaperColor color = new WallpaperColor(this.mSelectedColor.index, this.mSelectedColor.rgb, this.mSelectedColor.blurEnabled);
        return new BaseCustomizationCard.SaveCustomizationTask(TAG) { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.5
            @Override // java.lang.Runnable
            public void run() {
                PreferencesHelper.setWallpaperColor(WallpaperColorCustomizationCard.this.getContext(), color);
            }
        };
    }

    public BlurWallpaperSettings getBlurWallpaperSettings() {
        if (this.mBlurSwitch != null) {
            this.mBlurWallpaperSettings.blurEnabled = this.mBlurSwitch.isChecked();
        }
        if (this.mSelectedColor != null && this.mSelectedTileInfo != null) {
            this.mBlurWallpaperSettings.maskColor = this.mSelectedColor.rgb;
            this.mBlurWallpaperSettings.orientation = this.mSelectedTileInfo.getOrientation();
        }
        return this.mBlurWallpaperSettings;
    }

    private void setupContentView(View content) {
        this.mBlurBox = (ViewGroup) content.findViewById(R.id.blur_box);
        if (this.mBlurBox != null) {
            this.mBlurBox.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.6
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (WallpaperColorCustomizationCard.this.mBlurSwitch != null) {
                        WallpaperColorCustomizationCard.this.mBlurSwitch.toggle();
                    }
                }
            });
            this.mBlurSwitch = (Switch) this.mBlurBox.findViewById(R.id.blur_switch);
        }
        ViewGroup colorBox = (ViewGroup) content.findViewById(R.id.colors);
        if (colorBox != null) {
            int count = colorBox.getChildCount();
            for (int i = 0; i < count; i++) {
                View child = colorBox.getChildAt(i);
                if (child instanceof ColorCircleView) {
                    child.setOnClickListener(this.mOnColorCircleClickListener);
                    this.mColorCircles.add((ColorCircleView) child);
                }
            }
        }
        this.mChangeColors = content.findViewById(R.id.change_color_set);
        if (this.mChangeColors != null) {
            this.mChangeColors.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.7
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (WallpaperColorCustomizationCard.this.mSelectedCircle == null) {
                        Logger.w(WallpaperColorCustomizationCard.TAG, "no circle selected");
                        return;
                    }
                    int currentGroup = WallpaperColorCustomizationCard.this.getGroupForIndex(WallpaperColorCustomizationCard.this.mSelectedCircle.getIndex());
                    int nextStartIndex = WallpaperColorCustomizationCard.this.getGroupStartIndex(currentGroup + 1);
                    int nextGroup = nextStartIndex < WallpaperColorCustomizationCard.this.mWallpaperSwatches.size() ? currentGroup + 1 : 0;
                    WallpaperColorCustomizationCard.this.updateColorCirclesForIndex(WallpaperColorCustomizationCard.this.getGroupStartIndex(nextGroup), false);
                }
            });
        }
    }

    private void setComponentsEnabled(Component component, boolean enabled) {
        setComponentsEnabled(new Component[]{component}, enabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setComponentsEnabled(Component[] components, boolean enabled) {
        for (Component component : components) {
            switch (component) {
                case CHANGE_COLOR_BUTTON:
                    this.mChangeColors.setClickable(enabled);
                    this.mChangeColors.setAlpha(enabled ? 1.0f : 0.26f);
                    break;
                case CARD:
                    setEnabled(enabled);
                    this.mCard.setAlpha(enabled ? 1.0f : 0.26f);
                    break;
                case BLUR_SWITCH:
                    this.mBlurSwitch.setClickable(enabled);
                    this.mBlurBox.setClickable(enabled);
                    this.mBlurBox.setAlpha(enabled ? 1.0f : 0.26f);
                    break;
            }
        }
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard, android.view.View
    public void setEnabled(boolean enabled) {
        if (getWallpaperPreview().getCurrentPage() != 1) {
            super.setEnabled(false);
        } else {
            super.setEnabled(enabled);
        }
    }

    @Override // net.oneplus.h2launcher.customizations.WallpaperCard.WallpaperColorsListener
    public void onWallpaperColorsChanged(WallpaperTileInfo info, List<Palette.Swatch> swatches) {
        this.mSelectedTileInfo = info;
        this.mWallpaperSwatches = new ArrayList(swatches);
        updateColorCirclesForIndex(0);
        updateBlurSwitch(true);
        Component[] components = {Component.CARD};
        setComponentsEnabled(components, this.mSelectedTileInfo != null && getWallpaperPreview().getCurrentPage() == 1);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (((Integer) getTag()).intValue() == getCardContainer().mPager.getCurrentItem()) {
            slideTo(getSlideOffset());
        }
    }

    private void loadWallpaperColors(final WallpaperTileInfo info, final Runnable onLoaded) {
        if (info == null) {
            Logger.w(TAG, "invalid wallpaper tile info");
            if (onLoaded != null) {
                WallpaperTaskWorker.get().postUI(onLoaded);
                return;
            }
            return;
        }
        WallpaperTaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.customizations.WallpaperColorCustomizationCard.8
            @Override // java.lang.Runnable
            public void run() {
                WallpaperColorCustomizationCard.this.mWallpaperSwatches = info.loadSwatches(WallpaperColorCustomizationCard.this.getContext());
                if (onLoaded != null) {
                    WallpaperTaskWorker.get().postUI(onLoaded);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBlurSwitch(boolean enabled) {
        setComponentsEnabled(Component.BLUR_SWITCH, enabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColorCirclesForIndex(int index) {
        updateColorCirclesForIndex(index, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColorCirclesForIndex(int index, boolean selectCircleOfIndex) {
        List<Palette.Swatch> swatches;
        if (this.mWallpaperSwatches == null) {
            Logger.w(TAG, "invalid wallpaper swatches");
            return;
        }
        int group = getGroupForIndex(index);
        int start = group * 5;
        int end = Math.min(start + 5, this.mWallpaperSwatches.size());
        if (start > end) {
            Logger.w(TAG, "illegal color index, size:%d [start:%d end:%d]", Integer.valueOf(this.mWallpaperSwatches.size()), Integer.valueOf(start), Integer.valueOf(end));
            return;
        }
        if (!this.mWallpaperSwatches.isEmpty()) {
            swatches = this.mWallpaperSwatches.subList(start, end);
        } else {
            swatches = Collections.emptyList();
        }
        boolean enableChangeColor = this.mWallpaperSwatches.size() > 5;
        setComponentsEnabled(Component.CHANGE_COLOR_BUTTON, enableChangeColor);
        int i = 0;
        while (i < this.mColorCircles.size()) {
            int circleIndex = start + i;
            Palette.Swatch swatch = i < swatches.size() ? swatches.get(i) : null;
            ColorCircleView colorCircleView = this.mColorCircles.get(i);
            colorCircleView.setIndex(circleIndex);
            colorCircleView.setSwatch(swatch);
            colorCircleView.setClickable(swatch != null);
            colorCircleView.setSelected(false);
            boolean select = (circleIndex == index && selectCircleOfIndex) || (this.mSelectedColor != null && this.mSelectedColor.index == circleIndex);
            if (select && colorCircleView.getSwatch() != null) {
                selectColorCircle(colorCircleView);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getGroupStartIndex(int group) {
        return group * 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getGroupForIndex(int index) {
        return index / 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectColorCircle(ColorCircleView circle) {
        if (this.mSelectedCircle != null) {
            this.mSelectedCircle.setSelected(false);
        }
        if (circle != null) {
            this.mSelectedCircle = circle;
            this.mSelectedCircle.setSelected(true);
            this.mSelectedColor = new WallpaperColor(this.mSelectedCircle.getIndex(), this.mSelectedCircle.getSwatch().getRgb());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WallpaperCard getWallpaperCard() {
        return this.mLauncher.getWallpapersView().getPager().getWallpaperCard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WallpaperPreview getWallpaperPreview() {
        return this.mLauncher.getWallpapersView().getWallpaperPreview();
    }
}
