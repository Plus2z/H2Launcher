.class public Lnet/oneplus/h2launcher/Stats$LaunchSourceUtils;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchSourceUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSourceData()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "sourceData":Landroid/os/Bundle;
    const-string v1, "container"

    const-string v2, "homescreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "container_page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v1, "sub_container_page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    return-object v0
.end method

.method public static populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "sourceData"    # Landroid/os/Bundle;

    .prologue
    .line 113
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    .line 118
    .local v1, "provider":Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 119
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 120
    instance-of v2, v0, Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 121
    check-cast v1, Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;

    .line 127
    :cond_2
    if-eqz v1, :cond_4

    .line 128
    invoke-interface {v1, p1}, Lnet/oneplus/h2launcher/Stats$LaunchSourceProvider;->fillInLaunchSourceData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Expected LaunchSourceProvider"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
