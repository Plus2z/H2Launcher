.class abstract Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.source "WallpaperCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SaveWallpaperCustomizationTask"
.end annotation


# instance fields
.field private final mScreen:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperCard;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "screen"    # I

    .prologue
    .line 844
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .line 845
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Ljava/lang/String;)V

    .line 846
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;->mScreen:I

    .line 847
    return-void
.end method


# virtual methods
.method public getScreen()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperCard$SaveWallpaperCustomizationTask;->mScreen:I

    return v0
.end method
