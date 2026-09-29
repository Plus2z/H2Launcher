.class final Lnet/oneplus/h2launcher/util/WallpaperUtils$2;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/WallpaperUtils;->loadWallpaperSwatches(Landroid/graphics/Bitmap;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v7/graphics/Palette$Swatch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)I
    .locals 2
    .param p1, "lhs"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "rhs"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    .line 664
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 661
    check-cast p1, Landroid/support/v7/graphics/Palette$Swatch;

    check-cast p2, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/util/WallpaperUtils$2;->compare(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)I

    move-result v0

    return v0
.end method
