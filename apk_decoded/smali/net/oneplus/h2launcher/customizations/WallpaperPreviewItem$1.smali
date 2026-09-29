.class Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem$1;
.super Ljava/lang/Object;
.source "WallpaperPreviewItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;-><init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    .prologue
    .line 58
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    .local v0, "index":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPreviewItem;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->setCurrentItem(I)V

    .line 63
    return-void
.end method
