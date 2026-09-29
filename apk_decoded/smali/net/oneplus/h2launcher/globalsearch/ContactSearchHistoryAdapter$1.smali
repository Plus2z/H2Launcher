.class Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;
.super Landroid/os/AsyncTask;
.source "ContactSearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

.field private v:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$shortName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .prologue
    .line 107
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$shortName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    .prologue
    const/4 v8, 0x0

    .line 112
    aget-object v5, p1, v8

    iput-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->v:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$imageUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 117
    :try_start_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$200(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$imageUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$id:Ljava/lang/String;

    invoke-static {v5, v0}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->cacheImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 132
    return-object v0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 120
    const-string v5, "ContactSearchResultAdapter"

    const-string v6, "Get contact image from uri failed !"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$300(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/util/ColorGenerator;->getColor(Ljava/lang/Object;)I

    move-result v2

    .line 124
    .local v2, "color":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$400(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$shortName:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;

    move-result-object v3

    .line 125
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v6}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-static {v6}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;)I

    move-result v6

    invoke-virtual {v3, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, [Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->doInBackground([Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->v:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->val$imageUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1, v2}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 138
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
