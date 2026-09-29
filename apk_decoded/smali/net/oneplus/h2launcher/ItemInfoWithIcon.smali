.class public abstract Lnet/oneplus/h2launcher/ItemInfoWithIcon;
.super Lnet/oneplus/h2launcher/ItemInfo;
.source "ItemInfoWithIcon.java"


# instance fields
.field public iconBitmap:Landroid/graphics/Bitmap;

.field public usingLowResIcon:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lnet/oneplus/h2launcher/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfoWithIcon;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/ItemInfo;-><init>(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 40
    iget-object v0, p1, Lnet/oneplus/h2launcher/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnet/oneplus/h2launcher/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 41
    iget-boolean v0, p1, Lnet/oneplus/h2launcher/ItemInfoWithIcon;->usingLowResIcon:Z

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/ItemInfoWithIcon;->usingLowResIcon:Z

    .line 42
    return-void
.end method
