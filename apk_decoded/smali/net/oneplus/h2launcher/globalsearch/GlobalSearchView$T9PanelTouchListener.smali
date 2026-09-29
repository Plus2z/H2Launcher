.class public Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "T9PanelTouchListener"
.end annotation


# instance fields
.field mDownY:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 750
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 755
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 756
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 767
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 758
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->mDownY:F

    goto :goto_0

    .line 761
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->mDownY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 762
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->T9KeyboardIsAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardDismissAnimation(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
