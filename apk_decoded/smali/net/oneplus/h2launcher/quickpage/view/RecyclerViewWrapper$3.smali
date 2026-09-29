.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;
.super Landroid/content/BroadcastReceiver;
.source "RecyclerViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 409
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 412
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$600(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V

    .line 413
    return-void
.end method
