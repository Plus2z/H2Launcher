.class public final enum Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;
.super Ljava/lang/Enum;
.source "BlurWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallpaperType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

.field public static final enum BLUR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

.field public static final enum CLEAR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

.field public static final enum NONE:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    const-string v1, "BLUR"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->BLUR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 131
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->CLEAR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 132
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->NONE:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    sget-object v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->BLUR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->CLEAR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->NONE:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->$VALUES:[Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->$VALUES:[Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    return-object v0
.end method
