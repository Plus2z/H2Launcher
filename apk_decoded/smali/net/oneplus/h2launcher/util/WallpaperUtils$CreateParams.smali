.class public Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/util/WallpaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateParams"
.end annotation


# instance fields
.field imageBytes:[B

.field public orientation:I

.field reduceSize:Z

.field public resId:I

.field public rotation:I

.field public screen:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IIZI)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "screen"    # I
    .param p3, "reduceSize"    # Z
    .param p4, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object v1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    .line 906
    iput v0, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->resId:I

    .line 909
    iput v0, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->rotation:I

    .line 910
    iput-object v1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    .line 924
    iput p1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->resId:I

    .line 925
    invoke-direct {p0, p2, p3, p4}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->init(IZI)V

    .line 926
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;IZI)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "screen"    # I
    .param p3, "reduceSize"    # Z
    .param p4, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object v1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    .line 906
    iput v0, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->resId:I

    .line 909
    iput v0, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->rotation:I

    .line 910
    iput-object v1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    .line 914
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    .line 915
    invoke-direct {p0, p2, p3, p4}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->init(IZI)V

    .line 916
    return-void
.end method

.method public constructor <init>([BIZI)V
    .locals 2
    .param p1, "imageBytes"    # [B
    .param p2, "screen"    # I
    .param p3, "reduceSize"    # Z
    .param p4, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object v1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->uri:Landroid/net/Uri;

    .line 906
    iput v0, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->resId:I

    .line 909
    iput v0, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->rotation:I

    .line 910
    iput-object v1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    .line 919
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->imageBytes:[B

    .line 920
    invoke-direct {p0, p2, p3, p4}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->init(IZI)V

    .line 921
    return-void
.end method

.method private init(IZI)V
    .locals 0
    .param p1, "screen"    # I
    .param p2, "reduceSize"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 929
    iput p1, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->screen:I

    .line 930
    iput-boolean p2, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->reduceSize:Z

    .line 931
    iput p3, p0, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;->orientation:I

    .line 932
    return-void
.end method
