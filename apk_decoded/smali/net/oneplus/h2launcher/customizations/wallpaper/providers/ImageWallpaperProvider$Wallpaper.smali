.class Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;
.super Ljava/lang/Object;
.source "ImageWallpaperProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wallpaper"
.end annotation


# instance fields
.field protected name:Ljava/lang/String;

.field protected orientation:I

.field protected overlayResId:I

.field protected resId:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;

.field protected thumbResId:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;IILjava/lang/String;I)V
    .locals 1
    .param p2, "resId"    # I
    .param p3, "thumbResId"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "orientation"    # I

    .prologue
    .line 151
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->overlayResId:I

    .line 152
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->resId:I

    .line 153
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->thumbResId:I

    .line 154
    iput-object p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->name:Ljava/lang/String;

    .line 155
    iput p5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->orientation:I

    .line 156
    return-void
.end method


# virtual methods
.method public setOverlayResId(I)V
    .locals 0
    .param p1, "overlayResId"    # I

    .prologue
    .line 159
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->overlayResId:I

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "resId=%d, overlayResId=%d, thumbResId=%d, name=%s, orientation=%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->resId:I

    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->overlayResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->thumbResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/ImageWallpaperProvider$Wallpaper;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 164
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
