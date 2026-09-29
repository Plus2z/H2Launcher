.class Lnet/oneplus/h2launcher/PagedView$5;
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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/PagedView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/PagedView;

    .prologue
    .line 2380
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView$5;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$5;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/PagedView;->onEndReordering()V

    .line 2384
    return-void
.end method
