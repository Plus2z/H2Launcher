.class Lnet/oneplus/h2launcher/Workspace$31;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->updateCurrentPageIconState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 5216
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$31;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput p2, p0, Lnet/oneplus/h2launcher/Workspace$31;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5219
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$31;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace$31;->val$retryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->updateCurrentPageIconState(I)V

    .line 5220
    return-void
.end method
