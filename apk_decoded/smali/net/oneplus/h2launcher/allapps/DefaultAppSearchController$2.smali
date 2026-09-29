.class Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    .prologue
    .line 94
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKey()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    .line 100
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/ExtendedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v2, v2, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v3, v3, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V

    .line 105
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
