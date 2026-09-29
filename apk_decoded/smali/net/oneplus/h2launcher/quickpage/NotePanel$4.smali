.class Lnet/oneplus/h2launcher/quickpage/NotePanel$4;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel;->verifyItemSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 428
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 435
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1502(Lnet/oneplus/h2launcher/quickpage/NotePanel;I)I

    .line 436
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1602(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 437
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->notifyItemSizeChanged()V

    .line 441
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 442
    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 441
    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1702(Lnet/oneplus/h2launcher/quickpage/NotePanel;I)I

    .line 443
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1700(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1702(Lnet/oneplus/h2launcher/quickpage/NotePanel;I)I

    .line 445
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 446
    return-void
.end method
