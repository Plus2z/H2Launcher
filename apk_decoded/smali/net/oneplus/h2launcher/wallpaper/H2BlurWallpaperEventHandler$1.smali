.class Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;
.super Ljava/lang/Object;
.source "H2BlurWallpaperEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->setupWallpaperForUser(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    .prologue
    .line 118
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;->this$0:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    iput-object p2, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/migrate/MigrationManager;->migrateBlurWallpaper(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;->this$0:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->access$000(Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;->this$0:Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->access$100(Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;Landroid/content/Context;)V

    .line 126
    :cond_0
    return-void
.end method
