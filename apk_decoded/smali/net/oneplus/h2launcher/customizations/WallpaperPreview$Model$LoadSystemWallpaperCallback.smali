.class abstract Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model$LoadSystemWallpaperCallback;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LoadSystemWallpaperCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onFailure(I)V
.end method

.method abstract onWallpaperLoaded(ILandroid/graphics/Bitmap;)V
.end method
