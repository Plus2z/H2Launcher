.class public Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WallpaperPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

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
    .line 165
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 126
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v5, v1

    .line 127
    check-cast v5, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v4

    .line 128
    .local v4, "wallpapersView":Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperPreview()Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v3

    .line 129
    .local v3, "preview":Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    iget-object v5, v5, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aget-object v2, v5, p2

    .line 130
    .local v2, "customization":Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    const/4 v0, 0x0

    .line 131
    .local v0, "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    sget-object v5, Lnet/oneplus/h2launcher/customizations/WallpaperPager$1;->$SwitchMap$net$oneplus$h2launcher$customizations$BaseViewPager$Customization:[I

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 152
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown customization: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setTag(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->getTitleResId()I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setTitle(I)V

    .line 157
    invoke-virtual {v0, v4}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setCardContainer(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    :cond_1
    return-object v0

    .line 133
    :pswitch_0
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .end local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;-><init>(Landroid/content/Context;)V

    .line 134
    .restart local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-object v5, v0

    check-cast v5, Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    invoke-static {v6, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$002(Lnet/oneplus/h2launcher/customizations/WallpaperPager;Lnet/oneplus/h2launcher/customizations/WallpaperCard;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    .line 135
    if-eqz v3, :cond_0

    .line 136
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setWallpaperPreview(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .end local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    move-object v5, v0

    check-cast v5, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v6, v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$102(Lnet/oneplus/h2launcher/customizations/WallpaperPager;Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .line 142
    if-eqz v3, :cond_0

    .line 143
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$000(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)Lnet/oneplus/h2launcher/customizations/WallpaperCard;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPager$WallpaperPagerAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPager;

    invoke-static {v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPager;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperPager;)Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->setWallpaperColorsListener(Lnet/oneplus/h2launcher/customizations/WallpaperCard$WallpaperColorsListener;)V

    goto :goto_0

    .line 149
    :pswitch_2
    new-instance v0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .end local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;-><init>(Landroid/content/Context;)V

    .line 150
    .restart local v0    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 121
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
