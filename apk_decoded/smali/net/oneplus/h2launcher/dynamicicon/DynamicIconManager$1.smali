.class Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;
.super Ljava/lang/Object;
.source "DynamicIconManager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$NeedAnimateIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    .prologue
    .line 57
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNeedAnimateIcon()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1$1;-><init>(Lnet/oneplus/h2launcher/dynamicicon/DynamicIconManager$1;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
