.class public final enum Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;
.super Ljava/lang/Enum;
.source "WallpaperTaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

.field public static final enum HIGH:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

.field public static final enum LOW:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

.field public static final enum NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->HIGH:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    .line 62
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    .line 63
    new-instance v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->HIGH:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->NORMAL:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->LOW:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->$VALUES:[Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->$VALUES:[Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    return-object v0
.end method
