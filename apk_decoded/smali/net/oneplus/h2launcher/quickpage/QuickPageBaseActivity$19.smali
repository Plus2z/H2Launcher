.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$19;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateListPosted()V
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
    .line 1325
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$19;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$19;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1329
    return-void
.end method
