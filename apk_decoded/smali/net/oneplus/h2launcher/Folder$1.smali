.class Lnet/oneplus/h2launcher/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->startEditingFolderName()V
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
    .line 344
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$1;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$1;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mFolderName:Lnet/oneplus/h2launcher/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$1;->this$0:Lnet/oneplus/h2launcher/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Folder;->access$002(Lnet/oneplus/h2launcher/Folder;Z)Z

    .line 349
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$1;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Folder;->access$100(Lnet/oneplus/h2launcher/Folder;)V

    .line 350
    return-void
.end method
