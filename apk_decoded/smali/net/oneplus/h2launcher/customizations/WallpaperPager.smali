.class public Lnet/oneplus/h2launcher/customizations/WallpaperPager;
.super Lnet/oneplus/h2launcher/customizations/BaseViewPager;
.source "WallpaperPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

.field private mWallpaperColorCard:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getCustomizations()[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->setOffscreenPageLimit(I)V

    .line 47
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;-><init>(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/customizations/WallpaperPager;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperColorCard:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/customizations/WallpaperPager;Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPager;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperColorCard:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private refreshWallpaperCards()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->reloadCustomizationSettings()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperColorCard()Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getWallpaperColorCard()Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->reloadCustomizationSettings()V

    .line 110
    :cond_1
    return-void
.end method


# virtual methods
.method protected getCustomizations()[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getCardType()Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    move-result-object v0

    .line 52
    .local v0, "cards":Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->TIME_WIDGET:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v3

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->WALLPAPERS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->COLOR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v3, v1, v2

    .line 56
    :goto_0
    return-object v1

    .line 55
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    new-array v1, v4, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->WALLPAPERS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v3

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid card type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWallpaperCard()Lnet/oneplus/h2launcher/customizations/WallpaperCard;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    return-object v0
.end method

.method public getWallpaperColorCard()Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperColorCard:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    return-object v0
.end method

.method public init(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "wallpaperPreview"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 64
    sget-object v3, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperPager init, requestCode:%d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/oos/StyleManager;->isWallpaperScrollable()Z

    move-result v1

    .line 67
    .local v1, "isWallpaperScrollable":Z
    if-nez v1, :cond_2

    const/16 v0, 0xf

    .line 70
    .local v0, "homeScreenRequestCode":I
    :goto_0
    if-nez v1, :cond_3

    const/16 v2, 0x10

    .line 74
    .local v2, "lockScreenRequestCode":I
    :goto_1
    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_4

    .line 76
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->isMemoryTrimmed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->updateWallpaperPreview()V

    .line 78
    invoke-virtual {p1, v7, v8}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->selectPage(IZ)V

    .line 79
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setSlideOffset(F)V

    .line 80
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->loadWallpaper(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    .line 81
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->performLoadThumbnails()V

    .line 83
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3, p2, p3, p4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    :goto_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->WALLPAPERS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->setCurrentItem(I)V

    .line 93
    return-void

    .line 67
    .end local v0    # "homeScreenRequestCode":I
    .end local v2    # "lockScreenRequestCode":I
    :cond_2
    const/16 v0, 0xa

    goto :goto_0

    .line 70
    .restart local v0    # "homeScreenRequestCode":I
    :cond_3
    const/16 v2, 0x19

    goto :goto_1

    .line 85
    .restart local v2    # "lockScreenRequestCode":I
    :cond_4
    invoke-virtual {p1, v7, v7}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->selectPage(IZ)V

    .line 86
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->loadWallpaper(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    .line 87
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mWallpaperCard:Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->performLoadThumbnails()V

    .line 88
    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->refreshWallpaperCards()V

    goto :goto_2
.end method
