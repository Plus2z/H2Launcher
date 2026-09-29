.class Lcom/oneplus/lib/widget/listview/OPListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/listview/OPListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 518
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 519
    .local v2, "size":I
    const/4 v0, 0x0

    .line 520
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 521
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "child":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 522
    .restart local v0    # "child":Landroid/view/View;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    .line 526
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 528
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 529
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 530
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 531
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 534
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 535
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 543
    :cond_2
    :goto_1
    return-void

    .line 538
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z

    .line 539
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView$2;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/listview/OPListView;->access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    goto :goto_1
.end method
