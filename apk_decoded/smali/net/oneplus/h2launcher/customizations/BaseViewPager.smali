.class public Lnet/oneplus/h2launcher/customizations/BaseViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BaseViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;,
        Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;,
        Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;,
        Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;
    }
.end annotation


# instance fields
.field protected mCustomizations:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 26
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c003a

    .line 27
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    neg-int v0, v2

    .line 28
    .local v0, "pageMargin":I
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setClipToPadding(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setPageMargin(I)V

    .line 30
    new-instance v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V

    invoke-virtual {p0, v4, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 31
    new-instance v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 32
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->setOverScrollMode(I)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifyPageScrolled(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    return-void
.end method

.method private getCustomizationCardAt(I)Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildCount()I

    move-result v1

    .line 170
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 171
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Integer;

    .line 174
    .end local v3    # "tag":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 175
    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .line 178
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 170
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V
    .locals 4
    .param p1, "operation"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;

    .prologue
    .line 182
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildCount()I

    move-result v1

    .line 183
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 184
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 186
    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {p1, v2, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;->perform(ILnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V

    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method private notifyPageScrolled(Landroid/view/View;F)V
    .locals 5
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 124
    instance-of v3, p1, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getPageMargin()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 126
    .local v2, "marginOffset":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "absPosition":F
    move-object v1, p1

    .line 127
    check-cast v1, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .line 128
    .local v1, "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v4, v0, v2

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onPageScrolled(F)V

    .line 130
    .end local v0    # "absPosition":F
    .end local v1    # "card":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .end local v2    # "marginOffset":F
    :cond_0
    return-void
.end method


# virtual methods
.method public gatherSaveCustomizationTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;>;"
    new-instance v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$2;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$2;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 68
    return-object v0
.end method

.method protected getCurrentCustomizationCard()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getCustomizationCardAt(I)Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomizations()[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinCardTop()I
    .locals 7

    .prologue
    .line 136
    const v4, 0x7fffffff

    .line 137
    .local v4, "minCardTop":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildCount()I

    move-result v2

    .line 138
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 139
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "child":Landroid/view/View;
    instance-of v6, v1, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    if-eqz v6, :cond_0

    .line 141
    const v6, 0x7f1100ca

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "card":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 144
    .local v5, "top":I
    if-ge v5, v4, :cond_0

    .line 145
    move v4, v5

    .line 138
    .end local v0    # "card":Landroid/view/View;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    const v6, 0x7fffffff

    if-ne v4, v6, :cond_2

    const/4 v4, 0x0

    .end local v4    # "minCardTop":I
    :cond_2
    return v4
.end method

.method public notifyLeavingCustomizations()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$3;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 81
    return-void
.end method

.method public notifyLeftCustomizations()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$4;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$4;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 93
    return-void
.end method

.method public notifyShowCustomizations()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$5;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$5;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 109
    return-void
.end method

.method public notifySystemOnLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 115
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$6;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$6;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;I)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 121
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public reloadCustomizations()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$1;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->iterateOverCards(Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 52
    return-void
.end method
