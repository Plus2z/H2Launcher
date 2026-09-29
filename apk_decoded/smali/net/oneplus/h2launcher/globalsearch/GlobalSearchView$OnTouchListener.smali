.class public Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;
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
    name = "OnTouchListener"
.end annotation


# instance fields
.field mDownY:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 719
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 724
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 725
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 743
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 727
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->mDownY:F

    goto :goto_0

    .line 730
    :pswitch_2
    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->mDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 731
    .local v1, "moveY":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 732
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->T9KeyboardIsAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 734
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardDismissAnimation(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 737
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 738
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
