.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;
.super Ljava/lang/Object;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setupContentView(Landroid/view/View;)V
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
    .line 203
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 207
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no circle selected"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1000(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/ColorCircleView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/ColorCircleView;->getIndex()I

    move-result v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1200(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)I

    move-result v0

    .line 211
    .local v0, "currentGroup":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1300(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)I

    move-result v2

    .line 212
    .local v2, "nextStartIndex":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1400(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 213
    .local v1, "nextGroup":I
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$7;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v5, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1300(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;I)I

    move-result v5

    invoke-static {v4, v5, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$1500(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;IZ)V

    goto :goto_0

    .end local v1    # "nextGroup":I
    :cond_1
    move v1, v3

    .line 212
    goto :goto_1
.end method
