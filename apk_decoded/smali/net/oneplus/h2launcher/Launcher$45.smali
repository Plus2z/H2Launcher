.class Lnet/oneplus/h2launcher/Launcher$45;
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

.field final synthetic val$end:I

.field final synthetic val$forceAnimateIcons:Z

.field final synthetic val$shortcuts:Ljava/util/ArrayList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6201
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$45;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$shortcuts:Ljava/util/ArrayList;

    iput p3, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$start:I

    iput p4, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$end:I

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$forceAnimateIcons:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6203
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$45;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$shortcuts:Ljava/util/ArrayList;

    iget v2, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$start:I

    iget v3, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$end:I

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/Launcher$45;->val$forceAnimateIcons:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 6204
    return-void
.end method
