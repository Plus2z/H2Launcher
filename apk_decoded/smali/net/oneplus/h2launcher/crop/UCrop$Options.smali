.class public Lnet/oneplus/h2launcher/crop/UCrop$Options;
.super Ljava/lang/Object;
.source "UCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/UCrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final EXTRA_COMPRESSION_FORMAT_NAME:Ljava/lang/String; = "net.oneplus.h2launcher.CompressionFormatName"

.field public static final EXTRA_COMPRESSION_QUALITY:Ljava/lang/String; = "net.oneplus.h2launcher.CompressionQuality"

.field public static final EXTRA_CROP_COVER_IMAGE:Ljava/lang/String; = "net.oneplus.h2launcher.CropCoverImage"

.field public static final EXTRA_CROP_FRAME_COLOR:Ljava/lang/String; = "net.oneplus.h2launcher.CropFrameColor"

.field public static final EXTRA_CROP_FRAME_STROKE_WIDTH:Ljava/lang/String; = "net.oneplus.h2launcher.CropFrameStrokeWidth"

.field public static final EXTRA_CROP_GRID_COLOR:Ljava/lang/String; = "net.oneplus.h2launcher.CropGridColor"

.field public static final EXTRA_CROP_GRID_COLUMN_COUNT:Ljava/lang/String; = "net.oneplus.h2launcher.CropGridColumnCount"

.field public static final EXTRA_CROP_GRID_ROW_COUNT:Ljava/lang/String; = "net.oneplus.h2launcher.CropGridRowCount"

.field public static final EXTRA_CROP_GRID_STROKE_WIDTH:Ljava/lang/String; = "net.oneplus.h2launcher.CropGridStrokeWidth"

.field public static final EXTRA_DIMMED_LAYER_COLOR:Ljava/lang/String; = "net.oneplus.h2launcher.DimmedLayerColor"

.field public static final EXTRA_HIDE_BOTTOM_CONTROLS:Ljava/lang/String; = "net.oneplus.h2launcher.HideBottomControls"

.field public static final EXTRA_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:Ljava/lang/String; = "net.oneplus.h2launcher.ImageToCropBoundsAnimDuration"

.field public static final EXTRA_MAX_BITMAP_SIZE:Ljava/lang/String; = "net.oneplus.h2launcher.MaxBitmapSize"

.field public static final EXTRA_MAX_SCALE_MULTIPLIER:Ljava/lang/String; = "net.oneplus.h2launcher.MaxScaleMultiplier"

.field public static final EXTRA_OVAL_DIMMED_LAYER:Ljava/lang/String; = "net.oneplus.h2launcher.OvalDimmedLayer"

.field public static final EXTRA_SHOW_CROP_COVER_COLOR_MASK:Ljava/lang/String; = "net.oneplus.h2launcher.ShowCropCoverColorMask"

.field public static final EXTRA_SHOW_CROP_FRAME:Ljava/lang/String; = "net.oneplus.h2launcher.ShowCropFrame"

.field public static final EXTRA_SHOW_CROP_GRID:Ljava/lang/String; = "net.oneplus.h2launcher.ShowCropGrid"

.field public static final EXTRA_STATUS_BAR_COLOR:Ljava/lang/String; = "net.oneplus.h2launcher.StatusBarColor"

.field public static final EXTRA_TOOL_BAR_COLOR:Ljava/lang/String; = "net.oneplus.h2launcher.ToolbarColor"

.field public static final EXTRA_UCROP_TITLE_TEXT_TOOLBAR:Ljava/lang/String; = "net.oneplus.h2launcher.UcropToolbarTitleText"

.field public static final EXTRA_UCROP_WIDGET_COLOR_TOOLBAR:Ljava/lang/String; = "net.oneplus.h2launcher.UcropToolbarWidgetColor"


# instance fields
.field private final mOptionBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    .line 326
    return-void
.end method


# virtual methods
.method public getOptionBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CompressionFormatName"

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setCompressionQuality(I)V
    .locals 2
    .param p1, "compressQuality"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 344
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CompressionQuality"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method public setCropCoverImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 448
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 450
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v2, "net.oneplus.h2launcher.CropCoverImage"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 451
    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 399
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CropFrameColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 406
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CropFrameStrokeWidth"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    return-void
.end method

.method public setCropGridColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 434
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CropGridColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 2
    .param p1, "count"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 427
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CropGridColumnCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 2
    .param p1, "count"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 420
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CropGridRowCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 441
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.CropGridStrokeWidth"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    return-void
.end method

.method public setDimmedLayerColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 378
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.DimmedLayerColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    return-void
.end method

.method public setHideBottomControls(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.HideBottomControls"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 493
    return-void
.end method

.method public setImageToCropBoundsAnimDuration(I)V
    .locals 2
    .param p1, "durationMillis"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.ImageToCropBoundsAnimDuration"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    return-void
.end method

.method public setMaxBitmapSize(I)V
    .locals 2
    .param p1, "maxBitmapSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .prologue
    .line 371
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.MaxBitmapSize"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 2
    .param p1, "maxScaleMultiplier"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 1.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 353
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.MaxScaleMultiplier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 354
    return-void
.end method

.method public setOvalDimmedLayer(Z)V
    .locals 2
    .param p1, "isOval"    # Z

    .prologue
    .line 385
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.OvalDimmedLayer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    return-void
.end method

.method public setShowCropCoverColorMask(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 457
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.ShowCropCoverColorMask"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.ShowCropFrame"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 413
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.ShowCropGrid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 471
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.StatusBarColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    return-void
.end method

.method public setToolbarColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 464
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.ToolbarColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 485
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.UcropToolbarTitleText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public setToolbarWidgetColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 478
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop$Options;->mOptionBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.UcropToolbarWidgetColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    return-void
.end method
