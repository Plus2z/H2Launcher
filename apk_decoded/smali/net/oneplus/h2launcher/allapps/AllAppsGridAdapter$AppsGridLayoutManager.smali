.class public Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 93
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 95
    return-void
.end method


# virtual methods
.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 104
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 105
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->mApps:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 106
    return-void
.end method
