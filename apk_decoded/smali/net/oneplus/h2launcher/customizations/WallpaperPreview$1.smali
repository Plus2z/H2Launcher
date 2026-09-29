.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$1;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 74
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->selectPage(IZ)V

    .line 82
    return-void
.end method
