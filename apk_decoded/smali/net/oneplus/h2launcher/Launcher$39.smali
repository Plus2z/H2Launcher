.class Lnet/oneplus/h2launcher/Launcher$39;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$a:Z

.field final synthetic val$h:Z

.field final synthetic val$o:Ljava/lang/Runnable;

.field final synthetic val$s:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;IZLjava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 5294
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$39;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput p2, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$s:I

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$a:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$o:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5296
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$39;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$s:I

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$a:Z

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$o:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Launcher$39;->val$h:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(IZLjava/lang/Runnable;Z)V

    .line 5297
    return-void
.end method
