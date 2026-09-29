.class public Lcom/oneplus/sdk/wrapper/android/app/OpWallpaperManager;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyguardBitmap(Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "this"    # Landroid/app/WallpaperManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setKeyguardStream(Landroid/app/WallpaperManager;Ljava/io/InputStream;)I
    .locals 1
    .param p0, "this"    # Landroid/app/WallpaperManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method
