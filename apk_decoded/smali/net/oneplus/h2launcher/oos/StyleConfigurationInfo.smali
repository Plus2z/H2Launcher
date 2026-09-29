.class public Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;
.super Ljava/lang/Object;
.source "StyleConfigurationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    }
.end annotation


# instance fields
.field private mAddExtraWorkspaceItems:Z

.field private mCaptureEntireScreen:Z

.field private mCardType:Ljava/lang/String;

.field private mDisallowSameIconOnDesktop:Z

.field private mDrawWallpaperColorMask:Z

.field private mScrollableWallpaper:Z

.field private mShowAllApps:Z

.field private mShowClearButton:Z

.field private mShowDynamicIcon:Z

.field private mShowHotSeat:Z

.field private mShowIconRearrangement:Z

.field private mShowInternalClock:Z

.field private mShowSearchBar:Z

.field private mShowSearchBarInOptions:Z

.field private mShowStandardFolderIconShape:Z

.field private mShowWidgetsButton:Z

.field private mShowWidgetsConfigurable:Z

.field private mWorkspaceAllowReorderingHomeScreen:Z

.field private mWorkspaceColumns:I

.field private mWorkspaceRows:I

.field private mWorkspaceScreenScaleInOptions:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowSearchBar:Z

    .line 5
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowInternalClock:Z

    .line 6
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowAllApps:Z

    .line 7
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowHotSeat:Z

    .line 8
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowWidgetsButton:Z

    .line 9
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowWidgetsConfigurable:Z

    .line 10
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowClearButton:Z

    .line 11
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mCaptureEntireScreen:Z

    .line 12
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mDrawWallpaperColorMask:Z

    .line 13
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mAddExtraWorkspaceItems:Z

    .line 21
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowDynamicIcon:Z

    .line 22
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowIconRearrangement:Z

    .line 23
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowStandardFolderIconShape:Z

    .line 24
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mDisallowSameIconOnDesktop:Z

    .line 44
    return-void
.end method


# virtual methods
.method public captureEntireScreen()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mCaptureEntireScreen:Z

    return v0
.end method

.method public getAddExtraWorkspaceItems()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mAddExtraWorkspaceItems:Z

    return v0
.end method

.method public getCardType()Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mCardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mCardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->UNDEFINED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    goto :goto_0
.end method

.method public getDisallowSameIconOnDesktop()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mDisallowSameIconOnDesktop:Z

    return v0
.end method

.method public getDrawWallpaperColorMask()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mDrawWallpaperColorMask:Z

    return v0
.end method

.method public getScrollableWallpaper()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mScrollableWallpaper:Z

    return v0
.end method

.method public getShowAllApps()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowAllApps:Z

    return v0
.end method

.method public getShowClearButton()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowClearButton:Z

    return v0
.end method

.method public getShowDynamicIcon()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowDynamicIcon:Z

    return v0
.end method

.method public getShowHotSeat()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowHotSeat:Z

    return v0
.end method

.method public getShowIconRearrangement()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowIconRearrangement:Z

    return v0
.end method

.method public getShowInternalClock()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowInternalClock:Z

    return v0
.end method

.method public getShowSearchBar()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowSearchBar:Z

    return v0
.end method

.method public getShowSearchBarInOptions()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowSearchBarInOptions:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isO2Device()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowStandardFolderIconShape()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowStandardFolderIconShape:Z

    return v0
.end method

.method public getShowWidgetsButton()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowWidgetsButton:Z

    return v0
.end method

.method public getShowWidgetsConfigurable()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowWidgetsConfigurable:Z

    return v0
.end method

.method public getWorkspaceAllowReorderingHomeScreen()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceAllowReorderingHomeScreen:Z

    return v0
.end method

.method public getWorkspaceColumns()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceColumns:I

    return v0
.end method

.method public getWorkspaceRows()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceRows:I

    return v0
.end method

.method public getWorkspaceScreenScaleInOptions()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceScreenScaleInOptions:F

    return v0
.end method

.method public setAddExtraWorkspaceItems(Z)V
    .locals 0
    .param p1, "addExtraWorkspaceItems"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mAddExtraWorkspaceItems:Z

    .line 210
    return-void
.end method

.method public setCaptureEntireScreen(Z)V
    .locals 0
    .param p1, "captureEntireScreen"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mCaptureEntireScreen:Z

    .line 190
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mCardType:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setDisallowSameIconOnDesktop(Z)V
    .locals 0
    .param p1, "disallowSameIconOnDesktop"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mDisallowSameIconOnDesktop:Z

    .line 218
    return-void
.end method

.method public setDrawWallpaperColorMask(Z)V
    .locals 0
    .param p1, "drawWallpaperColorMask"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mDrawWallpaperColorMask:Z

    .line 194
    return-void
.end method

.method public setScrollableWallpaper(Z)V
    .locals 0
    .param p1, "scrollableWallpaper"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mScrollableWallpaper:Z

    .line 198
    return-void
.end method

.method public setShowAllApps(Z)V
    .locals 0
    .param p1, "showAllApps"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowAllApps:Z

    .line 146
    return-void
.end method

.method public setShowClearButton(Z)V
    .locals 0
    .param p1, "showClearButton"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowClearButton:Z

    .line 162
    return-void
.end method

.method public setShowDynamicIcon(Z)V
    .locals 0
    .param p1, "showDynamicIcon"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowDynamicIcon:Z

    .line 202
    return-void
.end method

.method public setShowHotSeat(Z)V
    .locals 0
    .param p1, "showHotSeat"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowHotSeat:Z

    .line 150
    return-void
.end method

.method public setShowIconRearrangement(Z)V
    .locals 0
    .param p1, "showIconRearrangement"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowIconRearrangement:Z

    .line 214
    return-void
.end method

.method public setShowInternalClock(Z)V
    .locals 0
    .param p1, "showInternalClock"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowInternalClock:Z

    .line 142
    return-void
.end method

.method public setShowSearchBar(Z)V
    .locals 0
    .param p1, "showSearchBar"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowSearchBar:Z

    .line 138
    return-void
.end method

.method public setShowSearchBarInOptions(Z)V
    .locals 0
    .param p1, "showSearchBarInOptions"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowSearchBarInOptions:Z

    .line 182
    return-void
.end method

.method public setShowStandardFolderIconShape(Z)V
    .locals 0
    .param p1, "showStandardFolderIconShape"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowStandardFolderIconShape:Z

    .line 206
    return-void
.end method

.method public setShowWidgetsButton(Z)V
    .locals 0
    .param p1, "showWidgetsButton"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowWidgetsButton:Z

    .line 154
    return-void
.end method

.method public setShowWidgetsConfigurable(Z)V
    .locals 0
    .param p1, "showWidgetsConfigurable"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mShowWidgetsConfigurable:Z

    .line 158
    return-void
.end method

.method public setWorkspaceAllowReorderingHomeScreen(Z)V
    .locals 0
    .param p1, "workspaceAllowReorderingHomeScreen"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceAllowReorderingHomeScreen:Z

    .line 174
    return-void
.end method

.method public setWorkspaceColumns(I)V
    .locals 0
    .param p1, "workspaceColumns"    # I

    .prologue
    .line 169
    iput p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceColumns:I

    .line 170
    return-void
.end method

.method public setWorkspaceRows(I)V
    .locals 0
    .param p1, "workspaceRows"    # I

    .prologue
    .line 165
    iput p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceRows:I

    .line 166
    return-void
.end method

.method public setWorkspaceScreenScaleInOptions(F)V
    .locals 0
    .param p1, "scaleInOptions"    # F

    .prologue
    .line 185
    iput p1, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;->mWorkspaceScreenScaleInOptions:F

    .line 186
    return-void
.end method
