.class Lnet/oneplus/h2launcher/Launcher$47;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$newScreenIndex:I

.field final synthetic val$startBounceAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6322
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$47;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput p2, p0, Lnet/oneplus/h2launcher/Launcher$47;->val$newScreenIndex:I

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$47;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6324
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$47;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_1

    .line 6325
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6326
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$47;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher$47;->val$newScreenIndex:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 6328
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$47;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$47;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    sget v2, Lnet/oneplus/h2launcher/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6331
    :cond_1
    return-void
.end method
