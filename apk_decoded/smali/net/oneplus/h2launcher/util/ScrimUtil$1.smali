.class final Lnet/oneplus/h2launcher/util/ScrimUtil$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "ScrimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/ScrimUtil;->makeCubicGradientScrimDrawable(III)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stopColors:[I

.field final synthetic val$x0:F

.field final synthetic val$x1:F

.field final synthetic val$y0:F

.field final synthetic val$y1:F


# direct methods
.method constructor <init>(FFFF[I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$x0:F

    iput p2, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$y0:F

    iput p3, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$x1:F

    iput p4, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$y1:F

    iput-object p5, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$stopColors:[I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, p1

    iget v2, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$x0:F

    mul-float/2addr v1, v2

    int-to-float v2, p2

    iget v3, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$y0:F

    mul-float/2addr v2, v3

    int-to-float v3, p1

    iget v4, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$x1:F

    mul-float/2addr v3, v4

    int-to-float v4, p2

    iget v5, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$y1:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lnet/oneplus/h2launcher/util/ScrimUtil$1;->val$stopColors:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method
