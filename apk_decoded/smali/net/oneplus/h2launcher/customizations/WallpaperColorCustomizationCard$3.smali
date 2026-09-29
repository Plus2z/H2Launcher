.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;
.super Ljava/lang/Object;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->reloadCustomizationSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$500(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$500(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;

    move-result-object v1

    iget v0, v1, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperColor;->index:I

    .line 113
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)V

    .line 114
    return-void

    .line 112
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
