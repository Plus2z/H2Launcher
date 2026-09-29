.class Lnet/oneplus/h2launcher/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$cellLayout:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$hostView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

.field final synthetic val$info:Lnet/oneplus/h2launcher/ItemInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 3036
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$10;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$10;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$10;->val$hostView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Workspace$10;->val$cellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3038
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$10;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    .line 3039
    .local v0, "dragLayer":Lnet/oneplus/h2launcher/DragLayer;
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$10;->val$info:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$10;->val$hostView:Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$10;->val$cellLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/DragLayer;->addResizeFrame(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;Lnet/oneplus/h2launcher/CellLayout;)V

    .line 3040
    return-void
.end method
