.class Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;
.super Ljava/lang/Object;
.source "OnePlusFloatingActionButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->toggle(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

.field final synthetic val$animate:Z

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    .prologue
    .line 287
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->val$visible:Z

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 290
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 291
    .local v0, "currentVto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 294
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->val$visible:Z

    iget-boolean v3, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$2;->val$animate:Z

    invoke-static {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->access$200(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;ZZZ)V

    .line 295
    return v4
.end method
