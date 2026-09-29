.class Lnet/oneplus/h2launcher/PagedView$6;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/PagedView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/PagedView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/PagedView;

    .prologue
    .line 2387
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView$6;->this$0:Lnet/oneplus/h2launcher/PagedView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/PagedView$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2389
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2392
    return-void
.end method
