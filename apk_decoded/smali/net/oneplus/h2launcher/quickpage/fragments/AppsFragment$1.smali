.class Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

.field final synthetic val$adapter:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;

.field final synthetic val$indexLayout:Landroid/widget/LinearLayout;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;Landroid/content/pm/PackageManager;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->val$adapter:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->val$indexLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->val$adapter:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;

    .line 85
    invoke-virtual {v1, p2}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "index":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;->val$indexLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v0}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->access$000(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 79
    return-void
.end method
