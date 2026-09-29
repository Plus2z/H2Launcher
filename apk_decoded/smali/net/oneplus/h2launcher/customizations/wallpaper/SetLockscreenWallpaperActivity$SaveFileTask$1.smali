.class Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask$1;
.super Ljava/lang/Object;
.source "SetLockscreenWallpaperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;

    .prologue
    .line 271
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask$1;->this$1:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 276
    return-void
.end method
