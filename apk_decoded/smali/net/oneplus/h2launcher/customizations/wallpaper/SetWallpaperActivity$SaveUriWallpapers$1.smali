.class Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers$1;
.super Ljava/lang/Object;
.source "SetWallpaperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;

    .prologue
    .line 242
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 245
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity$SaveUriWallpapers;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetWallpaperActivity;->finish()V

    .line 246
    return-void
.end method
