.class Lnet/oneplus/h2launcher/ZoomInInterpolator;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final inverseZInterpolator:Lnet/oneplus/h2launcher/InverseZInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lnet/oneplus/h2launcher/InverseZInterpolator;

    const v1, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/InverseZInterpolator;-><init>(F)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ZoomInInterpolator;->inverseZInterpolator:Lnet/oneplus/h2launcher/InverseZInterpolator;

    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/ZoomInInterpolator;->inverseZInterpolator:Lnet/oneplus/h2launcher/InverseZInterpolator;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/InverseZInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
