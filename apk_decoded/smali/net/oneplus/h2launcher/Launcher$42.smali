.class Lnet/oneplus/h2launcher/Launcher$42;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->showWidgetsView(ZZ)V
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
    .line 5469
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$42;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5472
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$42;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->requestFocus()Z

    .line 5473
    return-void
.end method
