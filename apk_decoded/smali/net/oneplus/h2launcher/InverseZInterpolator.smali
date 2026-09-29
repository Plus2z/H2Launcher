.class Lnet/oneplus/h2launcher/InverseZInterpolator;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private zInterpolator:Lnet/oneplus/h2launcher/ZInterpolator;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "foc"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lnet/oneplus/h2launcher/ZInterpolator;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/InverseZInterpolator;->zInterpolator:Lnet/oneplus/h2launcher/ZInterpolator;

    .line 66
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/InverseZInterpolator;->zInterpolator:Lnet/oneplus/h2launcher/ZInterpolator;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ZInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method
