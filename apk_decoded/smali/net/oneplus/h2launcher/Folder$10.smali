.class Lnet/oneplus/h2launcher/Folder$10;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
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
    .line 1010
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$10;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1013
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$10;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 1016
    return-void
.end method
