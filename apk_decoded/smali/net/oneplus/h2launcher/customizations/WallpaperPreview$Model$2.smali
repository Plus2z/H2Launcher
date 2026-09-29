.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->preloadWallpapers(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    .prologue
    .line 421
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 424
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preloadWallpapers# enter run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$902(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Z)Z

    .line 426
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->val$index:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$500(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Landroid/content/Context;ILnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;)V

    .line 427
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->access$902(Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;Z)Z

    .line 428
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preloadWallpapers# leave run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method
