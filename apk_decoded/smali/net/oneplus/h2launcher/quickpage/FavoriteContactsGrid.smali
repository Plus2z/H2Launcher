.class public Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
.super Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
.source "FavoriteContactsGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;,
        Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;,
        Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;,
        Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;,
        Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;
    }
.end annotation


# static fields
.field private static final FAVORITE_CONTACTS_COUNT:I = 0xa

.field private static final ONLY_STARRED_CONTACTS:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

.field private final mColumnCount:I

.field mContactsObserver:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

.field private mContainerSize:I

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

.field private mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsContactsObserverRegistered:Z

.field private mIsResized:Z

.field private mParentView:Landroid/widget/FrameLayout;

.field private mSize:I

.field private mTotalContacts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;-><init>()V

    .line 66
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsResized:Z

    .line 67
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsContactsObserverRegistered:Z

    move-object v0, p1

    .line 92
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mActivity:Landroid/app/Activity;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    .line 94
    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mId:I

    .line 95
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002c

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mColumnCount:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040055

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mParentView:Landroid/widget/FrameLayout;

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mParentView:Landroid/widget/FrameLayout;

    const v1, 0x7f110115

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0081

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContainerSize:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0083

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIconSize:I

    .line 111
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02a9

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mHandler:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mParentView:Landroid/widget/FrameLayout;

    const v1, 0x7f110116

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->setEmptyImage(I)V

    .line 124
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContactsObserver:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    .line 126
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->hasContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->registerContactsObserver()V

    .line 132
    :goto_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;

    invoke-direct {v0, p0, v4}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->unregisterContactsObserver()V

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->getFavoriteContacts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    return-object v0
.end method

.method static synthetic access$1502(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    return-object p1
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    return v0
.end method

.method static synthetic access$1602(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    return p1
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mColumnCount:I

    return v0
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsResized:Z

    return v0
.end method

.method static synthetic access$1802(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsResized:Z

    return p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/view/EmptyView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIconSize:I

    return v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFavoriteContacts()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v18, "matchingContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->hasContactsPermission()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mHandler:Landroid/os/Handler;

    new-instance v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    .end local v18    # "matchingContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    :cond_0
    :goto_0
    return-object v18

    .line 292
    .restart local v18    # "matchingContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mHandler:Landroid/os/Handler;

    new-instance v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$2;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 304
    .local v3, "queryUri":Landroid/net/Uri;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "times_contacted"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "last_time_contacted"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "photo_thumb_uri"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "starred"

    aput-object v5, v4, v2

    .line 312
    .local v4, "projection":[Ljava/lang/String;
    const-string v14, "times_contacted!=\'0\'"

    .line 313
    .local v14, "contacted":Ljava/lang/String;
    const-string v20, "times_contacted!=\'0\'"

    .line 316
    .local v20, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "times_contacted!=\'0\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 317
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 319
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_0

    .line 323
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mTotalContacts:I

    .line 324
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    const-string v2, "_id"

    .line 326
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 325
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 328
    .local v13, "contactId":Ljava/lang/String;
    const-string v2, "display_name"

    .line 329
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 328
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "title":Ljava/lang/String;
    const-string v2, "times_contacted"

    .line 332
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 331
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 335
    .local v9, "timesContacted":I
    const-string v2, "last_time_contacted"

    .line 336
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 335
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 338
    .local v10, "lastTimeContacted":J
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v12, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 340
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 341
    .local v21, "uri":Landroid/net/Uri;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    const-string v2, "photo_thumb_uri"

    .line 344
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 343
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 346
    .local v19, "photo":Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v5, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v19, :cond_2

    const/4 v8, 0x0

    .line 347
    :goto_2
    invoke-direct/range {v5 .. v12}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLandroid/content/Intent;)V

    .line 346
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 348
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mTotalContacts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mTotalContacts:I

    goto :goto_1

    .line 347
    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_2

    .line 350
    .end local v7    # "title":Ljava/lang/String;
    .end local v9    # "timesContacted":I
    .end local v10    # "lastTimeContacted":J
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "contactId":Ljava/lang/String;
    .end local v19    # "photo":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 352
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 354
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mTotalContacts:I

    const/16 v5, 0xa

    if-lt v2, v5, :cond_5

    .line 356
    const/4 v2, 0x0

    const/16 v5, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v16

    .line 357
    .local v16, "favoriteContacts":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mTotalContacts:I

    .line 362
    :goto_3
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    const/16 v2, 0xa

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 363
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_4

    .line 365
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 359
    .end local v16    # "favoriteContacts":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    .end local v17    # "i":I
    :cond_5
    move-object/from16 v16, v18

    .restart local v16    # "favoriteContacts":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    goto :goto_3

    .restart local v17    # "i":I
    :cond_6
    move-object/from16 v18, v16

    .line 369
    goto/16 :goto_0
.end method

.method private hasContactsPermission()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private registerContactsObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 257
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->unregisterContactsObserver()V

    .line 258
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContactsObserver:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsContactsObserverRegistered:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContactsObserver:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsContactsObserverRegistered:Z

    .line 263
    :cond_0
    return-void
.end method

.method private unregisterContactsObserver()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContactsObserver:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsContactsObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContactsObserver:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsContactsObserverRegistered:Z

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mEmptyView:Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mId:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getMinHeight()I

    move-result v0

    return v0
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mParentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    return v0
.end method

.method public getStandardHeight(I)I
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getStandardHeight()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mContext:Landroid/content/Context;

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public hasScrollableContent()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->getValidCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContainerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 231
    return-void
.end method

.method public onItemResizeFinished()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getRowCount()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mIsResized:Z

    .line 220
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->notifyItemSizeChanged()V

    .line 221
    return-void
.end method

.method public onItemResizeProgress(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onItemViewAttached()V
    .locals 4

    .prologue
    .line 202
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mParentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mFlowLayout:Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mSize:I

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->getHeightForSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 209
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public onPermissionsChanged()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->hasContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->registerContactsObserver()V

    .line 241
    :goto_0
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    return-void

    .line 239
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->unregisterContactsObserver()V

    goto :goto_0
.end method

.method public onRemove()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->unregisterContactsObserver()V

    .line 247
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->mAdapter:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->clear()V

    .line 250
    :cond_0
    return-void
.end method

.method public onUiComponentChanged()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    return-void
.end method
