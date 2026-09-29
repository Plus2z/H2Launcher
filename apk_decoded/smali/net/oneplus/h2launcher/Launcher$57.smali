.class Lnet/oneplus/h2launcher/Launcher$57;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindRestoreItemsChange(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6816
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$57;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$57;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6818
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$57;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$57;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 6819
    return-void
.end method
