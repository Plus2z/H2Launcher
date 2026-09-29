.class public interface abstract Lnet/oneplus/h2launcher/LauncherCallbacks;
.super Ljava/lang/Object;
.source "LauncherCallbacks.java"


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract finishBindingItems(Z)V
.end method

.method public abstract getAllAppsSearchBarController()Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;
.end method

.method public abstract getFirstRunActivity()Landroid/content/Intent;
.end method

.method public abstract getIntroScreen()Landroid/view/View;
.end method

.method public abstract getPredictedApps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQsbBar()Landroid/view/View;
.end method

.method public abstract handleBackPressed()Z
.end method

.method public abstract hasCustomContentToLeft()Z
.end method

.method public abstract hasDismissableIntroScreen()Z
.end method

.method public abstract hasFirstRunActivity()Z
.end method

.method public abstract hasSettings()Z
.end method

.method public abstract isLauncherPreinstalled()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onClickAddWidgetButton(Landroid/view/View;)V
.end method

.method public abstract onClickAllAppsButton(Landroid/view/View;)V
.end method

.method public abstract onClickAppShortcut(Landroid/view/View;)V
.end method

.method public abstract onClickCustomizationButton(Landroid/view/View;)V
.end method

.method public abstract onClickFolderIcon(Landroid/view/View;)V
.end method

.method public abstract onClickPagedViewIcon(Landroid/view/View;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onClickSettingsButton(Landroid/view/View;)V
.end method

.method public abstract onClickWallpaperPicker(Landroid/view/View;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDragStarted(Landroid/view/View;)V
.end method

.method public abstract onHomeIntent()V
.end method

.method public abstract onInteractionBegin()V
.end method

.method public abstract onInteractionEnd()V
.end method

.method public abstract onLauncherProviderChange()V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPageSwitch(Landroid/view/View;I)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract onWorkspaceLockedChanged()V
.end method

.method public abstract overrideWallpaperDimensions()Z
.end method

.method public abstract populateCustomContentContainer()V
.end method

.method public abstract preOnCreate()V
.end method

.method public abstract preOnResume()V
.end method

.method public abstract providesSearch()Z
.end method

.method public abstract setLauncherSearchCallback(Ljava/lang/Object;)V
.end method

.method public abstract shouldMoveToDefaultScreenOnHomeIntent()Z
.end method

.method public abstract startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z
.end method

.method public abstract startSearchFromAllApps(Ljava/lang/String;)Z
.end method
