.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;
.source "IconRearrangementPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .prologue
    .line 105
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 11
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v10, 0x0

    .line 108
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v6

    if-nez v6, :cond_1

    .line 109
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v8}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$002(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;I)I

    .line 110
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v7

    mul-int/2addr v6, v7

    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 111
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$008(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    .line 113
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v8}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v9}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v9

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$302(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;I)I

    .line 115
    :cond_1
    if-nez p2, :cond_4

    .line 116
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "firstView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_4

    .line 119
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 120
    .local v4, "targetPos":I
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v1, v6

    .line 121
    .local v1, "firstViewX":I
    if-gez v1, :cond_2

    .line 122
    neg-int v1, v1

    .line 124
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 125
    .local v5, "width":I
    sub-int v3, v5, v1

    .line 126
    .local v3, "scrollX":I
    mul-int/lit8 v6, v1, 0x2

    if-ge v6, v5, :cond_3

    .line 127
    neg-int v3, v1

    .line 129
    :cond_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-object v6, v6, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    .line 131
    .local v2, "isRtl":Z
    if-eqz v2, :cond_5

    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_5

    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    if-lez v3, :cond_5

    .line 140
    .end local v0    # "firstView":Landroid/view/View;
    .end local v1    # "firstViewX":I
    .end local v2    # "isRtl":Z
    .end local v3    # "scrollX":I
    .end local v4    # "targetPos":I
    .end local v5    # "width":I
    :cond_4
    :goto_0
    return-void

    .line 133
    .restart local v0    # "firstView":Landroid/view/View;
    .restart local v1    # "firstViewX":I
    .restart local v2    # "isRtl":Z
    .restart local v3    # "scrollX":I
    .restart local v4    # "targetPos":I
    .restart local v5    # "width":I
    :cond_5
    if-nez v2, :cond_6

    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$400(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->getItemCount()I

    move-result v6

    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    if-gtz v3, :cond_4

    .line 136
    :cond_6
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-static {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 144
    return-void
.end method
