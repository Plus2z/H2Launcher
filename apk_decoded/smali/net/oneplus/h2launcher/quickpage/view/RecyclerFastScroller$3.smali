.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;
.super Ljava/lang/Object;
.source "RecyclerFastScroller.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->attachAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    .prologue
    .line 317
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 3
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    .line 320
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->show(Z)V

    .line 322
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 323
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 325
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    neg-int v2, p2

    iput v2, v1, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->mAppBarLayoutOffset:I

    .line 327
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerFastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    return-void
.end method
