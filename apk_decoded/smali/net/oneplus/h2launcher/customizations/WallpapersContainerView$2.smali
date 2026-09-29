.class Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;
.super Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
.source "WallpapersContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getSaveCustomizations()Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 158
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 177
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->mTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    .line 178
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->run()V

    goto :goto_0

    .line 180
    .end local v0    # "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->reloadCustomizations()V

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->onLeftCardContainer()V

    .line 188
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->mTasks:Ljava/util/List;

    .line 166
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    iget-object v2, v2, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .line 167
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->gatherSaveCustomizationTasks()Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    .line 169
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$200()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$2;->mTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v0    # "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    :cond_1
    return-void
.end method
