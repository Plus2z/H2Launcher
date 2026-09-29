.class Lnet/oneplus/h2launcher/IconCache$CacheEntry;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field public assetPackName:Ljava/lang/String;

.field public contentDescription:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/Bitmap;

.field public isLowResIcon:Z

.field public locale:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconCache$CacheEntry;->assetPackName:Ljava/lang/String;

    return-void
.end method
