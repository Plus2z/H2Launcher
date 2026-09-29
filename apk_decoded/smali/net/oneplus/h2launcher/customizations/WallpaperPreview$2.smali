.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setPreviewItemBackground(ILandroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 178
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    iput p2, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;->val$index:I

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->setPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-void
.end method
