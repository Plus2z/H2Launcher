.class Lnet/oneplus/h2launcher/Launcher$52;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Utilities$WidgetProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindSearchProviderChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$forceBinding:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6648
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$52;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/Launcher$52;->val$forceBinding:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetProviderFound(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 6652
    if-nez p1, :cond_0

    .line 6664
    :goto_0
    return-void

    .line 6655
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$52;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$3500(Lnet/oneplus/h2launcher/Launcher;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$52;->val$forceBinding:Z

    if-eqz v0, :cond_2

    .line 6656
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$52;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/Launcher;->access$3502(Lnet/oneplus/h2launcher/Launcher;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 6658
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$52;->this$0:Lnet/oneplus/h2launcher/Launcher;

    new-instance v1, Lnet/oneplus/h2launcher/Launcher$52$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/Launcher$52$1;-><init>(Lnet/oneplus/h2launcher/Launcher$52;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
