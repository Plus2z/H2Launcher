.class Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    .prologue
    .line 2413
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 2416
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2417
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2418
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    iget-object v1, v1, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getChildrenScale()F

    move-result v1

    iput v1, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2419
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation$2;->this$1:Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2420
    return-void
.end method
