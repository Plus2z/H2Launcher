.class public Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 125
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .line 126
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->setSpanIndexCacheEnabled(Z)V

    .line 128
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 132
    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    packed-switch v0, :pswitch_data_0

    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget v0, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 144
    :goto_0
    return v0

    .line 136
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    const-string v0, "AppsGridAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current size is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
