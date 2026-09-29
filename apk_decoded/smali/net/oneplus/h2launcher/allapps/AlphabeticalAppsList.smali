.class public Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;,
        Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;,
        Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;,
        Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_PREDICTIONS:Z = false

.field private static final FAST_SCROLL_FRACTION_DISTRIBUTE_BY_NUM_SECTIONS:I = 0x1

.field private static final FAST_SCROLL_FRACTION_DISTRIBUTE_BY_ROWS_FRACTION:I = 0x0

.field private static final SWIFTKEY_PACKAGE:Ljava/lang/String; = "com.touchtype.swiftkey"

.field public static final TAG:Ljava/lang/String; = "AlphabeticalAppsList"


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

.field private mAdapterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppNameComparator:Lnet/oneplus/h2launcher/model/AppNameComparator;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentToAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastScrollDistributionMode:I

.field private mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mMergeAlgorithm:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;

.field private mNumAppRowsInAdapter:I

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private mPredictedAppComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollDistributionMode:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    move-object v0, p1

    .line 200
    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 201
    new-instance v0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    .line 202
    new-instance v0, Lnet/oneplus/h2launcher/model/AppNameComparator;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lnet/oneplus/h2launcher/model/AppNameComparator;

    .line 203
    return-void
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 651
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 652
    .local v0, "sectionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 653
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mIndexer:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_0
    return-object v0
.end method

.method private getFiltersAppInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 578
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 588
    :cond_0
    return-object v2

    .line 581
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/util/ComponentKey;

    .line 583
    .local v0, "key":Lnet/oneplus/h2launcher/util/ComponentKey;
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .line 584
    .local v1, "match":Lnet/oneplus/h2launcher/AppInfo;
    if-eqz v1, :cond_2

    .line 585
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private mergeSections()V
    .locals 12

    .prologue
    .line 596
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    .line 644
    :cond_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    const/4 v3, 0x0

    .line 603
    .local v3, "sectionAppCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 604
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .line 605
    .local v1, "section":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    iget v3, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    .line 606
    const/4 v5, 0x1

    .line 609
    .local v5, "mergeCount":I
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_4

    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    add-int/lit8 v4, v6, 0x1

    .line 610
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    iget v4, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    invoke-interface/range {v0 .. v5}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;->continueMerging(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    add-int/lit8 v2, v6, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .line 615
    .local v10, "nextSection":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v2, v10, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v2, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 619
    .local v11, "pos":I
    iget v0, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int v9, v11, v0

    .line 620
    .local v9, "nextPos":I
    move v8, v9

    .local v8, "j":I
    :goto_2
    iget v0, v10, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v0, v9

    if-ge v8, v0, :cond_2

    .line 621
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 622
    .local v7, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iput-object v1, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .line 623
    iget v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    iget v2, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v0, v2

    iput v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 620
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 627
    .end local v7    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v2, v10, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 628
    move v8, v11

    :goto_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 629
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 630
    .restart local v7    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 628
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 632
    .end local v7    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_3
    iget v0, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    iget v2, v10, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v0, v2

    iput v0, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    .line 633
    iget v0, v10, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v3, v0

    .line 640
    add-int/lit8 v5, v5, 0x1

    .line 641
    goto/16 :goto_1

    .line 603
    .end local v8    # "j":I
    .end local v9    # "nextPos":I
    .end local v10    # "nextSection":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .end local v11    # "pos":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private onAppsUpdated()V
    .locals 10

    .prologue
    .line 341
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 342
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v9, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lnet/oneplus/h2launcher/model/AppNameComparator;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v1, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 348
    .local v1, "curLocale":Ljava/util/Locale;
    const/4 v6, 0x0

    .line 349
    .local v6, "sectionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;>;"
    sget-object v8, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 350
    .local v4, "localeRequiresSectionSorting":Z
    if-eqz v4, :cond_4

    .line 353
    new-instance v6, Ljava/util/TreeMap;

    .end local v6    # "sectionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;>;"
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lnet/oneplus/h2launcher/model/AppNameComparator;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/model/AppNameComparator;->getSectionNameComparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 354
    .restart local v6    # "sectionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;>;"
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/AppInfo;

    .line 356
    .local v3, "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v9, v3, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v9}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "sectionName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 360
    .local v5, "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    if-nez v5, :cond_0

    .line 361
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .restart local v5    # "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual {v6, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    .end local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    .end local v5    # "sectionApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    .end local v7    # "sectionName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 370
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 373
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;>;"
    :cond_2
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 374
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    .end local v0    # "allApps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_3
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 385
    return-void

    .line 377
    :cond_4
    iget-object v8, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/AppInfo;

    .line 379
    .restart local v3    # "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v9, v3, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v9}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_2
.end method

.method private updateAdapterItems()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->updateAdapterItems(Z)V

    .line 393
    return-void
.end method

.method private updateAdapterItems(Z)V
    .locals 27
    .param p1, "isFromCustomization"    # Z

    .prologue
    .line 399
    const/4 v4, 0x0

    .line 400
    .local v4, "lastSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    const/4 v15, 0x0

    .line 401
    .local v15, "lastSectionName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 402
    .local v14, "lastFastScrollerSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    const/4 v3, 0x0

    .line 403
    .local v3, "position":I
    const/4 v8, 0x0

    .line 406
    .local v8, "appIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 407
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 408
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 409
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 425
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 426
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v6

    if-nez v6, :cond_5

    .line 427
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/oneplus/h2launcher/util/ComponentKey;

    .line 428
    .local v11, "ck":Lnet/oneplus/h2launcher/util/ComponentKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/AppInfo;

    .line 429
    .local v7, "info":Lnet/oneplus/h2launcher/AppInfo;
    if-eqz v7, :cond_4

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 442
    .end local v7    # "info":Lnet/oneplus/h2launcher/AppInfo;
    .end local v11    # "ck":Lnet/oneplus/h2launcher/util/ComponentKey;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 444
    new-instance v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .end local v4    # "lastSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    invoke-direct {v4}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 445
    .restart local v4    # "lastSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    new-instance v14, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .end local v14    # "lastFastScrollerSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    const-string v6, ""

    invoke-direct {v14, v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 446
    .restart local v14    # "lastFastScrollerSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .local v19, "position":I
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asSectionBreak(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v22

    .line 447
    .local v22, "sectionItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move/from16 v3, v19

    .end local v19    # "position":I
    .restart local v3    # "position":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/AppInfo;

    .line 453
    .restart local v7    # "info":Lnet/oneplus/h2launcher/AppInfo;
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .restart local v19    # "position":I
    const-string v5, ""

    iget v6, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v25, v6, 0x1

    move/from16 v0, v25

    iput v0, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "appIndex":I
    .local v9, "appIndex":I
    invoke-static/range {v3 .. v8}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asPredictedApp(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILnet/oneplus/h2launcher/AppInfo;I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v10

    .line 455
    .local v10, "appItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v6, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_3

    .line 456
    iput-object v10, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 457
    iput-object v10, v14, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 459
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v9

    .end local v9    # "appIndex":I
    .restart local v8    # "appIndex":I
    move/from16 v3, v19

    .line 461
    .end local v19    # "position":I
    .restart local v3    # "position":I
    goto :goto_1

    .line 432
    .end local v10    # "appItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v22    # "sectionItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v11    # "ck":Lnet/oneplus/h2launcher/util/ComponentKey;
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->isDogfoodBuild()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 433
    const-string v24, "AlphabeticalAppsList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Predicted app not found: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lnet/oneplus/h2launcher/util/ComponentKey;->flattenToString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    .end local v7    # "info":Lnet/oneplus/h2launcher/AppInfo;
    .end local v11    # "ck":Lnet/oneplus/h2launcher/util/ComponentKey;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/AppInfo;

    .line 468
    .restart local v7    # "info":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v6, v7, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "sectionName":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 472
    :cond_6
    move-object v15, v5

    .line 473
    new-instance v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .end local v4    # "lastSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    invoke-direct {v4}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 474
    .restart local v4    # "lastSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    new-instance v14, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .end local v14    # "lastFastScrollerSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    invoke-direct {v14, v5}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v14    # "lastFastScrollerSectionInfo":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v6

    if-nez v6, :cond_7

    .line 480
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .restart local v19    # "position":I
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asSectionBreak(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v22

    .line 481
    .restart local v22    # "sectionItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v19

    .line 486
    .end local v19    # "position":I
    .end local v22    # "sectionItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v3    # "position":I
    :cond_7
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .restart local v19    # "position":I
    iget v6, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v25, v6, 0x1

    move/from16 v0, v25

    iput v0, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "appIndex":I
    .restart local v9    # "appIndex":I
    invoke-static/range {v3 .. v8}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILnet/oneplus/h2launcher/AppInfo;I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v10

    .line 488
    .restart local v10    # "appItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget-object v6, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_8

    .line 489
    iput-object v10, v4, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 490
    iput-object v10, v14, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 492
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v9

    .end local v9    # "appIndex":I
    .restart local v8    # "appIndex":I
    move/from16 v3, v19

    .line 494
    .end local v19    # "position":I
    .restart local v3    # "position":I
    goto :goto_2

    .line 497
    .end local v5    # "sectionName":Ljava/lang/String;
    .end local v7    # "info":Lnet/oneplus/h2launcher/AppInfo;
    .end local v10    # "appItem":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 498
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .restart local v19    # "position":I
    invoke-static {v3}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v19

    .line 503
    .end local v19    # "position":I
    .restart local v3    # "position":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .restart local v19    # "position":I
    invoke-static {v3}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v19

    .line 507
    .end local v19    # "position":I
    .restart local v3    # "position":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mergeSections()V

    .line 509
    move-object/from16 v0, p0

    iget v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-eqz v6, :cond_11

    .line 512
    const/16 v17, 0x0

    .line 513
    .local v17, "numAppsInSection":I
    const/16 v16, 0x0

    .line 514
    .local v16, "numAppsInRow":I
    const/16 v21, -0x1

    .line 515
    .local v21, "rowIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 516
    .local v13, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 517
    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 518
    const/16 v17, 0x0

    goto :goto_4

    .line 501
    .end local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v16    # "numAppsInRow":I
    .end local v17    # "numAppsInSection":I
    .end local v21    # "rowIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    add-int/lit8 v19, v3, 0x1

    .end local v3    # "position":I
    .restart local v19    # "position":I
    invoke-static {v3}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asDivider(I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v19

    .end local v19    # "position":I
    .restart local v3    # "position":I
    goto :goto_3

    .line 519
    .restart local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .restart local v16    # "numAppsInRow":I
    .restart local v17    # "numAppsInSection":I
    .restart local v21    # "rowIndex":I
    :cond_d
    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 521
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    move/from16 v24, v0

    rem-int v24, v17, v24

    if-nez v24, :cond_f

    .line 522
    const/16 v16, 0x0

    .line 523
    add-int/lit8 v21, v21, 0x1

    .line 525
    :cond_f
    move/from16 v0, v21

    iput v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 526
    move/from16 v0, v16

    iput v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    .line 527
    add-int/lit8 v17, v17, 0x1

    .line 528
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 531
    .end local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_10
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 534
    const/4 v6, 0x1

    packed-switch v6, :pswitch_data_0

    .line 567
    .end local v16    # "numAppsInRow":I
    .end local v17    # "numAppsInSection":I
    .end local v21    # "rowIndex":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    if-eqz v6, :cond_12

    .line 568
    if-eqz p1, :cond_15

    .line 569
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 574
    :cond_12
    :goto_5
    return-void

    .line 536
    .restart local v16    # "numAppsInRow":I
    .restart local v17    # "numAppsInSection":I
    .restart local v21    # "rowIndex":I
    :pswitch_0
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v20, v6, v24

    .line 537
    .local v20, "rowFraction":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 538
    .local v7, "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget-object v13, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 539
    .restart local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    .line 541
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_6

    .line 545
    :cond_13
    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v20, v25

    mul-float v23, v24, v25

    .line 546
    .local v23, "subRowFraction":F
    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v20

    add-float v24, v24, v23

    move/from16 v0, v24

    iput v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_6

    .line 550
    .end local v7    # "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .end local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v20    # "rowFraction":F
    .end local v23    # "subRowFraction":F
    :pswitch_1
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v6, v24

    .line 551
    .local v18, "perSectionTouchFraction":F
    const/4 v12, 0x0

    .line 552
    .local v12, "cumulativeTouchFraction":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 553
    .restart local v7    # "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget-object v13, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 554
    .restart local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    iget v0, v13, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    .line 556
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_7

    .line 559
    :cond_14
    iput v12, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    .line 560
    add-float v12, v12, v18

    .line 561
    goto :goto_7

    .line 571
    .end local v7    # "info":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    .end local v12    # "cumulativeTouchFraction":F
    .end local v13    # "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .end local v16    # "numAppsInRow":I
    .end local v17    # "numAppsInSection":I
    .end local v18    # "perSectionTouchFraction":F
    .end local v21    # "rowIndex":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 313
    return-void
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0
.end method

.method public getComponentToAppMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method public getNumAppRows()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getNumFilteredApps()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    return-object v0
.end method

.method public hasFilter()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 331
    .local v0, "app":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppInfo;->toComponentKey()Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    .end local v0    # "app":Lnet/oneplus/h2launcher/AppInfo;
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 334
    return-void
.end method

.method public setAdapter(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 221
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mAdapter:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .line 222
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 305
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 306
    return-void
.end method

.method public setNumAppsPerRow(IILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;)V
    .locals 1
    .param p1, "numAppsPerRow"    # I
    .param p2, "numPredictedAppsPerRow"    # I
    .param p3, "mergeAlgorithm"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;

    .prologue
    .line 210
    iput p1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    .line 211
    iput p2, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    .line 212
    iput-object p3, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->updateAdapterItems(Z)V

    .line 215
    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "f":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eq v0, p1, :cond_0

    .line 285
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 286
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 288
    :cond_0
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 296
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 298
    return-void
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 320
    .local v0, "app":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v2, v0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.touchtype.swiftkey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppInfo;->toComponentKey()Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 323
    .end local v0    # "app":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 324
    return-void
.end method
