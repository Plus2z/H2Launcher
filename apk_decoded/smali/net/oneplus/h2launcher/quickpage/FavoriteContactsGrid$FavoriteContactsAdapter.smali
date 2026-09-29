.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;
.super Ljava/lang/Object;
.source "FavoriteContactsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteContactsAdapter"
.end annotation


# instance fields
.field private mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

.field private mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

.field private mListFavorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    .line 381
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;->MATERIAL:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    .line 382
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;->builder()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;->beginConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;->toUpperCase()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;->endConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    .line 383
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$400(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->removeAllViews()V

    .line 394
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->create()V

    .line 395
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    return-void
.end method

.method public create()V
    .locals 4

    .prologue
    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 399
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .line 400
    .local v1, "item":Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$400(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v2

    invoke-virtual {p0, v1, v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->getViewForItem(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->addView(Landroid/view/View;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "item":Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;
    :cond_0
    return-void
.end method

.method public getValidCount()I
    .locals 4

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "count":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .line 411
    .local v1, "info":Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "info":Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;
    :cond_1
    return v0
.end method

.method public getViewForItem(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;I)Landroid/view/View;
    .locals 12
    .param p1, "entry"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;
    .param p2, "position"    # I

    .prologue
    .line 417
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040056

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 418
    .local v3, "convertView":Landroid/view/View;
    new-instance v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V

    .line 419
    .local v5, "holder":Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;
    const v8, 0x7f110010

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    iput-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    .line 420
    const v8, 0x7f110117

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->name:Landroid/widget/TextView;

    .line 421
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 423
    if-eqz p1, :cond_5

    .line 424
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 425
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 426
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setShapeChangeEnabled(Z)V

    .line 428
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$800(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$800(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "splitName":[Ljava/lang/String;
    :goto_0
    array-length v8, v7

    if-nez v8, :cond_1

    .line 430
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .end local v7    # "splitName":[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$900(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 435
    .restart local v7    # "splitName":[Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$1000(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 436
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$1000(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setImageURI(Landroid/net/Uri;)V

    .line 458
    :goto_2
    new-instance v8, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;

    invoke-direct {v8, p0, v5, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    .end local v7    # "splitName":[Ljava/lang/String;
    :goto_3
    return-object v3

    .line 428
    :cond_0
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$900(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_0

    .line 432
    .restart local v7    # "splitName":[Ljava/lang/String;
    :cond_1
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 439
    :cond_2
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 440
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "shortName":Ljava/lang/String;
    :goto_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mGenerator:Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$1100(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v2

    .line 445
    .local v2, "color":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mBuilder:Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    invoke-interface {v8, v6, v2}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;

    move-result-object v4

    .line 447
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .line 448
    invoke-static {v8}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v9}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 451
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v10}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v11}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 452
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 442
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "color":I
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "shortName":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .restart local v6    # "shortName":Ljava/lang/String;
    :goto_5
    goto :goto_4

    .end local v6    # "shortName":Ljava/lang/String;
    :cond_4
    const-string v6, ""

    goto :goto_5

    .line 485
    .end local v7    # "splitName":[Ljava/lang/String;
    :cond_5
    iget-object v8, v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->name:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->mListFavorites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
