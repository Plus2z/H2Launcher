.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1$1;
.super Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
.source "IconRearrangementPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;->smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;

.field final synthetic val$layoutManager:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;Landroid/content/Context;Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1$1;->val$layoutManager:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 97
    const/high16 v0, 0x42fa0000    # 125.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel$1$1;->val$layoutManager:Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
