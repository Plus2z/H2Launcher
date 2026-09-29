.class public Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.source "SearchBarCustomizationCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

.field private mSearchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

.field private mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

.field private mSelectionDefault:Lnet/oneplus/h2launcher/customizations/Selection;

.field private mSelectionHidden:Lnet/oneplus/h2launcher/customizations/Selection;

.field private mSelectionTransparent:Lnet/oneplus/h2launcher/customizations/Selection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->setupContentView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->reloadCustomizationSettings()V

    .line 37
    return-void
.end method

.method private getSearchBarStyleFromView(Landroid/view/View;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    .locals 2
    .param p1, "selection"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown view identifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_1
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    .line 140
    :goto_0
    return-object v0

    .line 138
    :pswitch_2
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    goto :goto_0

    .line 140
    :pswitch_3
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f1100ce
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setupContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v7, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getCustomizationsView()Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    move-result-object v7

    iput-object v7, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .line 107
    const v7, 0x7f1100ce

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v7, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionDefault:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 108
    const v7, 0x7f1100d0

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v7, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionTransparent:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 109
    const v7, 0x7f1100d2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v7, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionHidden:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 111
    const v7, 0x7f1100cf

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 112
    .local v4, "searchBarDefaultView":Landroid/view/View;
    const v7, 0x7f1100d1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 113
    .local v5, "searchBarTransparentView":Landroid/view/View;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    .line 115
    .local v3, "isRtl":Z
    if-eqz v3, :cond_2

    const v7, 0x7f0201b4

    :goto_0
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    if-eqz v3, :cond_3

    const v7, 0x7f0201b8

    :goto_1
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    .end local v3    # "isRtl":Z
    :cond_0
    const v7, 0x7f1100cd

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 122
    .local v6, "selections":Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 123
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 124
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 125
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lnet/oneplus/h2launcher/customizations/Selection;

    if-eqz v7, :cond_1

    .line 127
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v6    # "selections":Landroid/view/ViewGroup;
    .restart local v3    # "isRtl":Z
    :cond_2
    const v7, 0x7f0201b2

    goto :goto_0

    .line 117
    :cond_3
    const v7, 0x7f0201b6

    goto :goto_1

    .line 131
    .end local v3    # "isRtl":Z
    .restart local v6    # "selections":Landroid/view/ViewGroup;
    :cond_4
    return-void
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getSearchBarStyleFromView(Landroid/view/View;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v0

    .line 78
    .local v0, "searchBarStyle":Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSearchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;

    sget-object v2, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->TAG:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;-><init>(Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;Ljava/lang/String;Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    .line 152
    :cond_0
    check-cast p1, Lnet/oneplus/h2launcher/customizations/Selection;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 153
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(Z)V

    .line 155
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getSearchBarStyleFromView(Landroid/view/View;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v0

    .line 157
    .local v0, "searchBarStyle":Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->animateToPreview(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)V

    .line 159
    .end local v0    # "searchBarStyle":Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    :cond_1
    return-void
.end method

.method protected reloadCustomizationSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 48
    .local v1, "lastSelection":Lnet/oneplus/h2launcher/customizations/Selection;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getSearchBarStyle(Landroid/content/Context;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v3

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSearchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    .line 49
    sget-object v3, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSearchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 61
    :goto_0
    const/4 v0, 0x0

    .line 62
    .local v0, "duration":I
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1, v5, v5}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(ZI)V

    .line 65
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(ZI)V

    .line 69
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getSearchBarStyleFromView(Landroid/view/View;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v2

    .line 71
    .local v2, "searchBarStyle":Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mCustomizationsView:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v3, v2, v5}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->animateToPreview(Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;I)V

    .line 73
    .end local v2    # "searchBarStyle":Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    :cond_2
    return-void

    .line 51
    .end local v0    # "duration":I
    :pswitch_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionDefault:Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionTransparent:Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionHidden:Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->mSelectionCurrent:Lnet/oneplus/h2launcher/customizations/Selection;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
