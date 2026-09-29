package net.oneplus.h2launcher.oos;

/* loaded from: classes.dex */
public class StyleConfigurationInfo {
    private String mCardType;
    private boolean mScrollableWallpaper;
    private boolean mShowSearchBarInOptions;
    private boolean mWorkspaceAllowReorderingHomeScreen;
    private int mWorkspaceColumns;
    private int mWorkspaceRows;
    private float mWorkspaceScreenScaleInOptions;
    private boolean mShowSearchBar = false;
    private boolean mShowInternalClock = false;
    private boolean mShowAllApps = false;
    private boolean mShowHotSeat = false;
    private boolean mShowWidgetsButton = false;
    private boolean mShowWidgetsConfigurable = false;
    private boolean mShowClearButton = false;
    private boolean mCaptureEntireScreen = false;
    private boolean mDrawWallpaperColorMask = false;
    private boolean mAddExtraWorkspaceItems = false;
    private boolean mShowDynamicIcon = true;
    private boolean mShowIconRearrangement = true;
    private boolean mShowStandardFolderIconShape = true;
    private boolean mDisallowSameIconOnDesktop = false;

    /* loaded from: classes.dex */
    public enum OptionCards {
        SIMPLIFIED("Simplified"),
        STANDARD("Standard"),
        UNDEFINED("Undefined");

        private String mCardType;

        OptionCards(String cardType) {
            this.mCardType = cardType;
        }

        public String getType() {
            return this.mCardType;
        }
    }

    public boolean getShowSearchBar() {
        return this.mShowSearchBar;
    }

    public boolean getShowInternalClock() {
        return this.mShowInternalClock;
    }

    public boolean getShowAllApps() {
        return this.mShowAllApps;
    }

    public boolean getShowHotSeat() {
        return this.mShowHotSeat;
    }

    public boolean getShowWidgetsButton() {
        return this.mShowWidgetsButton;
    }

    public boolean getShowWidgetsConfigurable() {
        return this.mShowWidgetsConfigurable;
    }

    public boolean getShowClearButton() {
        return this.mShowClearButton;
    }

    public int getWorkspaceRows() {
        return this.mWorkspaceRows;
    }

    public int getWorkspaceColumns() {
        return this.mWorkspaceColumns;
    }

    public boolean getWorkspaceAllowReorderingHomeScreen() {
        return this.mWorkspaceAllowReorderingHomeScreen;
    }

    public boolean captureEntireScreen() {
        return this.mCaptureEntireScreen;
    }

    public boolean getDrawWallpaperColorMask() {
        return this.mDrawWallpaperColorMask;
    }

    public boolean getScrollableWallpaper() {
        return this.mScrollableWallpaper;
    }

    public boolean getAddExtraWorkspaceItems() {
        return this.mAddExtraWorkspaceItems;
    }

    public OptionCards getCardType() {
        if (OptionCards.SIMPLIFIED.getType().equals(this.mCardType)) {
            return OptionCards.SIMPLIFIED;
        }
        if (OptionCards.STANDARD.getType().equals(this.mCardType)) {
            return OptionCards.STANDARD;
        }
        return OptionCards.UNDEFINED;
    }

    public boolean getShowSearchBarInOptions() {
        return this.mShowSearchBarInOptions && StyleManager.isO2Device();
    }

    public float getWorkspaceScreenScaleInOptions() {
        return this.mWorkspaceScreenScaleInOptions;
    }

    public boolean getShowDynamicIcon() {
        return this.mShowDynamicIcon;
    }

    public boolean getShowIconRearrangement() {
        return this.mShowIconRearrangement;
    }

    public boolean getShowStandardFolderIconShape() {
        return this.mShowStandardFolderIconShape;
    }

    public boolean getDisallowSameIconOnDesktop() {
        return this.mDisallowSameIconOnDesktop;
    }

    public void setShowSearchBar(boolean showSearchBar) {
        this.mShowSearchBar = showSearchBar;
    }

    public void setShowInternalClock(boolean showInternalClock) {
        this.mShowInternalClock = showInternalClock;
    }

    public void setShowAllApps(boolean showAllApps) {
        this.mShowAllApps = showAllApps;
    }

    public void setShowHotSeat(boolean showHotSeat) {
        this.mShowHotSeat = showHotSeat;
    }

    public void setShowWidgetsButton(boolean showWidgetsButton) {
        this.mShowWidgetsButton = showWidgetsButton;
    }

    public void setShowWidgetsConfigurable(boolean showWidgetsConfigurable) {
        this.mShowWidgetsConfigurable = showWidgetsConfigurable;
    }

    public void setShowClearButton(boolean showClearButton) {
        this.mShowClearButton = showClearButton;
    }

    public void setWorkspaceRows(int workspaceRows) {
        this.mWorkspaceRows = workspaceRows;
    }

    public void setWorkspaceColumns(int workspaceColumns) {
        this.mWorkspaceColumns = workspaceColumns;
    }

    public void setWorkspaceAllowReorderingHomeScreen(boolean workspaceAllowReorderingHomeScreen) {
        this.mWorkspaceAllowReorderingHomeScreen = workspaceAllowReorderingHomeScreen;
    }

    public void setCardType(String cardType) {
        this.mCardType = cardType;
    }

    public void setShowSearchBarInOptions(boolean showSearchBarInOptions) {
        this.mShowSearchBarInOptions = showSearchBarInOptions;
    }

    public void setWorkspaceScreenScaleInOptions(float scaleInOptions) {
        this.mWorkspaceScreenScaleInOptions = scaleInOptions;
    }

    public void setCaptureEntireScreen(boolean captureEntireScreen) {
        this.mCaptureEntireScreen = captureEntireScreen;
    }

    public void setDrawWallpaperColorMask(boolean drawWallpaperColorMask) {
        this.mDrawWallpaperColorMask = drawWallpaperColorMask;
    }

    public void setScrollableWallpaper(boolean scrollableWallpaper) {
        this.mScrollableWallpaper = scrollableWallpaper;
    }

    public void setShowDynamicIcon(boolean showDynamicIcon) {
        this.mShowDynamicIcon = showDynamicIcon;
    }

    public void setShowStandardFolderIconShape(boolean showStandardFolderIconShape) {
        this.mShowStandardFolderIconShape = showStandardFolderIconShape;
    }

    public void setAddExtraWorkspaceItems(boolean addExtraWorkspaceItems) {
        this.mAddExtraWorkspaceItems = addExtraWorkspaceItems;
    }

    public void setShowIconRearrangement(boolean showIconRearrangement) {
        this.mShowIconRearrangement = showIconRearrangement;
    }

    public void setDisallowSameIconOnDesktop(boolean disallowSameIconOnDesktop) {
        this.mDisallowSameIconOnDesktop = disallowSameIconOnDesktop;
    }
}
