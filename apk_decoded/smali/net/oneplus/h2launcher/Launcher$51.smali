.class Lnet/oneplus/h2launcher/Launcher$51;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->finishBindingItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;J)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6550
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$51;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-wide p2, p0, Lnet/oneplus/h2launcher/Launcher$51;->val$screenId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6553
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$51;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/Launcher$51;->val$screenId:J

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->snapToScreenId(J)V

    .line 6554
    return-void
.end method
