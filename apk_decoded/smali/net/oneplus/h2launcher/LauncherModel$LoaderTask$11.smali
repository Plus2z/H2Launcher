.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->bindWorkspaceItems(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/util/LongArrayMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

.field final synthetic val$widget:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/LauncherModel$Callbacks;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3565
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;->val$widget:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3567
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;->val$oldCallbacks:Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lnet/oneplus/h2launcher/LauncherModel$Callbacks;)Lnet/oneplus/h2launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 3568
    .local v0, "callbacks":Lnet/oneplus/h2launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 3569
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$11;->val$widget:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel$Callbacks;->bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 3571
    :cond_0
    return-void
.end method
