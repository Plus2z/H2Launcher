.class public Lnet/oneplus/h2launcher/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;
.implements Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;


# instance fields
.field private mAllAppsButton:Landroid/widget/TextView;

.field private mAllAppsButtonRank:I

.field private mContent:Lnet/oneplus/h2launcher/CellLayout;

.field private final mHasVerticalHotseat:Z

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mHasVerticalHotseat:Z

    .line 53
    return-void
.end method


# virtual methods
.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const-string v0, "container"

    const-string v1, "hotseat"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 84
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1    # "x":I
    :cond_0
    return p1
.end method

.method public hasIcons()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 97
    iget v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButtonRank:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapSettingsChange(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_0

    new-instance v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/DoubleTapTouchListener;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    .line 168
    .local v0, "l":Landroid/view/View$OnTouchListener;
    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Hotseat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    return-void

    .line 167
    .end local v0    # "l":Landroid/view/View$OnTouchListener;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 103
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 105
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    iget-object v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v1, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->hotseatAllAppsRank:I

    iput v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButtonRank:I

    .line 106
    const v1, 0x7f110133

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    .line 107
    iget-boolean v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isLargeTablet:Z

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v2, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v1, v3, v2}, Lnet/oneplus/h2launcher/CellLayout;->setGridSize(II)V

    .line 112
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/CellLayout;->setIsHotseat(Z)V

    .line 114
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Hotseat;->resetLayout()V

    .line 115
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->inv:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v2, v2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/CellLayout;->setGridSize(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetLayout()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->removeAllViewsInLayout()V

    .line 121
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 123
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 124
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04001f

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v8, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    .line 125
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 127
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v7}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v7, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    const v1, 0x7f0b0033

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    new-instance v1, Lnet/oneplus/h2launcher/HotseatIconKeyEventListener;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->setAllAppsButton(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mFocusHandler:Lnet/oneplus/h2launcher/FocusIndicatorView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Hotseat;->getCellXFromOrder(I)I

    move-result v9

    .line 143
    .local v9, "x":I
    iget v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Hotseat;->getCellYFromOrder(I)I

    move-result v10

    .line 144
    .local v10, "y":I
    new-instance v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    invoke-direct {v4, v9, v10, v5, v5}, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 145
    .local v4, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    iput-boolean v3, v4, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    const/4 v2, -0x1

    iget-object v3, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILnet/oneplus/h2launcher/CellLayout$LayoutParams;Z)Z

    .line 147
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 71
    iget-object v0, p0, Lnet/oneplus/h2launcher/Hotseat;->mContent:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    return-void
.end method

.method public updateAllAppsButtonIconSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 77
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v1, p0, Lnet/oneplus/h2launcher/Hotseat;->mAllAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
