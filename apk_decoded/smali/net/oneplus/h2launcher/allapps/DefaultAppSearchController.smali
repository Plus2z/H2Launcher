.class final Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;
.super Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ALLOW_SINGLE_APP_LAUNCH:Z = true

.field private static final FADE_IN_DURATION:I = 0xaf

.field private static final FADE_OUT_DURATION:I = 0x64

.field private static final SEARCH_TRANSLATION_X_DP:I = 0x12


# instance fields
.field mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

.field private mContainerView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDismissSearchButtonView:Landroid/view/View;

.field mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

.field final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field mSearchBarContainerView:Landroid/view/View;

.field mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

.field private mSearchButtonView:Landroid/view/View;

.field private mSearchManager:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

.field private mSearchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerView"    # Landroid/view/ViewGroup;
    .param p3, "appsRecyclerView"    # Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    .prologue
    .line 71
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;-><init>()V

    .line 63
    new-instance v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$1;-><init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    iput-object p2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContainerView:Landroid/view/ViewGroup;

    .line 76
    iput-object p3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    .line 77
    return-void
.end method

.method private showSearchField()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    const/high16 v1, 0x41900000    # 18.0f

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 208
    .local v0, "translationX":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 210
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 211
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 212
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xaf

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$3;-><init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;)V

    .line 216
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 224
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 229
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchManager:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 161
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mCb:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchManager:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 164
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchManager:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mCb:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v1, v0, v2}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 149
    return-void
.end method

.method public focusSearchField()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->requestFocus()Z

    .line 114
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->showSearchField()V

    .line 115
    return-void
.end method

.method public getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    const v2, 0x7f11009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    .line 86
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    const v2, 0x7f1100a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v2, 0x7f1100c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mDismissSearchButtonView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mDismissSearchButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v2, 0x7f1100c1

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ExtendedEditText;

    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    .line 91
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    new-instance v2, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$2;-><init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/ExtendedEditText;->setOnBackKeyListener(Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;)V

    .line 108
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    return-object v1
.end method

.method hideSearchField(ZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "animated"    # Z
    .param p2, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 235
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchManager:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 237
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 238
    .local v0, "resetTextField":Z
    :goto_0
    const/high16 v3, 0x41900000    # 18.0f

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 238
    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 240
    .local v1, "translationX":I
    if-eqz p1, :cond_2

    .line 242
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 243
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xaf

    .line 245
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;

    invoke-direct {v4, p0, v0, p2}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$4;-><init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;ZLjava/lang/Runnable;)V

    .line 247
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 260
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 261
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 263
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    .line 264
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 278
    :cond_0
    :goto_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 279
    return-void

    .end local v0    # "resetTextField":Z
    .end local v1    # "translationX":I
    :cond_1
    move v0, v2

    .line 237
    goto :goto_0

    .line 267
    .restart local v0    # "resetTextField":Z
    .restart local v1    # "translationX":I
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 268
    if-eqz v0, :cond_3

    .line 269
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_3
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mCb:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 272
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 273
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchButtonView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 274
    if-eqz p2, :cond_0

    .line 275
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public isSearchFieldFocused()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchBarEditView:Lnet/oneplus/h2launcher/ExtendedEditText;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ExtendedEditText;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 140
    invoke-direct {p0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->showSearchField()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mDismissSearchButtonView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    const/4 v6, 0x3

    if-eq p2, v6, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v4

    .line 179
    :cond_1
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v6

    if-gt v6, v5, :cond_0

    .line 183
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 185
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 186
    .local v2, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    iget v6, v2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    sparse-switch v6, :sswitch_data_0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :sswitch_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v6, v1}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "goMarketView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 193
    :cond_2
    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mContainerView:Landroid/view/ViewGroup;

    .line 194
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    .line 193
    invoke-virtual {v6, v7, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move v4, v5

    .line 195
    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mSearchManager:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;

    .line 125
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 154
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->hideSearchField(ZLjava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public shouldShowPredictionBar()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
