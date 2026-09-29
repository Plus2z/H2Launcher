.class Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;
.super Ljava/lang/Object;
.source "RecyclerViewWrapper.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    .prologue
    .line 85
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 89
    return-void
.end method

.method public onSpringAtRest(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 5
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 110
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    iput-boolean v4, v0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->mSpringAnimating:Z

    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 113
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->access$000(Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    :cond_0
    return-void
.end method

.method public onSpringChainUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    .param p2, "springControl"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 94
    return-void
.end method

.method public onSpringEndStateChange(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 104
    return-void
.end method

.method public onSpringUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 99
    return-void
.end method
