.class public Lnet/oneplus/h2launcher/testing/LauncherExtension$LauncherExtensionCallbacks;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Lnet/oneplus/h2launcher/LauncherCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/testing/LauncherExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LauncherExtensionCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/testing/LauncherExtension;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/testing/LauncherExtension;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/testing/LauncherExtension;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/oneplus/h2launcher/testing/LauncherExtension$LauncherExtensionCallbacks;->this$0:Lnet/oneplus/h2launcher/testing/LauncherExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "w"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public finishBindingItems(Z)V
    .locals 0
    .param p1, "upgradePath"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public getAllAppsSearchBarController()Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstRunActivity()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntroScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPredictedApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getQsbBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomContentToLeft()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public hasDismissableIntroScreen()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public hasFirstRunActivity()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public hasSettings()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public isLauncherPreinstalled()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    return-void
.end method

.method public onClickAddWidgetButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    return-void
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    return-void
.end method

.method public onClickAppShortcut(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    return-void
.end method

.method public onClickCustomizationButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    return-void
.end method

.method public onClickFolderIcon(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    return-void
.end method

.method public onClickPagedViewIcon(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    return-void
.end method

.method public onClickSettingsButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    return-void
.end method

.method public onClickWallpaperPicker(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    return-void
.end method

.method public onHomeIntent()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onInteractionBegin()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onInteractionEnd()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onLauncherProviderChange()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    return-void
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 86
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onWorkspaceLockedChanged()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public overrideWallpaperDimensions()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public populateCustomContentContainer()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public preOnCreate()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public preOnResume()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public providesSearch()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public setLauncherSearchCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callbacks"    # Ljava/lang/Object;

    .prologue
    .line 261
    return-void
.end method

.method public shouldMoveToDefaultScreenOnHomeIntent()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public startSearchFromAllApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
