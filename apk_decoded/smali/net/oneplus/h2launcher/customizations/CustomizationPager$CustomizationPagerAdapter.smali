.class public Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CustomizationPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/CustomizationPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomizationPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/CustomizationPager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    .prologue
    .line 44
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 58
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    iget-object v2, v2, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aget-object v1, v2, p2

    .line 59
    .local v1, "customization":Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    const/4 v0, 0x0

    .line 60
    .local v0, "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    sget-object v2, Lnet/oneplus/h2launcher/customizations/CustomizationPager$1;->$SwitchMap$net$oneplus$h2launcher$customizations$BaseViewPager$Customization:[I

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 68
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown customization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setTag(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->getTitleResId()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setTitle(I)V

    .line 73
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setCardContainer(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    return-object v0

    .line 62
    :pswitch_0
    new-instance v0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;

    .end local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    goto :goto_0

    .line 65
    :pswitch_1
    new-instance v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .end local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/CustomizationPager$CustomizationPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationPager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/CustomizationPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;-><init>(Landroid/content/Context;)V

    .line 66
    .restart local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
