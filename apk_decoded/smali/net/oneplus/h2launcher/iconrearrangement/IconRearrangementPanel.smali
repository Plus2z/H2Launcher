.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;
.super Landroid/widget/RelativeLayout;
.source "IconRearrangementPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;
.implements Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final MILLISECONDS_PER_INCH:F = 125.0f


# instance fields
.field private mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

.field private mDividerLineView:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

.field private mFolderButtonForceDisable:Z

.field mHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field private mItemWidth:I

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mMaxScrollFirstItemScrollX:I

.field private mNonEmptyView:Landroid/view/View;

.field private mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

.field private mRecyclerViewContainer:Landroid/widget/RelativeLayout;

.field private mRecyclerViewVisibleViewCount:I

.field private mShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButtonForceDisable:Z

    move-object v0, p1

    .line 61
    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 62
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, p0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mItemWidth:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 28
    iget v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerViewVisibleViewCount:I

    return v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerViewVisibleViewCount:I

    return p1
.end method

.method static synthetic access$008(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 28
    iget v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerViewVisibleViewCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerViewVisibleViewCount:I

    return v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 28
    iget v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mItemWidth:I

    return v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 28
    iget v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mMaxScrollFirstItemScrollX:I

    return v0
.end method

.method static synthetic access$302(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mMaxScrollFirstItemScrollX:I

    return p1
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    return-object v0
.end method


# virtual methods
.method public addShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Z
    .locals 2
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    const/4 v0, 0x1

    .line 191
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->addShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->setScrollToLast(Z)V

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAndUpdateState()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 215
    .local v0, "shortcutCount":I
    if-lez v0, :cond_1

    .line 216
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mNonEmptyView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    if-le v0, v1, :cond_0

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButtonForceDisable:Z

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->invalidate()V

    .line 224
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 218
    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mNonEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public clearAllItem()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->notifyDataSetChanged()V

    .line 251
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->checkAndUpdateState()V

    .line 252
    return-void
.end method

.method public containsShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 267
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllItemViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->getAllItemViews()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFolderButton()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    return-object v0
.end method

.method public getRecyclerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    return-object v0
.end method

.method public getRecyclerViewContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getShortcutInfoCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getShortcutInfos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    return-object v0
.end method

.method public getVisibleViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->getVisibleViews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mergeFolder()V

    .line 174
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    const v1, 0x7f110141

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    .line 70
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 71
    const v1, 0x7f110116

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mEmptyView:Landroid/view/View;

    .line 72
    const v1, 0x7f11013d

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mNonEmptyView:Landroid/view/View;

    .line 73
    const v1, 0x7f11013f

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mDividerLineView:Landroid/view/View;

    .line 74
    const v1, 0x7f110140

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerViewContainer:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    new-instance v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4, v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 105
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    new-instance v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 147
    const v1, 0x7f11013e

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 148
    .local v0, "folderButtonLayout":Landroid/widget/LinearLayout;
    const v1, 0x7f04006a

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1, v2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->fromXml(ILnet/oneplus/h2launcher/Launcher;Landroid/view/ViewGroup;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    .line 149
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setTextVisible(Z)V

    .line 150
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setSingleLine(Z)V

    .line 151
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mRecyclerView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->setFocusable(Z)V

    .line 153
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->checkAndUpdateState()V

    .line 155
    return-void
.end method

.method public onItemChanged()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->checkAndUpdateState()V

    .line 188
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 180
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v1, v0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->dropIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public removeShortcutInfoAnimated(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;
    .param p4, "task"    # Ljava/lang/Runnable;
    .param p5, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->removeShortcutInfoAnimated(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShortcutInfosAnimated(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mAdapter:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->removeShortcutInfosAnimated(Ljava/util/ArrayList;)V

    .line 207
    return-void
.end method

.method public setFolderButtonAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 235
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setAlpha(F)V

    .line 236
    return-void
.end method

.method public setFolderButtonForceDisable(Z)V
    .locals 1
    .param p1, "folderButtonForceDisable"    # Z

    .prologue
    .line 260
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButtonForceDisable:Z

    if-eq v0, p1, :cond_0

    .line 261
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mFolderButtonForceDisable:Z

    .line 262
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->checkAndUpdateState()V

    .line 264
    :cond_0
    return-void
.end method

.method public setIconRearrangementHelper(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p1, "helper"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 158
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mHelper:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .line 159
    return-void
.end method
