.class public Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeWidgetAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private final mSize:Landroid/util/Size;

.field private mTimeWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/WallpaperCard;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mSize:Landroid/util/Size;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mTimeWidgets:Ljava/util/List;

    .line 28
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v0

    .line 29
    .local v0, "clockWidget":Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getCount()I

    move-result v1

    .line 30
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 31
    new-instance v3, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;-><init>()V

    .line 32
    .local v3, "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getThumbnail(I)I

    move-result v4

    iput v4, v3, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->thumbnailResId:I

    .line 33
    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getKeyguardPreviewImage(I)I

    move-result v4

    iput v4, v3, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->keyguardPreviewResId:I

    .line 34
    iput v2, v3, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->clockStyle:I

    .line 35
    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mTimeWidgets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mTimeWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mTimeWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400cb

    const/4 v5, 0x0

    .line 57
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    .line 62
    .local v1, "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    const v3, 0x7f1101ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetAdapter;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    iget v3, v1, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->thumbnailResId:I

    if-eqz v3, :cond_0

    .line 67
    iget v3, v1, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->thumbnailResId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :cond_0
    return-object v2

    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    move-object v2, p2

    .line 57
    goto :goto_0
.end method
