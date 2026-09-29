.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$4;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->onResume()V
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
    .line 306
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$4;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$4;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->notifyUiComponentChanged()V

    .line 310
    const/4 v0, 0x0

    return v0
.end method
