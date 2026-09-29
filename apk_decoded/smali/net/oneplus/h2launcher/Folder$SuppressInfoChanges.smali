.class Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppressInfoChanges"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 1

    .prologue
    .line 1307
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    iget-object v0, p1, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/FolderInfo;->removeListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V

    .line 1309
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1313
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mInfo:Lnet/oneplus/h2launcher/FolderInfo;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderInfo;->addListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V

    .line 1314
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$SuppressInfoChanges;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->updateTextViewFocus()V

    .line 1315
    return-void
.end method
