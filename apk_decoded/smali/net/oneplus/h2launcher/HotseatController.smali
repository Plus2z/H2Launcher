.class public Lnet/oneplus/h2launcher/HotseatController;
.super Ljava/lang/Object;
.source "HotseatController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.HotseatController"


# instance fields
.field mLauncher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 16
    return-void
.end method


# virtual methods
.method public addCellLayout(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/CellLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/CellLayout;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public addShortcutsAndWidgets(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public enableAccessibleDrag(ZI)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "dragType"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x2

    .line 95
    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/CellLayout;->enableAccessibleDrag(ZI)V

    .line 97
    :cond_0
    return-void
.end method

.method public getCellXFromOrder(I)I
    .locals 1
    .param p1, "screenId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Hotseat;->getCellXFromOrder(I)I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCellYFromOrder(I)I
    .locals 1
    .param p1, "screenId"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Hotseat;->getCellYFromOrder(I)I

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitRect(IIZ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isPortrait"    # Z

    .prologue
    .line 64
    iget-object v1, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 71
    .end local v0    # "r":Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHotSeatLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayout()Lnet/oneplus/h2launcher/CellLayout;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderInHotseat(II)I
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/h2launcher/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    .line 28
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
    .line 51
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 33
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getLayout()Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetLayout()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->resetLayout()V

    .line 48
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Hotseat;->setAlpha(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 19
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 22
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/HotseatController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getHotseat()Lnet/oneplus/h2launcher/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Hotseat;->setTranslationX(F)V

    .line 90
    :cond_0
    return-void
.end method
