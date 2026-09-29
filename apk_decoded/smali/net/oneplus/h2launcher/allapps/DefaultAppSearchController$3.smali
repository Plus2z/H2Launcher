.class Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->showSearchField()V
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
    .line 216
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->requestFocus()Z

    .line 220
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 222
    return-void
.end method
