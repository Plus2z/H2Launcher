.class public Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/OneDayOnePhotoWallpaperTileInfo;
.super Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
.source "OneDayOnePhotoWallpaperTileInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/OneDayOnePhotoWallpaperTileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/OneDayOnePhotoWallpaperTileInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;-><init>()V

    .line 9
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;->ONEDAYONEPHOTO:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/OneDayOnePhotoWallpaperTileInfo;->mType:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo$Type;

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Lnet/oneplus/h2launcher/customizations/WallpaperCard;IZ)V
    .locals 1
    .param p1, "card"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "screen"    # I
    .param p3, "changed"    # Z

    .prologue
    .line 14
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->startOneDayOnePhotoPicker(Landroid/content/Context;I)V

    .line 15
    return-void
.end method
