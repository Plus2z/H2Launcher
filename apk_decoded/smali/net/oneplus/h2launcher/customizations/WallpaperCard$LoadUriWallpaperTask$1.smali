.class Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask$1;
.super Ljava/lang/Object;
.source "WallpaperCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    .prologue
    .line 803
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 806
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard$LoadUriWallpaperTask;->cancel(Z)Z

    .line 807
    return-void
.end method
