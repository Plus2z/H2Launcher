.class public Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;,
        Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderHolder;,
        Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;,
        Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    }
.end annotation


# static fields
.field protected static final ID_FILLER:I = -0x2

.field protected static final ID_HEADER:I = -0x1

.field protected static final ID_HEADER_FILLER:I = -0x3

.field protected static final POSITION_FILLER:I = -0x1

.field protected static final POSITION_HEADER:I = -0x2

.field protected static final POSITION_HEADER_FILLER:I = -0x3

.field protected static final VIEW_TYPE_FILLER:I = 0x0

.field protected static final VIEW_TYPE_HEADER:I = 0x1

.field protected static final VIEW_TYPE_HEADER_FILLER:I = 0x2

.field private static final sNumViewTypes:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mCounted:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

.field private mGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

.field private mLastHeaderViewSeen:Landroid/view/View;

.field private mLastViewSeen:Landroid/view/View;

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .param p3, "delegate"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    .line 60
    new-instance v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    .line 84
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 86
    iput-object p2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p3, v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    return p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method private getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "fillerView":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    if-eqz p1, :cond_0

    instance-of v1, p1, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 255
    check-cast v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    .line 257
    :cond_0
    if-nez v0, :cond_1

    .line 258
    new-instance v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    .end local v0    # "fillerView":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 261
    .restart local v0    # "fillerView":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    :cond_1
    invoke-virtual {v0, p3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->setMeasureTarget(Landroid/view/View;)V

    .line 263
    return-object v0
.end method

.method private getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .locals 2
    .param p1, "headerPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 268
    move-object v0, p2

    check-cast v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .line 269
    .local v0, "headerFillerView":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .end local v0    # "headerFillerView":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 273
    .restart local v0    # "headerFillerView":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    :cond_0
    return-object v0
.end method

.method private unFilledSpacesInHeaderGroup(I)I
    .locals 4
    .param p1, "header"    # I

    .prologue
    const/4 v1, 0x0

    .line 285
    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v2, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v2

    iget v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    rem-int v0, v2, v3

    .line 290
    .local v0, "remainder":I
    if-eqz v0, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    if-eqz v2, :cond_0

    .line 98
    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 114
    :goto_0
    return v2

    .line 100
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 101
    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v1

    .line 102
    .local v1, "numHeaders":I
    if-nez v1, :cond_1

    .line 103
    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 104
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    .line 105
    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 111
    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v3, v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v3

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unFilledSpacesInHeaderGroup(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    .line 114
    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    goto :goto_0
.end method

.method protected getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v0, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v1, v1, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-interface {v0, v1, p2, p3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 132
    .local v0, "adapterPosition":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 144
    .local v0, "adapterPosition":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 145
    const-wide/16 v2, -0x1

    .line 153
    :goto_0
    return-wide v2

    .line 147
    :cond_0
    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 148
    const-wide/16 v2, -0x2

    goto :goto_0

    .line 150
    :cond_1
    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 151
    const-wide/16 v2, -0x3

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 158
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 159
    .local v0, "adapterPosition":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 160
    const/4 v1, 0x1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    iget v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    if-ne v2, v4, :cond_2

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    :cond_2
    iget v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_3

    .line 166
    const/4 v1, 0x2

    goto :goto_0

    .line 168
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v3, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v2, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getItemViewType(I)I

    move-result v1

    .line 169
    .local v1, "itemViewType":I
    if-eq v1, v4, :cond_0

    .line 172
    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 178
    .local v0, "adapterPosition":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v3, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 179
    iget v3, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-direct {p0, v3, p2, p3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move-result-object v1

    .line 180
    .local v1, "v":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v5, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v4, v5, v3, p3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 182
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 184
    move-object p2, v1

    .line 185
    iput-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    .line 186
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    .line 197
    .end local v1    # "v":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object p2

    .line 187
    :cond_0
    iget v3, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    .line 188
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    goto :goto_0

    .line 190
    :cond_1
    iget v3, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 191
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, v3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_0

    .line 193
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v4, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v3, v4, p2, p3}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 194
    iput-object p2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getWrappedAdapter()Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 225
    .local v0, "adapterPosition":Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 230
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 237
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 240
    iput p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    .line 243
    return-void
.end method

.method protected translatePosition(I)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 306
    iget-object v6, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v6}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v3

    .line 307
    .local v3, "numHeaders":I
    if-nez v3, :cond_1

    .line 308
    iget-object v6, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v6}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_0

    .line 309
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    invoke-direct {v6, p0, v7, v8}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    .line 351
    :goto_0
    return-object v6

    .line 311
    :cond_0
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    invoke-direct {v6, p0, p1, v8}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_0

    .line 315
    :cond_1
    move v0, p1

    .line 316
    .local v0, "adapterPosition":I
    move v4, p1

    .line 319
    .local v4, "place":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 320
    iget-object v6, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v6, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v5

    .line 324
    .local v5, "sectionCount":I
    if-nez v4, :cond_2

    .line 326
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    const/4 v7, -0x2

    invoke-direct {v6, p0, v7, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_0

    .line 328
    :cond_2
    iget v6, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    sub-int/2addr v4, v6

    .line 329
    if-gez v4, :cond_3

    .line 331
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    const/4 v7, -0x3

    invoke-direct {v6, p0, v7, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_0

    .line 333
    :cond_3
    iget v6, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    sub-int/2addr v0, v6

    .line 335
    if-ge v4, v5, :cond_4

    .line 336
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    invoke-direct {v6, p0, v0, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_0

    .line 340
    :cond_4
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unFilledSpacesInHeaderGroup(I)I

    move-result v1

    .line 341
    .local v1, "filler":I
    sub-int/2addr v0, v1

    .line 342
    add-int v6, v5, v1

    sub-int/2addr v4, v6

    .line 344
    if-gez v4, :cond_5

    .line 346
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    invoke-direct {v6, p0, v7, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_0

    .line 319
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 351
    .end local v1    # "filler":I
    .end local v5    # "sectionCount":I
    :cond_6
    new-instance v6, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    invoke-direct {v6, p0, v7, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 248
    iget-object v0, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 249
    return-void
.end method

.method protected updateCount()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 355
    const/4 v2, 0x0

    iput v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 356
    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v1

    .line 357
    .local v1, "numHeaders":I
    if-nez v1, :cond_0

    .line 358
    iget-object v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 359
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 364
    iget v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v3, v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v3

    iget v4, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mNumColumns:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCount:I

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    :cond_1
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mCounted:Z

    goto :goto_0
.end method
