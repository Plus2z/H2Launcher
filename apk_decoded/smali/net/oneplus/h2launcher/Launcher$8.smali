.class Lnet/oneplus/h2launcher/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Launcher$CustomContentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->populateCustomContentContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 1019
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrollingAllowed()Z
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x1

    return v0
.end method

.method public onHide(Z)V
    .locals 1
    .param p1, "removed"    # Z

    .prologue
    .line 1028
    if-nez p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onQuickPageHide()V

    .line 1029
    :cond_0
    return-void
.end method

.method public onScrollProgressChanged(FF)V
    .locals 5
    .param p1, "progress"    # F
    .param p2, "translationX"    # F

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1033
    cmpl-float v0, p1, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 1034
    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1300(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherClings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1300(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherClings;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->shouldShowQuickPageWelcomeCling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1300(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/LauncherClings;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->showQuickPageWelcomeCling()V

    .line 1037
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getOrCreateQsbBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$900(Lnet/oneplus/h2launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1039
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1041
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1400(Lnet/oneplus/h2launcher/Launcher;)Landroid/view/View;

    move-result-object v3

    cmpl-float v0, p1, v4

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1500(Lnet/oneplus/h2launcher/Launcher;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    cmpl-float v3, p1, v4

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1049
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->setCurrentDisplayProgress(F)V

    .line 1050
    return-void

    :cond_3
    move v0, v2

    .line 1041
    goto :goto_0

    .line 1044
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1500(Lnet/oneplus/h2launcher/Launcher;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->setTranslationX(F)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1046
    goto :goto_2
.end method

.method public onShow(Z)V
    .locals 1
    .param p1, "fromResume"    # Z

    .prologue
    .line 1023
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$8;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->onQuickPageShow(Z)V

    .line 1024
    return-void
.end method
