.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalSearchAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->enterWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

.field final synthetic val$searchHistoryAppContainerHeight:I

.field final synthetic val$searchHistoryContactContainerHeight:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .prologue
    .line 229
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    iput p2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryAppContainerHeight:I

    iput p3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryContactContainerHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 250
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 251
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f47ae14    # 0.78f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 252
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryAppContainerHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryContactContainerHeight:I

    if-gtz v0, :cond_0

    .line 253
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 233
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 234
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryAppContainerHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryContactContainerHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .line 235
    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .line 236
    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 238
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryAppContainerHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryContactContainerHeight:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .line 240
    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 242
    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryAppContainerHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->val$searchHistoryContactContainerHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .line 243
    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper$1;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
