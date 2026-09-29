.class public Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;,
        Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;,
        Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;,
        Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_APP:I = 0x1

.field private static final ITEM_VIEW_TYPE_CONTACT:I = 0x2

.field private static final ITEM_VIEW_TYPE_HEADER:I = 0x0

.field private static final ITEM_VIEW_TYPE_SEARCH_ONLINE:I = 0x3

.field private static final RECYCLER_VIEW_NUM_COLUMNS:I = 0x5

.field private static final SEARCH_BAIDU_WEBSITE:Ljava/lang/String; = "http://m.baidu.com/s?from=1011934f&word="

.field private static final TAG:Ljava/lang/String; = "SearchResultAdapter"


# instance fields
.field private mAppResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

.field private mContactResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

.field private mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

.field private mIconSize:I

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mStats:Lnet/oneplus/h2launcher/Stats;

.field private mUnknownAppIcon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "globalSearchView"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;",
            "Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "appResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/AppData;>;"
    .local p3, "contactResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    .line 61
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 63
    iput-object p4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .line 64
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mStats:Lnet/oneplus/h2launcher/Stats;

    .line 65
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    .line 66
    iput-object p3, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020127

    .line 67
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mUnknownAppIcon:Landroid/graphics/Bitmap;

    .line 69
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;->MATERIAL:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    .line 70
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;->builder()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;->beginConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;->toUpperCase()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;->endConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0083

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mIconSize:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/net/Uri;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setContactImage(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Launcher;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Stats;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mStats:Lnet/oneplus/h2launcher/Stats;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getContactImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p1}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getSearchOnlinePosition()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getShortName([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "splitName"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 316
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 317
    aget-object v0, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 319
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

.method private setContactImage(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 2
    .param p1, "v"    # Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 325
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setVisibility(I)V

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setVisibility(I)V

    .line 328
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateAppViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0e02e0

    const/4 v6, 0x4

    .line 203
    add-int/lit8 v1, p2, -0x1

    .line 204
    .local v1, "appPositon":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/globalsearch/AppData;

    .line 205
    .local v3, "searchResult":Lnet/oneplus/h2launcher/globalsearch/AppData;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 207
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 208
    rem-int/lit8 v4, v1, 0x5

    if-nez v4, :cond_0

    add-int/lit8 v4, v1, 0x5

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, p1

    .line 209
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v4

    const v5, 0x7f0200c3

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 219
    :goto_0
    if-nez v2, :cond_3

    move-object v4, p1

    .line 220
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    :goto_1
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void

    .line 210
    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    rem-int/lit8 v4, v1, 0x5

    if-ne v4, v6, :cond_1

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, p1

    .line 211
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v4

    const v5, 0x7f0200c4

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 213
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 216
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 222
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "appIcon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mUnknownAppIcon:Landroid/graphics/Bitmap;

    :cond_4
    move-object v4, p1

    .line 227
    check-cast v4, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private updateContactViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 233
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v8, p2, v8

    add-int/lit8 v1, v8, -0x2

    .line 234
    .local v1, "contactPositon":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    .line 236
    .local v5, "searchResult":Lnet/oneplus/h2launcher/globalsearch/ContactData;
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_2

    add-int/lit8 v8, v1, 0x5

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_2

    move-object v8, p1

    .line 237
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v8

    const v9, 0x7f0200c3

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 244
    :goto_0
    if-eqz v5, :cond_1

    move-object v8, p1

    .line 245
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v8

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mIconSize:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v8, p1

    .line 246
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v8, p1

    .line 247
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getCircleImageView()Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setShapeChangeEnabled(Z)V

    .line 249
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getId()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getIcon()Landroid/net/Uri;

    move-result-object v4

    .line 251
    .local v4, "imageUri":Landroid/net/Uri;
    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "displayName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 255
    const-string v8, "\\s"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "splitName":[Ljava/lang/String;
    array-length v8, v7

    if-nez v8, :cond_4

    .line 257
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .end local v7    # "splitName":[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 265
    .restart local v7    # "splitName":[Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v7}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->getShortName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "shortName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 268
    :cond_0
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setContactImage(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 313
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "imageUri":Landroid/net/Uri;
    .end local v6    # "shortName":Ljava/lang/String;
    .end local v7    # "splitName":[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 238
    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    rem-int/lit8 v8, v1, 0x5

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    move-object v8, p1

    .line 239
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v8

    const v9, 0x7f0200c4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    move-object v8, p1

    .line 241
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v8

    const v9, 0x7f0e02e0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .restart local v2    # "displayName":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "imageUri":Landroid/net/Uri;
    .restart local v7    # "splitName":[Ljava/lang/String;
    :cond_4
    move-object v8, p1

    .line 259
    check-cast v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    .end local v7    # "splitName":[Ljava/lang/String;
    :cond_5
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .restart local v7    # "splitName":[Ljava/lang/String;
    goto :goto_1

    .line 270
    .restart local v6    # "shortName":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v3}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->getContactImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 272
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, v0, v4}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setContactImage(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_2

    .line 274
    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_7
    new-instance v8, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$1;

    invoke-direct {v8, p0, v4, v3, v6}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$1;-><init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v9, v9, [Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    const/4 v10, 0x0

    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    aput-object p1, v9, v10

    .line 309
    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method private updateHeaderViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/high16 v6, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const v4, 0x7f0200c6

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 143
    if-nez p2, :cond_3

    .line 144
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 145
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    :goto_1
    return-void

    .line 148
    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getAppResultList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    move-object v0, p1

    .line 149
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getShowAllAppSearchResult()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 151
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_2
    move-object v0, p1

    .line 159
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, p1

    .line 160
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    move-object v0, p1

    .line 153
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_2

    :cond_2
    move-object v0, p1

    .line 156
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 164
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p1

    .line 165
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 168
    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getContactResultList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    move-object v0, p1

    .line 169
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getShowAllContactSearchResult()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 171
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    move-object v0, p1

    .line 179
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, p1

    .line 180
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_5
    move-object v0, p1

    .line 173
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    :cond_6
    move-object v0, p1

    .line 176
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 188
    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSearchInputContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private updateSearchViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isT9Search()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 194
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->getButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->getDividerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .restart local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_0
    move-object v0, p1

    .line 197
    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->getButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    check-cast p1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;

    .end local p1    # "viewHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;->getDividerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_1

    .line 134
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->getSearchOnlinePosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 136
    const/4 v0, 0x2

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSearchOnline(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->getSearchOnlinePosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->updateHeaderViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p2, v0, :cond_1

    .line 115
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->updateAppViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p2, v0, :cond_2

    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->getSearchOnlinePosition()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 117
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->updateContactViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->updateSearchViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 95
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0400c2

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$HeaderViewHolder;-><init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V

    .line 106
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 97
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f04002b

    .line 98
    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;-><init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 100
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040038

    .line 101
    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$ContactViewHolder;-><init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 103
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0400c1

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$SearchOnlineViewHolder;-><init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "SearchResultAdapter"

    const-string v2, "No such view type!"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 106
    goto :goto_0
.end method

.method setResultList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "appResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/AppData;>;"
    .local p2, "contactResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mAppResultList:Ljava/util/ArrayList;

    .line 77
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->mContactResultList:Ljava/util/ArrayList;

    .line 78
    return-void
.end method
