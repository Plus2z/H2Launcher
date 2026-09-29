.class Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;
.super Ljava/lang/Object;
.source "CustomIconSelectorActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;,
        Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;
    }
.end annotation


# instance fields
.field private mAllResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraResourcesLength:I

.field private mHasMatching:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMatchingLength:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;


# direct methods
.method public varargs constructor <init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/Context;[[Ljava/lang/String;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resources"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 293
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mAllResources:Ljava/util/List;

    .line 296
    array-length v2, p3

    if-le v2, v3, :cond_0

    .line 297
    aget-object v2, p3, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "matching":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mMatchingLength:I

    .line 299
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mAllResources:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mHasMatching:Z

    .line 302
    .end local v1    # "matching":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mExtraResourcesLength:I

    .line 304
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mAllResources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 355
    iget v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mExtraResourcesLength:I

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mHasMatching:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mMatchingLength:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 309
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mHasMatching:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mMatchingLength:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mExtraResourcesLength:I

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 320
    if-nez p2, :cond_0

    .line 321
    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 322
    new-instance v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;)V

    .line 323
    .local v0, "holder":Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;
    const v1, 0x7f110142

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;->title:Landroid/widget/TextView;

    .line 324
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    :goto_0
    iget-object v2, v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mHasMatching:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const v1, 0x7f0b006e

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    return-object p2

    .line 326
    .end local v0    # "holder":Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;

    .restart local v0    # "holder":Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$HeaderHolder;
    goto :goto_0

    .line 329
    :cond_1
    const v1, 0x7f0b006c

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mAllResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mHasMatching:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 376
    if-nez p2, :cond_0

    .line 377
    iget-object v3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04006e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 378
    new-instance v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;)V

    .line 379
    .local v0, "holder":Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;
    const v3, 0x7f110143

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;->icon:Landroid/widget/ImageView;

    .line 380
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 385
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "item":Ljava/lang/String;
    iget-object v3, v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 389
    iget-object v1, v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;->icon:Landroid/widget/ImageView;

    .line 390
    .local v1, "icon":Landroid/widget/ImageView;
    new-instance v3, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;

    invoke-direct {v3, p0, v1, v2}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 411
    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 413
    new-instance v3, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;

    invoke-direct {v3, p0, v2}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$2;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-object p2

    .line 382
    .end local v0    # "holder":Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;

    .restart local v0    # "holder":Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$IconHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->mAllResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 347
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 351
    return-void
.end method
