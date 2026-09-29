.class public Lnet/oneplus/h2launcher/customizations/CustomizationPager;
.super Lnet/oneplus/h2launcher/customizations/BaseViewPager;
.source "CustomizationPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->getCustomizations()[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->setOffscreenPageLimit(I)V

    .line 26
    new-instance v0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;-><init>(Lnet/oneplus/h2launcher/customizations/CustomizationPager;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getCustomizations()[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->getCardType()Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    move-result-object v0

    .line 31
    .local v0, "cards":Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-array v1, v4, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICONS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v3

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBarInOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x2

    new-array v1, v1, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->SEARCH_BAR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v3

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICONS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v4

    goto :goto_0

    .line 37
    :cond_1
    new-array v1, v4, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICONS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v1, v3

    goto :goto_0

    .line 40
    :cond_2
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
