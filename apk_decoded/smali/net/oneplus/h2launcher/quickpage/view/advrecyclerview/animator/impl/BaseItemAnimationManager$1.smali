.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->runPendingAnimations(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;

.field final synthetic val$ready:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;

    .prologue
    .line 76
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->val$ready:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    .local p0, "this":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;, "Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->val$ready:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;

    .line 80
    .local v0, "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->createAnimation(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;)V

    goto :goto_0

    .line 82
    .end local v0    # "info":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAnimationInfo;, "TT;"
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->val$ready:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager;->mDeferredReadySets:Ljava/util/List;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/BaseItemAnimationManager$1;->val$ready:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
