.class Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->dismissProgressDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

.field final synthetic val$shortcuts:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

    .prologue
    .line 5906
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;->this$2:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;->val$shortcuts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 5909
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;->val$shortcuts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;->val$shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5910
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;->this$2:Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask$2;->val$shortcuts:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;->access$3400(Lnet/oneplus/h2launcher/Launcher$IconPackReceiver$ApplyIconPackTask;Ljava/util/List;)V

    .line 5912
    :cond_0
    return-void
.end method
