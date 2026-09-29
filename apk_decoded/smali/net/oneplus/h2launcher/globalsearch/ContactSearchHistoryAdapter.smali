.class public Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactSearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ContactSearchResultAdapter"


# instance fields
.field private mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

.field private mContext:Landroid/content/Context;

.field private mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

.field private final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "historyList":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;->MATERIAL:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    .line 39
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;->builder()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;->beginConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;->toUpperCase()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;->endConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0083

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mIconSize:I

    .line 42
    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .prologue
    .line 25
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mIconSize:I

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/net/Uri;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->setContactImage(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method private getContactImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getShortName([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "splitName"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 149
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 150
    aget-object v0, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    aget-object v0, p1, v2

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private setContactImage(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 2
    .param p1, "v"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setVisibility(I)V

    .line 161
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    if-nez p2, :cond_2

    .line 67
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040037

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v7, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    invoke-direct {v7}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;-><init>()V

    .line 69
    .local v7, "viewHolder":Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    const v8, 0x7f1100c3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$002(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    const v8, 0x7f1100c2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$102(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    .line 71
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    .line 77
    .local v1, "contactData":Lnet/oneplus/h2launcher/globalsearch/ContactData;
    if-eqz v1, :cond_1

    .line 78
    invoke-static {v7}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mIconSize:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    invoke-static {v7}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    invoke-static {v7}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setShapeChangeEnabled(Z)V

    .line 82
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getId()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getIcon()Landroid/net/Uri;

    move-result-object v4

    .line 84
    .local v4, "imageUri":Landroid/net/Uri;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "displayName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 88
    const-string v8, "\\s"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "splitName":[Ljava/lang/String;
    array-length v8, v6

    if-nez v8, :cond_3

    .line 90
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .end local v6    # "splitName":[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 98
    .restart local v6    # "splitName":[Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->getShortName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "shortName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 101
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->setContactImage(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 145
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "imageUri":Landroid/net/Uri;
    .end local v5    # "shortName":Ljava/lang/String;
    .end local v6    # "splitName":[Ljava/lang/String;
    :cond_1
    :goto_2
    return-object p2

    .line 73
    .end local v1    # "contactData":Lnet/oneplus/h2launcher/globalsearch/ContactData;
    .end local v7    # "viewHolder":Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    .restart local v7    # "viewHolder":Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    goto :goto_0

    .line 92
    .restart local v1    # "contactData":Lnet/oneplus/h2launcher/globalsearch/ContactData;
    .restart local v2    # "displayName":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "imageUri":Landroid/net/Uri;
    .restart local v6    # "splitName":[Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->access$000(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    .end local v6    # "splitName":[Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .restart local v6    # "splitName":[Ljava/lang/String;
    goto :goto_1

    .line 103
    .restart local v5    # "shortName":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->getContactImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 105
    invoke-direct {p0, v7, v0, v4}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->setContactImage(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_2

    .line 107
    :cond_6
    new-instance v8, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;

    invoke-direct {v8, p0, v4, v3, v5}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;-><init>(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v9, v9, [Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    .line 140
    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method
