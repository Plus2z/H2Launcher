.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;
.super Landroid/database/ContentObserver;
.source "QuickPageBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickPageContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 1

    .prologue
    .line 1371
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 1372
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1373
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1377
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got external widget provider change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1380
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 1386
    return-void
.end method
