.class Lnet/oneplus/h2launcher/LauncherClings$8;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->dismissWallpapersCling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;

.field final synthetic val$updateDismissFlag:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 360
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$8;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/LauncherClings$8;->val$updateDismissFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 362
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$8;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings$8;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-static {v1}, Lnet/oneplus/h2launcher/LauncherClings;->access$100(Lnet/oneplus/h2launcher/LauncherClings;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "cling_gel.wallpapers.dismissed"

    const/16 v4, 0xc8

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/LauncherClings$8;->val$updateDismissFlag:Z

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    .line 364
    return-void
.end method
