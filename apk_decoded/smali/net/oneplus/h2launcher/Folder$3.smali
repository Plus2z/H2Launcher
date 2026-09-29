.class Lnet/oneplus/h2launcher/Folder$3;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->bind(Lnet/oneplus/h2launcher/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 475
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$3;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$3;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$3;->this$0:Lnet/oneplus/h2launcher/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Folder;->replaceFolderWithFinalItem(Z)V

    .line 480
    :cond_0
    return-void
.end method
