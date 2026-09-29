.class Lnet/oneplus/h2launcher/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$animate:Z

.field final synthetic val$delay:I

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$stripEmptyScreens:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;ZLjava/lang/Runnable;IZ)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 874
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$3;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$animate:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    iput p4, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$delay:I

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$stripEmptyScreens:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 877
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$3;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$animate:Z

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    iget v3, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$delay:I

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Workspace$3;->val$stripEmptyScreens:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 878
    return-void
.end method
