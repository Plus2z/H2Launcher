.class public Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WidgetsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PRESET_INDENT_SIZE_TABLET:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WidgetsListAdapter"


# instance fields
.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mIndent:I

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

.field private mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "iconLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIndent:I

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 82
    iput-object p3, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 83
    iput-object p4, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 85
    invoke-direct {p0}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->setContainerHeight()V

    .line 86
    return-void
.end method

.method private getWidgetPreviewLoader()Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getWidgetCache()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 205
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    return-object v0
.end method

.method private setContainerHeight()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 211
    .local v0, "profile":Lnet/oneplus/h2launcher/DeviceProfile;
    iget-boolean v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isLargeTablet:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    const/high16 v2, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIndent:I

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getPackageSize()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 198
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->onBindViewHolder(Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;
    .param p2, "pos"    # I

    .prologue
    const/4 v10, 0x0

    .line 102
    iget-object v8, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v8, p2}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v8

    const v9, 0x7f1101fa

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 113
    .local v5, "row":Landroid/view/ViewGroup;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int v0, v8, v9

    .line 115
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    iget-object v8, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400dc

    invoke-virtual {v8, v9, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/widget/WidgetCell;

    .line 121
    .local v7, "widget":Lnet/oneplus/h2launcher/widget/WidgetCell;
    iget-object v8, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v8, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 124
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v7, Lnet/oneplus/h2launcher/widget/WidgetCell;->cellSize:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iget v8, v7, Lnet/oneplus/h2launcher/widget/WidgetCell;->cellSize:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    invoke-virtual {v7, v4}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "widget":Lnet/oneplus/h2launcher/widget/WidgetCell;
    :cond_0
    if-gez v0, :cond_1

    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 132
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "i":I
    :cond_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    invoke-virtual {v8, p2}, Lnet/oneplus/h2launcher/model/WidgetsModel;->getPackageItemInfo(I)Lnet/oneplus/h2launcher/model/PackageItemInfo;

    move-result-object v3

    .line 138
    .local v3, "infoOut":Lnet/oneplus/h2launcher/model/PackageItemInfo;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v8

    const v9, 0x7f1101f9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 139
    .local v6, "tv":Lnet/oneplus/h2launcher/BubbleTextView;
    invoke-virtual {v6, v3}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromPackageItemInfo(Lnet/oneplus/h2launcher/model/PackageItemInfo;)V

    .line 142
    invoke-direct {p0}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->getWidgetPreviewLoader()Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v8

    if-nez v8, :cond_3

    .line 154
    :cond_2
    return-void

    .line 147
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 148
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/widget/WidgetCell;

    .line 149
    .restart local v7    # "widget":Lnet/oneplus/h2launcher/widget/WidgetCell;
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v9, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    invoke-virtual {v7, v8, v9}, Lnet/oneplus/h2launcher/widget/WidgetCell;->applyFromCellItem(Lnet/oneplus/h2launcher/model/WidgetItem;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V

    .line 150
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/widget/WidgetCell;->ensurePreview()V

    .line 151
    invoke-virtual {v7, v10}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setVisibility(I)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400de

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 165
    .local v1, "container":Landroid/view/ViewGroup;
    const v2, 0x7f1101fa

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 169
    .local v0, "cellList":Landroid/widget/LinearLayout;
    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v2, :cond_0

    .line 170
    iget v2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIndent:I

    invoke-virtual {v0, v2, v4, v5, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 175
    :goto_0
    new-instance v2, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    invoke-direct {v2, v1}, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v2

    .line 172
    :cond_0
    iget v2, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mIndent:I

    invoke-virtual {v0, v2, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->onFailedToRecycleView(Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->onViewRecycled(Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;

    .prologue
    .line 180
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;->getContent()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f1101fa

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 182
    .local v1, "row":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 183
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/widget/WidgetCell;

    .line 184
    .local v2, "widget":Lnet/oneplus/h2launcher/widget/WidgetCell;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetCell;->clear()V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "widget":Lnet/oneplus/h2launcher/widget/WidgetCell;
    :cond_0
    return-void
.end method

.method public setWidgetsModel(Lnet/oneplus/h2launcher/model/WidgetsModel;)V
    .locals 0
    .param p1, "w"    # Lnet/oneplus/h2launcher/model/WidgetsModel;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetsListAdapter;->mWidgetsModel:Lnet/oneplus/h2launcher/model/WidgetsModel;

    .line 90
    return-void
.end method
