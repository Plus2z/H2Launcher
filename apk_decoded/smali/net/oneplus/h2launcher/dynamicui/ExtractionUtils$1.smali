.class final Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;
.super Ljava/lang/Object;
.source "ExtractionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->startColorExtractionServiceIfNecessary(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;->val$force:Z

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/dynamicui/ExtractionUtils;->startColorExtractionService(Landroid/content/Context;)V

    .line 60
    :cond_1
    return-void
.end method
