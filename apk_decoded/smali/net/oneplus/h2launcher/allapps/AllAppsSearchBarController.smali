.class public abstract Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;
    }
.end annotation


# instance fields
.field protected mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

.field protected mCb:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract focusSearchField()V
.end method

.method public abstract getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final initialize(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;)V
    .locals 0
    .param p1, "apps"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;
    .param p2, "cb"    # Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    .prologue
    .line 38
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    .line 39
    iput-object p2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->mCb:Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    .line 40
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController;->onInitialize()V

    .line 41
    return-void
.end method

.method public abstract isSearchFieldFocused()Z
.end method

.method protected abstract onInitialize()V
.end method

.method public abstract reset()V
.end method

.method public abstract shouldShowPredictionBar()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
