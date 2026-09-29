.class Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->displayIndex(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

.field final synthetic val$root:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;->val$root:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 117
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->findViewAtPosition(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "selectedIndex":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 121
    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;->val$root:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->access$000(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->access$200(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->access$100(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 127
    .end local v1    # "selectedIndex":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
