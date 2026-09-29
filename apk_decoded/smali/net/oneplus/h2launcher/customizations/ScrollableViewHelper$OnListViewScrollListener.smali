.class final Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;
.super Ljava/lang/Object;
.source "ScrollableViewHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnListViewScrollListener"
.end annotation


# instance fields
.field private final mOriginalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p2, "originalScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 117
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->mOriginalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;Landroid/widget/AbsListView$OnScrollListener;Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;
    .param p2, "x1"    # Landroid/widget/AbsListView$OnScrollListener;
    .param p3, "x2"    # Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$1;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;-><init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->mOriginalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->mOriginalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 136
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->access$200(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->getScrollableViewScrollPosition(Landroid/view/View;Z)I

    move-result v0

    .line 138
    .local v0, "scrollY":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->access$200(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;->onScroll(I)V

    .line 140
    .end local v0    # "scrollY":I
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->mOriginalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnListViewScrollListener;->mOriginalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 126
    :cond_0
    return-void
.end method
