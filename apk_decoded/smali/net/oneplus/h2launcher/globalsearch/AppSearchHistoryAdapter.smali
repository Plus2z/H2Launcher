.class public Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppSearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppSearchHistoryAdapter"


# instance fields
.field private final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field mUnknowAppIcon:Landroid/graphics/Bitmap;


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
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "historyList":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/globalsearch/AppData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020127

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mUnknowAppIcon:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 35
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
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v3, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;-><init>()V

    .line 55
    .local v3, "viewHolder":Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
    const v4, 0x7f1100c3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->access$002(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 56
    const v4, 0x7f1100c2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->access$102(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/AppData;

    .line 63
    .local v0, "appData":Lnet/oneplus/h2launcher/globalsearch/AppData;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 64
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 65
    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :goto_1
    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->access$000(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-object p2

    .line 59
    .end local v0    # "appData":Lnet/oneplus/h2launcher/globalsearch/AppData;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "viewHolder":Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
    goto :goto_0

    .line 67
    .restart local v0    # "appData":Lnet/oneplus/h2launcher/globalsearch/AppData;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    .local v1, "appIcon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 70
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->mUnknowAppIcon:Landroid/graphics/Bitmap;

    .line 72
    :cond_2
    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->access$100(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
