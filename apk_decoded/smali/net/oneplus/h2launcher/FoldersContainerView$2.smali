.class Lnet/oneplus/h2launcher/FoldersContainerView$2;
.super Ljava/lang/Object;
.source "FoldersContainerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FoldersContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FoldersContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FoldersContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FoldersContainerView;

    .prologue
    .line 156
    iput-object p1, p0, Lnet/oneplus/h2launcher/FoldersContainerView$2;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKey()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView$2;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->access$200(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lnet/oneplus/h2launcher/FoldersContainerView$2;->this$0:Lnet/oneplus/h2launcher/FoldersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FoldersContainerView;->access$200(Lnet/oneplus/h2launcher/FoldersContainerView;)Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Folder;->doneEditingFolderName(Z)V

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
