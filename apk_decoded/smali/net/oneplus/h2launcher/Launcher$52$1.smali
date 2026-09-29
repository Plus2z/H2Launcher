.class Lnet/oneplus/h2launcher/Launcher$52$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher$52;->onWidgetProviderFound(Landroid/appwidget/AppWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/Launcher$52;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher$52;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/Launcher$52;

    .prologue
    .line 6658
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$52$1;->this$1:Lnet/oneplus/h2launcher/Launcher$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6661
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$52$1;->this$1:Lnet/oneplus/h2launcher/Launcher$52;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher$52;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->updateSearchViewFromProvider()V

    .line 6662
    return-void
.end method
