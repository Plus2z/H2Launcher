.class Lnet/oneplus/h2launcher/Workspace$14;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->onDropExternal([ILjava/lang/Object;Lnet/oneplus/h2launcher/CellLayout;ZLnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$container:J

.field final synthetic val$item:Lnet/oneplus/h2launcher/ItemInfo;

.field final synthetic val$pendingInfo:Lnet/oneplus/h2launcher/PendingAddItemInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/PendingAddItemInfo;JJLnet/oneplus/h2launcher/ItemInfo;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 3816
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$14;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$pendingInfo:Lnet/oneplus/h2launcher/PendingAddItemInfo;

    iput-wide p3, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$container:J

    iput-wide p5, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$screenId:J

    iput-object p7, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3822
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$14;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->deferRemoveExtraEmptyScreen()V

    .line 3826
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$14;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$pendingInfo:Lnet/oneplus/h2launcher/PendingAddItemInfo;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$container:J

    iget-wide v4, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$screenId:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/Workspace$14;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v6, v6, Lnet/oneplus/h2launcher/Workspace;->mTargetCell:[I

    iget-object v7, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget v7, v7, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget-object v8, p0, Lnet/oneplus/h2launcher/Workspace$14;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget v8, v8, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v8}, Lnet/oneplus/h2launcher/Launcher;->addPendingItem(Lnet/oneplus/h2launcher/PendingAddItemInfo;JJ[III)V

    .line 3828
    return-void
.end method
