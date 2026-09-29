.class Lnet/oneplus/h2launcher/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/PagedView;
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
    .line 217
    iput-object p1, p0, Lnet/oneplus/h2launcher/PagedView$1;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$1;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/PagedView;->requestLayout()V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/PagedView$1;->this$0:Lnet/oneplus/h2launcher/PagedView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/PagedView$1;->this$0:Lnet/oneplus/h2launcher/PagedView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
