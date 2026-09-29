.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$6$1;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;

    .prologue
    .line 727
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/WallpaperCard$6;->val$uriWallpaperInfos:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->access$1500(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/util/List;)V

    .line 731
    return-void
.end method
