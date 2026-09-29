.class Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;
.super Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
.source "CustomizationsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->getSaveCustomizations()Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
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

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .prologue
    .line 117
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 128
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->mTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    .line 129
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->run()V

    goto :goto_0

    .line 131
    .end local v0    # "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->reloadCustomizations()V

    .line 138
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onCustomizationsDone()V

    .line 139
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->mTasks:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->mTasks:Ljava/util/List;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$1;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mPager:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->gatherSaveCustomizationTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    return-void
.end method
