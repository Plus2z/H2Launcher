.class Lnet/oneplus/h2launcher/Workspace$7;
.super Landroid/os/AsyncTask;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->setWallpaperDimension()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 1526
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$7;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1526
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/Workspace$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 1528
    const-string v1, "net.oneplus.h2launcher.WallpaperCropActivity"

    .line 1529
    .local v1, "spKey":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$7;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v3, 0x4

    .line 1530
    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1531
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lnet/oneplus/h2launcher/Workspace$7;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Workspace$7;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v3, v3, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 1532
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/Workspace$7;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v5, p0, Lnet/oneplus/h2launcher/Workspace$7;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v5, v5, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 1533
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->overrideWallpaperDimensions()Z

    move-result v5

    .line 1531
    invoke-static {v2, v0, v3, v4, v5}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V

    .line 1534
    const/4 v2, 0x0

    return-object v2
.end method
