.class final Lnet/oneplus/h2launcher/DeleteDropTarget$1;
.super Landroid/os/AsyncTask;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

.field final synthetic val$widget:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$1;->val$appWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    iput-object p2, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$1;->val$widget:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/DeleteDropTarget$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$1;->val$appWidgetHost:Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    iget-object v1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$1;->val$widget:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method
