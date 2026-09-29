.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollViewOnTouchListener"
.end annotation


# instance fields
.field mDownX:F

.field mDownY:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 682
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 683
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    return v12

    .line 685
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->mDownX:F

    .line 686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->mDownY:F

    goto :goto_0

    .line 689
    :pswitch_1
    iget v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->mDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 690
    .local v4, "movingY":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    .line 691
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 692
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->T9KeyboardIsAnimating()Z

    move-result v5

    if-nez v5, :cond_0

    .line 693
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v6}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardDismissAnimation(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 697
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v6}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 704
    .end local v4    # "movingY":F
    :pswitch_2
    iget v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 705
    .local v2, "moveX":F
    iget v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->mDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 706
    .local v3, "moveY":F
    float-to-double v6, v2

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 707
    .local v1, "moveDistance":F
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)F

    move-result v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->mDownY:F

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v6}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1700(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 708
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 709
    iget-object v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    goto/16 :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
