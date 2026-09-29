package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.customizations.WallpaperPreview;
import net.oneplus.h2launcher.customizations.timewidget.TimeWidgetAdapter;
import net.oneplus.h2launcher.customizations.timewidget.TimeWidgetTileInfo;
import net.oneplus.h2launcher.internalwidget.clock.ClockWidget;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.widget.OneplusFlowLayout;

/* loaded from: classes.dex */
public class TimeWidgetCustomizationCard extends BaseCustomizationCard {
    private static final String TAG = TimeWidgetCustomizationCard.class.getSimpleName();
    private OneplusFlowLayout mFlowLayout;
    private int mHomeClockStyle;
    private boolean mIsShowCustomization;
    private int mLockClockStyle;
    private View.OnClickListener mOnTimeWidgetTileClickListener;
    private WallpaperPreview.OnPageChangeListenerAdapter mPreviewItemChangeListener;
    private ScrollView mScrollView;
    private View[] mSelectedTiles;

    public TimeWidgetCustomizationCard(Context context) {
        this(context, null, 0);
    }

    public TimeWidgetCustomizationCard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TimeWidgetCustomizationCard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSelectedTiles = new View[]{null, null};
        this.mIsShowCustomization = false;
        this.mOnTimeWidgetTileClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.customizations.TimeWidgetCustomizationCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                WallpaperPreview wallpaperPreview = TimeWidgetCustomizationCard.this.getWallpaperPreview();
                int currentPage = wallpaperPreview.getCurrentPage();
                if (!v.equals(TimeWidgetCustomizationCard.this.mSelectedTiles[currentPage]) && currentPage == 1) {
                    ClockWidget clockWidget = ClockWidget.getInstance();
                    if (clockWidget.previewingClockStyle()) {
                        Logger.i(TimeWidgetCustomizationCard.TAG, "skip select time widget tile for ongoing clock style");
                    } else {
                        TimeWidgetCustomizationCard.this.selectTile(v);
                        ClockWidget.getInstance().previewClockStyle(TimeWidgetCustomizationCard.this.getTileInfo(v).clockStyle, true);
                    }
                }
            }
        };
        this.mPreviewItemChangeListener = new WallpaperPreview.OnPageChangeListenerAdapter() { // from class: net.oneplus.h2launcher.customizations.TimeWidgetCustomizationCard.2
            @Override // net.oneplus.h2launcher.customizations.WallpaperPreview.OnPageChangeListenerAdapter, android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (position != this.mCurrentPosition) {
                    int oldPosition = position == 1 ? 0 : 1;
                    TimeWidgetCustomizationCard.this.clearSelectedTile(oldPosition);
                    if (position != 0) {
                        TimeWidgetCustomizationCard.this.selectTile(TimeWidgetCustomizationCard.this.mSelectedTiles[position]);
                    }
                    TimeWidgetCustomizationCard.this.toggleLockScreenTimeWidgetTiles(position);
                }
                super.onPageSelected(position);
            }
        };
        setupContentView(this.mContent);
        getWallpaperPreview().addOnPageChangeListener(this.mPreviewItemChangeListener);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getContentView() {
        LayoutInflater inflater = LayoutInflater.from(getContext());
        return inflater.inflate(R.layout.customization_time_widget, (ViewGroup) this, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void reloadCustomizationSettings() {
        if (this.mSelectedTiles != null) {
            for (int page = 0; page < this.mSelectedTiles.length; page++) {
                clearSelectedTile(page);
                this.mSelectedTiles[page] = null;
            }
        }
        this.mLockClockStyle = ClockWidget.getInstance().getKeyguardClockStyle();
        this.mHomeClockStyle = ClockWidget.getInstance().getClockStyle();
        int count = this.mFlowLayout.getChildCount();
        for (int i = 0; i < count; i++) {
            View tile = this.mFlowLayout.getChildAt(i);
            int clockStyle = getTileInfo(tile).clockStyle;
            if (clockStyle == this.mLockClockStyle) {
                this.mSelectedTiles[0] = tile;
            }
            if (clockStyle == this.mHomeClockStyle) {
                this.mSelectedTiles[1] = tile;
            }
        }
        int currentPage = getWallpaperPreview().getCurrentPage();
        View selectedTile = this.mSelectedTiles[currentPage];
        if (selectedTile != null) {
            selectTile(selectedTile);
        }
        if (this.mScrollView != null && this.mScrollView.getScrollY() != 0) {
            this.mScrollView.scrollTo(this.mScrollView.getScrollX(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public BaseCustomizationCard.SaveCustomizationTask getSaveCustomizationTask() {
        final int selectedLockScreenClockStyle;
        final boolean lockScreenClockStyleChange;
        final int selectedHomeScreenClockStyle;
        final boolean homeScreenClockStyleChange;
        View lockScreenTile = this.mSelectedTiles[0];
        View homeScreenTile = this.mSelectedTiles[1];
        if (lockScreenTile != null) {
            selectedLockScreenClockStyle = getTileInfo(lockScreenTile).clockStyle;
            lockScreenClockStyleChange = selectedLockScreenClockStyle != this.mLockClockStyle;
        } else {
            selectedLockScreenClockStyle = -1;
            lockScreenClockStyleChange = false;
        }
        if (homeScreenTile != null) {
            selectedHomeScreenClockStyle = getTileInfo(homeScreenTile).clockStyle;
            homeScreenClockStyleChange = selectedHomeScreenClockStyle != this.mHomeClockStyle;
        } else {
            selectedHomeScreenClockStyle = -1;
            homeScreenClockStyleChange = false;
        }
        Logger.d(TAG, "getSaveCustomizationTask# (lock, home): (%b, %b)", Boolean.valueOf(lockScreenClockStyleChange), Boolean.valueOf(homeScreenClockStyleChange));
        if (!lockScreenClockStyleChange && !homeScreenClockStyleChange) {
            return null;
        }
        return new BaseCustomizationCard.SaveCustomizationTask(TAG) { // from class: net.oneplus.h2launcher.customizations.TimeWidgetCustomizationCard.3
            @Override // java.lang.Runnable
            public void run() {
                if (lockScreenClockStyleChange) {
                    ClockWidget.getInstance().setKeyguardClockStyle(selectedLockScreenClockStyle);
                }
                if (homeScreenClockStyleChange) {
                    TimeWidgetCustomizationCard.this.post(new Runnable() { // from class: net.oneplus.h2launcher.customizations.TimeWidgetCustomizationCard.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ClockWidget.getInstance().setClockStyle(selectedHomeScreenClockStyle);
                        }
                    });
                }
            }
        };
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getScrollableView() {
        return this.mScrollView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public View getBottommostViewInScrollableView() {
        int childCount;
        return (this.mFlowLayout == null || (childCount = this.mFlowLayout.getChildCount()) <= 0) ? super.getBottommostViewInScrollableView() : this.mFlowLayout.getChildAt(childCount - 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void onLeavingCustomization() {
        super.onLeavingCustomization();
        this.mIsShowCustomization = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void onShowCustomization() {
        super.onShowCustomization();
        this.mIsShowCustomization = true;
    }

    private void setupContentView(View content) {
        Size size = WallpaperCard.getDefaultThumbnailSize(getResources());
        this.mFlowLayout = (OneplusFlowLayout) content.findViewById(R.id.time_widgets);
        if (this.mFlowLayout != null) {
            this.mFlowLayout.setChildrenSize(size.getWidth(), size.getHeight());
            loadTimeWidgets();
        }
        this.mScrollView = (ScrollView) content.findViewById(R.id.time_widget_scroll_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectTile(View v) {
        int currentPage = getWallpaperPreview().getCurrentPage();
        clearSelectedTile(currentPage);
        if (v != null) {
            Selection selection = (Selection) v.findViewById(R.id.selection);
            if (selection != null) {
                selection.setSelected(true);
            }
            this.mSelectedTiles[currentPage] = v;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelectedTile(int currentPage) {
        Selection selection;
        View selectedTile = this.mSelectedTiles[currentPage];
        if (selectedTile != null && (selection = (Selection) selectedTile.findViewById(R.id.selection)) != null) {
            selection.setSelected(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TimeWidgetTileInfo getTileInfo(View tile) {
        TimeWidgetTileInfo info;
        if (tile == null || (info = (TimeWidgetTileInfo) tile.getTag()) == null) {
            return null;
        }
        return info;
    }

    private void loadTimeWidgets() {
        TimeWidgetAdapter adapter = new TimeWidgetAdapter(getContext());
        populateWidgetsFromAdapter(adapter);
    }

    private void populateWidgetsFromAdapter(final BaseAdapter adapter) {
        if (adapter == null) {
            Logger.d(TAG, "invalid adapter");
        } else {
            post(new Runnable() { // from class: net.oneplus.h2launcher.customizations.TimeWidgetCustomizationCard.4
                @Override // java.lang.Runnable
                public void run() {
                    for (int i = 0; i < adapter.getCount(); i++) {
                        FrameLayout thumbnail = (FrameLayout) adapter.getView(i, null, TimeWidgetCustomizationCard.this.mFlowLayout);
                        TimeWidgetCustomizationCard.this.mFlowLayout.addView(thumbnail);
                        TimeWidgetTileInfo info = (TimeWidgetTileInfo) adapter.getItem(i);
                        thumbnail.setTag(info);
                        thumbnail.setOnClickListener(TimeWidgetCustomizationCard.this.mOnTimeWidgetTileClickListener);
                    }
                    TimeWidgetCustomizationCard.this.reloadCustomizationSettings();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WallpaperPreview getWallpaperPreview() {
        return this.mLauncher.getWallpapersView().getWallpaperPreview();
    }

    public void toggleLockScreenTimeWidgetTiles(int currentPage) {
        boolean selectable = currentPage == 1;
        int count = this.mFlowLayout.getChildCount();
        for (int i = 0; i < count; i++) {
            View view = this.mFlowLayout.getChildAt(i);
            view.setClickable(selectable);
        }
        this.mCard.setAlpha(selectable ? 1.0f : 0.26f);
    }
}
