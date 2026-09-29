.class public Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconPackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;,
        Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mIconPackValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutResourceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutResourceId"    # I

    .prologue
    .line 387
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPacks:Ljava/util/List;

    .line 385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPackValueSet:Ljava/util/Set;

    .line 388
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 389
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mLayoutResourceId:I

    .line 390
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 391
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    .line 392
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->loadIconPackList()V

    .line 393
    return-void
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;)Lnet/oneplus/h2launcher/oos/StyleManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    .prologue
    .line 379
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mStyleManager:Lnet/oneplus/h2launcher/oos/StyleManager;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    .prologue
    .line 379
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 424
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 430
    if-nez p2, :cond_1

    .line 431
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mLayoutResourceId:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 432
    new-instance v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;-><init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;)V

    .line 433
    .local v0, "holder":Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;
    const v3, 0x7f110130

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/customizations/Selection;

    iput-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->selection:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 434
    const v3, 0x7f110131

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 435
    const v3, 0x7f110132

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 436
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 441
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;

    .line 442
    .local v2, "item":Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;
    iget-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v2, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->selection:Lnet/oneplus/h2launcher/customizations/Selection;

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, v2, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;->value:Ljava/lang/String;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$300(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 446
    .local v1, "isSelected":Z
    iget-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->selection:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-virtual {v3, v1, v5}, Lnet/oneplus/h2launcher/customizations/Selection;->setSelected(ZI)V

    .line 447
    iget-object v3, v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->selection:Lnet/oneplus/h2launcher/customizations/Selection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/customizations/Selection;->setTag(Ljava/lang/Object;)V

    .line 448
    if-eqz v1, :cond_0

    .line 449
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v3, p1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$802(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;I)I

    .line 452
    .end local v1    # "isSelected":Z
    :cond_0
    return-object p2

    .line 438
    .end local v0    # "holder":Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;
    .end local v2    # "item":Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;

    .restart local v0    # "holder":Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;
    goto :goto_0
.end method

.method public loadIconPackList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 396
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPacks:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPackValueSet:Ljava/util/Set;

    if-eqz v4, :cond_0

    .line 397
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 398
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPackValueSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 401
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lnet/oneplus/h2launcher/IconPackHelper;->getIconPackList(Landroid/content/Context;Z)[[Ljava/lang/CharSequence;

    move-result-object v1

    .line 402
    .local v1, "iconPackList":[[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    aget-object v4, v1, v6

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 403
    const/4 v4, 0x0

    aget-object v4, v1, v4

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "name":Ljava/lang/String;
    aget-object v4, v1, v6

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPackValueSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 406
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPackValueSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;->mIconPacks:Ljava/util/List;

    new-instance v5, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;

    invoke-direct {v5, p0, v2, v3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$IconPack;-><init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method
