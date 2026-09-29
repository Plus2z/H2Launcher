.class Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;
.super Landroid/os/AsyncTask;
.source "CustomIconSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Lnet/oneplus/h2launcher/CustomIconSelectorActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 239
    :try_start_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .line 240
    invoke-static {v5}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$200(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$100(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    .local v2, "iconPackRes":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 244
    .local v0, "assets":Landroid/content/res/AssetManager;
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    iget-object v6, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v6, v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$300(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$400(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Ljava/lang/Object;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "resourceList":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_0

    .line 247
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .line 248
    invoke-static {v7, v2}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$500(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/res/Resources;)I

    move-result v7

    invoke-static {v5, v2, v6, v7}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$400(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Ljava/lang/Object;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 250
    array-length v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 266
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v2    # "iconPackRes":Landroid/content/res/Resources;
    .end local v4    # "resourceList":[Ljava/lang/String;
    :goto_0
    return-object v5

    .line 253
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    .restart local v2    # "iconPackRes":Landroid/content/res/Resources;
    .restart local v4    # "resourceList":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v5}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$600(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 254
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .line 255
    invoke-static {v5}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$600(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$600(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 257
    .local v3, "matchingResources":[Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    new-instance v6, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iget-object v7, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    iget-object v8, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .line 258
    invoke-static {v8}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$800(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/Context;[[Ljava/lang/String;)V

    .line 257
    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$702(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;)Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    .line 262
    .end local v3    # "matchingResources":[Ljava/lang/String;
    :goto_1
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 260
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    new-instance v6, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iget-object v7, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    iget-object v8, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v8}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$800(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;-><init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Landroid/content/Context;[[Ljava/lang/String;)V

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$702(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;)Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 263
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v2    # "iconPackRes":Landroid/content/res/Resources;
    .end local v4    # "resourceList":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$900(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$900(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 275
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$900(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$700(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 282
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    .line 278
    invoke-static {v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$800(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b006d

    .line 277
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$IconLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
