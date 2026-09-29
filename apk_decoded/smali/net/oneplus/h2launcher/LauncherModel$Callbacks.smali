.class public interface abstract Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAddScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

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

.method public abstract bindAllPackages(Lnet/oneplus/h2launcher/model/WidgetsModel;)V
.end method

.method public abstract bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
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

.method public abstract bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract bindFolders(Lnet/oneplus/h2launcher/util/LongArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/util/LongArrayMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/ArrayList;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation
.end method

.method public abstract bindQuickPage()V
.end method

.method public abstract bindRestoreItemsChange(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindSearchProviderChanged(Z)V
.end method

.method public abstract bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpLogsToLocalData()V
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract finishLoaderTask()V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract isAllAppsButtonRank(I)Z
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract resetLoaderTask()V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method
