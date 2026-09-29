.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 934
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 937
    packed-switch p1, :pswitch_data_0

    .line 954
    :goto_0
    return-void

    .line 939
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    goto :goto_0

    .line 942
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$400(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skipped the touch event on item resizing"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$11;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->leaveQuickPageEditMode()V

    goto :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
