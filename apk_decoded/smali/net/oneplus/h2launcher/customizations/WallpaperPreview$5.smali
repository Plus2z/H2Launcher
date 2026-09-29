.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->loadWallpaper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 276
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->val$context:Landroid/content/Context;

    iput p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5$1;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;)V

    .line 291
    .local v0, "callback":Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$400(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->val$context:Landroid/content/Context;

    iget v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$5;->val$index:I

    invoke-static {v1, v2, v3, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$500(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;ILnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;)V

    .line 292
    return-void
.end method
