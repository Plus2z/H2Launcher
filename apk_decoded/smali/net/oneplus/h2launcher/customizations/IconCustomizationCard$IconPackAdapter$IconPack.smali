.class Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;
.super Ljava/lang/Object;
.source "IconCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconPack"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->this$1:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->name:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->value:Ljava/lang/String;

    .line 470
    :try_start_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->access$900(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 475
    invoke-static {p1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->access$1100(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;)Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    const-string v3, "system_default_icons"

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 478
    .local v1, "iconResId":I
    iget-object v2, p1, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->icon:Landroid/graphics/drawable/Drawable;

    .line 480
    .end local v1    # "iconResId":I
    :cond_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IconPackName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
