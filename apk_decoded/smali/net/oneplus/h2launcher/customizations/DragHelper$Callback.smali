.class public abstract Lnet/oneplus/h2launcher/customizations/DragHelper$Callback;
.super Ljava/lang/Object;
.source "DragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onViewPositionChanged(Landroid/view/View;II)V
.end method

.method public onViewReleased(Landroid/view/View;F)V
    .locals 0
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "yVel"    # F

    .prologue
    .line 525
    return-void
.end method
