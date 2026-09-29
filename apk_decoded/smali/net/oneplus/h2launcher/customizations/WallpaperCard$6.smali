.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

.field final synthetic val$uriWallpaperInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 724
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;->val$uriWallpaperInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method
