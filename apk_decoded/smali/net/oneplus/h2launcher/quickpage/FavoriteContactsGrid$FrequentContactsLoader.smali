.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;
.super Landroid/os/AsyncTask;
.source "FavoriteContactsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequentContactsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 522
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1400(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 522
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
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
    .line 531
    .local p1, "contactInfo":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 532
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-direct {v1, v2, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Ljava/util/List;)V

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1502(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->create()V

    .line 534
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1600(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 535
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->getValidCount()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1602(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;I)I

    .line 536
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1802(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Z)Z

    .line 547
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->notifyItemAdapterChanged()V

    .line 549
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1802(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Z)Z

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->update(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1800(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->getValidCount()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1700(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1602(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;I)I

    goto :goto_0
.end method
